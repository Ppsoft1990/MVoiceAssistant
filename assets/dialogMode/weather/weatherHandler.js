/**
 *create by yongcao 2014-6-10 
 */
define(function(){
	var FilterName = {
		object:"object",
		city:"city",
		location:"location",
		province:"province",
		area:"area",
		landmark:"landmark",
		locJudgement:"loc_judgement",
		lastUpdate:"last_update",
		interestDatetime:"interest_datetime",
		dateTime:"datetime",
		date:"date",
		time:"time",
		forecast:"forecast",
		condition:"condition",
		description:"description",
		image:"image",
		bgImage:"bg_image",
		pm25:"pm25",
		aqi:"aqi",
		temp:"temp",
		humidity:"humidity",
		wind:"wind",
		low:"low",
		high:"high",
		url: "url"
	};

    var WeatherConstant = {
        light_rain:"阵雨；小雨",
        moderate_rain:"中雨；小雨-中雨",
        great_rain:"中雨-大雨；大雨",
        heavy_rain:"大暴雨-特大暴雨；特大暴雨；大雨-暴雨；大暴雨；暴雨-大暴雨；暴雨",
        ice_rain:"冻雨",
        thunder_rain:"雷阵雨",
        thunder_rain_with_hail:"雷阵雨伴有冰雹",
        rain_mix_snow:"雨夹雪",
        light_snow:"阵雪；小雪",
        moderate_snow:"中雪；小雪-中雪",
        great_snow:"中雪-大雪；大雪",
        heavy_snow:"大雪-暴雪；暴雪",
        cloudy:"多云",
        sun:"晴",
        sand_storm:"沙尘暴；浮尘；扬沙；沙尘",
        fog:"雾",
        overcast:"阴"
    };

    var MILLISECOND_PER_DAY = 1000 * 60 * 60 * 24;
	
	function filterBusinessResult(filterResult, xmlDoc){
		console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);
		
		var objectElements = xmlDoc.getElementsByTagName(FilterName.object);
		if (objectElements && objectElements.length > 0) {
			var objectElement = objectElements[0];
			
			//解析url字段
            var urlElements = objectElement.getElementsByTagName(FilterName.url);
            if (urlElements && urlElements.length > 0) {
                var urlElement = urlElements[0];
                if (urlElement && urlElement.firstChild) {
                    filterResult.url = urlElement.firstChild.nodeValue;
                }
            }
            
			//解析city字段
			var cityElements = objectElement.getElementsByTagName(FilterName.city);
			if (cityElements && cityElements.length > 0) {
				var cityElement = cityElements[0];
				if (cityElement && cityElement.firstChild) {
					filterResult.city = cityElement.firstChild.nodeValue;
				}
			}
			
			//解析location字段
			var location = {};
			var locationElements = objectElement.getElementsByTagName(FilterName.location);
			if (locationElements && locationElements.length > 0) {
				var location = parseLocationElment(objectElement);
				filterResult.location = location;
			}
			
			//解析loc_judgement字段
			var locJudgement = parseSubElementValue(objectElement, FilterName.locJudgement);
			if (locJudgement) {
				filterResult.locJudgement = locJudgement;
			}
			
			//解析last_update字段
			var lastUpdate = parseLastUpdateTime(objectElement);
			if (lastUpdate) {
				filterResult.lastUpdate = lastUpdate;
			}
			
			//解析interest_datetime字段
			var interestDateTime = parseInterestDateTime(objectElement);
			if (interestDateTime) {
				filterResult.interestDateTime = interestDateTime;
			}
			
			//解析forecast字段
			var forecasts = parseForecast(objectElement);
			filterResult.forecasts = forecasts;
		}
	}
	
	function parseLocationElment(objectElement) {
		var location = {};
		var locationElments = objectElement.getElementsByTagName(FilterName.location);
		if (locationElments && locationElments.length > 0) {
			var locationElement = locationElments[0];
			
			//解析province字段
			var province = parseSubElementValue(locationElement, FilterName.province);
			if (province) {
				location.province = province;
			}
			
			//解析city字段
			var city = parseSubElementValue(locationElement, FilterName.city);
			if (city) {
				location.city = city;
			}
			
			//解析area字段
			var area = parseSubElementValue(locationElement, FilterName.area);
			if (area) {
				location.area = area;
			}
			
			//解析land_mark字段
			var landmark = parseSubElementValue(locationElement, FilterName.landmark);
			if (landmark) {
				location.landmark = landmark;
			}
		}
		
		return location;
	}
	
	function parseLastUpdateTime(objectElement) {
		var lastUpdateTime; 
		var lastUpdateElements = objectElement.getElementsByTagName(FilterName.lastUpdate);
		if (lastUpdateElements && lastUpdateElements.length > 0) {
			var lastUpdateElement = lastUpdateElements[0];
			if (lastUpdateElement) {
				var datetimeElments = lastUpdateElement.getElementsByTagName(FilterName.dateTime);
				if (datetimeElments && datetimeElments.length > 0) {
					var datetimeElment = datetimeElments[0];
					if (datetimeElment) {
						var date = datetimeElment.getAttribute(FilterName.date);
						var time = datetimeElment.getAttribute(FilterName.time);
						
						if (date) {
							lastUpdateTime = date;
						}
						if (time) {
							lastUpdateTime += " " + time;
						}
						return lastUpdateTime; 
					}
				}
			}
		}
	}
	
	
	function parseInterestDateTime(objectElement) {
		var interestDateTimeElments = objectElement.getElementsByTagName(FilterName.interestDatetime);
		if (interestDateTimeElments && interestDateTimeElments.length > 0) {
			var interestDateTime = [];
			for (var i = 0; i < interestDateTimeElments.length; i++) {
				var interestDateTimeElment = interestDateTimeElments[i];
				if (interestDateTimeElment) {
					var datetimeElments = interestDateTimeElment.getElementsByTagName(FilterName.dateTime);
					if (datetimeElments && datetimeElments.length > 0) {
						var datetimeElment = datetimeElments[0];
						if (datetimeElment) {
							var date = datetimeElment.getAttribute(FilterName.date);
							
							if (date) {
								interestDateTime.push(date);
							}
						}
					}
			    }

            }
           return interestDateTime;
		 }
	}

	function parseForecast(objectElement) {
        var  forecasts = [];
		var forecastElments = objectElement.getElementsByTagName(FilterName.forecast);
		if (forecastElments && forecastElments.length > 0) {
			for (var i = 0; i < forecastElments.length; i++) {
				var forecast = {};
				var forecastElment = forecastElments[i];
				if (forecastElment) {
					//解析datetime字段
					var datetimeElments = forecastElment.getElementsByTagName(FilterName.dateTime);
					if (datetimeElments && datetimeElments.length > 0) {
						var datetimeElment = datetimeElments[0];
						if (datetimeElment) {
							var date = datetimeElment.getAttribute(FilterName.date);

							if (date) {
								forecast.date = date;
							}
						}
					}

                    //解析condition字段
                    var condition = {};
                    var conditionElments = forecastElment.getElementsByTagName(FilterName.condition);
                    if (conditionElments && conditionElments.length > 0) {
                        var conditionElement = conditionElments[0];
                        if (conditionElement) {
                            //解析description字段
                            var description = parseSubElementValue(conditionElement, FilterName.description);
                            if (description) {
                                condition.description = description;
                            }

                            //解析image字段
                            var  image = parseSubElementValue(conditionElement, FilterName.image);
                            if (image) {
                                condition.image = image;
                            }

                            //解析bg_image字段
                            var bgImage = parseSubElementValue(conditionElement, FilterName.bgImage);
                            if (bgImage) {
                                condition.bgImage = bgImage;
                            }
                        }
                    }
                    forecast.condition = condition;

                    //解析pm25字段
                    var pm25 = parseSubElementValue(forecastElment, FilterName.pm25);
                    if (pm25) {
                        forecast.pm25 = pm25;
                    }
                    //解析aqi字段
                    var aqi = parseSubElementValue(forecastElment, FilterName.aqi);
                    if (aqi) {
                        forecast.aqi = aqi;
                    }

                    //解析temp字段
                    var temp = parseSubElementValue(forecastElment, FilterName.temp);
                    if (temp) {
                        forecast.temp = temp;
                    }

                    //解析humidity字段
                    var humidity = parseSubElementValue(forecastElment, FilterName.humidity);
                    if (humidity) {
                        forecast.humidity = humidity;
                    }

                    //解析wind字段
                    var wind = parseSubElementValue(forecastElment, FilterName.wind);
                    if (wind) {
                        forecast.wind = wind;
                    }

                    //解析low字段
                    var low = parseSubElementValue(forecastElment, FilterName.low);
                    if (low) {
                        forecast.low = low;
                    }

                    //解析high字段
                    var high = parseSubElementValue(forecastElment, FilterName.high);
                    if (high) {
                        forecast.high = high;
                    }
                }

                forecasts.push(forecast);
			}
		}
        return forecasts;
	}


	function parseSubElementValue(parentElement, subElementName) {
		if (parentElement) {
			var subElements = parentElement.getElementsByTagName(subElementName);
			if (subElements && subElements.length > 0) {
				var subElement = subElements[0];
				if (subElement && subElement.firstChild) {
					return subElement.firstChild.nodeValue;
				}
			}
		}
	}

    /** 延迟请求增加积分*/
    function delayRunAddSign(opcode){
        setTimeout(function(){exec("CommonComponents", "addCoin", [{"opCode":opcode}])}, 50);
    }
    function addSign(filterResult) {
        console.log("filterResult.isTextSearchResult " + filterResult.isTextSearchResult);
        if (!filterResult.isTextSearchResult) {
            delayRunAddSign("MIC_WEATHER");
            delayRunAddSign("N_MIC_WEATHER");
        }
    }

    function onSuccess(filterResult, xmlDoc) {
    	console.log("weather handler is called");
        filterBusinessResult(filterResult, xmlDoc);
        console.log("filterResult is " + JSON.stringify(filterResult));
        
        if(filterResult.url) {
            var webObj = {};
            webObj.mTextSearchMode = filterResult.isTextSearchResult;
            webObj.mSpeechText = "";
            
            webObj.mRawText = filterResult.rawtext;
            webObj.mUrl = filterResult.url;
            webObj.mIsVoiceResult = true;
            //exec("WidgetMMPContainerComponents", "addWebViewForLocation", [webObj]);
            addSign(filterResult)
            window.location.href = filterResult.url;
            return;
        }
        //天气信息为空的异常处理
        if (!filterResult.forecasts || filterResult.forecasts.length <= 0) {
        	console.log("weather info is null");
        	delayedAddAnswerView(filterResult.tip, filterResult.focus, 100);
            //语音播报暂时未做处理
            exec("SynthesizeComponents", "ttsSpeak", [filterResult.rawtext]);
            return;
        }
        addSign(filterResult)
        //添加天气视图
        addWeatherView(filterResult);
    }
    
    /**
     * 根据location字段来拼接出视图的id
     */
    function getViewId(location) {
    	var id = "";
    	if (location.province) {
    		id += location.province;
    	}
    	if (location.city) {
    		id += location.city;
    	}
    	if (location.area) {
    		id += location.area;
    	}
    	if (location.landmark) {
    		id += location.landmark;
    	}
    	
    	return id;
    }
    
    function addWeatherView(filterResult) {
        var weatherViewData = {};
        weatherViewData.speech = filterResult.speech;
        weatherViewData.tip = filterResult.tip;
        weatherViewData.isTextSearchResult = filterResult.isTextSearchResult;
        
        //获取当前城市的location拼接的字符串
        var locationString = getLocationString(filterResult.location);
        
        weatherViewData.id = getViewId(filterResult.location);
        weatherViewData.city = filterResult.city;
        weatherViewData.updateTime = filterResult.lastUpdate;
        
        //封装location字段
        weatherViewData.location = {};
        if (filterResult.location.province) {
        	weatherViewData.location.province = filterResult.location.province;
        } else {
        	weatherViewData.location.province = "";
        }
        if (filterResult.location.city) {
        	weatherViewData.location.city = filterResult.location.city;
        } else {
        	weatherViewData.location.city = "";
        }
        if (filterResult.location.area) {
        	weatherViewData.location.area = filterResult.location.area;
        } else {
        	weatherViewData.location.area = "";
        }
        if (filterResult.location.landmark) {
        	weatherViewData.location.landmark = filterResult.location.landmark;
        } else {
        	weatherViewData.location.landmark = "";
        }
        

        weatherViewData.weathers = [];
        var targetForecast = null;
        var targetWeatherInfo = null;
        var targetImageDes = "";
        for (var i = 0; i < filterResult.forecasts.length; i++) {
            var forecast = filterResult.forecasts[i];

            var weatherInfo = {};

            var date = forecast.date;
            var weekTv = dayToWeek(date); //将日期转换为星期
            weatherInfo.weekTv = weekTv;

            weatherInfo.temperature = forecast.temp;
            weatherInfo.humidity = forecast.humidity;
            weatherInfo.wind = forecast.wind;
            weatherInfo.lowTemp = forecast.low;
            weatherInfo.highTemp = forecast.high;
            var imageDes = getImageDes(forecast.condition.image);
            weatherInfo.image = skinPath + "dialogModeRes/image/default/" + "weather_" + imageDes + "_small.png";
            weatherInfo.description = forecast.condition.description;

            //目标天气，即用户感兴趣的天气（如合肥明天的天气，感兴趣的就是明天）
            if (isContain(filterResult.interestDateTime, forecast.date)) {
                targetForecast = forecast;
                targetWeatherInfo = weatherInfo;
                targetImageDes = imageDes;
            } else if (i == 0) {
                // 没有匹配的话就使用第一天的数据
                targetForecast = forecast;
                targetWeatherInfo = weatherInfo;
                targetImageDes = imageDes;
            }

            weatherViewData.weathers.push(weatherInfo);
        }

        targetWeatherInfo.isTarget = true;
        targetWeatherInfo.image = skinPath + "dialogModeRes/image/default/" + "weather_" + targetImageDes + "_small.png";

        //将目前天气的日期转换成今天/明天/后天/大后天
        var target_day = dateToDay(targetForecast.date);
        weatherViewData.target_day = target_day;
        weatherViewData.target_temperature = targetWeatherInfo.temperature;
        weatherViewData.target_humidity = targetWeatherInfo.humidity;
        weatherViewData.target_wind = targetWeatherInfo.wind;
        weatherViewData.target_lowTemp = targetWeatherInfo.lowTemp;
        weatherViewData.target_highTemp = targetWeatherInfo.highTemp;
        weatherViewData.target_image = skinPath + "dialogModeRes/image/default/" + "weather_" + targetImageDes + "_big.png";
        weatherViewData.target_description = targetWeatherInfo.description;
        weatherViewData.target_daytime = targetForecast.date;
        weatherViewData.target_pm25 = targetForecast.pm25;
        weatherViewData.target_aqi = targetForecast.aqi;        //增加aqi的解析
        weatherViewData.showProgressBar = false;

        console.log("weatherViewData is " + JSON.stringify(weatherViewData));
        addWebE("WidgetWeatherView", weatherViewData);
    }

    function isContain(array, element) {
        if (!array || array.length <= 0) {
            return false;
        }

        for (var i = 0; i < array.length; i ++) {
            if (array[i] == element) {
                return true;
            }
        }

        return false;
    }

    /**
     * 将指定的日期转换成今天/明天/后天/大后天
     * @param date
     */
    function dateToDay(date) {
        var target_day = "";
        //计算指定日期与当前日期相差几天
        var daysDifference = countDays(date);

        switch (daysDifference) {
            case -2:
                target_day = "前天";
                break;
            case -1:
                target_day = "昨天";
                break;
            case 0:
                target_day = "今天";
                break;
            case 1:
                target_day = "明天";
                break;
            case 2:
                target_day = "后天";
                break;
            case 3:
                target_day = "大后天";
                break;
        }

        return target_day;
    }

    /**
     * 计算指定日期与当前日期相差几天
     * @param date
     */
    function countDays(date) {
        if (!date) {
            return -10000;
        }

        //获取指定日期的毫秒数
        date = date.replace(/-/g,"/");
        var myDate = new Date(Date.parse(date));
        var myTime = myDate.getTime();
        console.log("myTime is " + myTime);

        //获取当前日期的毫秒数
        var currentDate = new Date();
        var day = currentDate.getDate(); //日
        var month = currentDate.getMonth() + 1;//月
        var year = currentDate.getFullYear();//年
        currentDate = new Date(Date.parse(year + "/" + month + "/" + day));
        var currentTime = currentDate.getTime();
        console.log("currentTime is " + currentTime);

        var days = (myTime - currentTime)/MILLISECOND_PER_DAY;
        console.log("countDays()-->days is " + days);

        return parseInt(days);
    }

    function getImageDes(image) {
        var imageDes = "";
        if (image) {
            if (WeatherConstant.light_rain.indexOf(image) != -1) {
                imageDes = "light_rain";
            } else if (WeatherConstant.moderate_rain.indexOf(image) != -1) {
                imageDes = "moderate_rain";
            } else if (WeatherConstant.great_rain.indexOf(image) != -1) {
                imageDes = "great_rain";
            } else if (WeatherConstant.heavy_rain.indexOf(image) != -1) {
                imageDes = "heavy_rain";
            } else if (WeatherConstant.ice_rain.indexOf(image) != -1) {
                imageDes = "ice_rain";
            } else if (WeatherConstant.thunder_rain.indexOf(image) != -1) {
                imageDes = "thunder_rain";
            } else if (WeatherConstant.thunder_rain_with_hail.indexOf(image) != -1) {
                imageDes = "thunder_rain_with_hail";
            } else if (WeatherConstant.rain_mix_snow.indexOf(image) != -1) {
                imageDes = "rain_mix_snow";
            } else if (WeatherConstant.light_snow.indexOf(image) != -1) {
                imageDes = "light_snow";
            } else if (WeatherConstant.moderate_snow.indexOf(image) != -1) {
                imageDes = "moderate_snow";
            } else if (WeatherConstant.great_snow.indexOf(image) != -1) {
                imageDes = "great_snow";
            } else if (WeatherConstant.heavy_snow.indexOf(image) != -1) {
                imageDes = "heavy_snow";
            } else if (WeatherConstant.sun.indexOf(image) != -1) {
                imageDes = "sun";
            } else if (WeatherConstant.cloudy.indexOf(image) != -1) {
                imageDes = "cloudy";
            } else if (WeatherConstant.overcast.indexOf(image) != -1) {
                imageDes = "overcast";
            } else if (WeatherConstant.fog.indexOf(image) != -1) {
                imageDes = "fog";
            } else if (WeatherConstant.sand_storm.indexOf(image) != -1) {
                imageDes = "sand_storm";
            }
        }
        return imageDes;
    }

    function dayToWeek(date) {
        if (date) {
            var weekDay = ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
            date = date.replace(/-/g,"/");
            var myDate = new Date(Date.parse(date));
            return weekDay[myDate.getDay()];
        }
    }

    function hasKept(favoriteCitiesString, locationString) {
    	console.log("hasKept(), favoriteCitiesString is " + favoriteCitiesString + ", locationString is " + locationString);
        if (!favoriteCitiesString) {
            return false;
        }
        var favoriteCities = favoriteCitiesString.split("@");
        for (var i = 0; i < favoriteCities.length; i++) {
        	if (favoriteCities[i] == locationString) {
        		return true;
        	}
        }
        return false;
    }

    function getLocationString(location) {
        var locationString = "";
        var province = location.province;
        if (province) {
           locationString += province;
        }

        var city = location.city;
        locationString += "|";
        if (city) {
           locationString += city;
        }

        var area = location.area;
        locationString += "|";
        if (area) {
            locationString += area;
        }

        var landmark = location.landmark;
        locationString += "|";
        if (landmark) {
            locationString += landmark;
        }

        return locationString;
    }

    //export
    var weatherRecognizeFilter = {};
    weatherRecognizeFilter.filterBusinessResult = filterBusinessResult;
    weatherRecognizeFilter.onSuccess = onSuccess;
    return weatherRecognizeFilter;

});
