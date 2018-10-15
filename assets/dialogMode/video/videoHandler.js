/**
 * Created by admin on 14-2-22.
 */
define(function() {
    var FilterName = {
        biz_result : "biz_result",
        status : "status",
        desc   : "desc",
        focus  : "focus",
        result : "result",
        error_code : "error_code",
        
        object : "object",

        id : "id",
        name : "name",
        data_source : "data_source",

        param : "param",
        keyword : "keyword",
        category : "category",
        sort : "sort",

        subject_list : "subject_list",
        page_index : "page_index",
        page_total : "page_total",
        record_count : "record_count",

        subject : "subject",
        title : "title",
        image_url : "image_url",
        author : "author",
        other_info : "other_info",
        introduction : "introduction",
        detail_url : "detail_url",
		migu_url: "search_url"
    };
    
    function filterBaseBusinessResult(filterResult, xmlDoc) {
        console.log('video filterBaseBusinessResult begin, xmlDoc is ' + xmlDoc);
        var bizResultElements = xmlDoc.getElementsByTagName(FilterName.biz_result);
        if (isNotEmpty(bizResultElements)) {
            var rootResult = bizResultElements[0];
            filterResult.status = getSubElementValueByTag(rootResult, FilterName.status);
            filterResult.desc = getSubElementValueByTag(rootResult, FilterName.desc);
            filterResult.errorCode = getSubElementValueByTag(rootResult, FilterName.error_code);
            var resultElements = xmlDoc.getElementsByTagName(FilterName.result);
            if (isNotEmpty(resultElements)) {
                filterResult.focus = getSubElementValueByTag(resultElements[0], FilterName.focus);
            }
        }
    }

    function filterBusinessResult(filterResult, xmlDoc) {
        console.log('video filterBusinessResult begin, xmlDoc is ' + xmlDoc);

        var objectElements = xmlDoc.getElementsByTagName(FilterName.object);
        if (isNotEmpty(objectElements)) {
            var objectElement = objectElements[0];
			//解析解析咪咕视频链接节点
            var miguElements = objectElement.getElementsByTagName(FilterName.migu_url);
			if (isNotEmpty(miguElements)) {
				if(miguElements[0].firstChild) {
                    filterResult.migu_video_url = miguElements[0].firstChild.nodeValue;
                }
            }
			
            //解析Param节点
            var paramElements = objectElement.getElementsByTagName(FilterName.param);
            if (isNotEmpty(paramElements)) {
                filterVideoParam(filterResult, paramElements[0]);
            }
            //解析datasource
            var dataSourceElements = objectElement.getElementsByTagName(FilterName.data_source);
            if (isNotEmpty(dataSourceElements)) {
                filterDataSource(filterResult, dataSourceElements[0]);
            }
            //解析视频部分
            var videoListElements = objectElement.getElementsByTagName(FilterName.subject_list);
            if (isNotEmpty(videoListElements)) {
                videoListElement = videoListElements[0];

                filterResult.pageIndex = Number(getSubElementValueByTag(videoListElement, FilterName.page_index));
                filterResult.pageTotal = Number(getSubElementValueByTag(videoListElement, FilterName.page_total));
                filterResult.recordCount = Number(getSubElementValueByTag(videoListElement, FilterName.record_count));

                filterResult.videoList = getVideos(videoListElement);
            }
        }
    }

    /***
     * 语音结果返回了Param，需要在二次请求时带上，此函数解析视频协议的Param
     * @param
     * @return
     */
    function filterVideoParam(filterResult, paramElement) {
        if (filterResult && paramElement) {
            filterResult.paramKeyWord = getSubElementValueByTag(paramElement, FilterName.keyword);
            filterResult.paramCategory = getSubElementValueByTag(paramElement, FilterName.category);
            filterResult.paramSort = getSubElementValueByTag(paramElement, FilterName.sort);
        }
    }

    /***
     * 语音结果返回了DataSource，需要在二次请求时带上，此函数解析视频协议的DataSource
     * @param
     * @return
     */
    function filterDataSource(filterResult, dataSourceElement) {
        if (filterResult && dataSourceElement) {
            filterResult.dataSrcId = getSubElementValueByTag(dataSourceElement, FilterName.id);
            filterResult.dataSrcName = getSubElementValueByTag(dataSourceElement, FilterName.name);
        }
    }
    
    /***
     *获取视频信息列表 
     */
    function getVideos(videoListElement) {
        var list = [];

        subjectListElements = videoListElement.getElementsByTagName(FilterName.subject);
        if (isNotEmpty(subjectListElements)) {
            for (var i = 0; i < subjectListElements.length; i++) {
                list.push(parseVideoFromXmlElement(subjectListElements[i]));
            }
        }
        return list;
    }

    /***
     *从xml中解析出单个视频信息 
     */
    function parseVideoFromXmlElement(subjectXmlElement) {
        var video = {};

        video.title = getSubElementValueByTag(subjectXmlElement, FilterName.title);
        video.imageUrl = getSubElementValueByTag(subjectXmlElement, FilterName.image_url);
        video.author = getSubElementValueByTag(subjectXmlElement, FilterName.author);
        video.otherinfo = getSubElementValueByTag(subjectXmlElement, FilterName.other_info);
        video.introduction = getSubElementValueByTag(subjectXmlElement, FilterName.introduction);
        video.detailUrl = getSubElementValueByTag(subjectXmlElement, FilterName.detail_url);
        return video;
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
        console.log("give up adding answerview tip: " + filterResult.tip
             + " focus: " + filterResult.focus);
		//接入咪咕视频，有咪咕视频的链接，直接使用咪咕视频的链接，不处理数据	 2016-09-21 
		if(filterResult.migu_video_url) {
            var webObj = {};
            webObj.mTextSearchMode = filterResult.isTextSearchResult;
            if (filterResult.speech) {
                webObj.mSpeechText = filterResult.speech;
            } else {
                webObj.mSpeechText = filterResult.tip;
            }
            webObj.mRawText = filterResult.rawtext;
            webObj.mUrl = filterResult.migu_video_url;
            webObj.mIsVoiceResult = true;

            exec("UIComponents", "addAnswerMessage", [filterResult.tip, false]);

            exec("UIComponents", "addCommonResultMessage", [filterResult.rawtext, filterResult.migu_video_url]);

			exec("WidgetMMPContainerComponents", "addWebViewForLocation", [webObj]);

            return;
        }
			 
        setTimeout(function() {
            console.log("add video view");
            addWebE("WidgetVideoView", filterResult);
        }, 150);
        require(["./common/speakHandler.js"], function(speakHandler) {
            console.log("video require speakHandler");
            var speakText = null;
            if (filterResult.tip) {
                speakText = filterResult.tip;
            } else if (filterResult.speech) {
                speakText = filterResult.speech;
            }
            console.log("video speaktext: " + speakText + " isTextSearchResult: " + filterResult.isTextSearchResult);
            speakHandler.setSpeechText(speakText);
            speakHandler.showSpeakButton();
            if (!filterResult.isTextSearchResult) {
                speakHandler.speak(100);
            }
        }); 
    }

    //export
    var videoRecognizeFilter = {};
    videoRecognizeFilter.filterBusinessResult = filterBusinessResult;
    videoRecognizeFilter.filterBaseBusinessResult = filterBaseBusinessResult;
    videoRecognizeFilter.onSuccess = onSuccess;
    return videoRecognizeFilter;

}); 