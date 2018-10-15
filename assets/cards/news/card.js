define(function() {
    var newsDefaultData = null;
    var newsCardContainer = null;
    var new_card_area;
    var card_bottom_shadow;   //卡片底部阴影
    var totalPageIndex = 0;       //当前数据最大的翻页数
    var PAGE_MAX_COUNT = 4;       //每一页最大的条目数
    var newsItems = [];  //新闻条目数组
    var currentPageIndex = 0; //当前页码
    var newsIndicator; // 页码提示
    // 屏幕滑动距离检测器
    var moveOverCheck = new checkMoveOver();
    var newsCacheData = null;
    var isResourceAndCssLoaded = false;
    var isOnceRequestSuccess = false; //是否请求成功过一次
    var isNewsCardRequesting = false;
    var newsCardBottomBtnTxt;
    var newsCardBottomBtnUrl;
    var MAX_NEWS_ITEM_COUNT = 40;
    var NEWS_CARD_CMD = 1007;
    var displayTime;
    var news_card_brief_default_img = "./news/res/ic_mainpage_news_default.png";
    
    var zdOffDom = null;
    var speechCaseDom = null;

    var HOT_NEWS_SOURCE_ID = "13003";

    var NEWS_CARD_CLICKE_KEY = "VIAFLY_NEWS_CARD_CLICK_INFO";

    var cardRequestBaseInfo;

    var NEWS_CARD_STATE = {
        NO_NET: "无网络，请检查网络设置",
        FAIL: "加载失败，点击重试",
        LOADING: "加载中。。。",
        SUCCESS: "获取数据成功"
    };

    var opCodeKey = {
        "item": "list",
        "moreBtn": "moreBtn",
        "switchBtn": "switchBtn",
        "listenNews": "listenNews"
    };

    var current_news_card_state; //当前卡片的状态
    var news_card_loading_div;
    var news_card_no_data_div;
    var news_card_content_main_div;
    var news_card_empty_div;  //开始是空白页，后面用来加载各种内容

    var requestCondition = 0;//0:无网络，不需要请求;1:不判断网络，直接请求;2：判断网络，再请求
    var requestTrigger = 0;//0:卡片本身触发 ;1:框架触发
    //卡片创建的主入口
    function createCardFrame(cardDefaultData, initNetState) {
        newsDefaultData = cardDefaultData;
        newsCardContainer = document.createElement("div");
        newsCardContainer.id = cardDefaultData.id;

        //读取缓存并解析，以便于提前判断是否需要加载缓存

        var newsCacheString = cacheMgr.getCache(cardDefaultData.id);
        if (newsCacheString) {
            if (typeof newsCacheString == "string") {
                try {
                    newsCacheData = JSON.parse(newsCacheString);
                    console.log("cached news data parsed");
                } catch (e) {
                    console.log("JSON parse exception");
                    newsCacheData = cardDefaultData;
                }
            }
        } else {
            cacheMgr.setCache(newsDefaultData.id, cardDefaultData);
            newsCacheData = cardDefaultData;
        }
        console.log("news card CacheString" + newsCacheString);

        //判断是否需要展示，如果需要展示，读取缓存，否则不处理
        if (newsCacheData.show) {
            if (initNetState) {
                requestCondition = 1;
            } else {
                requestCondition = 0;
            }
            xcssParser.parseStyleFile("./news/business.x.css", onResourceLoadFinish);
        } else {
            requestCondition = 2;
            if (listener && listener.callBack) {
                listener.callBack(newsDefaultData.id, CARD_CONTENT_NO_REQUEST);
            }
        }

        newsCardContainer.updateData = function () {
            if (newsCacheData.show) {
                if(!isNewsCardRequesting) {
                    requestTrigger = 1;
                    doCardRequest(false);
                }
            } else {
                if (!isNewsCardRequesting) {
                    listener.callBack(cardDefaultData.id, CARD_CONTENT_NO_REQUEST);
                }
            }
        };

        /**
         * 更新卡片的开启关闭状态
         * @param state
         */
        newsCardContainer.updateState = function (state) {

            console.log("newsCardContainer.updateState state:" + state);

            newsCacheData.show = state;
            cacheMgr.setCache(newsDefaultData.id, newsCacheData);

            if (state) {
                console.log("newsCardContainer.updateState show");
                newsCardContainer.style.display = "block";
                if (isResourceAndCssLoaded) {
                    console.log("newsCardContainer.updateState isResourceAndCssLoaded");
                    //如果不在请求过程中，且没有可用的新闻数据，则请求
                    console.log("isNewsCardRequesting:" + isNewsCardRequesting + ";isOnceRequestSuccess:" + isOnceRequestSuccess);
                    if (!isNewsCardRequesting && !isOnceRequestSuccess) {
                        requestTrigger = 1;
                        doCardRequest(false);
                    }
                    
                    showContentPage();
                } else {
                    console.log("newsCardContainer.updateState ResourceAndCssNotLoaded");
                    setTimeout(function () {
                        xcssParser.parseStyleFile("./news/business.x.css", onResourceLoadFinish);
                    }, 50);
                }
            } else {
                console.log("newsCardContainer.updateState hidden");
                newsCardContainer.style.display = "none";
            }
        };
        
        if(newsCacheData) {
    		newsCardContainer.initShowState = newsCacheData.show;
    	}
        return newsCardContainer;
    }

    /**
     * 创建新闻区域卡片
     * @param newsData
     */
    function createNewsArea(newsData) {
    	console.log("createNewsArea");

        if (!newsData) {
            console.log("news data is null");
        }

        new_card_area = document.createElement("div");
        new_card_area.className = "news_card_content_white css_card";
        new_card_area.id = "id_news_card_box_content_white";

        var isShowRedDot = newsDefaultData.caseRedDot;
        if(newsCacheData && newsCacheData.version === newsDefaultData.version && newsCacheData.caseRedDot !== undefined) {
            isShowRedDot = newsCacheData.caseRedDot;
        }
        var newsTitle = createCardMainTitle(newsDefaultData.id, newsDefaultData.name, newsDefaultData.caseList[0], titleResponseListener, isShowRedDot);
        new_card_area.appendChild(newsTitle);
        
        createEmptyView();
        new_card_area.appendChild(news_card_empty_div);
        
        card_bottom_shadow = document.createElement("div");
		card_bottom_shadow.className = "css_news_card_bottom_shadow";
		new_card_area.appendChild(card_bottom_shadow);

        if (newsCardContainer) {
            console.log("new card need show");
            newsCardContainer.appendChild(new_card_area);
            newsCardContainer.content = new_card_area;
            newsCardContainer.showContentPage = showContentPage;
        }
        setTimeout(function () {
            loadDataAndRequestNews(newsData);
        }, 50);
    }

    function loadDataAndRequestNews(newsData) {
        //如果有可用缓存，则先展示缓存
        if (newsCacheData && newsData.version == newsCacheData.version && newsCacheData.content) {
            console.log("news card newsCacheData show");
            handleNewsCardData(JSON.stringify(newsCacheData.content), true);
        }

        requestTrigger = 1;
        if (1 == requestCondition) {
            doCardRequest(false);
        } else if (2 == requestCondition) {
            doCardRequest(true);
        } else {
            listener.callBack(newsDefaultData.id, CARD_CONTENT_REQUEST_FAILE);
            //没有网络，不需要请求，但是需要回调
            if(!newsItems || newsItems.length < PAGE_MAX_COUNT)  {
                changeNewsCardState(NEWS_CARD_STATE.FAIL);
            }
        }
    }

    //资源解析完成的回调
    function onResourceLoadFinish(){
    	console.log("news onResourceLoadFinish");
        if(!isResourceAndCssLoaded) {
            isResourceAndCssLoaded = true;
            createNewsArea(newsDefaultData);
        }
    }

    /**
     * 处理新闻卡片数据请求结果和缓存数据
     * @param result
     * @param isCachedData 是否是缓存数据
     */
    function handleNewsCardData(result,isCachedData) {
        console.log("handleNewsCardData, isCachedData is " + isCachedData);
        if(!isCachedData) {
            isNewsCardRequesting = false;
            console.log("news card request success: " + result );
        }

        //结果不存在，如果是缓存数据不处理，如果不是则按失败处理
        if(!result) {
        	console.log("handleNewsCardData, result is null");
            if(isCachedData) {
                return;
            } else {
                if((!newsItems || newsItems.length < PAGE_MAX_COUNT) && !isCachedData) {
                    changeNewsCardState(NEWS_CARD_STATE.FAIL);
                }
            }
        }
        var jsonData;

        try{
            jsonData = JSON.parse(result);
        } catch (err) {
            console.log("JSON parser error");
        }

        if(jsonData) {
            console.log("handleNewsResult");
            var jsonObject = jsonData;
            if("success" == jsonObject.status) {
                if(!isCachedData) {
                    isOnceRequestSuccess = true;
                }
                
                if(!newsCacheData) {
                    //读取缓存，来重写
                    var newsCacheString = cacheMgr.getCache(newsDefaultData.id);
                    if(newsCacheString) {
                        if(typeof newsCacheString == "string") {
                            try{
                                newsCacheData = JSON.parse(newsCacheString);
                            }catch(e){
                                console.log("JSON parse exception");
                            }
                        }
                    }
                }
                
                var i = 0;
                var tmpNewsItems = [];
                var tmpTotalPageIndex = 0;
                if(!isCachedData) {
                    if(jsonObject.content && jsonObject.content.news) {
                        var items = jsonObject.content.news;
                        var itemslength = items.length;
                        var index = 0;
                        displayTime = jsonObject.content.display_time;
                        
                        var cacheFilterItems = null;   
           				if(newsCacheData && newsDefaultData && newsDefaultData.version == newsCacheData.version 
           					&& newsCacheData.content && newsCacheData.content.content && newsCacheData.content.content.news) {
							cacheFilterItems = newsCacheData.content.content.news;
						}

                        for(;index < itemslength && i < MAX_NEWS_ITEM_COUNT; index++) {
                            var item = items[index];
                            if(isNewsItemLegal(item) && !isNewsItemInCache(item, cacheFilterItems)) {
                                i++;
                                if(i % PAGE_MAX_COUNT == 0) {
                                    tmpTotalPageIndex++;
                                }
                                console.log("****************tmpNewsItems.push:" + JSON.stringify(item));
                                tmpNewsItems.push(item);
                            }
                        }
                    }
                }

                if(tmpNewsItems.length < MAX_NEWS_ITEM_COUNT) {
                    if(newsCacheData && newsDefaultData.version == newsCacheData.version && newsCacheData.content && newsCacheData.content.content && newsCacheData.content.content.news) {

                        if(!displayTime){
                            displayTime = jsonObject.content.display_time;
                        }
                        var newsCacheDataItems = newsCacheData.content.content.news;
                        console.log("****************" + JSON.stringify(newsCacheDataItems));
                        var j = 0;
                        var tmpIndex = 0;
                        var remainItemLength = MAX_NEWS_ITEM_COUNT - tmpNewsItems.length;
                        for(;tmpIndex <= remainItemLength && j < newsCacheDataItems.length; j++) {
                            if(isNewsItemLegal(newsCacheDataItems[j])) {
                                tmpNewsItems.push(newsCacheDataItems[j]);
                                console.log("****************tmpNewsItems.push:" + JSON.stringify(newsCacheDataItems[j]));
                                tmpIndex++;
                                i++;
                                if(i % PAGE_MAX_COUNT == 0) {
                                    tmpTotalPageIndex++;
                                    console.log("****************tmpTotalPageIndex:" + tmpTotalPageIndex);
                                }
                            }
                        }
                    }
                }

                if(tmpNewsItems.length > 0 && !isCachedData){

                    jsonData.content.news = tmpNewsItems;

                    if(!newsCacheData){
                        newsCacheData = {};
                        newsCacheData.id = newsDefaultData.id;
                        newsCacheData.show = newsDefaultData.show;
                        newsCacheData.name = newsDefaultData.name;
                        newsCacheData.version = newsDefaultData.version;
                        newsCacheData.caseRedDot = newsDefaultData.caseRedDot;
                        newsCacheData.content = jsonData;
                    } else {
                        if(newsDefaultData.version == newsCacheData.version) {
                            newsCacheData.id = newsDefaultData.id;
                            newsCacheData.content = jsonData;
                            newsCacheData.name = newsDefaultData.name;
                        } else {
                            newsCacheData.id = newsDefaultData.id;
                            newsCacheData.version = newsDefaultData.version;
                            newsCacheData.content = jsonData;
                            newsCacheData.caseRedDot = newsDefaultData.caseRedDot;
                            newsCacheData.name = newsDefaultData.name;
                        }
                    }
                    cacheMgr.setCache(newsDefaultData.id, newsCacheData);
                }

                //判断数据是否可用
                if(tmpTotalPageIndex > 0) {
                	totalPageIndex = tmpTotalPageIndex;
                    currentPageIndex = 0;
                    
                    console.log("changeNewsCardState begin, tmpTotalPageIndex is " + tmpTotalPageIndex);
                    changeNewsCardState(NEWS_CARD_STATE.SUCCESS);
                    console.log("changeNewsCardState end");
                    newsItems = tmpNewsItems;
                    
                    console.log("refreshNewsView begin");
                    refreshNewsView(currentPageIndex,false);

                    var bottomBtnData = jsonObject.content.bottomButton;
                    if(bottomBtnData && bottomBtnData.length > 0) {
                        newsCardBottomBtnTxt = bottomBtnData[0].name;
                        newsCardBottomBtnUrl = bottomBtnData[0].url;
                        refreshNewsBtn();
                    }
                    
                    // 通知框架
                    if (!isCachedData && listener && listener.callBack) {
						listener.callBack(newsDefaultData.id,
								CARD_CONTENT_REQUEST_SUCCESS);
					}

                } else {
                    if((!newsItems || newsItems.length < PAGE_MAX_COUNT) && !isCachedData) {
                        changeNewsCardState(NEWS_CARD_STATE.FAIL);
                    }
                    
                    // 通知框架
                    if (!isCachedData && listener && listener.callBack) {
						listener.callBack(newsDefaultData.id,
								CARD_CONTENT_REQUEST_FAILE);
					}
                }

            } else { //请求失败
            	console.log("status is fail");
                if((!newsItems || newsItems.length < PAGE_MAX_COUNT) && !isCachedData) {
                    changeNewsCardState(NEWS_CARD_STATE.FAIL);
                }
                
                // 通知框架
				if (!isCachedData && listener && listener.callBack) {
					listener.callBack(newsDefaultData.id, CARD_CONTENT_REQUEST_FAILE);
				}
            }
        } else {
        	console.log("JSON Data is null");
            if((!newsItems || newsItems.length < PAGE_MAX_COUNT) && !isCachedData) {
                changeNewsCardState(NEWS_CARD_STATE.FAIL);
            }
            
            // 通知框架
			if (!isCachedData && listener && listener.callBack) {
				listener.callBack(newsDefaultData.id,
						CARD_CONTENT_REQUEST_FAILE);
			}
        }
        
    }

    /**
     * 新闻缓存和请求结果的解析
     * @param result
     */
    function handleCardRequestData(result) {
        handleNewsCardData(result,false);
    }

    function handleCardRequestFail(){
        console.log("news card request fail");
        if(!newsItems || newsItems.length < PAGE_MAX_COUNT) {
            changeNewsCardState(NEWS_CARD_STATE.FAIL);
        }
        isNewsCardRequesting = false;
        if(listener && listener.callBack) {
            listener.callBack(newsDefaultData.id,CARD_CONTENT_REQUEST_FAILE);
        }

    }

    function doCardRequest(isNeedjudgeNet){
    	console.log("doCardRequest, isNeedjudgeNet is " + isNeedjudgeNet);
        if(isNewsCardRequesting){
            console.log("news card is requesting");
            return;
        }
        if(isNeedjudgeNet) {
            var netState = isNetConnect();
            if(!netState){
                listener.callBack(newsDefaultData.id, CARD_CONTENT_REQUEST_FAILE);
                if(0 == totalPageIndex) {
                    changeNewsCardState(NEWS_CARD_STATE.FAIL);
                }
                return false;
            }
        }
        console.log("news card request");
        var requestOptions = {};
        requestOptions.cmd = "1007";

        requestOptions.onSuccess = handleCardRequestData;
        requestOptions.onFail = handleCardRequestFail;


        if(null == cardRequestBaseInfo) {
            cardRequestBaseInfo = getBseInfo();
        }
        var timeStr = new Date().valueOf();
        if (cardRequestBaseInfo && cardRequestBaseInfo.businessRequestUrl) {
           requestOptions.url = cardRequestBaseInfo.businessRequestUrl + "?c=1007&gz=0&v=1.0&t=" + timeStr;
        } else {
            handleCardRequestFail();
            if(listener && listener.callBack) {
                listener.callBack(newsDefaultData.id, CARD_CONTENT_REQUEST_FAILE);
            }
            return;
        }

        var json = {};

        //cmd
        json.cmd = NEWS_CARD_CMD;

        json.base = organizeJsonBaseData(getBseInfo());

        //param
        var param = {};
        param.id = newsDefaultData.id;
        param.version = "" + newsDefaultData.version;
        param.extendParam = {};
        if(displayTime) {
            param.extendParam.since_time = displayTime;
        }
        json.param = param;

         var jsonStr = JSON.stringify(json);

         console.log('createtNewsCardJSONStr end, jsonStr is ' + jsonStr);


        requestOptions.data = JSON.stringify(json);

        sendJsonAjaxRequest(requestOptions);

        isNewsCardRequesting = true;
        if(totalPageIndex == 0){
            changeNewsCardState(NEWS_CARD_STATE.LOADING);
        }
    }
    
    /** 创建空白页*/
    function createEmptyView() {
    	console.log("createEmptyView");
    	news_card_empty_div = document.createElement("div");
    	news_card_empty_div.className = "css_dialog_news_no_data";
    }

    /**
     * 创建失败界面的提示
     */
    function createNoDataView() {
    	console.log("createNoDataView");
        // 没数据状态下的显示元素
        news_card_no_data_div = document.createElement("div");
        news_card_no_data_div.id = "id_news_card_no_data_div";
        news_card_no_data_div.className = "css_dialog_news_no_data";

        var news_card_no_data_desc = document.createElement("div");
        news_card_no_data_desc.id = "id_news_loading_failer";
        news_card_no_data_desc.className = "css_news_card_failertext";
        news_card_no_data_desc.innerText = NEWS_CARD_STATE.FAIL;
        news_card_no_data_div.appendChild(news_card_no_data_desc);

        news_card_no_data_div.addEventListener("touchstart", function(){
            event.stopPropagation();
            moveOverCheck.start(event);
        });
        news_card_no_data_div.addEventListener("touchmove", function(){
            event.stopPropagation();
            moveOverCheck.check(event);
        });
        news_card_no_data_div.addEventListener("touchend", function(){
            event.stopPropagation();
            if (!moveOverCheck.isMoveOver()) {
            	exec("WidgetMMPContainerComponents", "appenCardCpaLog", [newsDefaultData.id]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.news, "errorTip"]);
                changeNewsCardState(NEWS_CARD_STATE.LOADING);
                if(!isNewsCardRequesting) {
                    requestTrigger = 0;
                    doCardRequest(false);
                }
            }
        });
    }

    var newsRoateId;

    /**
     * 创建加载界面
     */
    function createLoadingView() {
    	console.log("createLoadingView");
        // loading 状态下的显示元素
    	news_card_loading_div = document.createElement("div");
    	news_card_loading_div.className = "css_dialog_news_no_data";
    	
        news_card_loading_inner_div = document.createElement("div");
        news_card_loading_inner_div.id = "id_news_card_loading_div";
        news_card_loading_inner_div.className = "css_dialog_news_card_loading";
        var news_card_loading_div_img = document.createElement("img");
        news_card_loading_div_img.className = "css_dialog_news_card_loading_img";
        news_card_loading_div_img.src = frame_loading_img;
        var news_card_loading_div_txt = document.createElement("div");
        news_card_loading_div_txt.className = "css_dialog_news_card_loading_txt";
        news_card_loading_div_txt.innerText = "正在加载";
        news_card_loading_inner_div.appendChild(news_card_loading_div_img);
        news_card_loading_inner_div.appendChild(news_card_loading_div_txt);
        news_card_loading_div.appendChild(news_card_loading_inner_div);
        
        news_card_loading_div.startRoate = function() {
            if(newsRoateId) {
                stopRotateAnimation(newsRoateId);
                newsRoateId = null;
            }
            newsRoateId = startRotateAnimation(news_card_loading_div_img);
        };
        news_card_loading_div.stopRoate = function() {
            if(newsRoateId) {
                stopRotateAnimation(newsRoateId);
                newsRoateId = null;
            }
        };
    }

    /**
     * 改变卡片的状态：成功、无网络、加载、失败
     * @param news_card_state
     */
    function changeNewsCardState(news_card_state) {
        console.log("current_news_card_state:" + current_news_card_state + ";news_card_state:" + news_card_state);
        if(!news_card_state || news_card_state == current_news_card_state) {
            return;
        }
		if (null != news_card_loading_div) {
			news_card_loading_div.stopRoate();
			news_card_loading_div.style.display = "none";
		}
		if (null != news_card_no_data_div) {
			news_card_no_data_div.style.display = "none";
		}
		if (null != news_card_content_main_div) {
			news_card_content_main_div.style.display = "none";
		}

        if(NEWS_CARD_STATE.FAIL == news_card_state) {
            console.log("fail newsItems:" + newsItems + ";cached Items:" + cacheMgr.getCache(newsDefaultData.id));
            if(0 == requestTrigger && totalPageIndex == 0) {
                if(isNetConnect()) {
                    exec("UIComponents","showToast",["网络异常，请稍后重试",1]);
                } else {
                    exec("UIComponents","showToast",["网络无连接，请检测网络设置",1]);
                }
            }
            if(null == news_card_no_data_div && news_card_empty_div){
                createNoDataView();
                news_card_empty_div.appendChild(news_card_no_data_div);
            } else {
                if(news_card_no_data_div) {
                    news_card_no_data_div.style.display = "block";
                }
                
            }
            if(news_card_no_data_div) {
            	console.log("news_card_no_data_div text is " + NEWS_CARD_STATE.FAIL);
            	var loadingFail = document.getElementById("id_news_loading_failer");
            	if(loadingFail) {
            		loadingFail.innerText = NEWS_CARD_STATE.FAIL;
            	}
            }
        } else if(NEWS_CARD_STATE.LOADING == news_card_state) {
            if(null == news_card_loading_div && news_card_empty_div) {
                createLoadingView();
                news_card_empty_div.appendChild(news_card_loading_div);
                news_card_loading_div.startRoate();
            } else {
                if(news_card_loading_div) {
                    news_card_loading_div.style.display = "block";
                    news_card_loading_div.startRoate();
                }
            }
        } else if(NEWS_CARD_STATE.NO_NET == news_card_state) {
            if(null == news_card_no_data_div && news_card_empty_div){
                createNoDataView();
                news_card_empty_div.appendChild(news_card_no_data_div);
            } else {
                if(news_card_no_data_div) {
                    news_card_no_data_div.style.display = "block";
                }
            }
            if(news_card_no_data_div) {
            	var loadingFail = document.getElementById("id_news_loading_failer");
            	if(loadingFail) {
            		loadingFail.innerText=NEWS_CARD_STATE.NO_NET;
            	}
            }
        } else if(NEWS_CARD_STATE.SUCCESS == news_card_state) {
            if(null == news_card_content_main_div && news_card_empty_div) {
                createNewsView();
                news_card_empty_div.appendChild(news_card_content_main_div);
            } else {
                if(news_card_content_main_div) {
                    news_card_content_main_div.style.display = "block";
                }
            }
        } else {
            console.log("不合法的状态");
        }
        
        current_news_card_state = news_card_state;
        
    }

    /**
	 * 创建实际的新闻区域
	 */
    function createNewsView() {
        console.log("createNewsView");
        // 新闻内容区域主容器
        news_card_content_main_div = document.createElement("div");
        news_card_content_main_div.id = "id_dialog_sohu_content_main_div";

        var dialog_news_content_wrapper = document.createElement("div");
        dialog_news_content_wrapper.className = "css_news_card_content_wrapper";
        dialog_news_content_wrapper.id = "id_sohu_news_content_wrapper";

        for (var i = 0; i < PAGE_MAX_COUNT; i++) {
            var item = createNewsItem(i);
            dialog_news_content_wrapper.appendChild(item);
        }

        var newsItemRecoverTimeout;
        var targetItem;
        dialog_news_content_wrapper.addEventListener("touchstart", function () {
            console.log("----------------->> touchstart");
            event.stopPropagation();
            targetItem = getParentOfClass("css_news_card_item_div", event.target);
            if (targetItem) {
                moveOverCheck.start(event);
                if(newsItemRecoverTimeout) {
                    clearTimeout(newsItemRecoverTimeout);
                    newsItemRecoverTimeout = null;
                }
                targetItem.style.backgroundColor = "#efefef";
                newsItemRecoverTimeout = setTimeout(function(){
                    targetItem.style.backgroundColor = "";
                    newsItemRecoverTimeout = null;
                },500);
            }
        }, false);
        dialog_news_content_wrapper.addEventListener("touchmove", function () {
            console.log("----------------->> touchmove");
            if (targetItem) {
                targetItem.style.backgroundColor = "";
                if(newsItemRecoverTimeout) {
                    clearTimeout(newsItemRecoverTimeout);
                }
                if (moveOverCheck.check(event)) {
                    targetItem = null;
                }
            }
        }, false);
        dialog_news_content_wrapper.addEventListener("touchend", function () {
            console.log("----------------->> touchend");
            event.stopPropagation();
            if (targetItem) {
                if(newsItemRecoverTimeout) {
                    clearTimeout(newsItemRecoverTimeout);
                    newsItemRecoverTimeout = null;
                }
                if("" != targetItem.style.backgroundColor) {
                    targetItem.onClick();
                }
                targetItem.style.backgroundColor = "";

            }
        }, false);

        news_card_content_main_div.appendChild(dialog_news_content_wrapper);
        
        //创建页码指示器
        console.log("totalPageIndex is " + totalPageIndex);
        newsIndicator = createCardIndicator(totalPageIndex, 1);
        news_card_content_main_div.appendChild(newsIndicator);

        var bottom_container_div = document.createElement("div");
        bottom_container_div.style.position="relative";
        bottom_container_div.className = "css_bottom_container_div";

        var change_news_div = document.createElement("div");
        change_news_div.className="css_news_card_bottom_change_div";
        change_news_div.innerText="换一换";

        var listen_news_div = document.createElement("div");
        listen_news_div.className="css_news_card_bottom_listen_news_div";
        listen_news_div.innerText="听新闻";

        var get_more_div = document.createElement("div");
        get_more_div.className="css_news_card_bottom_get_more_div";
        get_more_div.id = "id_news_card_bottom_get_more_div";
        get_more_div.innerText="查看更多";

        bottom_container_div.appendChild(change_news_div);
        bottom_container_div.appendChild(get_more_div);
        bottom_container_div.appendChild(listen_news_div);


        change_news_div.addEventListener("touchstart", function(){
            event.stopPropagation();
            change_news_div.style.backgroundColor = "#efefef";
            moveOverCheck.start(event);
        });
        change_news_div.addEventListener("touchmove", function(){
            event.stopPropagation();
            if (moveOverCheck.check(event)) {
                change_news_div.style.backgroundColor = "";
            }
        });
        change_news_div.addEventListener("touchend", function(){
            event.stopPropagation();
            if (!moveOverCheck.isMoveOver()) {
                change_news_div.style.backgroundColor = "";
                exec("WidgetMMPContainerComponents", "appenCardCpaLog", [newsDefaultData.id]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.news, opCodeKey.switchBtn]);
                if(isRefreshing) {
                    return;
                }
                delayRunAddSign("N_HIT_NEWS");
                isRefreshing = true;
                currentPageIndex++;
                
                // 更新页码指示
                console.log("switch page, currentPageIndex is " + currentPageIndex);
                if(((currentPageIndex + 1) % totalPageIndex) == 0) {
                	newsIndicator.setSelected(totalPageIndex);
                } else {
                	newsIndicator.setSelected((currentPageIndex + 1) % totalPageIndex);
                }
                
                refreshNewsView(currentPageIndex, true);
            }

        });

        get_more_div.addEventListener("touchstart", function(){
            event.stopPropagation();
            get_more_div.style.backgroundColor = "#efefef";
            moveOverCheck.start(event);
        });
        get_more_div.addEventListener("touchmove", function(){
            event.stopPropagation();
            if (moveOverCheck.check(event)) {
                get_more_div.style.backgroundColor = "";
            }
        });
        get_more_div.addEventListener("touchend", function(){
            event.stopPropagation();
            if (!moveOverCheck.isMoveOver()) {
                if(newsCardBottomBtnUrl) {
                    exec("UIComponents", 'openBrowser', [ "", newsCardBottomBtnUrl]);
                    exec("SystemComponents", "setSetting", ["010002", newsCardBottomBtnUrl, 5]);
                }
                exec("WidgetMMPContainerComponents", "appenCardCpaLog", [newsDefaultData.id]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.news, opCodeKey.moreBtn]);
            }
            get_more_div.style.backgroundColor = "";
        });

        listen_news_div.addEventListener("touchstart", function(){
            event.stopPropagation();
            listen_news_div.style.backgroundColor = "#efefef";
            moveOverCheck.start(event);
        });
        listen_news_div.addEventListener("touchmove", function(){
            event.stopPropagation();
            if (moveOverCheck.check(event)) {
                listen_news_div.style.backgroundColor = "";
            }
        });
        listen_news_div.addEventListener("touchend", function(){
            event.stopPropagation();
            if (!moveOverCheck.isMoveOver()) {
                exec("UIComponents", 'openBrowser', [ "", "http://ydclient.voicecloud.cn/wap/sohunews/listen_sohunews_index.html"]);
                exec("WidgetMMPContainerComponents", "appenCardCpaLog", [newsDefaultData.id]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.news, opCodeKey.listenNews]);
            }
            listen_news_div.style.backgroundColor = "";
        });
        news_card_content_main_div.appendChild(bottom_container_div);
    }


    var isRefreshing = false;
    /**
     * 刷新新闻
     * @param pageIndex
     * @param isNeedAnimation
     */
    function refreshNewsView(pageIndex,isNeedAnimation) {
        console.log("news card refreshNewsView" + pageIndex + ";totalPageIndex:" + totalPageIndex);
        var tempPageIndex = pageIndex%totalPageIndex;
        // 新闻内容正文区。
        var beginIndex = tempPageIndex*PAGE_MAX_COUNT;
        clearContent();
        if(isNeedAnimation) {
            setTimeout(function(){refreshContent(beginIndex,true);},100);
        } else {
            refreshContent(beginIndex, false);
        }
        
        // 更新页码提示
        if(newsIndicator) {
			if (((pageIndex + 1) % totalPageIndex) == 0) {
				newsIndicator.initIndicator(totalPageIndex, totalPageIndex);
			} else {
				newsIndicator.initIndicator(totalPageIndex, (pageIndex + 1) % totalPageIndex);
			}
        }
    }

    /**
     * 刷新底部更多按钮的文本
     */
    function refreshNewsBtn() {

        var news_card_bottom_get_more_btn = document.getElementById("id_news_card_bottom_get_more_div");
        console.log("refreshNewsBtn" + news_card_bottom_get_more_btn);
        if(news_card_bottom_get_more_btn) {
            news_card_bottom_get_more_btn.innerText = newsCardBottomBtnTxt;
        }
    }

    function clearContent() {
        for (var i = 0; i < PAGE_MAX_COUNT; i++) {
            var item = document.getElementById("news_card_item" + i);
            if(item && item.clear) {
                item.clear();
            }
        }
    }

    function refreshContent(i,isNeedAnimation){
        var item = document.getElementById("news_card_item" + i%PAGE_MAX_COUNT);
        console.log("refreshContent" + item);
        if(item) {
            item.refresh(newsItems[i]);
        }
        if(i%PAGE_MAX_COUNT == PAGE_MAX_COUNT-1) {
            isRefreshing = false;
        } else {
            if(isNeedAnimation) {
                setTimeout(function(){
                    refreshContent(++i,true);
                },100);
            } else {
                refreshContent(++i,false);
            }

        }
    }

    /**
     * 判断新闻条目是否可用
     * @param item
     * @returns {boolean}
     */
    function isNewsItemLegal(item) {
        return (item && item.title && item.news_url);
    }
    
    //缓存是否有这条新闻
    function isNewsItemInCache(item, cacheData) {
    	if(!cacheData || cacheData.length < 1) {
    		return false;
    	}
    	for(var i=0; i<cacheData.length; i++) {
    		if(item.id === cacheData[i].id) {
    			console.log("card of news : id " + item.id + " has exist");
    			return true;
    		}
    	}
    }

    //创建每一条新闻条目
    function createNewsItem(id) {
        var itemDiv = document.createElement("div");
        itemDiv.id = "news_card_item" + id;
        itemDiv.className = "css_news_card_item_div";

        var briefDiv = document.createElement("div");
        briefDiv.className = "css_news_card_item_brief_div";
        briefDiv.innerText = "";



        var newsImg = document.createElement("div");
        newsImg.className = "css_news_card_item_img";

        var newsImgContainer = document.createElement("div");
        newsImgContainer.className = "css_news_card_item_img_container";

        newsImgContainer.appendChild(newsImg);

        itemDiv.appendChild(newsImgContainer);
        itemDiv.appendChild(briefDiv);

        var sourceId;
        var newsUrl;
        var newsId;
        itemDiv.refresh = function(newsItem) {
            console.log("itemDiv.refresh" + id + ";newsItem:" + JSON.stringify(newsItem));
            if(newsItem) {
                newsId = newsItem.id;
                sourceId = newsItem.dataSourceId;
                briefDiv.innerText = newsItem.title;
                if(newsItem.image_url) {
                    newsImg.style.backgroundImage = "url('" + newsItem.image_url + "')";
                } else {
                    newsImg.style.backgroundImage = "";
                }

                newsUrl = newsItem.news_url;
                newsImg.style.visibility = "visible";
            }
        };

        itemDiv.onClick = function() {
            delayRunAddSign("HIT_NEWS");
            exec('UIComponents',"openBrowser",["",newsUrl]);
            exec("WidgetMMPContainerComponents", "appenCardCpaLog", [newsDefaultData.id]);
            exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.news, opCodeKey.item + (id+1)]);
            var netWorkResultString = exec("SystemComponents", "isNetWorkAvailable", []);
            var netWorkResult = getResultMessage(netWorkResultString);

            if(HOT_NEWS_SOURCE_ID == sourceId && newsId) {
                var newsCardClickInfoStr = cacheMgr.getCache(NEWS_CARD_CLICKE_KEY);
                var newsCardClikcInfo;
                var item = {};
                item.news_id = newsId;
                item.type = "enter";
                if(newsCardClickInfoStr) {
                    newsCardClikcInfo = JSON.parse(newsCardClickInfoStr);
                    if (newsCardClikcInfo && newsCardClikcInfo.items && newsCardClikcInfo.items.length >= 4) {
                        if(netWorkResult == true) {
                            newsCardClikcInfo.items.push(item);
                            cacheMgr.setCache(NEWS_CARD_CLICKE_KEY,{"items":[]});
                            sendHotNewsClickInfo(newsCardClikcInfo.items);
                            return;
                        }
                    }
                }
                if(!newsCardClikcInfo || !newsCardClikcInfo.items) {
                    newsCardClikcInfo = {"items":[]};
                }
                newsCardClikcInfo.items.push(item);
                cacheMgr.setCache(NEWS_CARD_CLICKE_KEY,newsCardClikcInfo);
            }
        };
        itemDiv.clear = function() {
            console.log("itemDiv.clear" + id);
            briefDiv.innerText = "";
            newsImg.style.backgroundImage = "";
            newsImg.style.visibility = "hidden";
        };
        return itemDiv;
    }

    function sendHotNewsClickInfo(newsClickInfo) {
        console.log("sendHotNewsClickInfo:" + JSON.stringify(newsClickInfo));

        var requestOptions = {};

        if(null == cardRequestBaseInfo) {
            cardRequestBaseInfo = getBseInfo();
        }

        var timeStr = new Date().valueOf();

        if(cardRequestBaseInfo && cardRequestBaseInfo.bizRequestUrl) {
            requestOptions.url = cardRequestBaseInfo.bizRequestUrl + "1106&v=3.0&t=" + timeStr;
        } else {
            return;
        }

        var json = {};

        json.base = organizeJsonBaseData(getBseInfo());

        //param
        var param = {};
        param.actions = newsClickInfo;
        json.param = param;

        var jsonStr = JSON.stringify(json);

        console.log('createtNewsCardJSONStr end, jsonStr is ' + jsonStr);

        requestOptions.data = JSON.stringify(json);

        sendJsonAjaxRequest(requestOptions);

    }

    function isNetConnect(){
        var connectS = exec("SystemComponents","isNetWorkAvailable",[]);
        //没有返回结果，默认为链接状态
        if(!connectS){
            return true;
        }
        var connectMsg = getResultMessage(connectS);
        if(true == connectMsg) {
            return true;
        }
        return false;
    }
    
    /** 显示内容区域*/
	function showContentPage() {
		if(zdOffDom) {
            zdOffDom.style.display = "none";
        }
        if(speechCaseDom) {
            speechCaseDom.style.display = "none";
        }
        if(newsCardContainer.content) {
        	newsCardContainer.content.style.display = "block";
        }
	}
	
	/** 标题栏点击事件回调*/
	function titleResponseListener(responseId){
		switch(responseId) {
            case 0://点击说法示例区域
                if(newsCacheData) {
                    if (newsCacheData.version === newsDefaultData.version) {
                        if (newsCacheData.caseRedDot) {
                            newsCacheData.caseRedDot = false;
                            cacheMgr.setCache(newsCacheData.id, JSON.stringify(newsCacheData));
                            console.log("save news red dot as false same version");
                        }
                    } else {
                        if (newsDefaultData.caseRedDot) {
                            newsDefaultData.show = newsCacheData.show;
                            newsDefaultData.caseRedDot = false;
                            cacheMgr.setCache(newsDefaultData.id, JSON.stringify(newsDefaultData));
                        }
                    }
                }
                if(zdOffDom) {
                    zdOffDom.style.display = "none";
                }
                
                newsCardContainer.content.style.display = "none";
                if (speechCaseDom) {
                    speechCaseDom.style.display = "block";
                } else {
                    speechCaseDom = createSpeechCaseView(newsDefaultData.id, newsDefaultData.name, newsDefaultData.caseList);
                    //判断一下是否为空
                    if(null != speechCaseDom) {
                    	speechCaseDom.setCancelListener(speechCaseCallBack);
                    	newsCardContainer.appendChild(speechCaseDom);
                    }
                }
                break;
            case 1://点击置顶箭头按钮
                if(speechCaseDom) {
                    speechCaseDom.style.display = "none";
                }
                newsCardContainer.content.style.display = "none";
                
                if (zdOffDom) {
                    zdOffDom.style.display = "block";
                } else {
                    zdOffDom = createOperationView(newsDefaultData.id, newsDefaultData.name, newsCacheData.id);
                    //判断一下是否为空
                    if(null != zdOffDom) {
                    	zdOffDom.setOpListener(operateCallBack);
                    	newsCardContainer.appendChild(zdOffDom);
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
                stickTopCardByDom(newsCardContainer);
                break;
            case 2://点击关闭
                //显示关闭确认弹框，暂时未实现
                //showCloseConfirmDialogById(newsCacheData.id);
                break;
            
            default:
                break;
        }
    }

    //return create;
    return createCardFrame;

});