/**
 * author bjwu
 */
define(function() {
    var FilterName = {
        action : "action",
        queried : "queried",
        desc : "desc",
        object : "object",
        code : "code",
        url : "url",
        server_url : "server_url",
        data_source : "data_source",
        id : "id",
        name : "name",
    };

    function filterBusinessResult(filterResult, xmlDoc) {
        console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);

        var queried = null;
        var actionElements = xmlDoc.getElementsByTagName(FilterName.action);

        if (actionElements && actionElements.length > 0) {
            var actionElement = actionElements[0];
            var queriedElements = actionElement.getElementsByTagName(FilterName.queried);
            if (queriedElements && queriedElements.length > 0) {
                filterResult.queried = queriedElements[0].firstChild.nodeValue;
            }
        }

        var descElements = xmlDoc.getElementsByTagName(FilterName.desc);
        if (descElements && descElements[0] && descElements[0].firstChild) {
            filterResult.desc = descElements[0].firstChild.nodeValue;
        }

        var objectElements = xmlDoc.getElementsByTagName(FilterName.object);
        if (validateElements(objectElements)) {
            var urlElements = objectElements[0].getElementsByTagName(FilterName.url);
            if (validateElements(urlElements)) {
                if (urlElements[0].firstChild) {
                    console.log("urlElement url " + urlElements[0].firstChild.nodeValue);
                    filterResult.url = urlElements[0].firstChild.nodeValue;
                }
            }

            var codeElements = objectElements[0].getElementsByTagName(FilterName.code);
            if (validateElements(codeElements)) {
                if (codeElements[0].firstChild) {
                    filterResult.code = codeElements[0].firstChild.nodeValue;
                }
            }

            var server_urlElements = objectElements[0].getElementsByTagName(FilterName.server_url);
            if (validateElements(server_urlElements)) {
                if (server_urlElements[0].firstChild) {
                    filterResult.server_url = server_urlElements[0].firstChild.nodeValue;
                }
            }

            var data_sourceElements = objectElements[0].getElementsByTagName(FilterName.data_source);
            if (validateElements(data_sourceElements)) {
                if (data_sourceElements[0].firstChild) {
                    filterResult.data_source = data_sourceElements[0].firstChild.nodeValue;
                }
            }

            var idElements = objectElements[0].getElementsByTagName(FilterName.id);
            if (validateElements(idElements)) {
                if (idElements[0].firstChild) {
                    filterResult.id = idElements[0].firstChild.nodeValue;
                }
            }

            var nameElements = objectElements[0].getElementsByTagName(FilterName.name);
            if (validateElements(nameElements)) {
                if (nameElements[0].firstChild) {
                    filterResult.name = nameElements[0].firstChild.nodeValue;
                }
            }

        }

    }

    function validateElements(elements) {
        if (elements && elements.length > 0) {
            return true;
        }
        return false;
    }

    function onSuccess(filterResult, xmlDoc) {
        console.log("JSON.stringify(filterResult) = " + JSON.stringify(filterResult));
        filterBusinessResult(filterResult, xmlDoc);
        console.log("filterResult.url = " + filterResult.url);
        if (filterResult.url) {
           var webObj = {};
			webObj.mTextSearchMode = filterResult.isTextSearchResult;
			if(filterResult.speech){
				webObj.mSpeechText = filterResult.speech;
			}else{
				webObj.mSpeechText = filterResult.tip;
			}
			webObj.mRawText = filterResult.rawtext;
			webObj.mUrl = filterResult.url;
			webObj.mIsVoiceResult = true;

			exec("UIComponents", "addAnswerMessage", [filterResult.tip, false]);

			exec("UIComponents", "addCommonResultMessage", [filterResult.rawtext, filterResult.url]);

			exec("WidgetMMPContainerComponents", "addWebViewForLocation", [webObj]);
        } else if (filterResult.focus == "flight" && filterResult.queried) {
            setTimeout(function() {
                addWebE("FlightQueryView", filterResult);
            }, 150);
        } else {
            delayedAddAnswerView(filterResult.tip, filterResult.focus, 100);
        }
    }

    function onFail(filterResult, xmlDoc) {
        console.log("JSON.stringify(filterResult) = " + JSON.stringify(filterResult));
        filterBusinessResult(filterResult, xmlDoc);
        if (filterResult.focus == "flight" && filterResult.queried) {
            setTimeout(function() {
                addE("FlightQueryView", JSON.stringify(filterResult));
            }, 150);
        } else {
            delayedAddAnswerView(filterResult.tip, filterResult.focus, 100);
        }
    }

    //export
    var tripHandler = {};
    tripHandler.filterBusinessResult = filterBusinessResult;
    tripHandler.onSuccess = onSuccess;
    tripHandler.onFail = onFail;
    return tripHandler;

});
