/**
 * “看视频”视图
 *
 * @author caoya
 * @modified by qqliu
 * @date 2014-3-12
 */
define(function() {
    const REQUEST_IDLE_STATE = 0;
    var requestId = REQUEST_IDLE_STATE;
    
	var filterResult = null;
	var videoInner = null;
	
	//视频请求的参数
	var paramKeyWord = null;
	var paramCategory = null;
	var paramSort = null;
	var videoMiddleContent;
	
	function showVideoView(paramFilterResult) {
		if (paramFilterResult == null) {
		    console.log("showVideoView() paramFilterResult is null");
			return;
		}
        paramKeyWord = paramFilterResult.paramKeyWord;
        paramCategory = paramFilterResult.paramCategory;
        paramSort = paramFilterResult.paramSort;
        
        var videoList = paramFilterResult.videoList; 
		if(isEmpty(videoList)) {
		    console.log("showVideoView() video is empty");
            return;
		}
		filterResult = paramFilterResult;
		
        var resultView = createVideoView(videoList);
        return resultView;
    }
    
    /**
     * 创建视频列表
     * @param {Object} data 列表JSON数据
     */
    function createVideoView(videoList) {
        if(isEmpty(videoList)) {
            console.log("createVideoView videoList is null");
            return;
        }
        
        videoInner = document.createElement("div");
        drawBottomPart(videoInner, videoList);
        videoInner.refresh = function(videoList) {
            console.log("refresh video list");
            drawBottomPart(videoInner, videoList);
        };
        
        var outDiv = document.createElement("div");
        outDiv.className = 'box_content_white';
        outDiv.appendChild(videoInner);

        document.body.appendChild(outDiv);
        pullLoadMoreHelper.createLoadMoreDiv(videoInner, gotoMore);
        // pullLoadMoreHelper.enablePullLoadMore(outDiv,videoInner,gotoMore);
        checkDisablePullLoadMore(filterResult);
    }
    
    const ID_MIDDLE_PART = "ID_MIDDLE_PART";
    const ID_BTN_GET_MORE = "ID_BTN_GET_MORE";
    
    function drawBottomPart(videoInner, videoList) {
        if(!videoInner) {
            console.log("drawBottomPart() videoInner is null");
            return;
        }
        if(!videoList || videoList.length == 0) {
            console.log("drawBottomPart videoList is null");
            return;
        }
        //移除已有的div
        videoMiddleContent = document.getElementById(ID_MIDDLE_PART);
        if(videoMiddleContent) {
            //videoMiddleContent.parentNode.removeChild(videoMiddleContent);
            // videoMiddleContent.innerHtml = "";
        } else {
            //添加新的div
            videoMiddleContent = document.createElement("div");
            videoMiddleContent.id = ID_MIDDLE_PART;
            videoMiddleContent.style.borderTop = "1px solid #e0e0e0";
            videoInner.appendChild(videoMiddleContent);
        }
        
       // var videoBottomMore = document.getElementById(ID_BTN_GET_MORE);
       // if(videoBottomMore) {
        //    videoBottomMore.parentNode.removeChild(videoBottomMore);
       // }
        
        var length = videoList.length;
        // var listLength = length > 3 ? 3 : length;
        var listLength = length;
        for (var i = 0; i < listLength; i++) {
            var videoItem = createvideoItem(videoList[i], listLength == 1);
            if (videoItem) {
                videoMiddleContent.appendChild(videoItem);
            }
        }
//        
        addListener(videoMiddleContent);
        
        // 如果多于1条时显示“查看更多”
       // if (length > 1) {
       //     videoBottomMore = createGoToMore(length > 3);
        //    videoBottomMore.id = ID_BTN_GET_MORE;
       //     videoInner.appendChild(videoBottomMore);
       // }

    }
    
    function createGoToMore() {
        var videoBottomMore = document.createElement("div");
        
        // videoBottomMore.className = "css_video_sohu_bottom_more_div";
        // var moreVideo = document.createElement("label");
        // moreVideo.className = "css_more_video_sohu_label";
        // moreVideo.innerText = "查看更多";
        // var moreVideoDiv = document.createElement("div");
        // moreVideoDiv.className = "css_more_video_sohu_div";
        // var moreVideoArrow = document.createElement("img");
        // moreVideoArrow.className = "css_more_video_sohu_arrow_img";
        // moreVideoArrow.src = ic_list_arrow_left;
        // moreVideoDiv.appendChild(moreVideoArrow);
        // videoBottomMore.appendChild(moreVideo);
        // videoBottomMore.appendChild(moreVideoDiv);
        // //不可点击时灰显“查看更多”
        // if (!isEnabled) {
            // moreVideo.style.color = "#bbbbbb";
        // } else {
            // addListener(videoBottomMore);
        // }

        return videoBottomMore;
    }
    
    var targetElement = null;
    var touchAreaType = 0;
    /**
     *监听界面上按键事件 
     */
    function addListener(item) {
        if (null == item) {
            return;
        }

        item.addEventListener("touchstart", function() {
            // event.stopPropagation();
            var btnMore = getParentOfClass("css_video_sohu_bottom_more_div", event.target);
            if (btnMore) {
                targetElement = btnMore;
                touchAreaType = 1;
            } else {
                targetElement = getParentOfClass("css_video_sohu_item_div", event.target);
                if (targetElement) {
                    touchAreaType = 2;
                }
            }
            console.log("touchAreaType = " + touchAreaType);
            if (targetElement) {
                moveOverCheck.start(event);
                targetElement.style.backgroundColor = "#e5e5e5";
            }
        }, false);
        item.addEventListener("touchmove", function() {
            // event.stopPropagation();
            if (targetElement) {
                targetElement.style.background = "";
                if (moveOverCheck.check(event)) {
                    targetElement = null;
                    touchAreaType = 0;
                }
            }
        }, false);
        item.addEventListener("touchend", function() {
            // event.stopPropagation();
            if (targetElement) {
                // 打开相应页面
                if (touchAreaType == 1) {
                    targetElement.style.background = "";
                    gotoMore();
                } else if (touchAreaType == 2) {
                    targetElement.style.background = "";
                    gotoUrl(targetElement.briefUrl);
                }
            }
            targetElement = null;
            touchAreaType = 0;
        }, false);
    }

    
    /**
     * 打开更多页面 
     */
    function gotoMore() {
        console.log("gotoMore()");
    	if (!filterResult || !filterResult.videoList || filterResult.videoList.length <= 3) {
    	    console.log("gotoMore() return filterResult: " + filterResult + " videoList: " + filterResult.videoList + " size: " + filterResult.videoList.length);
    		return;
    	}
    	requestMoreVideo(filterResult);
    }
    

    function requestMoreVideo(data) {
        console.log("requestMoreVideo() data: " + data);
        if (!data) {
            console.log("requestMoreVideo() data is null");
            pullLoadMoreHelper.stopRefresh();
            return;
        }
        var  netWorkResultString = exec("SystemComponents", "isNetWorkAvailable", []);
        console.log( "netWorkResult String is "  + netWorkResultString);
        var netWorkResult = getResultMessage(netWorkResultString);

        console.log( "netWorkResult "  + netWorkResult);
        if (netWorkResult != true) {
            if (requestId != REQUEST_IDLE_STATE) {
                requestId = REQUEST_IDLE_STATE;
            }

            console.log("网络未打开，请打开网络后重试");
            exec("UIComponents", "showToast", ["网络未打开，请打开网络后重试", 1]);
            pullLoadMoreHelper.stopRefresh();
            return;
        }

        if (data.pageIndex && data.pageTotal) {
            if (data.pageIndex + 1 <= data.pageTotal) {
                if (requestId != REQUEST_IDLE_STATE) {
                    exec("UIComponents", "showToast", ["正在努力加载中...", 1]);
                    pullLoadMoreHelper.stopRefresh();
                    return;
                }
                var moreVideoParam = new Object();
                moreVideoParam.dataSrcId = data.dataSrcId;
                moreVideoParam.dataSrcName = data.dataSrcName;
                moreVideoParam.paramKeyWord = paramKeyWord;
                moreVideoParam.paramCategory = paramCategory;
                moreVideoParam.pageIndex = data.pageIndex + 1;
                moreVideoParam.paramSort = paramSort;
                require(["./video/videoRequestHelper.js"], function(videoRequestHelper) {
                    requestId = videoRequestHelper.requestMore(moreVideoParam, function(xmlDocument) {
                        console.log("requestMoreVideo() returned data: " + xmlDocument);
                        if (xmlDocument) {
                            loadMoreVideoSuccess(xmlDocument);
                        } else {
                            exec("UIComponents", "showToast", ["获取数据失败，请稍后重试", 1]);
                            pullLoadMoreHelper.stopRefresh();
                        }
                        requestId = REQUEST_IDLE_STATE;
                    });
                    if (requestId == REQUEST_IDLE_STATE) {
                        exec("UIComponents", "showToast", ["获取数据失败，请稍后重试", 1]);
                        pullLoadMoreHelper.stopRefresh();
                    }
                });
            } else {
                exec("UIComponents", "showToast", ["已经加载完成所有数据", 1]);
            }
        }

    }
    
    function checkDisablePullLoadMore(filterResult) {
        if(null != filterResult) {
            if(filterResult.pageIndex >= filterResult.pageTotal) {
                pullLoadMoreHelper.disablePullLoadMore();
            }
        }
    }

    function loadMoreVideoSuccess(xmlDocument) {
        console.log("requestMoreVideo() loadMoreVideoSuccess data: " + xmlDocument);
        require(["./video/videoHandler.js"], function(videoFilter) {
            var jsonData = {};
            videoFilter.filterBaseBusinessResult(jsonData, xmlDocument);
            videoFilter.filterBusinessResult(jsonData, xmlDocument);
            if ("success" == jsonData.status) {
                if (videoInner) {
                    filterResult = jsonData;
                    videoInner.refresh(filterResult.videoList);
                    console.log("requestMoreVideo() loadMoreVideoSuccess show Video View");
                }
            } else {
                var tipError = "数据加载异常";
                if(jsonData && jsonData.desc && jsonData.desc.length > 0) {
                    tipError = jsonData.desc;
                }
                exec("UIComponents", "showToast", [tipError, 1]);
                console.log("requestMoreVideo() loadMoreVideoSuccess data is not success");
            }
            pullLoadMoreHelper.stopRefresh();
            checkDisablePullLoadMore(jsonData);
        });
    }

    
     /**
     * 打开视频播放页
     */
    function gotoUrl(briefUrl) {
        if(briefUrl == undefined || briefUrl == null || briefUrl == "") {
            console.log("briefUrl is null");
            return;
        }
        exec("UIComponents", "openBrowser", ["", briefUrl]);
        console.log("go to url : " + briefUrl);
    }
    
     /**
     * 生成视频条目
     * @param {Object} video 视频条目的JSON数据
     * @param isSingleItem 判断是否单条视频
     */
    function createvideoItem(video, isSingleItem) {
        var videoItem = document.createElement("div");
        videoItem.className = "css_video_sohu_item_div";
        var itemContent = document.createElement("div");

        // 视频左部分图片 
        var videoItemLeft = document.createElement("div");
        if (isSingleItem) {
        	videoItemLeft.className = "css_video_sohu_one_item_left_div";
        } else {
        	videoItemLeft.className = "css_video_sohu_item_left_div";
        }
        var videoPic = document.createElement("img");
        if (isSingleItem) {
        	videoPic.className = "css_video_sohu_one_poster_img";
        } else {
        	videoPic.className = "css_video_sohu_poster_img";
        }        
        videoPic.src = video.imageUrl;
        videoPic.addEventListener("error", function() {
            this.src = novel_cover_default;
        }, false);
        videoItemLeft.appendChild(videoPic);

        // 中间title information
        var videoItemMiddle = document.createElement("div");
        if (isSingleItem) {
        	videoItemMiddle.className = "css_video_sohu_one_item_middle_div";
        } else {
        	videoItemMiddle.className = "css_video_sohu_item_middle_div";
        }
        var videoTitlePackage = document.createElement("div");
        var videoTitle = document.createElement("label");
        videoTitle.className = "css_video_sohu_name_label";
        videoTitle.innerHTML = video.title;
        videoTitlePackage.appendChild(videoTitle);

		// 中间部分 主演、主持人、作者、歌手等 information
        var authorInformationPackage = document.createElement("div");
        authorInformationPackage.className = "css_video_sohu_author_div";
        var authorInformation = document.createElement("label");
        if (isSingleItem) {
        	authorInformation.className = "css_video_sohu_one_release_date_label";
        } else {
        	authorInformation.className = "css_video_sohu_release_date_label";
        }
        authorInformation.innerHTML = video.author;
        authorInformationPackage.appendChild(authorInformation);

        videoItemMiddle.appendChild(videoTitlePackage);
        videoItemMiddle.appendChild(authorInformationPackage);
        
        // 中间部分other information
        var otherInfo = document.createElement("div");
        otherInfo.className = "css_video_sohu_author_div";
        var otherInfoContent = document.createElement("label");
        if (isSingleItem) {
        	otherInfoContent.className = "css_video_sohu_one_release_date_label";
        } else {
        	otherInfoContent.className = "css_video_sohu_release_date_label";
        }
        otherInfoContent.innerHTML = video.otherinfo;
        otherInfo.appendChild(otherInfoContent);
        videoItemMiddle.appendChild(otherInfo);

        // 视频右部分indicator
        var videoItemRight = document.createElement("div");
        videoItemRight.className = "css_video_sohu_item_right_div";
        linkImg = document.createElement("img");
        linkImg.className = "css_video_sohu_link_img";
        linkImg.src = ic_list_arrow_left;
        videoItemRight.appendChild(linkImg);
		
		//只有一条结果时，显示视频介绍
		var videoIntroduction;		
		if (isSingleItem) {
			videoIntroduction = document.createElement("div");
			videoIntroduction.className = "css_video_introduction_item_div";
            videoIntroduction.innerHTML = video.introduction;
		}

        itemContent.appendChild(videoItemLeft);
        itemContent.appendChild(videoItemMiddle);
        itemContent.appendChild(videoItemRight);

        videoItem.appendChild(itemContent);
        if (null != videoIntroduction) {
        	videoItem.appendChild(videoIntroduction);
        }        
        
        videoItem.briefUrl = video.detailUrl;

        return videoItem;
    }
    
    function isEmpty(arr) {
        return !arr || arr.length <= 0;
    }
    
    return showVideoView;
	});