/**
 *create by yongcao 2014-6-10 
 */
define(function(){
	var FilterName = {
		object:"object",
        topic:"topic",
        question:"question",
        answer:"answer",
        audioUrl:"audio_url",
        picUrl:"pic_url",
        pageUrl:"page_url",
        urlText:"url_text",
        moreUrl:"more_url",
        browserTitle:"browser_title",
        pageTitle:"page_title",
        mainTitle:"main_title",
        subTitle:"sub_title"
	};
	
	var answerViewData = {};
	
	function filterBusinessResult(filterResult, xmlDoc){
		console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);
		
		var objectElements = xmlDoc.getElementsByTagName(FilterName.object);
		if (objectElements && objectElements.length > 0) {
			var objectElement = objectElements[0];

						
			//解析answer字段
            var answer = parseSubElementValue(objectElement, FilterName.answer);
            if (answer) {
                filterResult.answerText = answer;
            }


            //解析topic字段
            var topic = parseSubElementValue(objectElement, FilterName.topic);
            if (topic) {
                filterResult.topic = topic;
            }

            //解析audio_url字段
            var audioUrl = parseSubElementValue(objectElement, FilterName.audioUrl);
            if (audioUrl) {
                filterResult.audioUrl = audioUrl;
            }

            //解析pic_url字段
            var picUrl = parseSubElementValue(objectElement, FilterName.picUrl);
            if (picUrl) {
                filterResult.picUrl = picUrl;
            }

            //解析page_url字段
            var pageUrl = parseSubElementValue(objectElement, FilterName.pageUrl);
            if (pageUrl) {
                filterResult.pageUrl = pageUrl;
            }

            //解析url_text字段
            var urlText = parseSubElementValue(objectElement, FilterName.urlText);
            if (urlText) {
                filterResult.urlText = urlText;
            }

			//解析more_url字段
			var moreUrl = parseSubElementValue(objectElement, FilterName.moreUrl);
            if (moreUrl) {
                filterResult.moreUrl = moreUrl;
            }

            //OVS业务标题
            var browserTitle = {};
            for (var i = 0; i < objectElements.length; i++) {
                var objectE = objectElements[i];
                var browserTitleElements = objectE.getElementsByTagName(FilterName.browserTitle);
                if (browserTitleElements && browserTitleElements.length > 0) {
                    var browserTitleElement = browserTitleElements[0];
                    if (browserTitleElement) {
                        //解析main_title字段
                        var mainTitle = parseSubElementValue(browserTitleElement, FilterName.mainTitle);

                        //解析sub_title字段
                        var subTitle = parseSubElementValue(browserTitleElement, FilterName.subTitle);

                        if (mainTitle && subTitle) {
                            browserTitle.mainTitle = mainTitle;
                            browserTitle.subTitle = subTitle;
                            break;
                        }
                    }
                }
            }
            filterResult.browserTitle = browserTitle;

            //分省运营活动标题
            var pageTitle = {};
            for (var i = 0; i < objectElements.length; i++) {
                var objectE = objectElements[i];
                var pageTitleElements = objectE.getElementsByTagName(FilterName.pageTitle);
                if (pageTitleElements && pageTitleElements.length > 0) {
                    var pageTitleElement = pageTitleElements[0];
                    if (pageTitleElement) {
                        //解析main_title字段
                        var mainTitle = parseSubElementValue(pageTitleElement, FilterName.mainTitle);

                        //解析sub_title字段
                        var subTitle = parseSubElementValue(pageTitleElement, FilterName.subTitle);

                        if (mainTitle && subTitle) {
                            pageTitle.mainTitle = mainTitle;
                            pageTitle.subTitle = subTitle;
                            break;
                        }
                    }
                }
            }
            filterResult.pageTitle = pageTitle;
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
	
	function onSuccess(filterResult, xmlDoc) {
		filterBusinessResult(filterResult, xmlDoc);
		
		//处理解析后的结果
        processFilterResult(filterResult);
	}

    function  processFilterResult(filterResult) {
    	var topic = filterResult.topic;
    	console.log("processFilterResult, topic is " + topic);
    	if (topic && topic == "unknown") {
    		//调用用户设置的搜索引擎搜索文本
    		var searchUrl = "";
    		if(filterResult.pageUrl && filterResult.pageUrl.trim() != ""){
    			searchUrl = filterResult.pageUrl;
    		}else{
    			searchUrl = getResultMessage(exec('SystemComponents', 'getSearchUrl', [filterResult.rawtext, ""]));
    		}
            
            var webObj = {};
			webObj.mTextSearchMode = filterResult.isTextSearchResult;
			if(filterResult.speech) {
			    webObj.mSpeechText = filterResult.speech;
			} else {
    			webObj.mSpeechText = "为您找到下面的结果";
			}
			webObj.mRawText = filterResult.rawtext;
			webObj.mUrl = searchUrl;
			webObj.mIsVoiceResult = true;

			exec("WidgetMMPContainerComponents", "addWebViewForLocation", [webObj]);
    	} else {
    		if("errorword_guide" == topic) {
    			//错词匹配业务
    			console.log("open errorword_guide");
    			//进入示例引导页
    			var pageUrl = filterResult.pageUrl;
    			//直接在浏览器中打开pageUrl
				var webObj = {};
				webObj.mTextSearchMode = filterResult.isTextSearchResult;
				webObj.mSpeechText = "";
				webObj.mRawText = filterResult.rawtext;
				webObj.mUrl = pageUrl;
				webObj.mIsVoiceResult = true;

				exec("WidgetMMPContainerComponents", "addWebViewForLocation", [webObj]);
				return;
			}
    		
    		if (filterResult && filterResult.answerText) {
    		    filterResult.type = "NORMAL";
    		    answerViewData = filterResult;
				
				var picUrl = filterResult.picUrl;
				var pageUrl = filterResult.pageUrl;
				if (!picUrl && pageUrl) {// 只有pageUrl不为空，则是OVS业务
					answerViewData.pageUrl = pageUrl;
					//直接在浏览器中打开pageUrl
					var webObj = {};
					webObj.mTextSearchMode = filterResult.isTextSearchResult;
					
					if(filterResult.speech) {
                        webObj.mSpeechText = filterResult.speech;
                    } else {
                        webObj.mSpeechText = "为您找到下面的结果";
                    }
					webObj.mRawText = filterResult.rawtext;
					webObj.mUrl = pageUrl;
					webObj.mIsVoiceResult = true;
					// /男女生识别,网页进行了自动播报的控制
					if(topic && topic.indexOf("chat_JsonSex") > -1) {
					    webObj.mIsVoiceResult = false;
					}

					exec("WidgetMMPContainerComponents", "addWebViewForLocation", [webObj]);
                    
                    return;
                }

				console.log("answerViewData is " + JSON.stringify(answerViewData));
				addWebE("WidgetDialogView", answerViewData);
			}
    	}
    }
    
    
    function getSpeakContent() {
        var content = answerViewData.speechText;
        if (!content) {
            content = answerViewData.answerText;
        }
        
        if(!content){
        	content = "为您找到下面的结果";
        }
        return content;
    }
    
    function speakContent(content) {
        console.log("content is " + content);
        if (!content) {
            return;
        }
        
        //播报
        var isRecognizing = getResultMessage(exec("RecognizeComponents", "isRecognize", []));
        if (!isRecognizing) {
            //语音播报是否开启
            var isSpeechDialogMode = getResultMessage(exec("SystemComponents", "isSpeechDialogMode", []));
            if (true == isSpeechDialogMode || "true" == isSpeechDialogMode) {
                exec('SynthesizeComponents', 'ttsSpeak', [content]);
            }
        }
    }
    
    var dialogRecognizeFilter = {};
    dialogRecognizeFilter.filterBusinessResult = filterBusinessResult;
    dialogRecognizeFilter.onSuccess = onSuccess;
    return dialogRecognizeFilter;
});