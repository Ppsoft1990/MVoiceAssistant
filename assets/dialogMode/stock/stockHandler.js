/**
 * Created by admin on 14-2-22.
 */
define(function(){
    var FilterName = {
        object:"object",
        url: "url"
    };

    function filterBusinessResult(filterResult, xmlDoc){
        console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);

        var objectElements = xmlDoc.getElementsByTagName(FilterName.object);
        if(objectElements && objectElements.length > 0){
            var objectElement = objectElements[0];
            
            var businessUrlElements = objectElement.getElementsByTagName(FilterName.url);
            if(businessUrlElements && businessUrlElements.length > 0){
                if(businessUrlElements[0].firstChild) {
                	var businessUrl = businessUrlElements[0].firstChild.nodeValue;
                	if(businessUrl) {
	                    filterResult.businessUrl = businessUrl;
	                    return;
                	}
                }
            }
        }
        
        if (isTouch) {
            filterResult.url = "http://m.baidu.com/s?word=" + filterResult.rawtext;
        } else {
            filterResult.url = "http://www.baidu.com/s?word=" + filterResult.rawtext;
        }
    }
    
    function onSuccess(filterResult, xmlDoc){
        console.log("stockRecognizeFilter onSuccess");
        filterBusinessResult(filterResult, xmlDoc);
        if(filterResult.businessUrl) {

            exec("UIComponents", "addAnswerMessage", [filterResult.tip, false]);
            exec("UIComponents", "addCommonResultMessage", [filterResult.rawtext, filterResult.businessUrl]);
        	window.location.href = filterResult.businessUrl;
		} else {
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
		}
    }
    
    //export
    var stockRecognizeFilter = {};
    stockRecognizeFilter.filterBusinessResult = filterBusinessResult;
    stockRecognizeFilter.onSuccess = onSuccess;
    return stockRecognizeFilter;
});