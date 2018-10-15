/**
 * Created by admin on 14-2-22.
 */
define(function() {
    var FilterName = {
        result : "result",
        focus  : "focus",
        action : "action",
        operation : "operation",
        tip : "tip",
        speech : "speech",
        object : "object",
        name : "name",
        search_url : "search_url"
    };

    function filterBusinessResult(filterResult, xmlDoc) {
        console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);

        var resultElements = xmlDoc.getElementsByTagName(FilterName.result);
        if (isNotEmpty(resultElements)) {
            var resultElement = resultElements[0];
            filterResult.focus = getSubElementValueByTag(resultElement, FilterName.focus);
            
            var actionElements = resultElement.getElementsByTagName(FilterName.action);
            if (isNotEmpty(actionElements)) {
                var actionElement = actionElements[0];
                filterResult.operation = getSubElementValueByTag(actionElement, FilterName.operation);
                filterResult.tip = getSubElementValueByTag(actionElement, FilterName.tip);
                filterResult.speech = getSubElementValueByTag(actionElement, FilterName.speech);
            }

            var objectElements = resultElement.getElementsByTagName(FilterName.object);
            if (isNotEmpty(objectElements)) {
                var objectElement = objectElements[0];
                filterResult.name = getSubElementValueByTag(objectElement, FilterName.name);
                filterResult.search = getSubElementValueByTag(objectElement, FilterName.search_url);
            }
        }
        console.log("app result is focus : " + filterResult.focus + " operation " + filterResult.operation + " tip " + filterResult.tip + " speech " + filterResult.speech + " name " + filterResult.name + " search_url " + filterResult.search);
    }
    
        /***
     * 返回某个节点的子节点标签内容
     * @param {Object} parentElement
     * @param {Object} tagName
     */
    function getSubElementValueByTag(parentElement, tagName) {
        if (parentElement && tagName) {
            var subElements = parentElement.getElementsByTagName(tagName);
            if (isNotEmpty(subElements) ) {
                for(var i = 0; i < subElements.length; i++) {
                    if(subElements[i] 
                        && subElements[i].parentNode == parentElement
                        && subElements[i].firstChild) {
                            return subElements[i].firstChild.nodeValue;
                        }
                }
            }
        }
        return null;
    }
    
    function isNotEmpty(elements) {
        return elements && elements.length > 0;
    }

    function onSuccess(filterResult, xmlDoc) {
        filterBusinessResult(filterResult, xmlDoc);
        if (filterResult.operation == "launch") {
            var jString = exec("AppComponents", "searchApp", [filterResult.name]);
            console.log("searchApp result is " + jString);
            if(jString == undefined) {
                gotoSearchPage(filterResult, "正在搜索" + filterResult.name);
                console.error("search local app, while jString result is undefined");
                return;
            }
            // var jsonResult = eval('(' + jString + ')');
            // var jArray = jsonResult.items;
            var jArray = getResultMessage(jString).items;
            if (!isNotEmpty(jArray)) {
                //var tip = "手机中没有找到" + filterResult.name + "，我为您搜索了一下";
                gotoSearchPage(filterResult, "正在搜索" + filterResult.name);
            } else if (1 == jArray.length) {
                //监听浏览器事件
                exec("LxBrowserComponents", "isEventCallBackForJS", [true]);
                var tip = "正在打开" + jArray[0].appName;
                console.log(tip);
                exec("AppComponents", "openApp", [jArray[0].appName, jArray[0].packageName, jArray[0].className]);
                setTimeout(function() {
                    addWebE("APPListView", jArray);
                }, 300);
            } else {
                //不能直接使用addE,从java中传过来的数据被转义过，再次转化为Json对象就会出问题
                var tip = "找到" + jArray.length +"个应用程序";
                console.log(tip);
                addWebE("APPListView", jArray);
                dotts(tip, true, filterResult.isTextSearchResult);
            }
        } else {
            gotoSearchPage(filterResult, "正在搜索" + filterResult.name);
        }
    }
    
    function gotoSearchPage(filterResult, tip) {
        if (!filterResult || !tip) {
            return;
        }
        console.log("gotoSearchPage tip is " + tip);
        if (!filterResult.search || filterResult.search.length == 0) {
            if(filterResult.name == null || filterResult.name == undefined) {
                exec("UIComponents", "showToast", ["请说出应用名称", 1]);
            } else {
                exec("UIComponents", "showToast", ["没有找到" + filterResult.name, 1]);
            }
        } else {
        	var webObj = {};
			webObj.mTextSearchMode = filterResult.isTextSearchResult;
			webObj.mSpeechText = filterResult.tip;
			webObj.mRawText = filterResult.rawtext;
			webObj.mUrl = filterResult.search;
			webObj.mIsVoiceResult = true;
            exec("WidgetMMPContainerComponents", "addWebViewForLocation", [webObj]);
        }
    }
    
    function dotts(speakText, isShowSpeakButton, isTextSearchResult) {
        require(["./common/speakHandler.js"], function(speakHandler) {
                console.log("app require speakHandler");
                console.log("app speaktext: " + speakText + " isTextSearchResult: " + isTextSearchResult);
                speakHandler.setSpeechText(speakText);
                if(isShowSpeakButton) {
                    speakHandler.showSpeakButton();
                }
                if (!isTextSearchResult) {
                    speakHandler.speak(100);
                }
        });
    }

    //灵犀在前台显示
    function onActivityResume() {
        console.log('onActivityResume callBack');
        forceRefreshScreen();
    }
    window.onActivityResume = onActivityResume;

    //export
    var appRecognizeFilter = {};
    appRecognizeFilter.filterBusinessResult = filterBusinessResult;
    appRecognizeFilter.onSuccess = onSuccess;
    return appRecognizeFilter;

}); 