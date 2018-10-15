//判断是否为移动终端
var isTouch = ('ontouchstart' in window);

// 屏幕滑动距离检测器
var moveOverCheck = new checkMoveOver();

/********************初始化工作开始***************************/
// 获取设备信息
var resultDevice = ifly_getDeviceInfo();
if(!resultDevice){
	resultDevice = {};
	if (isTouch) {
		//移动端设置为窗口宽度
		resultDevice.screenWidth = window.innerWidth;
	} else {
		//pc端设置为固定宽度
		resultDevice.screenWidth = 720;
	}
	resultDevice.model = 'unknown';
	resultDevice.release = '2.2';
}

//设备分辨率
var deviceWidth = resultDevice.screenWidth;
// 是否需要延迟加载
var isNeedResetScale = false;
console.log("resultDevice.release = " + resultDevice.release);
if (resultDevice.release && resultDevice.release.indexOf("4.0") == 0) {
    isNeedResetScale = true;
}

//华为G660，G730手机特殊适配wm
if (resultDevice.model == "G620-L75" || resultDevice.model == "HUAWEI G660-L075" || resultDevice.model == "HUAWEI G730-L075") {
    isNeedResetScale = true;
}

//根据android sdk版本，选择旋转动画的函数版本
try {
	if (resultDevice.model == "MI-ONE C1" || resultDevice.model == "MI 1"
			|| resultDevice.model == "MI 1S") {
		var androidVersion = 2.1;
	} else {
		var androidVersionName = resultDevice.release;
		androidVersion = parseFloat(resultDevice.release);
	}
} catch (e) {
	androidVersion = 2.2;
} finally{
	if (androidVersion < 2.2) {
		startRotate = startRotateLowVersion;
	}
}

function startRotateLowVersion(target_canvas, img) {
    stopRotate(content_play_loding_interval);
    console.log("android low version function is called");
    var fun_id = startRotateLow(target_canvas, null, 0);
    return fun_id;
}

//是否开启动画
var enableAnimation = false;
//皮肤包路径
var skinPath = "../skin/theme_new/";
//版本标识，用来区分灵犀还是语点。默认值为true，表示灵犀
var cmcc_flag = true;

//获取环境信息(皮肤、版本标识、cpu)
var environmentInfo = ifly_getEnvironmentInfo();
if(environmentInfo){
	skinPath = environmentInfo.skinPath;
	cmcc_flag = environmentInfo.isCmcc;
	
	//双核及以上手机开启动画
	if(environmentInfo.cpuCount >= 2){
		enableAnimation = true;
	}
	
	//该款手机开启动画容易崩溃，暂时关闭。by mdhuang 2014年1月22日14:07:20
	if(resultDevice.model.indexOf("HUAWEI D2") > -1){
		enableAnimation = false;
	}
} else {
	enableAnimation = true;
} 


// 适配比例，xcss文件解析时需要
var scale = deviceWidth / 320;

var marginBottom = 6*scale; //来自css_dilaog_out_div中的margin_bottom

//平移动画的滚动距离
var translateAnimDistance = 100*scale;

function loadVoiceResource(voiceFlag, loadFinshHandler){
	function createXcssElement(id) {
		var css = document.createElement('link');
		css.id = id;
		css.rel = 'stylesheet/xcss';
		css.type = 'text/css';
		return css;
	}

	function createScriptElement(id) {
		var script = document.createElement('script');
		script.id = id;
		script.type = "text/javascript";
		return script;
	}
	
	var head = document.getElementsByTagName('head').item(0);
	
	// 加载js文件
	var resouceJs = createScriptElement('resouceJs');
	var resourceFolderName = null;
	if(voiceFlag in resourceMap){
		resourceFolderName = resourceMap[voiceFlag];
	}else{
		resourceFolderName = voiceFlag;
	}
	resouceJs.src = "./" + resourceFolderName + "/resources.js";
	console.log("resourcePath = " + "./" + resourceFolderName + "/resources.js");
	head.appendChild(resouceJs);
	
	// 捕获xcss解析完成的事件
	document.documentElement.addEventListener("xcssParseFinish", function() {
		if(document.getElementById('businessXcss')){
			// 通知业务处理框架层，business.xcss解析完毕，可以进行业务处理了
			if(loadFinshHandler){
				loadFinshHandler();
			}
			
			// 删除已经不需要的节点
			head.removeChild(document.getElementById('businessXcss'));
			head.removeChild(document.getElementById('xcssParser'));
		} else{
			console.warn('unknown parseFinish event');
		}
	}, false);
	
	//加载解析xcss样式文件
	var businessXcss = createXcssElement('businessXcss');
	businessXcss.href = "./" + resourceFolderName + "/business.x.css";
	head.appendChild(businessXcss);

	var xcssParser = createScriptElement('xcssParser');
	xcssParser.src = skinPath + "dialogModeRes/xcssParser.js";
	head.appendChild(xcssParser);
}
/********************初始化工作结束***************************/


/**
 * Java函数对语音识别结果进行处理后，调用此函数进行页面展示
 * 
 * @param viewName
 *            需要处理的view的类型，如对话、提醒、股票等
 * @param result
 *            java进行处理后的数据结果，json格式字符串
 */
function addE(viewName, result) {
	console.log('addE begin, viewName is ' + viewName + ' ,result is ' + result);
	if (viewName in functionMap) {
		require(functionMap[viewName].url, function(func) {
			if (func && typeof func == 'function') {
				//解析业务数据
				var resultJson = eval('(' + result + ')');
				
				//创建节点，并添加到页面中
				var view = func(resultJson);

				//设置动画
				// setAnim(viewName, view, resultJson);
				
				//重设节点margin值，以保证该节点至少“占据”一屏的空间
				// resetElementMargin(view);
				
				//滚动节点位置
				// scrollElement(view, resultJson);
					
				//开始动画
				// startAnim(viewName, view, resultJson);
				forceRefreshScreen();
			} else {
				console.error('addE faile, create func is null');
			}
		});
	}
}

var handlerMap = {
	dialog: ["./dialog/dialogHandler.js"],
	app: ["./app/appHandler.js"],
    news:["./news/newsHandler.js"],
    telephone_fee: ["./cmccbusiness/cmbusinessHandler.js"],
    telephone_credits: ["./cmccbusiness/cmbusinessHandler.js"],
    data_transfer: ["./cmccbusiness/cmbusinessHandler.js"],
    package_margin: ["./cmccbusiness/cmbusinessHandler.js"],
    v_cinema: ["./cinemasvideo/movieHandler.js"],
	cinemas: ["./cinemasvideo/cinemasHandler.js"],
	flight: ["./trip/tripHandler.js"],
	train: ["./trip/tripHandler.js"],
	hotel: ["./trip/tripHandler.js"],
	music: ["./music/musicHandler.js"],
	video: ["./video/videoHandler.js"],
    weather: ["./weather/weatherHandler.js"],
    map: ["./map/mapHandler.js"],
    email:["./mail/mailHandler.js"],
    website: ["./website/websiteHandler.js"],
	other: ["./other/otherHandler.js"],
	lottery: ["./lottery/lotteryHandler.js"],
	restaurant: ["./restaurant/restaurantHandler.js"],
	novel: ["./novel/novelHandler.js"],
	stock: ["./stock/stockHandler.js"],
	local_search: ["./local_search/localSearchHandler.js"],
};

var resourceMap = {
	dialog: "dialog",
	app: "app",
    news:"news",
    telephone_fee: "cmccbusiness",
	telephone_credits: "cmccbusiness",
	data_transfer: "cmccbusiness",
	package_margin: "cmccbusiness",
	v_cinema: "cinemasvideo",
	cinemas: "cinemasvideo",
	flight: "trip",
	train: "trip",
	hotel: "trip",
	weather: "weather",
	map: "map",
    email: "mail",
	website: "website",
	other: "other",
	lottery: "lottery",
	restaurant: "restaurant",
	music: "music",
	novel: "novel",
	stock: "stock",
	local_search: "local_search",
};

/**
 * 在调用业务处理逻辑前，再获取一次屏幕宽度，重新计算一次scale
 */
function resetScale() {
    if (!isNeedResetScale) {
        console.log("there's no need reset Scale");
        return;
    }
    console.log("before reset scale is " + scale);
    setTimeout(function() {     // 延迟100毫秒获取页面宽度
        scale = document.body.clientWidth / 320;
        console.log("after reset scale is " + scale);
        marginBottom = 6*scale;
        translateAnimDistance = 100*scale;
        // 调用业务处理逻辑
        realHandleWebResult();
    }, 150);
}



// window.onresize = function() {
    // var bodyClientWidth = document.body.clientWidth;
    // console.log("bodyClientWidth = " + bodyClientWidth);
    // scale = document.body.clientWidth / 320;
    // console.log("after reset scale is " + scale);
    // marginBottom = 6 * scale;
    // translateAnimDistance = 100 * scale;
    // // 调用业务处理逻辑
    // realHandleWebResult();
// }


var xmlStr, isTextSearchResult;

/**
 * 先保存业务数据，不进行逻辑处理 
 */
function handleWebResult(xml, isTextSearch){
    xmlStr = xml;
    isTextSearchResult = isTextSearch;
    if (!isNeedResetScale) {
        realHandleWebResult();
    }
}

function ttsForErrorTip(ttsText,isTextSearchResult) {
	require(["./common/speakHandler.js"], function(speakHandler) {
		speakHandler.setSpeechText(ttsText);
		if (!isTextSearchResult) {
			speakHandler.speak();
		}
	});
}

/**
 * 调用业务处理逻辑
 */
function realHandleWebResult() {
    if (!xmlStr) {
        setTimeout(realHandleWebResult, 50);
        console.log("realHandleWebResult xmlStr is not Ready");
        return;
    }
    
    console.log("realHandleWebResult xmlStr : " + xmlStr + " , isTextSearchResult  is " + isTextSearchResult);
    var parser = new DOMParser();
    var xmlDoc = parser.parseFromString(xmlStr, "text/xml");
    
    //解析后的结果
    var filterResult = {};
    filterCommonResult(filterResult, xmlDoc);
    if(isTextSearchResult == true || isTextSearchResult == 'true'){
        console.log("isTextSearchResult is " + isTextSearchResult);
        filterResult.isTextSearchResult = true;
    }else{
        filterResult.isTextSearchResult = false;
    }
    function resouceLoadFinish(){
        //判断是否能够处理该业务
        if (filterResult.focus in handlerMap){
            var url = handlerMap[filterResult.focus];
            
            require(handlerMap[filterResult.focus], function(recognizeFilter) {
                if ("success" === filterResult.status) {
                    recognizeFilter.onSuccess(filterResult, xmlDoc);
                } else {
                    if (recognizeFilter.onFail) {
                        recognizeFilter.onFail(filterResult, xmlDoc);
                    } else {
                        var failTip = filterResult.tip;
                        if(!failTip){
                            failTip = filterResult.desc;
                        }
                        if(!failTip){
                            failTip = "抱歉，灵犀有点忙不过来了，稍后再试试吧。";
                        }
                        delayedAddAnswerView(failTip, filterResult.focus, 100);
                        
                        ttsForErrorTip(failTip,filterResult.isTextSearchResult);
                    }
                }
            }, function(err){
                console.log(err);
            });
        } else {
            var failTip = filterResult.desc;
            if(!failTip) {
                failTip = "暂不支持此功能";
            }
            addAnswerView(failTip);
            
            ttsForErrorTip(failTip,filterResult.isTextSearchResult);
        }
    }
    if(filterResult.focus in handlerMap){
        loadVoiceResource(filterResult.focus, resouceLoadFinish);
    }else{
        loadVoiceResource("dialog", resouceLoadFinish);
    }
}


/* 创建position为relative的外层div */
function createOutDiv(id) {
	var relativeDiv = document.createElement("div");
	relativeDiv.className = "css_dilaog_out_div";
	if (id != undefined && id != null) {
		relativeDiv.id = id;
	}
	return relativeDiv;
}

/* 创建外层容器div */
function createBoxDiv(id,outDiv) {
	var inner_box = document.createElement("div");
	inner_box.className = "box_inner";
	inner_box.appendChild(outDiv);
	
	var out_box = document.createElement("div");
	out_box.className = "box_out";
	out_box.appendChild(inner_box);
	
	if (id) {
		out_box.id = id;
	}
	return out_box;
}

//添加转写气泡
function addQuestionView(text) {
	var viewData = {};
	viewData.questionText = text;
	viewData.taskHandler = 'demo_questionView';
	viewData.intentType = 'demo';
	viewData.editEnable = false;
	addE('QuestionView', JSON.stringify(viewData));
}
function delayedAddAnswerView(text, focus, delayTime) {
	var viewData = {};
	viewData.answerText = text;
	viewData.taskHandler = 'demo_answerView';
	viewData.type = 'NORMAL';
	viewData.showShare = false;
	viewData.topic = 'demo';
	viewData.focus = focus;
	viewData.speechText = text;
	viewData.needTaskButton = false;

	setTimeout(function() {
		addE('AnswerView', JSON.stringify(viewData));
	}, delayTime);
}

//添加转写气泡
function addAnswerView(text) {
	var viewData = {};
	if(text){
		viewData.answerText = text;
	}else{
		viewData.answerText = "";
	}
	viewData.taskHandler = 'demo_answerView';
	viewData.intentType = 'demo';
	viewData.editEnable = false;
	addE('AnswerView', JSON.stringify(viewData));
}

function addWebE(viewName, jsonResult){
	console.log('addWebE begin');
	if (viewName in functionMap) {
		require(functionMap[viewName].url, function(func) {
			if (func && typeof func == 'function') {
				//创建节点，并添加到页面中
				var view = func(jsonResult);
				forceRefreshScreen();
			} else {
				console.error('addE fail, create func is null');
			}
		});
	}
}

//解析公共节点
function filterCommonResult(filterResult, xmlDoc) {
	console.log('filterCommonResult begin, xmlDoc is ' + xmlDoc);
	filterResult.status = xmlDoc.getElementsByTagName('status')[0].firstChild.nodeValue;
	var errorCodeElements = xmlDoc.getElementsByTagName('error_code');
	if (errorCodeElements && errorCodeElements.length > 0 ) {
	   if (errorCodeElements[0].firstChild) {
	       filterResult.error_code = errorCodeElements[0].firstChild.nodeValue;
	   }
	}

	if (xmlDoc.getElementsByTagName('time_stamp')[0]) {
		filterResult.date = xmlDoc.getElementsByTagName('time_stamp')[0].getAttribute('date');
		filterResult.time = xmlDoc.getElementsByTagName('time_stamp')[0].getAttribute('time');
	}
	if (xmlDoc.getElementsByTagName('rawtext')[0]) {
		filterResult.rawtext = xmlDoc.getElementsByTagName('rawtext')[0].firstChild.nodeValue;
	}
	if (xmlDoc.getElementsByTagName('nlp_version')[0]) {
		filterResult.nlp_version = xmlDoc.getElementsByTagName('nlp_version')[0].firstChild.nodeValue;
	}
	if (xmlDoc.getElementsByTagName('tip')[0]) {
	    if(xmlDoc.getElementsByTagName('tip')[0].firstChild) {
    		filterResult.tip = xmlDoc.getElementsByTagName('tip')[0].firstChild.nodeValue;
	    }else{
	        filterResult.tip = "";
	    }
	}
	if (xmlDoc.getElementsByTagName('speech')[0]) {
	    if(xmlDoc.getElementsByTagName('speech')[0].firstChild) {
    		filterResult.speech = xmlDoc.getElementsByTagName('speech')[0].firstChild.nodeValue;
	    }else{
	        filterResult.speech = "";
	    }
	}
	if (xmlDoc.getElementsByTagName('focus')[0]) {
		filterResult.focus = xmlDoc.getElementsByTagName('focus')[0].firstChild.nodeValue;
	}
	if (xmlDoc.getElementsByTagName('operation')[0]) {
		filterResult.operation = xmlDoc.getElementsByTagName('operation')[0].firstChild.nodeValue;
	}
	if (xmlDoc.getElementsByTagName('desc')[0] && xmlDoc.getElementsByTagName('desc')[0].firstChild) {
		filterResult.desc = xmlDoc.getElementsByTagName('desc')[0].firstChild.nodeValue;
	}
}



/**
 * 函数映射表
 */
var functionMap = {
	QuestionView : {
		url : [ "./common/questionView.js" ],
	},
	AnswerView : {
		url : [ "./common/dialogView.js" ],
	},
	APPListView : {
		url : [ "./app/appListView.js" ],
	},
	mapAppListView : {
	    url : [ "./map/mapAppListView.js" ],
	},
    WidgetSohuNewsView : {
        url : [ "./news/sohuNewsView.js" ],
    },
    WidgetCmBusinessView: {
    	url : [ "./cmccbusiness/cmbusinessView.js" ],
    },
    WidgetCinemasView: {
    	url : [ "./cinemasvideo/cinemaView.js" ],
    },
    WidgetVCinemaView: {
    	url : [ "./cinemasvideo/videoView.js" ],
    },
    FlightQueryView: {
    	url : [ "./trip/flightQueryView.js" ],
    },
     WidgetVideoView : {
        url : [ "./video/videoView.js" ],
    },
    MusicListView: {
        url : [ "./music/musicListView.js" ],
    },
    WidgetWeatherView : {
		url : [ "./weather/weatherView.js" ],
	},
	NovelListView: {
	    url : [ "./novel/novelListView.js" ],
	},
    WidgetDialogView: {
        url : ["./dialog/dialogView.js"],
    }
};
    
    /**
     * 判断网络状态 
     */
    function isNetWorkAvailable() {
        var result = exec("SystemComponents", "isNetWorkAvailable", []);
        console.log("isNetWorkAvailable() " + result);
        var resultMsg = getResultMessage(result);
        if (resultMsg) {
            return resultMsg;
        }
        return false;
    }
    
    /**
     * 显示toast 
     * @param {Object} msg
     */
    function showToast(msg) {
        console.log("showToast() " + msg);
        exec("UIComponents", "showToast", [msg, 1]);
    }
    
    /**
     * 获取基础信息
     */
    function getBaseInfo() {
        var result = exec("SystemComponents", "getBaseInfo", []);
        var resultMessage = getResultMessage(result);
        if (!resultMessage) {
            console.log("获取基础信息失败");
            return null;
        }
        var base = document.createElement("base");
        //appid
        if (resultMessage.appId) {
            var appid = document.createElement("appid");
            appid.textContent = resultMessage.appId;
            base.appendChild(appid);
        }
        //ver
        if (resultMessage.ver) {
            var ver = document.createElement("ver");
            ver.textContent = resultMessage.ver;
            base.appendChild(ver);
        }
        //clientVer
        if (resultMessage.clientver) {
            var clientVer = document.createElement("clientver");
            clientVer.textContent = resultMessage.clientver;
            base.appendChild(clientVer);
        }
        //apn
        if (resultMessage.apn) {
            var apn = document.createElement("apn");
            apn.textContent = resultMessage.apn;
            base.appendChild(apn);
        }
        //imei
        if (resultMessage.imei) {
            var imei = document.createElement("imei");
            imei.textContent = resultMessage.imei;
            base.appendChild(imei);
        }
        //imsi
        if (resultMessage.imsi) {
            var imsi = document.createElement("imsi");
            imsi.textContent = resultMessage.imsi;
            base.appendChild(imsi);
        }
        //token
        if (resultMessage.token) {
            var token = document.createElement("token");
            token.textContent = resultMessage.token;
            base.appendChild(token);
        }
        //uid
        if (resultMessage.uid) {
            var uid = document.createElement("uid");
            uid.textContent = resultMessage.uid;
            base.appendChild(uid);
        }
        //osid
        if (resultMessage.osid) {
            var osid = document.createElement("osid");
            osid.textContent = resultMessage.osid;
            base.appendChild(osid);
        }
        //ua
        if (resultMessage.ua) {
            var ua = document.createElement("ua");
            ua.textContent = resultMessage.ua;
            base.appendChild(ua);
        }
        //df
        if (resultMessage.df) {
            var df = document.createElement("df");
            df.textContent = resultMessage.df;
            base.appendChild(df);
        }
//        //mchannel
//        if (resultMessage.mchannel) {
//            var mchannel = document.createElement("mchannel");
//            mchannel.textContent = resultMessage.mchannel;
//            base.appendChild(mchannel);
//        }
        // mode
		var mode = document.createElement("mode");
		if (resultMessage.mode) {
			mode.textContent = resultMessage.mode;
		} else {
			mode.textContent = "1";
		}
		base.appendChild(mode);
       
		return base;
    }
    
    /**
     * 开始播报 
     * @param {Object} speechText
     */
    function startTtsSpeak(speechText) {
        if (speechText) {
            console.log("speechText is " + speechText);
            exec("SynthesizeComponents", "ttsSpeak", [speechText]);
        } else {
            console.log("speechText is null.");
        }
    }
    
    /**
     * 获取业务相关url地址 
     */
    function getServerUrl() {
        var urlResult = exec("SystemComponents", "getUrl", ["business"]);
        console.log("getServerUrl urlResult is " + urlResult);
        return getResultMessage(urlResult);
    }

//页面加载完毕，通知WebView开始传递语音数据进行业务处理
exec('WidgetMMPContainerComponents', 'pagePrepare', []);