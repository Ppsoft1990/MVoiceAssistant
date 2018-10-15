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
		id:"id",
        data_source:"data_source",
        category:"category",
        more_url:"more_url",
        url:"url",
        alternative_source:"alternative_source",
        shop_list:"shop_list",
        shop:"shop",
        branch_name:"branch_name",
        address:"address",
        avg_price:"avg_price",
        score:"score",
        distance:"distance",
        shop_url:"shop_url"
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
                if(searchElements && searchElements.length > 0){
                    filterResult.search = searchElements[0].firstChild.nodeValue;
                }
                
                var more_urlElements = objectElement.getElementsByTagName(FilterName.more_url);
            	if(more_urlElements && more_urlElements.length > 0){
                	filterResult.moreUrl = more_urlElements[0].firstChild.nodeValue;
           	    }
                
            }
        }
    }

    function onSuccess(filterResult, xmlDoc){
        filterBusinessResult(filterResult, xmlDoc);
         var isNeedTTS = false;
		if (filterResult.moreUrl && filterResult.moreUrl.length > 0) {
		 	var webObj = {};
			webObj.mTextSearchMode = filterResult.isTextSearchResult;
			if(filterResult.speech){
				webObj.mSpeechText = filterResult.speech;
			}else{
				webObj.mSpeechText = filterResult.tip;
			}
			webObj.mRawText = filterResult.rawtext;
			webObj.mUrl = filterResult.moreUrl;
			webObj.mIsVoiceResult = true;
			exec("WidgetMMPContainerComponents", "addWebViewForLocation", [webObj]);
		} else {
			isNeedTTS = true;
			exec("UIComponents", "showToast", ["没有找到" + filterResult.rawtext, 1]);
		}  
		
		if(isNeedTTS){
			require(["./common/speakHandler.js"], function(speakHandler) {
                console.log("restaurant require speakHandler");
                var speakText = null;
                if (filterResult.tip) {
                    speakText = filterResult.tip;
                } else if (filterResult.speech) {
                    speakText = filterResult.speech;
                }
                console.log("restaurant speaktext: " + speakText + " isTextSearchResult: " + filterResult.isTextSearchResult);
                speakHandler.setSpeechText(speakText);
                if (!filterResult.isTextSearchResult) {
                    speakHandler.speak(100);
                }
        	});
		}
    }

    //export
    var restaurantHandler = {};
    restaurantHandler.filterBusinessResult = filterBusinessResult;
    restaurantHandler.onSuccess = onSuccess;
    return restaurantHandler;

});