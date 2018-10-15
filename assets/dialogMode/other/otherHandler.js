/**
 * Created by admin on 14-2-22.
 */
define(function(){
    var FilterName = {
		result:"result",
		operation:"operation",
		tip:"tip",
        object:"object",
        name:"name",
		url:"url",
    };

   function filterBusinessResult(filterResult, xmlDoc){
        console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);
		if (xmlDoc.getElementsByTagName('rawtext')[0]) {
			filterResult.rawtext = xmlDoc.getElementsByTagName('rawtext')[0].firstChild.nodeValue;
		}
        var resultElements = xmlDoc.getElementsByTagName(FilterName.result);
        if(resultElements && resultElements.length > 0){
            var resultElement = resultElements[0];

            var actionElements = resultElement.getElementsByTagName(FilterName.action);

            if(actionElements && actionElements.length > 0){
                var actionElement = actionElements[0];
                var operationElements = actionElement.getElementsByTagName(FilterName.operation);
                if(operationElements && operationElements.length > 0){
                    filterResult.operation = operationElements[0].firstChild.nodeValue;
                }
                var tipElements = actionElement.getElementsByTagName(FilterName.tip);
                if(tipElements && tipElements.length > 0){
                    filterResult.tip = tipElements[0].firstChild.nodeValue;
                }
            }

            var objectElements = resultElement.getElementsByTagName(FilterName.object);
            if(objectElements && objectElements.length > 0){
                var objectElement = objectElements[0];
                var nameElements = objectElement.getElementsByTagName(FilterName.name);
                if(nameElements && nameElements.length > 0){
                    filterResult.name = nameElements[0].firstChild.nodeValue;
                }
                var searchElements = objectElement.getElementsByTagName(FilterName.url);
                if(searchElements && searchElements.length > 0 && searchElements[0].firstChild){
                    filterResult.search = searchElements[0].firstChild.nodeValue;
                }
            }
        }
    }

    function onSuccess(filterResult, xmlDoc){
        filterBusinessResult(filterResult, xmlDoc);	
        
        var openUrl = null;
		if (filterResult.search && filterResult.search.trim() != "") {
			openUrl = filterResult.search;
		} else {
			var resultString = exec("SystemComponents", "getSearchUrl", [filterResult.name, ""]);
			var searchUrl = getResultMessage( resultString );
			openUrl = searchUrl;
		}
		
		if(openUrl) {
			var webObj = {};
			webObj.mTextSearchMode = filterResult.isTextSearchResult;
			if(filterResult.speech){
				webObj.mSpeechText = filterResult.speech;
			}else{
				webObj.mSpeechText = filterResult.tip;
			}
			webObj.mRawText = filterResult.rawtext;
			webObj.mUrl = openUrl;
			webObj.mIsVoiceResult = true;

            exec("UIComponents", "addAnswerMessage", ["为您找到下面的结果", false]);
			exec("UIComponents", "addCommonResultMessage", [filterResult.rawtext, openUrl]);
			exec("WidgetMMPContainerComponents", "addWebViewForLocation", [webObj]);
		}
    }

    //export
    var otherHandler = {};
    otherHandler.filterBusinessResult = filterBusinessResult;
    otherHandler.onSuccess = onSuccess;
    return otherHandler;

});