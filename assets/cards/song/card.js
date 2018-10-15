define(function() {
    var songDefaultData = null;
    var songCardContainer = null;
    var song_card_area;
    var card_bottom_shadow;   //卡片底部阴影
    var totalPageIndex = 0;       //当前数据最大的翻页数
    var PAGE_MAX_COUNT = 3;       //每一页最大的条目数
    var songItems = [];  //游戏条目数组
    var currentPageIndex = 0; //当前页码
    var songIndicator; // 页码提示
    var isCacheNew = false;   //数据是否已更新
    // 屏幕滑动距离检测器
    var moveOverCheck = new checkMoveOver();
    var songCacheData = null;
    var isResourceAndCssLoaded = false;
    var isSongCardRequesting = false;
    var songCardBottomBtnTxt;
    var songCardBottomBtnUrl;
    var MAX_SONG_ITEM_COUNT = 15;
    var SONG_CARD_CMD = 1007;
    var song_card_brief_default_img = "./song/res/btn_play_nor.png";
    var zdOffDom = null;
    var speechCaseDom = null;
    var cardRequestBaseInfo;
    var SONG_CARD_STATE = {
        NO_NET: "无网络，请检查网络设置",
        FAIL: "加载失败，点击重试",
        LOADING: "加载中。。。",
        SUCCESS: "获取数据成功"
    };

    var opCodeKey = {
        "item": "list",
        "moreBtn": "moreBtn",
        "switchBtn": "switchBtn",
    };

    var current_song_card_state; //当前卡片的状态
    var song_card_loading_div;
    var song_card_no_data_div;
    var song_card_content_main_div;
    var song_card_empty_div;  //开始是空白页，后面用来加载各种内容

    var requestCondition = 0;//0:无网络，不需要请求;1:不判断网络，直接请求;2：判断网络，再请求
    var requestTrigger = 0;//0:卡片本身触发 ;1:框架触发
    //卡片创建的主入口
    function createCardFrame(cardDefaultData, initNetState) {
        songDefaultData = cardDefaultData;
        songCardContainer = document.createElement("div");
        songCardContainer.id = cardDefaultData.id;

        //读取缓存并解析，以便于提前判断是否需要加载缓存

        var songCacheString = cacheMgr.getCache(cardDefaultData.id);
        if (songCacheString) {
            if (typeof songCacheString == "string") {
                try {
                    songCacheData = JSON.parse(songCacheString);
                    if(songCacheData.version !== cardDefaultData.version)
                    {
                        cacheMgr.setCache(songDefaultData.id, cardDefaultData);
                        songCacheData = cardDefaultData;
                    }
                    //console.log("cached song data parsed");
                } catch (e) {
                    //console.log("JSON parse exception");
                    songCacheData = cardDefaultData;
                }
            }
        } else {
            cacheMgr.setCache(songDefaultData.id, cardDefaultData);
            songCacheData = cardDefaultData;
        }
        //console.log("song card CacheString" + songCacheString);

        //判断是否需要展示，如果需要展示，读取缓存，否则不处理
        if (songCacheData.show) {
            if (initNetState) {
                requestCondition = 1;
            } else {
                requestCondition = 0;
            }
            xcssParser.parseStyleFile("./song/business.x.css", onResourceLoadFinish);
        } else {
            requestCondition = 2;
            if (listener && listener.callBack) {
                listener.callBack(songDefaultData.id, CARD_CONTENT_NO_REQUEST);
            }
        }

        songCardContainer.updateData = function () {
            console.log("refresh");
            if (songCacheData.show) {
                if(!isSongCardRequesting) {
                    requestTrigger = 1;
                    console.log("refresh");
                    doCardRequest(false);
                }
            } else {
                if (!isSongCardRequesting) {
                    listener.callBack(cardDefaultData.id, CARD_CONTENT_NO_REQUEST);
                }
            }
        };

        /**
         * 更新卡片的开启关闭状态
         * @param state
         */
        songCardContainer.updateState = function (state) {

            //console.log("songCardContainer.updateState state:" + state);

            songCacheData.show = state;
            cacheMgr.setCache(songDefaultData.id, songCacheData);

            if (state) {
                songCardContainer.style.display = "block";
                if (isResourceAndCssLoaded) {
                    //如果不在请求过程中，且没有可用的数据，则请求
                    if (!isSongCardRequesting && !isCacheNew) {
                        requestTrigger = 1;
                        doCardRequest(true);
                    }
                    showContentPage();
                } else {
                    setTimeout(function () {
                        xcssParser.parseStyleFile("./song/business.x.css", onResourceLoadFinish);
                    }, 50);
                }
            } else {
                //console.log("songCardContainer.updateState hidden");
                songCardContainer.style.display = "none";
            }
        };

        if(songCacheData) {
    		songCardContainer.initShowState = songCacheData.show;
    	}
        return songCardContainer;
    }

    /**
     * 创建游戏区域卡片
     * @param songData
     */
    function createSongArea(songData) {
    	//console.log("createSongArea");

        if (!songData) {
            //console.log("songData is null");
        }

        song_card_area = document.createElement("div");
        song_card_area.className = "song_card_content_white css_card";
        song_card_area.id = "id_song_card_box_content_white";

        var isShowRedDot = songDefaultData.caseRedDot;
        if(songCacheData && songCacheData.version === songDefaultData.version && songCacheData.caseRedDot !== undefined) {
            isShowRedDot = songCacheData.caseRedDot;
        }
        var songTitle = createCardMainTitle(songDefaultData.id, songDefaultData.name, songDefaultData.caseList[0], titleResponseListener, isShowRedDot);
        song_card_area.appendChild(songTitle);

        createEmptyView();
        song_card_area.appendChild(song_card_empty_div);

        card_bottom_shadow = document.createElement("div");
		card_bottom_shadow.className = "css_song_card_bottom_shadow";
		song_card_area.appendChild(card_bottom_shadow);

        if (songCardContainer) {
            //console.log("song card need show");
            songCardContainer.appendChild(song_card_area);
            songCardContainer.content = song_card_area;
            songCardContainer.showContentPage = showContentPage;
        }
        setTimeout(function () {
            loadDataAndRequestSong(songData);
        }, 50);
    }

    function loadDataAndRequestSong(songData) {
        //如果有可用缓存，则先展示缓存
        if (songCacheData && songData.version == songCacheData.version && songCacheData.content) {
            //console.log("song card songCacheData show");
            handleSongCardData(JSON.stringify(songCacheData.content), true);
        }

        requestTrigger = 1;
        if (1 == requestCondition) {
            doCardRequest(false);
        } else if (2 == requestCondition) {
            doCardRequest(true);
        } else {
            listener.callBack(songDefaultData.id, CARD_CONTENT_REQUEST_FAILE);
            //没有网络，不需要请求，但是需要回调
            if(!songItems || songItems.length < PAGE_MAX_COUNT)  {
                changeSongCardState(SONG_CARD_STATE.FAIL);
            }
        }
    }

    //资源解析完成的回调
    function onResourceLoadFinish(){
    	//console.log("song onResourceLoadFinish");
        if(!isResourceAndCssLoaded) {
            isResourceAndCssLoaded = true;
            createSongArea(songDefaultData);
        }
    }

    /**
     * 处理游戏卡片数据请求结果和缓存数据
     * @param result
     * @param isCachedData 是否是缓存数据
     */
    function handleSongCardData(result,isCachedData) {
        //console.log("handleSongCardData, isCachedData is " + isCachedData);
        if(!isCachedData) {
            isSongCardRequesting = false;
            console.log("requestSongCard  Success : " + result );
        }

        //结果不存在，如果是缓存数据不处理，如果不是则按失败处理
        if(!result) {
        	//console.log("handleSongCardData, result is null");
            if(isCachedData) {
                return;
            } else {
                if((!songItems || songItems.length < PAGE_MAX_COUNT) && !isCachedData) {
                    changeSongCardState(SONG_CARD_STATE.FAIL);
                }
            }
        }
        var jsonData;

        try{
            jsonData = JSON.parse(result);
        } catch (err) {
            //console.log("JSON parser error");
        }

        if(jsonData) {
            //console.log("handleSongResult");
            var jsonObject = jsonData;
            if("success" == jsonObject.status) {
                //console.log("log_success");
                if(!songCacheData) {
                //console.log("log_songCacheData");
                    //读取缓存，来重写
                    var songCacheString = cacheMgr.getCache(songDefaultData.id);
                    if(songCacheString) {
                        if(typeof songCacheString == "string") {
                            try{
                                songCacheData = JSON.parse(songCacheString);
                            }catch(e){
                                //console.log("JSON parse exception");
                            }
                        }
                    }
                }

                var i = 0;
                var tmpSongItems = [];
                var tmpItems = [];
                var tmpTotalPageIndex = 0;
                var bottomBtnData;
                if(!isCachedData) {
                    //console.log("log_isCachedData");
                    if(jsonObject.content && jsonObject.content.music) {
                        //console.log("log_jsonObject.content");
                        var items = jsonObject.content.music;
                        var itemslength = items.length;
                        var index = 0;
                        var pageIndex = [];
                        for(;index < itemslength && i < MAX_SONG_ITEM_COUNT; index++) {
                            var item = items[index];
                            if(isSongItemLegal(item) && !haveId(tmpItems,item)) {
                                i++;
                                tmpItems.push(item);
                                if(i % PAGE_MAX_COUNT == 0) {
                                    tmpTotalPageIndex++;
                                }
                            }
                        }
                        for(i=0;i<PAGE_MAX_COUNT*tmpTotalPageIndex;i++)
                        {
                            tmpSongItems[i] = tmpItems[i];
                        }
                    }
                }else{
                    if(songCacheData && songCacheData.content && songCacheData.content.content && songCacheData.content.content.music)
                    {
                       tmpSongItems  = songCacheData.content.content.music;
                       tmpTotalPageIndex = tmpSongItems.length / PAGE_MAX_COUNT;
                    }
                }
                if(tmpSongItems.length >= PAGE_MAX_COUNT && !isCachedData){
                    if(jsonObject.content.bottomButton && jsonObject.content.bottomButton[0]
                        && jsonObject.content.bottomButton[0].name
                        && jsonObject.content.bottomButton[0].url)
                    {
                        //console.log("log_start_cache");
                        jsonData.content.music = tmpSongItems;
                        songCacheData.content = jsonData;
                        bottomBtnData = jsonObject.content.bottomButton;
                        isCacheNew = true;
                        cacheMgr.setCache(songDefaultData.id, songCacheData);
                    }else{
                        tmpSongItems  = songCacheData.content.content.music;
                        tmpTotalPageIndex = tmpSongItems.length / PAGE_MAX_COUNT;
                    }
                }
                //判断数据是否可用
                if(tmpTotalPageIndex > 0 ) {
                    //console.log("log_=can use");
                	totalPageIndex = tmpTotalPageIndex;
                    currentPageIndex = 0;

                    //console.log("changeSongCardState begin, tmpTotalPageIndex is " + tmpTotalPageIndex);
                    changeSongCardState(SONG_CARD_STATE.SUCCESS);
                    //console.log("changeSongCardState end");
                    songItems = tmpSongItems;

                    //console.log("refreshSongView begin");
                    refreshSongView(currentPageIndex,false);
                    if(!bottomBtnData)
                    {
                        bottomBtnData = songCacheData.content.content.bottomButton;
                    }
                    if(bottomBtnData && bottomBtnData.length > 0) {
                        if(bottomBtnData[0].name && bottomBtnData[0].url)
                        {
                            songCardBottomBtnTxt = bottomBtnData[0].name;
                            songCardBottomBtnUrl = bottomBtnData[0].url;
                            refreshSongBtn();
                        }else{
                            songCardBottomBtnTxt = "更多音乐";
                            refreshSongBtn();
                        }
                    }
                    // 通知框架
                    if (!isCachedData && listener && listener.callBack) {
						listener.callBack(songDefaultData.id,
								CARD_CONTENT_REQUEST_SUCCESS);
					}
                } else {
                    if((!songItems || songItems.length < PAGE_MAX_COUNT) && !isCachedData) {
                        changeSongCardState(SONG_CARD_STATE.FAIL);
                    }
                    // 通知框架
                    if (!isCachedData && listener && listener.callBack) {
						listener.callBack(songDefaultData.id,
								CARD_CONTENT_REQUEST_FAILE);
					}
                }
            } else { //请求失败
            	//console.log("status is fail");
                if((!songItems || songItems.length < PAGE_MAX_COUNT) && !isCachedData) {
                    changeSongCardState(SONG_CARD_STATE.FAIL);
                }

                // 通知框架
				if (!isCachedData && listener && listener.callBack) {
					listener.callBack(songDefaultData.id, CARD_CONTENT_REQUEST_FAILE);
				}
            }
        } else {
        	//console.log("JSON Data is null");
            if((!songItems || songItems.length < PAGE_MAX_COUNT) && !isCachedData) {
                changeSongCardState(SONG_CARD_STATE.FAIL);
            }

            // 通知框架
			if (!isCachedData && listener && listener.callBack) {
				listener.callBack(songDefaultData.id,
						CARD_CONTENT_REQUEST_FAILE);
			}
        }

    }

    /**
     * 游戏缓存和请求结果的解析
     * @param result
     */
    function handleCardRequestData(result) {
        handleSongCardData(result,false);
    }

    function handleCardRequestFail(){
        //console.log("song card request fail");
        if(!songItems || songItems.length < PAGE_MAX_COUNT) {
            changeSongCardState(SONG_CARD_STATE.FAIL);
        }
        isSongCardRequesting = false;
        if(listener && listener.callBack) {
            listener.callBack(songDefaultData.id,CARD_CONTENT_REQUEST_FAILE);
        }
    }

    function doCardRequest(isNeedjudgeNet){
    	//console.log("doCardRequest, isNeedjudgeNet is " + isNeedjudgeNet);
        if(isSongCardRequesting){
            //console.log("song card is requesting");
            return;
        }
        if(isNeedjudgeNet) {
            var netState = isNetConnect();
            if(!netState){
                listener.callBack(songDefaultData.id, CARD_CONTENT_REQUEST_FAILE);
                if(0 == totalPageIndex) {
                    changeSongCardState(SONG_CARD_STATE.FAIL);
                }
                return false;
            }
        }
        //console.log("song card request");
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
                listener.callBack(songDefaultData.id, CARD_CONTENT_REQUEST_FAILE);
            }
            return;
        }

        var json = {};

        //cmd
        json.cmd = SONG_CARD_CMD;

        json.base = organizeJsonBaseData(getBseInfo());

        //param
        var param = {};
        param.id = songDefaultData.id;
        param.version = "" + songDefaultData.version;
        param.extendParam = {};
        json.param = param;

         var jsonStr = JSON.stringify(json);

//         //console.log('createtSongCardJSONStr end, jsonStr is ' + jsonStr);


        requestOptions.data = JSON.stringify(json);
        
        sendJsonAjaxRequest(requestOptions);
        
        console.log("requestSongCard,  param:  cmd:1007  base:base  id:"+songDefaultData.id+" version:"+songDefaultData.version );
        
        isSongCardRequesting = true;
    }

    /** 创建空白页*/
    function createEmptyView() {
    	//console.log("createEmptyView");
    	song_card_empty_div = document.createElement("div");
    	song_card_empty_div.className = "css_dialog_song_no_data";
    }

    /**
     * 创建失败界面的提示
     */
    function createNoDataView() {
    	//console.log("createNoDataView");
        // 没数据状态下的显示元素
        song_card_no_data_div = document.createElement("div");
        song_card_no_data_div.id = "id_song_card_no_data_div";
        song_card_no_data_div.className = "css_dialog_song_no_data";

        var song_card_no_data_desc = document.createElement("div");
        song_card_no_data_desc.id = "id_song_loading_failer";
        song_card_no_data_desc.className = "css_song_card_failertext";
        song_card_no_data_desc.innerText = SONG_CARD_STATE.FAIL;
        song_card_no_data_div.appendChild(song_card_no_data_desc);

        song_card_no_data_div.addEventListener("touchstart", function(){
            event.stopPropagation();
            moveOverCheck.start(event);
        });
        song_card_no_data_div.addEventListener("touchmove", function(){
            event.stopPropagation();
            moveOverCheck.check(event);
        });
        song_card_no_data_div.addEventListener("touchend", function(){
            event.stopPropagation();
            if (!moveOverCheck.isMoveOver()) {
                exec("WidgetMMPContainerComponents", "appenCardCpaLog", ["music"]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.music, "errorTip"]);
                changeSongCardState(SONG_CARD_STATE.LOADING);
                if(!isSongCardRequesting) {
                    requestTrigger = 0;
                    doCardRequest(false);
                }
            }
        });
    }

    var songRoateId;

    /**
     * 创建加载界面
     */
    function createLoadingView() {
    	//console.log("createLoadingView");
        // loading 状态下的显示元素
    	song_card_loading_div = document.createElement("div");
    	song_card_loading_div.className = "css_dialog_song_no_data";

        song_card_loading_inner_div = document.createElement("div");
        song_card_loading_inner_div.id = "id_song_card_loading_div";
        song_card_loading_inner_div.className = "css_dialog_song_card_loading";
        var song_card_loading_div_img = document.createElement("img");
        song_card_loading_div_img.className = "css_dialog_song_card_loading_img";
        song_card_loading_div_img.src = frame_loading_img;
        var song_card_loading_div_txt = document.createElement("div");
        song_card_loading_div_txt.className = "css_dialog_song_card_loading_txt";
        song_card_loading_div_txt.innerText = "正在加载";
        song_card_loading_inner_div.appendChild(song_card_loading_div_img);
        song_card_loading_inner_div.appendChild(song_card_loading_div_txt);
        song_card_loading_div.appendChild(song_card_loading_inner_div);

        song_card_loading_div.startRoate = function() {
            if(songRoateId) {
                stopRotateAnimation(songRoateId);
                songRoateId = null;
            }
            songRoateId = startRotateAnimation(song_card_loading_div_img);
        };
        song_card_loading_div.stopRoate = function() {
            if(songRoateId) {
                stopRotateAnimation(songRoateId);
                songRoateId = null;
            }
        };
    }

    /**
     * 改变卡片的状态：成功、无网络、加载、失败
     * @param song_card_state
     */
    function changeSongCardState(song_card_state) {
        //console.log("current_song_card_state:" + current_song_card_state + ";song_card_state:" + song_card_state);
        if(!song_card_state || song_card_state == current_song_card_state) {
            return;
        }
		if (null != song_card_loading_div) {
			song_card_loading_div.stopRoate();
			song_card_loading_div.style.display = "none";
		}
		if (null != song_card_no_data_div) {
			song_card_no_data_div.style.display = "none";
		}
		if (null != song_card_content_main_div) {
			song_card_content_main_div.style.display = "none";
		}

        if(SONG_CARD_STATE.FAIL == song_card_state) {
            //console.log("fail songItems:" + songItems + ";cached Items:" + cacheMgr.getCache(songDefaultData.id));
            if(0 == requestTrigger && totalPageIndex == 0) {
                if(isNetConnect()) {
                    exec("UIComponents","showToast",["网络异常，请稍后重试",1]);
                } else {
                    exec("UIComponents","showToast",["网络无连接，请检测网络设置",1]);
                }
            }
            if(null == song_card_no_data_div && song_card_empty_div){
                createNoDataView();
                song_card_empty_div.appendChild(song_card_no_data_div);
            } else {
                if(song_card_no_data_div) {
                    song_card_no_data_div.style.display = "block";
                }

            }
            if(song_card_no_data_div) {
            	//console.log("song_card_no_data_div text is " + SONG_CARD_STATE.FAIL);
            	var loadingFail = document.getElementById("id_song_loading_failer");
            	if(loadingFail) {
            		loadingFail.innerText = SONG_CARD_STATE.FAIL;
            	}
            }
        } else if(SONG_CARD_STATE.LOADING == song_card_state) {
            if(null == song_card_loading_div && song_card_empty_div) {
                createLoadingView();
                song_card_empty_div.appendChild(song_card_loading_div);
                song_card_loading_div.startRoate();
            } else {
                if(song_card_loading_div) {
                    song_card_loading_div.style.display = "block";
                    song_card_loading_div.startRoate();
                }
            }
        } else if(SONG_CARD_STATE.NO_NET == song_card_state) {
            if(null == song_card_no_data_div && song_card_empty_div){
                createNoDataView();
                song_card_empty_div.appendChild(song_card_no_data_div);
            } else {
                if(song_card_no_data_div) {
                    song_card_no_data_div.style.display = "block";
                }
            }
            if(song_card_no_data_div) {
            	var loadingFail = document.getElementById("id_song_loading_failer");
            	if(loadingFail) {
            		loadingFail.innerText=SONG_CARD_STATE.NO_NET;
            	}
            }
        } else if(SONG_CARD_STATE.SUCCESS == song_card_state) {
            if(null == song_card_content_main_div && song_card_empty_div) {
                createSongView();
                song_card_empty_div.appendChild(song_card_content_main_div);
            } else {
                if(song_card_content_main_div) {
                    song_card_content_main_div.style.display = "block";
                }
            }
        } else {
            //console.log("不合法的状态");
        }

        current_song_card_state = song_card_state;

    }

    /**
	 * 创建实际的游戏区域
	 */
    function createSongView() {
        //console.log("createSongView");
        // 游戏内容区域主容器
        song_card_content_main_div = document.createElement("div");

        var dialog_song_content_wrapper = document.createElement("div");
        dialog_song_content_wrapper.className = "css_song_card_content_wrapper";

        for (var i = 0; i < PAGE_MAX_COUNT; i++) {
            var item = createSongItem(i);
            item.opKey = "list" + (i + 1);
            item_bottom_shadow = document.createElement("div");
            item_bottom_shadow.className = "css_song_card_item_shadow";
            dialog_song_content_wrapper.appendChild(item);
            dialog_song_content_wrapper.appendChild(item_bottom_shadow);
        }

        var songItemRecoverTimeout;
        var targetItem;
        dialog_song_content_wrapper.addEventListener("touchstart", function () {
            //console.log("----------------->> touchstart");
            event.stopPropagation();
            targetItem = getParentOfClass("css_song_card_item_div", event.target);
            if (targetItem) {
                moveOverCheck.start(event);
                if(songItemRecoverTimeout) {
                    clearTimeout(songItemRecoverTimeout);
                    songItemRecoverTimeout = null;
                }
                targetItem.style.backgroundColor = "#efefef";
                songItemRecoverTimeout = setTimeout(function(){
                    targetItem.style.backgroundColor = "";
                    songItemRecoverTimeout = null;
                },500);
            }
        }, false);
        dialog_song_content_wrapper.addEventListener("touchmove", function () {
            //console.log("----------------->> touchmove");
            if (targetItem) {
                targetItem.style.backgroundColor = "";
                if(songItemRecoverTimeout) {
                    clearTimeout(songItemRecoverTimeout);
                }
                if (moveOverCheck.check(event)) {
                    targetItem = null;
                }
            }
        }, false);
        dialog_song_content_wrapper.addEventListener("touchend", function () {
            //console.log("----------------->> touchend");
            event.stopPropagation();
            if (targetItem) {
                if(songItemRecoverTimeout) {
                    clearTimeout(songItemRecoverTimeout);
                    songItemRecoverTimeout = null;
                }
                if("" != targetItem.style.backgroundColor) {
                    targetItem.onClick(targetItem.opKey);
                }
                targetItem.style.backgroundColor = "";

            }
        }, false);

        song_card_content_main_div.appendChild(dialog_song_content_wrapper);

        //创建页码指示器
        //console.log("totalPageIndex is " + totalPageIndex);
        songIndicator = createCardIndicator(totalPageIndex, 1);
        song_card_content_main_div.appendChild(songIndicator);

        var bottom_container_div = document.createElement("div");
        bottom_container_div.style.position="relative";
        bottom_container_div.className = "css_song_bottom_container_div";

        var change_song_div = document.createElement("div");
        change_song_div.className="css_song_card_bottom_change_div";
        change_song_div.innerText="换一换";

        var get_more_div = document.createElement("div");
        get_more_div.className="css_song_card_bottom_get_more_div";
        get_more_div.id = "id_song_card_bottom_get_more_div";
        get_more_div.innerText="查看更多";

        bottom_container_div.appendChild(change_song_div);
        bottom_container_div.appendChild(get_more_div);


        change_song_div.addEventListener("touchstart", function(){
            event.stopPropagation();
            change_song_div.style.backgroundColor = "#efefef";
            moveOverCheck.start(event);
        });
        change_song_div.addEventListener("touchmove", function(){
            event.stopPropagation();
            if (moveOverCheck.check(event)) {
                change_song_div.style.backgroundColor = "";
            }
        });
        change_song_div.addEventListener("touchend", function(){
            event.stopPropagation();
            if(totalPageIndex ==1)
            {
                change_song_div.style.backgroundColor = "";
                return;
            }
            if (!moveOverCheck.isMoveOver()) {
                change_song_div.style.backgroundColor = "";
                exec("WidgetMMPContainerComponents", "appenCardCpaLog", ["music"]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.music, opCodeKey.switchBtn]);
                if(isRefreshing) {
                    return;
                }
                isRefreshing = true;
                currentPageIndex++;

                // 更新页码指示
                //console.log("switch page, currentPageIndex is " + currentPageIndex);
                if(((currentPageIndex + 1) % totalPageIndex) == 0) {
                	songIndicator.setSelected(totalPageIndex);
                } else {
                	songIndicator.setSelected((currentPageIndex + 1) % totalPageIndex);
                }

                refreshSongView(currentPageIndex, true);
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
                if(songCardBottomBtnUrl) {
                    exec("UIComponents", 'openBrowser', [ "", songCardBottomBtnUrl]);
                    exec("WidgetMMPContainerComponents", "appenCardCpaLog", ["music"]);
                    exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.music, opCodeKey.moreBtn]);
                }
            }
            get_more_div.style.backgroundColor = "";
        });
        song_card_content_main_div.appendChild(bottom_container_div);
    }


    var isRefreshing = false;

    /**
     * 刷新游戏
     * @param pageIndex
     * @param isNeedAnimation
     */
    function refreshSongView(pageIndex,isNeedAnimation) {
        //console.log("song card refreshSongView" + pageIndex + ";totalPageIndex:" + totalPageIndex);
        var tempPageIndex = pageIndex%totalPageIndex;
        // 游戏内容正文区。
        var beginIndex = tempPageIndex*PAGE_MAX_COUNT;
        clearContent();
        if(isNeedAnimation) {
            setTimeout(function(){refreshContent(beginIndex,true);},100);
        } else {
            refreshContent(beginIndex, false);
        }

        // 更新页码提示
        if(songIndicator) {
			if (((pageIndex + 1) % totalPageIndex) == 0) {
				songIndicator.initIndicator(totalPageIndex, totalPageIndex);
			} else {
				songIndicator.initIndicator(totalPageIndex, (pageIndex + 1) % totalPageIndex);
			}
        }
    }

    /**
     * 刷新底部更多按钮的文本
     */
    function refreshSongBtn() {

        var song_card_bottom_get_more_btn = document.getElementById("id_song_card_bottom_get_more_div");
        //console.log("refreshSongBtn" + song_card_bottom_get_more_btn);
        if(song_card_bottom_get_more_btn) {
            song_card_bottom_get_more_btn.innerText = songCardBottomBtnTxt;
        }
    }

    function clearContent() {
        for (var i = 0; i < PAGE_MAX_COUNT; i++) {
            var item = document.getElementById("song_card_item" + i);
            if(item && item.clear) {
                item.clear();
            }
        }
    }

    function refreshContent(i,isNeedAnimation){
        var item = document.getElementById("song_card_item" + i%PAGE_MAX_COUNT);
        //console.log("refreshContent" + item);
        if(item) {
            item.refresh(songItems[i]);
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
     * 判断游戏条目是否可用
     * @param item
     * @returns {boolean}
     */
    function isSongItemLegal(item) {
        return (item && item.name && item.id && item.detailUrl && item.coverPic && item.singer);
    }

    function haveId(items,item){
        if(!items)
        {
            return false;
        }
        for(var i=0;i<items.length;i++)
        {
            if(item.id == items[i].id)
            {
                return true;
            }
        }
        return false;
    }

    //缓存是否有这条游戏
    function isSongItemInCache(item, cacheData) {
    	if(!cacheData || cacheData.length < 1) {
    		return false;
    	}
    	for(var i=0; i<cacheData.length; i++) {
    		if(item.id === cacheData[i].id) {
    			//console.log("card of song : id " + item.id + " has exist");
    			return true;
    		}
    	}
    }

    //创建每一条游戏条目
    function createSongItem(id) {
        var itemDiv = document.createElement("div");
        itemDiv.id = "song_card_item" + id;
        itemDiv.className = "css_song_card_item_div";

        var briefDiv = document.createElement("div");
        briefDiv.className = "css_song_card_item_brief_div";

        var briefDiv_text = document.createElement("div");
        briefDiv_text.className = "song_card_book_item_name_text";
        briefDiv_text.innerHTML = "";
        briefDiv.appendChild(briefDiv_text);

        var briefDiv2 = document.createElement("div");
        briefDiv2.className = "css_song_card_item_brief_div2";

        var briefDiv2_text = document.createElement("div");
        briefDiv2_text.className = "song_card_book_item_name_text";
        briefDiv2_text.innerHTML = "";
        briefDiv2.appendChild(briefDiv2_text);


        var songImg = document.createElement("div");
        songImg.className = "css_song_card_item_img";
        var songImgContainer = document.createElement("div");
        songImgContainer.className = "css_song_card_item_img_container";
        songImgContainer.appendChild(songImg);
        itemDiv.appendChild(songImgContainer);

        var playImg = document.createElement("div");
        playImg.className = "css_song_card_play_img";
        var playImgContainer = document.createElement("div");
        playImgContainer.className = "css_song_card_play_img_container";
        playImgContainer.appendChild(playImg);
        itemDiv.appendChild(playImgContainer);


        itemDiv.appendChild(briefDiv);
        itemDiv.appendChild(briefDiv2);

        var songUrl;
        var songId;
        itemDiv.refresh = function(songItem) {
            //console.log("itemDiv.refresh" + id + ";songItem:" + JSON.stringify(songItem));
            if(songItem) {
                songId = songItem.id;
                briefDiv_text.innerText = songItem.name;
                briefDiv2_text.innerText = songItem.singer;
                if(songItem.coverPic) {
                    songImg.style.backgroundImage = "url('" + songItem.coverPic + "')";
                } else {
                    songImg.style.backgroundImage = "";
                }
                songUrl = songItem.detailUrl;
                songImg.style.visibility = "visible";

                playImg.style.backgroundImage = "url('" + song_card_brief_default_img + "')";
                playImg.style.visibility = "visible";
            }
        };
        itemDiv.onClick = function(opKey) {
            exec('UIComponents',"openBrowser",["",songUrl]);
            exec("WidgetMMPContainerComponents", "appenCardCpaLog", ["music"]);
            exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.music,opKey]);
            var netWorkResultString = exec("SystemComponents", "isNetWorkAvailable", []);
            var netWorkResult = getResultMessage(netWorkResultString);
        };
        itemDiv.clear = function() {
            //console.log("itemDiv.clear" + id);
            briefDiv_text.innerText = "";
            briefDiv2_text.innerText = "";
            songImg.style.backgroundImage = "";
            songImg.style.visibility = "hidden";
        };
        return itemDiv;
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
        if(songCardContainer.content) {
        	songCardContainer.content.style.display = "block";
        }
	}

	/** 标题栏点击事件回调*/
	function titleResponseListener(responseId){
		switch(responseId) {
            case 0://点击说法示例区域
                if(songCacheData && songCacheData.caseRedDot) {
                      songCacheData.caseRedDot = false;
                      cacheMgr.setCache(songCacheData.id, JSON.stringify(songCacheData));
                }
                if(zdOffDom) {
                    zdOffDom.style.display = "none";
                }
                songCardContainer.content.style.display = "none";
                if (speechCaseDom) {
                    speechCaseDom.style.display = "block";
                } else {
                    speechCaseDom = createSpeechCaseView(songDefaultData.id, songDefaultData.name, songDefaultData.caseList);
                    //判断一下是否为空
                    if(null != speechCaseDom) {
                    	speechCaseDom.setCancelListener(speechCaseCallBack);
                    	songCardContainer.appendChild(speechCaseDom);
                    }
                }
                break;
            case 1://点击置顶箭头按钮
                if(speechCaseDom) {
                    speechCaseDom.style.display = "none";
                }
                songCardContainer.content.style.display = "none";

                if (zdOffDom) {
                    zdOffDom.style.display = "block";
                } else {
                    zdOffDom = createOperationView(songDefaultData.id, songDefaultData.name, songCacheData.id);
                    //判断一下是否为空
                    if(null != zdOffDom) {
                    	zdOffDom.setOpListener(operateCallBack);
                    	songCardContainer.appendChild(zdOffDom);
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
                stickTopCardByDom(songCardContainer);
                break;
            case 2://点击关闭
                //显示关闭确认弹框，暂时未实现
                //showCloseConfirmDialogById(songCacheData.id);
                break;

            default:
                break;
        }
    }
    return createCardFrame;

});



