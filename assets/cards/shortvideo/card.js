define(function() {
	var cardData;   //经过处理的需要在卡片中使用的数据
	var cardDiv;
	var isRequest = false;  //是否正在请求数据
	var isCacheNew = false;   //数据是否已更新
	var currentPage = 0;  //当前页数
	var totalPage = 0; //总页数
	var requestCondition = 0;//0:无网络，不需要请求;1:不判断网络，直接请求;2：判断网络，再请求 
	var NUM_PER_PAGE = 3;  //每页显示三个视频

	var zdOffDom = null;
    var speechCaseDom = null;

    //banner载入时的默认界面
	var img_video_default = "./shortvideo/res/ic_mainpage_video_default.png";

	var opCodeKey = {
		"list": "list",
		"switchBtn": "switchBtn",
		"moreBtn": "moreBtn"
	};

	/** 视频缩略图元素的缓存，DOM的缓存*/
	var videoListCache = {};

	function create(cardDefaultData, initNetState) {
		cardDiv = document.createElement("div");
		cardDiv.id = cardDefaultData.id;
		cardDiv.updateState = updateState;
		cardData = cardDefaultData;
		//读取缓存,判断是否需要显示
		var cacheString = cacheMgr.getCache(cardData.id);
		if(cacheString) {
			try {
    			var cacheData = JSON.parse(cacheString);
    			cardData.show = cacheData.show;
    			if(cacheData.version == cardData.version) {
    				cardData.content = cacheData.content;
                    cardData.caseRedDot = cacheData.caseRedDot;
    			}
    		} catch(e) {

    		}
		}
		handleVideosPage();
		//将数据存入缓存
    	cacheMgr.setCache(cardData.id, JSON.stringify(cardData));

    	/** 注册更新请求回调，框架调用*/
    	cardDiv.updateData = function(){
//    		console.log("updateData");
            if (cardData.show) {
                requestVideoCard();
            } else {
                if (!isRequest) {
                    noticeFrame(CARD_CONTENT_NO_REQUEST);
                }
            }
        };

        if(cardData && cardData.show) {
        	if (initNetState) {
                requestCondition = 1;
            }
            else {
                requestCondition = 0;
            }
    		//加载资源CSS等
    		loadResource(onLoadResourceFinish);
        } else {
    		//通知框架结果
    		noticeFrame(CARD_CONTENT_NO_REQUEST);
    		requestCondition = 2;
    	}

    	if(cardData) {
    		cardDiv.initShowState = cardData.show;
    	}
		return cardDiv;
	}

	/** 加载CSS*/
	function loadResource(onLoadResourceFinish) {
		xcssParser.parseStyleFile("./shortvideo/business.x.css", onLoadResourceFinish);
	}

	/** 资源文件加载完成回调，开始创建卡片内容*/
	function onLoadResourceFinish() {
		var innerDiv = createInnerDiv(cardData);
		cardDiv.innerDiv = innerDiv;
		cardDiv.showContentPage = showContentPage;
		cardDiv.appendChild(innerDiv);

		if(cardData.show && isNetConnect()) {
			requestVideoCard();
		}else{
		    noticeFrame(CARD_CONTENT_NO_REQUEST);
		}
	}

	/** 创建cardDiv中显示的内容*/
	function createInnerDiv(cardData) {
		var innerDiv = document.createElement("div");
		innerDiv.className = "css_card";

		var videoTitle = createCardMainTitle(cardData.id, cardData.name, cardData.caseList[0], titleResponseListener, cardData.caseRedDot);
		innerDiv.appendChild(videoTitle);

		if(cardData.content) {
			var contentView = createContentView(cardData.content);
			innerDiv.contentView = contentView;
			innerDiv.appendChild(contentView);
		} else {
			var emptyView = createEmptyView();
			innerDiv.emptyView = emptyView;
			innerDiv.appendChild(emptyView);
		}

		// 添加卡片底部阴影
		var card_bottom_shadow = document.createElement("div");
	    card_bottom_shadow.className = "css_card_bottom_shadow";
	    innerDiv.bottomShadow = card_bottom_shadow;
	    innerDiv.appendChild(card_bottom_shadow);

		return innerDiv;
	}

	/** 创建数据内容区域*/
	function createContentView(content) {
//		console.log("createContentView");
		//初始化为第一页
		currentPage = 1;

		var contentView = document.createElement("div");
		contentView.page = createCurPage(content);
		contentView.appendChild(contentView.page);

		// 页码提示区域
		var videoIndicator = createCardIndicator(totalPage, getCurrentPage(currentPage));
		contentView.appendChild(videoIndicator);

		contentView.changePage = function(){
//			console.log("changePage, currentPage is " + currentPage);
			currentPage++;
			// 更新页面提示
			videoIndicator.setSelected(getCurrentPage(currentPage));

			var newPage = createCurPage(cardData.content);
			this.removeChild(this.page);
			this.insertBefore(newPage, videoIndicator);
			this.page = newPage;
		};

		var footer = createFooter(cardData.content.bottomButton);
		contentView.footer = footer;
		contentView.appendChild(footer);
		return contentView;
	}

	/** 创建当前页的三个视频*/
	function createCurPage(content) {
		var videoListContainer = document.createElement("div");
		videoListContainer.className = "css_card_video_list_container";

		var videoList = getVideoListByPage(currentPage);
		for (var i=0; i < videoList.length; i++) {
			var videoInfo = videoList[i];
//			console.log("vid is " + videoInfo.vid);

			var videoContainer = videoListCache[videoInfo.vid];
			if(videoContainer) {
//				console.log("use cache");
				videoListContainer.appendChild(videoContainer);
			} else {
//				console.log("create videoListContainer, index is " + i);
				videoContainer = document.createElement("div");
				videoListCache[videoInfo.vid] = videoContainer;
				videoContainer.className = "css_card_video_container";
				videoContainer.videoInfo = videoInfo;

				//视频缩略图区域
				var videoImgContainer = document.createElement("div");
				videoImgContainer.className = "css_card_video_img_container";
				var videoImg = document.createElement("img");
				videoImg.className = "css_card_video_img";
				videoImg.vid = videoInfo.vid;
//				console.log("img url is " + videoInfo.imageLink);
				videoImg.onerror = function() {
					this.src = img_video_default;

					// 图片加载失败时，清除相应的缓存
//					console.log("clear cache, key is " + this.vid);
					videoListCache[this.vid] = null;
				};
				videoImg.src = videoInfo.imageLink;
				videoImgContainer.appendChild(videoImg);


        var titleName = document.createElement("div");
        titleName.className = "video_card_book_item_name";

        var titleName_text = document.createElement("div");
        titleName_text.className = "video_card_book_item_name_text";
        if (videoInfo.title) {
            titleName_text.innerHTML = videoInfo.title;
        }
        titleName.appendChild(titleName_text);
        videoImgContainer.appendChild(titleName);

				videoContainer.appendChild(videoImgContainer);

				var newsItemRecoverTimeout;
				var targetItem = videoListContainer;
				videoContainer.addEventListener("touchstart", function() {
							event.stopPropagation();
//							console.log("----------------->> touchstart");
						//	moveOverCheck.start(event);
						 targetItem = getParentOfClass(
									"css_card_video_container", event.target);
							if (targetItem) {
								moveOverCheck.start(event);
								if (newsItemRecoverTimeout) {
									clearTimeout(newsItemRecoverTimeout);
									newsItemRecoverTimeout = null;
								}
								targetItem.style.backgroundColor = "#efefef";
								newsItemRecoverTimeout = setTimeout(function() {
											targetItem.style.backgroundColor = "";
											newsItemRecoverTimeout = null;
										}, 500);
							}
        }, false);
				videoContainer.addEventListener("touchmove", function() {
//					 console.log("----------------->> touchmove");
							event.stopPropagation();
							moveOverCheck.check(event);
							if (targetItem) {
								targetItem.style.backgroundColor = "";
								if (newsItemRecoverTimeout) {
									clearTimeout(newsItemRecoverTimeout);
								}
								if (moveOverCheck.check(event)) {
									targetItem = null;
								}
							}
						}, false);
				videoContainer.addEventListener("touchend", function() {
//					 console.log("----------------->> touchend");
							event.stopPropagation();
							if (!moveOverCheck.isMoveOver()) {
								var videoInfo = this.videoInfo;
								if (targetItem) {
									if (newsItemRecoverTimeout) {
										clearTimeout(newsItemRecoverTimeout);
										newsItemRecoverTimeout = null;
									}
									targetItem.style.backgroundColor = "";
								}
								exec('UIComponents', "openBrowser", ["",videoInfo.playLink]);
								exec("LogComponents", "addCmccLog",[cpaCode.video]);
								exec("WidgetMMPContainerComponents","appenCardOpLog", [cardOpCode.video,
												opCodeKey.list + this.position]);
							}
						}, false);

				// 记录位置信息，记日志时使用
				videoContainer.position = i+1;
				videoListContainer.appendChild(videoContainer);
			}

			//在第一个视频后增加一个空白间隔区域
			if(i == 0 || i==1) {
				var spaceDiv = document.createElement("div");
				spaceDiv.className = "css_card_video_container_space";
				videoListContainer.appendChild(spaceDiv);
			}

		};

		return videoListContainer;
	}

	/** 创建底部按钮*/
	function createFooter(bottomButton) {
//		console.log("createFooter");

		var footer = document.createElement("div");
		footer.className = "css_video_bottom_container_div";

		var leftBtn = document.createElement("div");
		leftBtn.className = "css_card_video_bottom_left";
		leftBtn.innerText = "换一换";
		leftBtn.index = 1;
		footer.appendChild(leftBtn);

		var rightBtn = document.createElement("div");
		rightBtn.className = "css_card_video_bottom_right";
		if(bottomButton[0].name)
		{
		    rightBtn.innerText = bottomButton[0].name;
		}else{
		    rightBtn.innerText = "更多视频";
		}
		rightBtn.link = bottomButton[0].url;
		rightBtn.index = 2;
		footer.appendChild(rightBtn);

		var targetItem;
		footer.addEventListener("touchstart", function(){
			event.stopPropagation();
			moveOverCheck.start(event);
			targetItem = getParentOfClass("css_card_video_bottom_left", event.target);
			if(targetItem) {
				targetItem.style.backgroundColor = "#efefef";
			} else {
				targetItem = getParentOfClass("css_card_video_bottom_right", event.target);
				if(targetItem) {
					targetItem.style.backgroundColor = "#efefef";
				}
			}
		},false);
		footer.addEventListener("touchmove", function(){
			event.stopPropagation();
			if (moveOverCheck.check(event)) {
				if(targetItem) {
					targetItem.style.backgroundColor = "";
				}
            }
		},false);
		footer.addEventListener("touchend", function(){
			event.stopPropagation();
			if(targetItem) {
				targetItem.style.backgroundColor = "";
			}
            if (!moveOverCheck.isMoveOver()) {
            	if(targetItem) {
            		if(targetItem.index == 1) {
            			//点击左边按钮
            			if(cardDiv.innerDiv && cardDiv.innerDiv.contentView) {
            				cardDiv.innerDiv.contentView.changePage();
            			}

            			exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.video, opCodeKey.switchBtn]);
            		} else if(targetItem.index == 2) {
            			//点击右边按钮
            			exec('UIComponents',"openBrowser",["", targetItem.link]);

            			exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.video, opCodeKey.moreBtn]);
            		}
            	}
            	exec("LogComponents", "addCmccLog",[cpaCode.video]);
            }
		},false);
		return footer;
	}

	/** 创建第一次进入灵犀无数据时的空白view*/
	function createEmptyView() {
//		console.log("createEmptyView");
		var emptyView = document.createElement("div");
		emptyView.className = "css_card_video_empty_view";
		return emptyView;
	}

	/** 创建刷新重试的view*/
	function createRefreshView() {
//		console.log("createRefreshView");
		var refreshDiv = document.createElement("div");

		var refreshBody = document.createElement("div");
		refreshBody.className = "css_card_video_refresh_body";
		refreshDiv.appendChild(refreshBody);

		var errorView = document.createElement("div");
		errorView.className = "css_card_video_refresh_error_view";
		errorView.innerText = "加载失败，点击重试";
		refreshBody.appendChild(errorView);

		var loadingView = document.createElement("div");
		loadingView.className = "css_card_video_refresh_loading_view";
		var video_card_loading_div_img = document.createElement("img");
        video_card_loading_div_img.className = "css_card_video_refresh_loading_img";
        video_card_loading_div_img.src = frame_loading_img;
        var video_card_loading_div_txt = document.createElement("div");
        video_card_loading_div_txt.className = "css_card_video_refresh_loading_txt";
        video_card_loading_div_txt.innerText = "正在加载";
        loadingView.appendChild(video_card_loading_div_img);
        loadingView.appendChild(video_card_loading_div_txt);
        refreshBody.appendChild(loadingView);

        var videoRotateId;
        refreshDiv.startRoate = function() {
//        	console.log("startRoate");
            if(videoRotateId) {
                stopRotateAnimation(videoRotateId);
                videoRotateId = null;
            }
            videoRotateId = startRotateAnimation(video_card_loading_div_img);

            errorView.style.display = "none";
            loadingView.style.display = "block";
        };
        refreshDiv.stopRoate = function() {
//        	console.log("stopRoate");
            if(videoRotateId) {
                stopRotateAnimation(videoRotateId);
                videoRotateId = null;
            }

            loadingView.style.display = "none";
            errorView.style.display = "block";
        };

        refreshBody.addEventListener("touchstart", function() {
					moveOverCheck.start(event);
				}, false);
		refreshBody.addEventListener("touchmove", function() {
					moveOverCheck.check(event);
				}, false);
		refreshBody.addEventListener("touchend", function() {
					if (!moveOverCheck.isMoveOver()) {
						var tmpNetState = isNetConnect();
						if (!tmpNetState) {
							// 没网就不用刷新界面了
							exec("UIComponents", "showToast", ["网络无连接，请检测网络设置",
											1]);
						} else {
							if (errorView.style.display != "none") {
								refreshDiv.startRoate();
								requestVideoCard();
							}
						}
						// 记录日志
						exec("LogComponents", "addCmccLog", [cpaCode.video]);
						exec("WidgetMMPContainerComponents", "appenCardOpLog",
								[cardOpCode.video, "errorTip"]);
					}
				}, false);

		return refreshDiv;
	}

	/** 获取当前要显示的视频信息列表*/
	function getVideoListByPage(pageIndex) {
//		console.log("getVideoListByPage, pageIndex is " + pageIndex);
		var videoList = cardData.content.items;

		//第pageIndex页的开始序列号
		var startNum = ((pageIndex-1)*NUM_PER_PAGE)%videoList.length;

		var result = [];
		for(var i = 0; i < NUM_PER_PAGE; i++) {
			//计算实际的位置
			var position = (startNum + i)%videoList.length;
			result[i] = videoList[position];
		}
		return result;
	}

	/** 请求视频卡片数据*/
	function requestVideoCard() {
//		console.log("requestVideoCard");

		//请求数据
    	var params = {};
		params.cardID = cardData.id;
		params.versionCode = cardData.version;
    	params.onSuccess = onSuccess;
    	params.onFail = onFail;

    	var cardRequestBaseInfo = getBseInfo();

    	if (cardRequestBaseInfo && cardRequestBaseInfo.businessRequestUrl) {
	    	var timeStr = new Date().valueOf();
		    params.url = cardRequestBaseInfo.businessRequestUrl + "?c=1007&gz=0&v=1.0&t=" + timeStr;
	    } else {
	    	cardRequestBaseInfo = null;
	    	noticeFrame(CARD_CONTENT_REQUEST_FAILE);
	    	return;
	    }

	    var base = organizeJsonBaseData(cardRequestBaseInfo);
	    if(!base){
	    	base = {};
	    }
		var requestJson = {
			"cmd": "1007",
			"base": base,
			"param": {
			      "id": cardData.id,
			      "version": "" + cardData.version,
			      "extendParam":{}
			}
		};

		console.log("requestVideoCard,  param:  cmd:1007  base:base  id:"+cardData.id+" version:"+cardData.version );

		params.data = JSON.stringify(requestJson);

	    sendJsonAjaxRequest(params);
	}

	/** 请求成功处理*/
    function onSuccess(jsonStr) {
//    	console.log("requestVideoCard, onSuccess");
    	isRequest = false;
        console.log("requestVideoCard, onSuccess:" + jsonStr);
    	try {
			var jsonObj = JSON.parse(jsonStr);
			if (jsonObj) {
//				console.log("requestVideoCard, errorCode is "
//						+ jsonObj.errorCode);
				if ("success" == jsonObj.status) {
					// 返回数据大于等于3条才合法
					if(jsonObj.content.items && jsonObj.content.items.length >= NUM_PER_PAGE &&
					jsonObj.content.bottomButton[0] && jsonObj.content.bottomButton[0].name
					 && jsonObj.content.bottomButton[0].url) {
						cardData.content = jsonObj.content;
						saveCache(cardData);
                        isCacheNew = true;
					}else{
					    var cacheString = cacheMgr.getCache(cardData.id);
                    	if(cacheString) {
                            cardData = JSON.parse(cacheString);
                        }
					}
					handleVideosPage();
                    updateContent(cardData);
                    // 通知框架结果
                    noticeFrame(CARD_CONTENT_REQUEST_SUCCESS);
					} else {
						// 通知框架结果
//						console.log("items length is not legal");
						noticeFrame(CARD_CONTENT_REQUEST_FAILE);
						// 显示重试区域
						showRefreshView();
					}
				} else {
//					console.log("requestVideoCard, errorCode is not 000000");
					// 通知框架结果
					noticeFrame(CARD_CONTENT_REQUEST_FAILE);
					// 显示重试区域
					showRefreshView();
			}
		} catch (e) {
//			console.log("requestVideoCard, JSON error, e is " + e);
			// 通知框架结果
			noticeFrame(CARD_CONTENT_REQUEST_FAILE);
			// 显示重试区域
			showRefreshView();
		}
    }

    /** 请求失败处理*/
    function onFail() {
    	console.log("requestVideoCard, onFail");
		isRequest = false;

		// 通知框架结果
		noticeFrame(CARD_CONTENT_REQUEST_FAILE);

		// 显示重试区域
		showRefreshView();
    }

    /** 显示重试区域*/
    function showRefreshView() {
    	if (!cardDiv.innerDiv.contentView) {
			if (cardDiv.innerDiv.refreshView) {
				cardDiv.innerDiv.refreshView.style.display = "block";
				cardDiv.innerDiv.refreshView.stopRoate();
			} else {
				var refreshView = createRefreshView();
				cardDiv.innerDiv.refreshView = refreshView;
				cardDiv.innerDiv.emptyView.style.display = "none";
				cardDiv.innerDiv.insertBefore(refreshView, cardDiv.innerDiv.bottomShadow);
			}
		}
    }

    /** 更新内容*/
	function updateContent(cardData) {
//		console.log("video card updateContent");

		// 清空缓存
		videoListCache = {};

		//隐藏空白页和重试页
		if(cardDiv.innerDiv.emptyView) {
			cardDiv.innerDiv.emptyView.style.display = "none";
		}
		if(cardDiv.innerDiv.refreshView) {
			cardDiv.innerDiv.refreshView.stopRoate();
			cardDiv.innerDiv.refreshView.style.display = "none";
		}

		var newContent = createContentView(cardData);
		if (cardDiv.innerDiv.contentView) {
			cardDiv.innerDiv.removeChild(cardDiv.innerDiv.contentView);
		}
		cardDiv.innerDiv.contentView = newContent;
		cardDiv.innerDiv.insertBefore(newContent, cardDiv.innerDiv.bottomShadow);
	}

	/** 通知框架层卡片加载情况*/
	function noticeFrame(value) {
		console.log("noticeFrame, value is " + value);
		if (listener) {
			listener.callBack(cardData.id, value);
		}
	}

	/** 保存卡片数据到缓存*/
    function saveCache(cardData) {
		var objToSave = JSON.stringify(cardData);
//		console.log("saveCache, objToSave is " + objToSave);
		cacheMgr.setCache(cardData.id, objToSave);
	}

	/** 开关卡片*/
	function updateState(show) {
//		console.log("updateState, show is " + show);
		//更新缓存
		cardData.show = show;
    	saveCache(cardData);

		if(show) {
			cardDiv.style.display = "block";
			if(cardDiv.children.length === 0) {  //如果内容为空需要去加载资源
//				console.log("updateState, content is empty");
				loadResource(onLoadResourceFinish);
			} else {
				if (!isCacheNew && !isRequest && isNetConnect()) {
//					console.log("updateState, requestVideoCard");
					requestVideoCard();
				}
				showContentPage();
			}
		} else {
			cardDiv.style.display = "none";
		}
	}

	/** 显示内容区域*/
	function showContentPage() {
//		console.log("showContentPage");
		if(zdOffDom) {
            zdOffDom.style.display = "none";
        }
        if(speechCaseDom) {
            speechCaseDom.style.display = "none";
        }
        if(cardDiv.innerDiv) {
        	cardDiv.innerDiv.style.display = "block";
        }
	}

	/** 标题栏点击事件回调*/
	function titleResponseListener(responseId){
//		console.log("titleResponseListener, responseId is " + responseId);
		switch(responseId) {
            case 0://点击说法示例区域
                if(cardData && cardData.caseRedDot) {
                    cardData.caseRedDot = false;
                    cacheMgr.setCache(cardData.id, JSON.stringify(cardData));
                }
                if(zdOffDom) {
                    zdOffDom.style.display = "none";
                }
                cardDiv.innerDiv.style.display = "none";
                if (speechCaseDom) {
                    speechCaseDom.style.display = "block";
                } else {
                    speechCaseDom = createSpeechCaseView(cardData.id, cardData.name, cardData.caseList);
                    //判断一下是否为空
                    if(null != speechCaseDom) {
                    	speechCaseDom.setCancelListener(speechCaseCallBack);
                    	cardDiv.appendChild(speechCaseDom);
                    }
                }
                break;
            case 1://点击置顶箭头按钮
                if(speechCaseDom) {
                    speechCaseDom.style.display = "none";
                }
                cardDiv.innerDiv.style.display = "none";

                if (zdOffDom) {
                    zdOffDom.style.display = "block";
                } else {
                    zdOffDom = createOperationView(cardData.id, cardData.name,cardData.id);
                    //判断一下是否为空
                    if( null != zdOffDom) {
                    	zdOffDom.setOpListener(operateCallBack);
                    	cardDiv.appendChild(zdOffDom);
                    }
                }
                break;
            case 2://刷新，暂时没有实现
                break;
            default:
                break;
        }
	}

	/** 说法示例点击回调*/
	function speechCaseCallBack(){
        showContentPage();
    }

    /** 置顶关闭按钮点击回调*/
    function operateCallBack(callBackId) {
        switch(callBackId) {
            case 0://取消
                showContentPage();
                break;
            case 1://置顶
                showContentPage();
                stickTopCardByDom(cardDiv);
                break;
            case 2://点击关闭
                //显示关闭确认弹框，暂时未实现
                showCloseConfirmDialogById(cardData.id);
                break;

            default:
                break;
        }
    }
    
    /** 对视频数据进行处理，删除分页之后多余的视频信息*/
	function handleVideosPage() {
//		console.log("handleVideosPage");
		if (cardData.content) {
			var videos = cardData.content.items;
//			console.log("videos is " + videos);
			var length = videos.length;
			// 当前对象是否已存在
			var isExsit = false;
			// 存放临时数组，其中的video对象不重复
			var tmp = [];
			// 数组中的对象个数，即去重后的视频个数
			var count = 0;
			//按照vid去重
			for (i = 0; i < length; i++) {
				for (j = 0; j < i; j++) {
					if (videos[j].vid == videos[i].vid) {
						isExsit = true;
						break;
					}
				}
				if (!isExsit && isVideoItemLegal(videos[i])) {
					tmp[count] = videos[i];
					count++;
				} else {
					isExsit = false;
				}
			}
			//最后保留的视频个数为每页个数的整数倍
			totalPage = Math.floor(tmp.length / NUM_PER_PAGE);
			//最多展示5页数据
			if(totalPage > 5)
			{
			    totalPage = 5;
			}
//			console.log("handleVideosPage, totalPage is " + totalPage);
			var result = [];
			for (var i = 0; i < NUM_PER_PAGE * totalPage; i++) {
				result[i] = tmp[i];
			}
			if (result.length > 0) {
				cardData.content.items = result;
			}
		}
	}
	
	/** 获取要显示的当前页数*/ 
    function getCurrentPage(currentPage) {
//    	console.log("getCurrentPage, currentPage is " + currentPage);
    	if((currentPage % totalPage) == 0) {
    		return totalPage;
    	} else {
    		return currentPage % totalPage;
    	}
    }

	/**
         * 判断视频条目是否可用
         * @param item
         * @returns {boolean}
    */
    function isVideoItemLegal(item) {
        return (item && item.imageLink && item.playLink && item.title && item.vid);
    }

	return create;
});