/**
 *created by yongcao 2014-6-17 
 */

define(function(){
	var FilterName = {
        object:"object",
        point:"point",
        client:"client",
        url:"url"
	};
	
	var MapOperation = {
		locate: "locate",
		route: "route"
	};
	
	function filterBusinessResult(filterResult, xmlDoc) {
        console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);

		var objectElements = xmlDoc.getElementsByTagName(FilterName.object);
        if (objectElements && objectElements.length > 0) {
            var objectElement = objectElements[0];
            if (objectElement) {
                //解析point字段
                var points = [];
                var pointElements = objectElement.getElementsByTagName(FilterName.point);
                if (pointElements && pointElements.length > 0) {
                    for (var i = 0; i < pointElements.length; i++) {
                        var pointElement = pointElements[i];
                        if (pointElement && pointElement.firstChild) {
                            var point = {};
                            point.name = pointElement.firstChild.nodeValue;
                            var client = pointElement.getAttribute(FilterName.client);
                            console.log("client is " + client);
                            if (null != client && client) {
                                point.client = client;
                            }
                            points.push(point);
                        }
                    }
                }
                filterResult.points = points;

                //解析url字段
                var url = parseSubElementValue(objectElement, FilterName.url);
                if (url) {
                   filterResult.url = url;
                }
            }
	    }
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
    
    function openBaiduBrowserMapMarker(latitude, longitude, searchAddr) {
    	var url = "http://api.map.baidu.com/marker?";
		url += "location=" + latitude + "," + longitude;
		url += "&title=我的位置";
		url += "&content=" + searchAddr;
		url += "&output=html";
		url += "&zoom=12";
		url += "&coord_type=gcj02";
		url += "&src=com.iflytek.cmcc";
		console.log("openBaiduBrowserMapMarker, url is " + url);
		
		window.location.href = url;
		return;
    }
    
    function openBaiduBrowserMapPoi(location, city) {
    	var url = "http://api.map.baidu.com/place/search?";
		url += "query=" + location;
		url += "&region=" + city;
		url += "&output=html";
		url += "&zoom=12";
		url += "&src=com.iflytek.cmcc";
		console.log("openBaiduBrowserMapPoi, url is " + url);
		
		window.location.href = url;
		return;
    }
    
    function openBaiduBrowserMapRoute(sourceAddr, destAddr, sourceIsLocate, destIsLocate, latitude, longitude, city) {
    	var url = "http://api.map.baidu.com/direction?";
		if ("true" == sourceIsLocate && !destIsLocate) {
			url += "origin=latlng:" + latitude + "," + longitude + "|name:" + sourceAddr + 
			       "&destination=" + destAddr + "&mode=driving&coord_type=gcj02&region="+ city + "&output=html&src=com.iflytek.cmcc";
		} else if (!sourceIsLocate && "true" == destIsLocate) {
			url += "origin=" + sourceAddr + 
				   "&destination=latlng:" + latitude + "," + longitude + "|name:" + destAddr + "&mode=driving&coord_type=gcj02&region=" + city + "&output=html&src=com.iflytek.cmcc";
		} else if("true" == sourceIsLocate && "true" == destIsLocate) {
			url += "origin=latlng:" + latitude + "," + longitude + "|name:" + sourceAddr + "&destination=latlng:" + latitude + ","
					+ longitude + "|name:" + destAddr + "&mode=driving&coord_type=gcj02&region=" + city + "&output=html&src=com.iflytek.cmcc";
		} else {
			url += "origin=" + sourceAddr + "&destination=" + destAddr + "&mode=driving&coord_type=gcj02&region=" + city + "&output=html&src=com.iflytek.cmcc";
		}
		console.log("openBaiduBrowserMapRoute, url is " + url);
		
		window.location.href = url;
		return;
    }
    
    /**
     *打开服务器端返回的url，并进行播报 
     */
    function OpenUrlWithBroadcast(filterResult) {
        console.log("OpenUrlWithBroadcast(), filterResult is " + JSON.stringify(filterResult));
        if (filterResult.url) {
            var webObj = {};
            webObj.mTextSearchMode = filterResult.isTextSearchResult;
            if (filterResult.speech) {
                webObj.mSpeechText = filterResult.speech;
            } else {
                webObj.mSpeechText = filterResult.tip;
            }
            webObj.mRawText = filterResult.rawtext;
            webObj.mUrl = filterResult.url;
            webObj.mIsVoiceResult = true;

            exec("UIComponents", "addAnswerMessage", [filterResult.tip, false]);

            exec("UIComponents", "addCommonResultMessage", [filterResult.rawtext, filterResult.url, "map"]);

            exec("WidgetMMPContainerComponents", "addWebViewForLocation", [webObj]);
        }
    }
    
    function dotts(speakText, isShowSpeakButton, isTextSearchResult) {
        require(["./common/speakHandler.js"], function(speakHandler) {
                console.log("map require speakHandler");
                console.log("map speaktext: " + speakText + " isTextSearchResult: " + isTextSearchResult);
                speakHandler.setSpeechText(speakText);
                if(isShowSpeakButton) {
                    speakHandler.showSpeakButton();
                }
                if (!isTextSearchResult) {
                    speakHandler.speak(100);
                }
        });
    }

    
    //根据不同的operation，做相应的处理
    function processMapOperation(filterResult) {
        var  operation = filterResult.operation;
        var pointList = filterResult.points;
        var url = filterResult.url;
        console.log("processMapOperation(), operation is " + operation 
            + ", pointList is " + JSON.stringify(pointList) + ", url is " + url);
        //调用java层查找地图应用程序
        var searchResultString = exec("AppComponents", "searchMapApp", []);
        console.log("searchMapApp result is " + searchResultString);
                
        if(searchResultString == undefined) {
              console.error("searchResultString is undefined");
              //打开服务器端返回的url，并进行播报 
              OpenUrlWithBroadcast(filterResult);
              return;
        }
        
        //如果不存在地图app，则直接打开返回的url
        //如果只存在一个地图app，则调起该地图做相应的操作
        //如果存在多个地图app，则展示地图候选界面        
        var searchResultArray = getResultMessage(searchResultString).items;
        if (searchResultArray && searchResultArray.length > 0) {
              console.log("searchResultArray.length is " + searchResultArray.length);
              if (searchResultArray.length == 1) {
                   var matchMapApp = searchResultArray[0];
                   //调用地图app进行处理
                   var isSuccess = getResultMessage(exec("AppComponents", "openMapApp", [operation, matchMapApp, pointList]));;
                   console.log("isSuccess is " + isSuccess);
                   
                   //若打开app不成功，则直接打开服务器端返回的url
                   if (!isSuccess) {
                       //打开服务器端返回的url，并进行播报 
                       OpenUrlWithBroadcast(filterResult);
                   } else {
                       var mapListItemInfo = {};
                       mapListItemInfo.mapAppInfo = searchResultArray;
                       mapListItemInfo.data = pointList;
                       mapListItemInfo.operation = operation;
                       mapListItemInfo.url = url;
                       console.log("searchResultArray is " + JSON.stringify(mapListItemInfo));
                       
                       setTimeout(function() {
                          addWebE("mapAppListView", mapListItemInfo);
                       }, 300);
                   }
              } else {
                   //展示地图候选界面 
                   var mapListItemInfo = {};
                   mapListItemInfo.mapAppInfo = searchResultArray;
                   mapListItemInfo.data = pointList;
                   mapListItemInfo.operation = operation;
                   mapListItemInfo.url = url;
                   console.log("searchResultArray is " + JSON.stringify(mapListItemInfo));
                 
                   addWebE("mapAppListView", mapListItemInfo);
                   
                   //语音播报
                   var tip = "找到" + searchResultArray.length +"个地图应用程序";
                   dotts(tip, true, filterResult.isTextSearchResult);
              }
        } else {//不存在地图app
            //打开服务器端返回的url，并进行播报
            OpenUrlWithBroadcast(filterResult);
        }
    }
    
    function processFilterResult(filterResult) {
    	if (filterResult) {
        	//根据point的个数进行相应的处理
        	var pointList = filterResult.points;
        	if (!pointList || pointList.length == 0) { //打开百度web地图
        		//var url = "http://map.baidu.com/mobile/webapp/index/index/foo=bar/vt=map?third_party=lxyyzs";
        		//打开服务器端返回的url，并进行播报
                OpenUrlWithBroadcast(filterResult);
        	} else if (MapOperation.locate == filterResult.operation && pointList.length == 1) { //"位置查询"
        		console.log("operatin is locate, pointList is " + JSON.stringify(pointList));
        		processMapOperation(filterResult);
        		
        	} else if (MapOperation.route == filterResult.operation && pointList.length >= 2) {
        		console.log("operatin is route, pointList is " + JSON.stringify(pointList));
        		
        		if (!pointList[0].name || !pointList[1].name) {
        		    //打开服务器端返回的url，并进行播报
                    OpenUrlWithBroadcast(filterResult);
        		    return;
        		}
        		
        		processMapOperation(filterResult);
            }
        }
    }
	
	function onSuccess(filterResult, xmlDoc) {
        filterBusinessResult(filterResult, xmlDoc);
        console.log("filterResult is " + JSON.stringify(filterResult));
        
        //处理解析后的结果
        processFilterResult(filterResult);
	}

    //export
    var mapRecognizeFilter = {};
    mapRecognizeFilter.filterBusinessResult = filterBusinessResult;
    mapRecognizeFilter.onSuccess = onSuccess;
    return mapRecognizeFilter;
});