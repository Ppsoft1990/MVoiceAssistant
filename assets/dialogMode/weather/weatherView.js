/**
 * 天气视图
 * 
 * @author mdhuang
 * @author modified by yangli3 2013-6-6
 * @author modified by yongcao 2014-7-15
 */
define(function() {
	var weatherHandler = null;
	var rotateId = null; //加载动画的id
	var weatherData = null;
	var speakStatus = "stop"; //记录播报状态
	
	//调用浏览器能力显示播报按钮
	exec("LxBrowserComponents", "showSpeakButton", [true]);

	//监听浏览器事件
	exec("LxBrowserComponents", "isEventCallBackForJS", [true]);
	
	function showWeather(weatherInfo) {
		return createWeatherView(weatherInfo);
	}
	/**
	 * 创建未来天气
	 * 
	 * @param futureWeather
	 *            未来天气信息，经过java处理的json数据
	 */
	function createFutureWeatherItem(futureWeather, targetday, targetdaytime) {
		var weatherItem = document.createElement("div");
		weatherItem.className = "css_dialog_weather_future_item";
		var weekday = document.createElement("div");
		weekday.className = "css_dialog_weather_future_item_week_text";

		weatherItem.className = "css_dialog_weather_future_item";
		if (futureWeather.isTarget === true) {
			if (targetday == "" || targetday == undefined || targetday == null) {
				weekday.innerText = targetdaytime;
			} else {
				weekday.innerText = targetday;
			}

		} else {
			weekday.innerText = futureWeather.weekTv;
		}

		var futureImg = document.createElement("img");
		futureImg.className = "css_dialog_weather_futureImg";
		futureImg.src = futureWeather.image;

		var tempArea = document.createElement("div");
		tempArea.className = "css_weather_future_tempArea";

		var tempDegree = document.createElement("div");
		tempDegree.className = "css_weather_future_highTemp";
		tempDegree.innerText = futureWeather.lowTemp + "°" + "/"
				+ futureWeather.highTemp + "°";

		tempArea.appendChild(tempDegree);

		var status = document.createElement("div");
		status.className = "css_dialog_weather_future_item_condition_text";
		status.innerText = futureWeather.description;

		weatherItem.appendChild(weekday);
		weatherItem.appendChild(futureImg);
		weatherItem.appendChild(status);
		weatherItem.appendChild(tempArea);

		return weatherItem;
	}

	function createWeatherView(weatherInfo) {
		weatherData = weatherInfo;
		weatherHandler = weatherInfo.taskHandler;
		
		var outDiv = document.createElement("div");
        outDiv.className = 'box_content_white';

		var dialog_weather_inner_div = document.createElement("div");
		dialog_weather_inner_div.className = "weather_inner_div";
		
		//天气的title（包括城市的名称）
		var topTitleDiv = document.createElement("div");
		topTitleDiv.className = "weater_top_title_div";
		var location_image = document.createElement("img");
		location_image.className = "weather_location_img";
		location_image.src = ic_weather_location;
		var location_label = document.createElement("label");
		location_label.className = "weather_location_label";
		var cityInfo = weatherInfo.city;
		console.log("cityInfo is " + cityInfo);
		if (cityInfo != null && cityInfo != undefined && cityInfo != "") {
			if (cityInfo.length > 9) {
				cityInfo = cityInfo.substring(0, 7) + "...";
			}
		}
		location_label.innerText = cityInfo;
		
		//日期
		var target_day = document.createElement("div");
		target_day.className = "css_weather_target_day";
		target_day.innerText = weatherInfo.target_day + "  "
				+ weatherInfo.target_daytime;
		
		topTitleDiv.appendChild(location_image);
		topTitleDiv.appendChild(location_label);
		topTitleDiv.appendChild(target_day);
		
		//天气的主体内容的容器
		var content_div = document.createElement("div");
		content_div.className = "weather_content_div";
		
		// 天气上半区主容器
		var top_div = document.createElement("div");
		top_div.className = "css_dialog_weather_top_div";

		var target_image_bg = document.createElement("img");
		target_image_bg.className = "css_weather_target_image_bg";
		target_image_bg.src = weather_bg_light;
		if (resultDevice
				&& resultDevice.model
				&& (resultDevice.model == "MI 2" || resultDevice.model == "MI-ONE C1")) {
			// 小米上此图片显示会有边框，影响视觉。因此不加载此img
		} else {
			top_div.appendChild(target_image_bg);
		}
		
		// 天气上半区主体内容div
		var top_main_div = document.createElement("div");
		top_main_div.className = "css_dialog_weather_top_main_div";

		// top主体内容区域上部分
		var top_main_top_div = document.createElement("div");
		top_main_top_div.className = "css_dialog_weather_top_main_top_div";

		// top主体内容区域上部分左边区域
		var top_main_top_left_div = document.createElement("div");
		top_main_top_left_div.className = "css_dialog_weather_top_main_top_left_div";


		// 温度显示区域
		var target_tempArea = document.createElement("div");
		target_tempArea.className = "css_weather_target_tempArea";
		
		var weather_temp = document.createElement("label");
		weather_temp.className = "css_weather_target_lowTemp_highTemp2";
		weather_temp.innerText = weatherInfo.target_lowTemp + "°/"	+ weatherInfo.target_highTemp + "°";
		target_tempArea.appendChild(weather_temp);
		
		//天气描述
		var target_description = document.createElement("div");
		target_description.className = "css_weather_target_description";
		target_description.innerText = weatherInfo.target_description;
		
		/*// pm2.5
		var target_pm25 = document.createElement("div");
		target_pm25.className = "css_weather_target_pm25";

		if (weatherInfo.target_pm25) {
			target_pm25.innerText = "PM2.5:  " + weatherInfo.target_pm25;
		}else{
			target_pm25.innerText = "";
		}*/
		// 将pm2.5更改为aqi用来指示天气空气情况
		var target_pm25 = document.createElement("div");
		target_pm25.className = "css_weather_target_pm25";
		if (weatherInfo.target_aqi) {
			target_pm25.innerText = "空气质量 : " + weatherInfo.target_aqi;
		}else{
			target_pm25.innerText = "";
		}
		
		//风级和湿度
		var target_wind_humidity_area = document.createElement("div");
		target_wind_humidity_area.className = "css_weather_target_wind_humidity_area";

		var target_wind = document.createElement("label");
		target_wind.style.display = "inline-block";
		target_wind.innerText = weatherInfo.target_wind;

		target_wind_humidity_area.appendChild(target_wind);

		if (weatherInfo.target_humidity != undefined
				&& weatherInfo.target_humidity != null
				&& weatherInfo.target_humidity != "") {
			//中间的空格
			var empty_div = document.createElement("div");
			empty_div.className = "weather_empty_div";
			
			// 湿度
			var target_humidity = document.createElement("label");
			target_humidity.style.display = "inline-block";
			target_humidity.innerText = "湿度" + weatherInfo.target_humidity;
			
			target_wind_humidity_area.appendChild(empty_div);
			target_wind_humidity_area.appendChild(target_humidity);
		}
		
		top_main_top_left_div.appendChild(target_tempArea);
		top_main_top_left_div.appendChild(target_description);
		top_main_top_left_div.appendChild(target_pm25);
		top_main_top_left_div.appendChild(target_wind_humidity_area);

		// top主体内容区域上部分右边区域
		var top_main_top_right_div = document.createElement("div");
		top_main_top_right_div.className = "css_dialog_weather_top_main_top_right_div";

		var target_image = document.createElement("img");
		target_image.className = "css_weather_target_image";
		target_image.src = weatherInfo.target_image;

		top_main_top_right_div.appendChild(target_image);

		top_main_top_div.appendChild(top_main_top_left_div);
		top_main_top_div.appendChild(top_main_top_right_div);


		top_main_div.appendChild(top_main_top_div);

		top_div.appendChild(top_main_div);

		// 天气下半区主容器
		var bottom_div = document.createElement("div");

		var dialog_future_weathers_panel = document.createElement("div");
		dialog_future_weathers_panel.className = "css_dialog_future_weathers_panel";

		var weathers = weatherInfo.weathers;
		var length = weathers.length;
		if (length > 3) {
			length = 3;
		}
		for ( var i = 0; i < length; i++) {
			var futureItem = createFutureWeatherItem(weathers[i],
					weatherInfo.target_day, weatherInfo.target_daytime);
			var future_weather_divider = null;
			// 分割线
			if (i < length - 1) {
				future_weather_divider = document.createElement("img");
				future_weather_divider.className = "css_weather_future_item_divier";
				future_weather_divider.src = weather_divider_vertical;
			}

			// 根据个数平均分配宽度
			futureItem.style.width = (100 / length) + "%";
			dialog_future_weathers_panel.appendChild(futureItem);
			if (future_weather_divider != null) {
				dialog_future_weathers_panel.appendChild(future_weather_divider);
			}
		}

		var footer = document.createElement("div");
		footer.className = "css_dialog_weather_footer";

		var updateTimeDiv = document.createElement("div");
		updateTimeDiv.innerText = "发布时间：" + weatherInfo.updateTime;
		updateTimeDiv.className = "css_dialog_weather_updateTime";
		
		//解决小米2手机点击数字时响应的问题
		updateTimeDiv.addEventListener("click",function(){},false);

		footer.appendChild(updateTimeDiv);

		bottom_div.appendChild(dialog_future_weathers_panel);
		bottom_div.appendChild(footer);
		
		//创建首次进入二级频道的加载视图
		var weather_load_view = createWeatherLoadView();
		weather_load_view.show("disappear");
		
		content_div.appendChild(top_div);
		content_div.appendChild(bottom_div);
		content_div.appendChild(weather_load_view);

		dialog_weather_inner_div.appendChild(topTitleDiv);
		dialog_weather_inner_div.appendChild(content_div);

		outDiv.appendChild(dialog_weather_inner_div);

		//添加外壳
        var outDivBox = createBoxDiv(weatherInfo.taskHandler, outDiv);
        console.log("weatherInfo.id is " + weatherInfo.id);
        
		document.body.appendChild(outDivBox); //使用新框架代码

		if (weatherInfo.showProgressBar) {
			showProgressBar(weatherInfo.taskHandler);
		}

		outDivBox.refresh = function() {
		};
		
		outDivBox.refreshFavoriteDiv = function(hasKept) {
			console.log("refreshFavoriteDiv, hasKept is " + hasKept);
			if ("true" == hasKept) {
				favoriteImg.src = weather_collect_press;
				favoriteDiv.hasKept = true;
			} else {
				favoriteImg.src = weather_collect_nor;
				favoriteDiv.hasKept = false;
			}
		};
		
		//播报,文本搜索不播报
		var isTextSearchResult = weatherData.isTextSearchResult;
		var isRecognizing = getResultMessage(exec("RecognizeComponents", "isRecognize",[]));
		if ( isTextSearchResult != true && isTextSearchResult != 'true' && !isRecognizing) {
			//语音播报是否开启
			var isSpeechDialogMode = getResultMessage(exec("SystemComponents", "isSpeechDialogMode", []));
			if (true == isSpeechDialogMode || "true" == isSpeechDialogMode) {
				var content = getSpeakContent();
				console.log("content is " + content);
				if (content) {
					exec('SynthesizeComponents', 'ttsSpeak', [content]);
				}
			}
		}
		
		return outDivBox;
	}

	/**
	 *创建天气加载视图
	 *  
	 */
	function createWeatherLoadView() {
		var weatherLoadDiv = document.createElement("div");
		weatherLoadDiv.className = "weather_load_div";
		
		//加载出错的div
		var loadFailDiv = document.createElement("div"); 
		loadFailDiv.className = "weather_load_fail_div";
		
		var loadFailTip = document.createElement("div");
		loadFailTip.className = "weather_load_fail_tip";
		loadFailTip.innerHTML = "网络未打开，请检查网络连接后重试";
		
		//重试按钮div
		var retryButtonDiv = document.createElement("div");
		retryButtonDiv.className = "weather_retry_button_div";
		
		var retryButton = document.createElement("button");
		retryButton.innerText = "重试";
		retryButton.className = "weather_retry_button";
		retryButtonDiv.appendChild(retryButton);
		
		loadFailDiv.appendChild(loadFailTip);
		loadFailDiv.appendChild(retryButtonDiv);
		
		
		//加载动画区域
		var loadingOutDiv = document.createElement("div");
		loadingOutDiv.className = "weather_loading_out_div";
		
		var loadingDiv = document.createElement("div");
		loadingDiv.className = "weather_loading_div";
		
		//"加载动画"的canvas
		var loadCanvas = document.createElement("canvas");
		loadCanvas.style.background = "#ffffff";
		loadCanvas.className = "weather_loading_canvas";
		
		loadingDiv.appendChild(loadCanvas);
		
		//加载时的文字提示
		var loadingTextTip = document.createElement("div");
		loadingTextTip.className = "weather_loading_text_tip";
		loadingTextTip.innerText = "正在加载，请稍候...";
		
		loadingOutDiv.appendChild(loadingDiv);
		loadingOutDiv.appendChild(loadingTextTip);
		
		weatherLoadDiv.appendChild(loadFailDiv);
		weatherLoadDiv.appendChild(loadingOutDiv);
		
		//为重试按钮添加监听事件
		var refreshButtonMov = false;
		retryButton.addEventListener("touchstart", function() {
			event.stopPropagation();
			console.log("retry button touchstart");
			moveOverCheck.start(event);
			retryButton.style.backgroundColor = "#c3e5f3";
		}, false);
		retryButton.addEventListener("touchmove", function() {
			event.stopPropagation();
			console.log("retry button touchmove");
			 if (moveOverCheck.check(event)) {
				refreshButtonMov = true;
			}
			retryButton.style.backgroundColor = "";
		}, false);
		retryButton.addEventListener("touchend", function() {
			event.stopPropagation();
			console.log("retry button touchend");
			if(false == refreshButtonMov) {
				weatherLoadDiv.show("loading");
			}
			retryButton.style.backgroundColor = "";
			refreshButtonMov = false;
		}, false);
		
		weatherLoadDiv.show = function(state) {
			if("loading" == state) {
				weatherLoadDiv.style.display = "block";
				loadFailDiv.style.display = "none";
				loadingOutDiv.style.display = "block" ;
				
				//停止加载动画
				if(rotateId) {
					stopRotate(rotateId);
				}
				
				var width = loadingDiv.clientWidth;
				var height = loadingDiv.clientHeight;
			
				loadCanvas.setAttribute("width", width);
				loadCanvas.setAttribute("height", height);
				//开始动画
				rotateId = startRotate(loadCanvas);
			} else if("loadFail" == state) {
				weatherLoadDiv.style.display = "block";
				loadFailDiv.style.display = "none";
				loadingOutDiv.style.display = "block" ;
				
				//停止加载动画
				if(rotateId) {
					stopRotate(rotateId);
				}
			} else if ("disappear" == state) {
				weatherLoadDiv.style.display = "none";
				
				//停止加载动画
				if(rotateId) {
					stopRotate(rotateId);
				}
			}
		};
		
		return weatherLoadDiv;
	}
	
	function weatherFavoriteIconRefresh(viewId, hasKept) {
		console.log("weatherFavoriteIconRefresh, hasKept is " + hasKept);
		document.getElementById(viewId).refreshFavoriteDiv(hasKept);
	}
	
	
	
	function getSpeakContent() {
		var speakContent = weatherData.speech;
		console.log("weatherData is " + JSON.stringify(weatherData));
		if (!speakContent) {
			speakContent = weatherData.tip;
		}
		return speakContent;
	}



	//***************************监听tts播报的状态回调*******************************//
	function onTtsPlayBegin() {
		speakStatus = "playing";
	}

	function onTtsPlayComplete(errorCode) {
		speakStatus = "stop";
		if (0 != errorCode) {
			exec("UIComponents", "showToast", ["播放出错", 0]);
		}
	}

	function onTtsInterrupt() {
		speakStatus = "stop";
	}

	function onTtsResume() {
		speakStatus = "playing";
	}

	function onTtsPause() {
		speakStatus = "pause";
	}

	function onTtsPlayProcess(position) {

	}

	function onTtsPlayPrepare() {

	}

	//************************* 浏览器框架事件回调处理 ******************************//

	//播报按钮点击
	function onPlayButtonClick() {
		console.log("onPlayButtonClick, status is " + speakStatus);

		if ("playing" == speakStatus) {
			exec('SynthesizeComponents', 'ttsStop', []);
		} else if ("pause" == speakStatus || "stop" == speakStatus) {
			var content = getSpeakContent();
			console.log("content is " + content);
			if (content) {
				exec('SynthesizeComponents', 'ttsSpeak', [content]);
			}
		}
	}

	//手机home键点击
	function onHomeKeyClick() {
		console.log('onHomeKeyClick callBack');
		exec('SynthesizeComponents', 'ttsStop', []);
	}

	//Activity被覆盖
	function onActivityPause() {
		console.log('onActivityPause callBack');
		exec('SynthesizeComponents', 'ttsStop', []);
	}

	
	window.onTtsPlayBegin = onTtsPlayBegin;
    window.onTtsPlayComplete = onTtsPlayComplete;
    window.onTtsInterrupt = onTtsInterrupt;
    window.onTtsResume = onTtsResume;
    window.onTtsPause = onTtsPause;
    window.onTtsPlayProcess = onTtsPlayProcess;
    window.onTtsPlayPrepare = onTtsPlayPrepare;
    window.onPlayButtonClick = onPlayButtonClick;
    window.onHomeKeyClick = onHomeKeyClick;
    window.onActivityPause = onActivityPause;
    
    window.weatherView = window.weatherView || {};
	weatherView.weatherFavoriteIconRefresh = weatherFavoriteIconRefresh;

	return createWeatherView;
});