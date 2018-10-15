define(function() {
    var gameDefaultData = null;
    var gameCardContainer = null;
    var game_card_area;
    var card_bottom_shadow;   //卡片底部阴影
    var totalPageIndex = 0;       //当前数据最大的翻页数
    var PAGE_MAX_COUNT = 3;       //每一页最大的条目数
    var gameItems = [];  //游戏条目数组
    var currentPageIndex = 0; //当前页码
    var isCacheNew = false;   //数据是否已更新
    var gameIndicator; // 页码提示
    // 屏幕滑动距离检测器
    var moveOverCheck = new checkMoveOver();
    var gameCacheData = null;
    var isResourceAndCssLoaded = false;
    var isGameCardRequesting = false;
    var gameCardBottomBtnTxt;
    var gameCardBottomBtnUrl;
    var MAX_GAME_ITEM_COUNT = 15;
    var GAME_CARD_CMD = 1007;
//    var displayTime;
    var game_card_brief_default_img = "./game/res/ic_mainpage_game_default.png";
    var zdOffDom = null;
    var speechCaseDom = null;
    var cardRequestBaseInfo;
    var GAME_CARD_STATE = {
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

    var current_game_card_state; //当前卡片的状态
    var game_card_loading_div;
    var game_card_no_data_div;
    var game_card_content_main_div;
    var game_card_empty_div;  //开始是空白页，后面用来加载各种内容

    var requestCondition = 0;//0:无网络，不需要请求;1:不判断网络，直接请求;2：判断网络，再请求
    var requestTrigger = 0;//0:卡片本身触发 ;1:框架触发
    //卡片创建的主入口
    function createCardFrame(cardDefaultData, initNetState) {
        gameDefaultData = cardDefaultData;
        gameCardContainer = document.createElement("div");
        gameCardContainer.id = cardDefaultData.id;

        //读取缓存并解析，以便于提前判断是否需要加载缓存

        var gameCacheString = cacheMgr.getCache(cardDefaultData.id);
        if (gameCacheString) {
            if (typeof gameCacheString == "string") {
                try {
                    gameCacheData = JSON.parse(gameCacheString);
                    if(gameCacheData.version !== gameDefaultData.version)
                    {
                        cacheMgr.setCache(gameDefaultData.id, cardDefaultData);
                        gameCacheData = cardDefaultData;
                    }
                    //console.log("cached game data parsed");
                } catch (e) {
                    //console.log("JSON parse exception");
                    gameCacheData = cardDefaultData;
                }
            }
        } else {
            cacheMgr.setCache(gameDefaultData.id, cardDefaultData);
            gameCacheData = cardDefaultData;
        }
        //console.log("game card CacheString" + gameCacheString);

        //判断是否需要展示，如果需要展示，读取缓存，否则不处理
        if (gameCacheData.show) {
            if (initNetState) {
                requestCondition = 1;
            } else {
                requestCondition = 0;
            }
            xcssParser.parseStyleFile("./game/business.x.css", onResourceLoadFinish);
        } else {
            requestCondition = 2;
            if (listener && listener.callBack) {
                listener.callBack(gameDefaultData.id, CARD_CONTENT_NO_REQUEST);
            }
        }

        gameCardContainer.updateData = function () {
            if (gameCacheData.show) {
                if(!isGameCardRequesting) {
                    requestTrigger = 1;
                    doCardRequest(false);
                }
            } else {
                if (!isGameCardRequesting) {
                    listener.callBack(cardDefaultData.id, CARD_CONTENT_NO_REQUEST);
                }
            }
        };

        /**
         * 更新卡片的开启关闭状态
         * @param state
         */
        gameCardContainer.updateState = function (state) {

            //console.log("gameCardContainer.updateState state:" + state);

            gameCacheData.show = state;
            cacheMgr.setCache(gameDefaultData.id, gameCacheData);

            if (state) {
                //console.log("gameCardContainer.updateState show");
                gameCardContainer.style.display = "block";
                if (isResourceAndCssLoaded) {
                    //console.log("gameCardContainer.updateState isResourceAndCssLoaded");
                    //如果不在请求过程中，且没有可用的新闻数据，则请求
                    if (!isGameCardRequesting  && !isCacheNew) {
                        requestTrigger = 1;
                        doCardRequest(true);
                    }

                    showContentPage();
                } else {
                    //console.log("gameCardContainer.updateState ResourceAndCssNotLoaded");
                    setTimeout(function () {
                        xcssParser.parseStyleFile("./game/business.x.css", onResourceLoadFinish);
                    }, 50);
                }
            } else {
                //console.log("gameCardContainer.updateState hidden");
                gameCardContainer.style.display = "none";
            }
        };

        if(gameCacheData) {
    		gameCardContainer.initShowState = gameCacheData.show;
    	}
        return gameCardContainer;
    }

    /**
     * 创建游戏区域卡片
     * @param gameData
     */
    function createGameArea(gameData) {
    	//console.log("createGameArea");

        if (!gameData) {
            //console.log("gameData is null");
        }

        game_card_area = document.createElement("div");
        game_card_area.className = "game_card_content_white css_card";
        game_card_area.id = "id_game_card_box_content_white";

        var isShowRedDot = gameDefaultData.caseRedDot;
        if(gameCacheData && gameCacheData.version === gameDefaultData.version && gameCacheData.caseRedDot !== undefined) {
            isShowRedDot = gameCacheData.caseRedDot;
        }
        var gameTitle = createCardMainTitle(gameDefaultData.id, gameDefaultData.name, gameDefaultData.caseList[0], titleResponseListener, isShowRedDot);
        game_card_area.appendChild(gameTitle);

        createEmptyView();
        game_card_area.appendChild(game_card_empty_div);

        card_bottom_shadow = document.createElement("div");
		card_bottom_shadow.className = "css_game_card_bottom_shadow";
		game_card_area.appendChild(card_bottom_shadow);

        if (gameCardContainer) {
            //console.log("game card need show");
            gameCardContainer.appendChild(game_card_area);
            gameCardContainer.content = game_card_area;
            gameCardContainer.showContentPage = showContentPage;
        }
        setTimeout(function () {
            loadDataAndRequestGame(gameData);
        }, 50);
    }

    function loadDataAndRequestGame(gameData) {
        //如果有可用缓存，则先展示缓存
        if (gameCacheData && gameData.version == gameCacheData.version && gameCacheData.content) {
            //console.log("game card gameCacheData show");
            handleNewsCardData(JSON.stringify(gameCacheData.content), true);
        }

        requestTrigger = 1;
        if (1 == requestCondition) {
            doCardRequest(false);
        } else if (2 == requestCondition) {
            doCardRequest(true);
        } else {
            listener.callBack(gameDefaultData.id, CARD_CONTENT_REQUEST_FAILE);
            //没有网络，不需要请求，但是需要回调
            if(!gameItems || gameItems.length < PAGE_MAX_COUNT)  {
                changeGameCardState(GAME_CARD_STATE.FAIL);
            }
        }
    }

    //资源解析完成的回调
    function onResourceLoadFinish(){
    	//console.log("game onResourceLoadFinish");
        if(!isResourceAndCssLoaded) {
            isResourceAndCssLoaded = true;
            createGameArea(gameDefaultData);
        }
    }

    /**
     * 处理游戏卡片数据请求结果和缓存数据
     * @param result
     * @param isCachedData 是否是缓存数据
     */
    function handleNewsCardData(result,isCachedData) {
        //console.log("handleNewsCardData, isCachedData is " + isCachedData);
        if(!isCachedData) {
            isGameCardRequesting = false;
            console.log("requestGameCard success:" + result );
        }

        //结果不存在，如果是缓存数据不处理，如果不是则按失败处理
        if(!result) {
        	//console.log("handleNewsCardData, result is null");
            if(isCachedData) {
                return;
            } else {
                if((!gameItems || gameItems.length < PAGE_MAX_COUNT) && !isCachedData) {
                    changeGameCardState(GAME_CARD_STATE.FAIL);
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
            //console.log("handleNewsResult");
            var jsonObject = jsonData;
            if("success" == jsonObject.status) {
                //console.log("log_success");
                if(!gameCacheData) {
                //console.log("log_gameCacheData");
                    //读取缓存，来重写
                    var gameCacheString = cacheMgr.getCache(gameDefaultData.id);
                    if(gameCacheString) {
                        if(typeof gameCacheString == "string") {
                            try{
                                gameCacheData = JSON.parse(gameCacheString);
                            }catch(e){
                                //console.log("JSON parse exception");
                            }
                        }
                    }
                }
                var i = 0;
                var tmpGameItems = [];
                var tmpItems = [];
                var tmpTotalPageIndex = 0;
                var bottomBtnData;
                if(!isCachedData) {
                    //console.log("log_isCachedData");
                    if(jsonObject.content && jsonObject.content.games) {
                        //console.log("log_jsonObject.content");
                        var items = jsonObject.content.games;
                        var itemslength = items.length;
                        var index = 0;
                        for(;index < itemslength && i < MAX_GAME_ITEM_COUNT; index++) {
                            var item = items[index];
                            if(isGameItemLegal(item) && !haveId(tmpItems,item)) {
                                i++;
                                tmpItems.push(item);
                                if(i % PAGE_MAX_COUNT == 0) {
                                    tmpTotalPageIndex++;
                                }
                            }
                        }
                        for(i=0;i<PAGE_MAX_COUNT*tmpTotalPageIndex;i++)
                        {
                            tmpGameItems[i] = tmpItems[i];
                        }
                    }
                }else{
                    if(gameCacheData && gameCacheData.content && gameCacheData.content.content && gameCacheData.content.content.games)
                    {
                       tmpGameItems  = gameCacheData.content.content.games;
                       tmpTotalPageIndex = tmpGameItems.length / PAGE_MAX_COUNT;
                    }
                }
                //console.log("log_end");
                if(tmpGameItems.length >=  PAGE_MAX_COUNT && !isCachedData){
                    if(jsonObject.content.bottomButton && jsonObject.content.bottomButton[0]
                    && jsonObject.content.bottomButton[0].name
                    && jsonObject.content.bottomButton[0].url)
                    {
                        //console.log("log_start_cache");
                        jsonData.content.games = tmpGameItems;
                        gameCacheData.content = jsonData;
                        bottomBtnData = jsonObject.content.bottomButton;
                        isCacheNew = true;
                        cacheMgr.setCache(gameDefaultData.id, gameCacheData);
                    }else{
                        tmpGameItems  = gameCacheData.content.content.games;
                        tmpTotalPageIndex = tmpGameItems.length / PAGE_MAX_COUNT;
                    }
                }
                //console.log("log_=over");
                //判断数据是否可用
                if(tmpTotalPageIndex > 0) {
                	totalPageIndex = tmpTotalPageIndex;
                    currentPageIndex = 0;
                    changeGameCardState(GAME_CARD_STATE.SUCCESS);
                    gameItems = tmpGameItems;
                    //console.log("refreshGameView begin");
                    refreshGameView(currentPageIndex,false);
                    if(!bottomBtnData)
                    {
                        bottomBtnData = gameCacheData.content.content.bottomButton;
                    }
                    if(bottomBtnData && bottomBtnData.length > 0) {
                        if(bottomBtnData[0].name)
                        {
                            gameCardBottomBtnTxt = bottomBtnData[0].name;
                        }
                        else{
                            gameCardBottomBtnTxt = "更多游戏";
                        }
                        gameCardBottomBtnUrl = bottomBtnData[0].url;
                        refreshNewsBtn();
                    }
                    // 通知框架
                    if (!isCachedData && listener && listener.callBack) {
						listener.callBack(gameDefaultData.id,
								CARD_CONTENT_REQUEST_SUCCESS);
					}

                } else {
                    if((!gameItems || gameItems.length < PAGE_MAX_COUNT) && !isCachedData) {
                        changeGameCardState(GAME_CARD_STATE.FAIL);
                    }

                    // 通知框架
                    if (!isCachedData && listener && listener.callBack) {
						listener.callBack(gameDefaultData.id,
								CARD_CONTENT_REQUEST_FAILE);
					}
                }
            } else { //请求失败
            	//console.log("status is fail");
                if((!gameItems || gameItems.length < PAGE_MAX_COUNT) && !isCachedData) {
                    changeGameCardState(GAME_CARD_STATE.FAIL);
                }

                // 通知框架
				if (!isCachedData && listener && listener.callBack) {
					listener.callBack(gameDefaultData.id, CARD_CONTENT_REQUEST_FAILE);
				}
            }
        } else {
        	//console.log("JSON Data is null");
            if((!gameItems || gameItems.length < PAGE_MAX_COUNT) && !isCachedData) {
                changeGameCardState(GAME_CARD_STATE.FAIL);
            }

            // 通知框架
			if (!isCachedData && listener && listener.callBack) {
				listener.callBack(gameDefaultData.id,
						CARD_CONTENT_REQUEST_FAILE);
			}
        }

    }

    /**
     * 游戏缓存和请求结果的解析
     * @param result
     */
    function handleCardRequestData(result) {
        handleNewsCardData(result,false);
    }

    function handleCardRequestFail(){
        //console.log("game card request fail");
        if(!gameItems || gameItems.length < PAGE_MAX_COUNT) {
            changeGameCardState(GAME_CARD_STATE.FAIL);
        }
        isGameCardRequesting = false;
        if(listener && listener.callBack) {
            listener.callBack(gameDefaultData.id,CARD_CONTENT_REQUEST_FAILE);
        }
    }

    function doCardRequest(isNeedjudgeNet){
    	//console.log("doCardRequest, isNeedjudgeNet is " + isNeedjudgeNet);
        if(isGameCardRequesting){
            //console.log("game card is requesting");
            return;
        }
        if(isNeedjudgeNet) {
            var netState = isNetConnect();
            if(!netState){
                listener.callBack(gameDefaultData.id, CARD_CONTENT_REQUEST_FAILE);
                if(0 == totalPageIndex) {
                    changeGameCardState(GAME_CARD_STATE.FAIL);
                }
                return false;
            }
        }
        //console.log("game card request");
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
                listener.callBack(gameDefaultData.id, CARD_CONTENT_REQUEST_FAILE);
            }
            return;
        }

        var json = {};

        //cmd
        json.cmd = GAME_CARD_CMD;

        json.base = organizeJsonBaseData(getBseInfo());

        //param
        var param = {};
        param.id = gameDefaultData.id;
        param.version = "" + gameDefaultData.version;
        param.extendParam = {};
        json.param = param;

         var jsonStr = JSON.stringify(json);


        requestOptions.data = JSON.stringify(json);

        sendJsonAjaxRequest(requestOptions);

        console.log("requestGameCard,  param:  cmd:1007  base:base  id:"+gameDefaultData.id+" version:"+gameDefaultData.version );

        isGameCardRequesting = true;
    }

    /** 创建空白页*/
    function createEmptyView() {
    	//console.log("createEmptyView");
    	game_card_empty_div = document.createElement("div");
    	game_card_empty_div.className = "css_dialog_game_no_data";
    }

    /**
     * 创建失败界面的提示
     */
    function createNoDataView() {
    	//console.log("createNoDataView");
        // 没数据状态下的显示元素
        game_card_no_data_div = document.createElement("div");
        game_card_no_data_div.id = "id_game_card_no_data_div";
        game_card_no_data_div.className = "css_dialog_game_no_data";

        var game_card_no_data_desc = document.createElement("div");
        game_card_no_data_desc.id = "id_game_loading_failer";
        game_card_no_data_desc.className = "css_game_card_failertext";
        game_card_no_data_desc.innerText = GAME_CARD_STATE.FAIL;
        game_card_no_data_div.appendChild(game_card_no_data_desc);

        game_card_no_data_div.addEventListener("touchstart", function(){
            event.stopPropagation();
            moveOverCheck.start(event);
        });
        game_card_no_data_div.addEventListener("touchmove", function(){
            event.stopPropagation();
            moveOverCheck.check(event);
        });
        game_card_no_data_div.addEventListener("touchend", function(){
            event.stopPropagation();
            if (!moveOverCheck.isMoveOver()) {
            	exec("LogComponents", "addCmccLog", [cpaCode.game]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.game, "errorTip"]);
                changeGameCardState(GAME_CARD_STATE.LOADING);
                if(!isGameCardRequesting) {
                    requestTrigger = 0;
                    doCardRequest(false);
                }
            }
        });
    }

    var gameRoateId;

    /**
     * 创建加载界面
     */
    function createLoadingView() {
    	//console.log("createLoadingView");
        // loading 状态下的显示元素
    	game_card_loading_div = document.createElement("div");
    	game_card_loading_div.className = "css_dialog_game_no_data";

        game_card_loading_inner_div = document.createElement("div");
        game_card_loading_inner_div.id = "id_game_card_loading_div";
        game_card_loading_inner_div.className = "css_dialog_game_card_loading";
        var game_card_loading_div_img = document.createElement("img");
        game_card_loading_div_img.className = "css_dialog_game_card_loading_img";
        game_card_loading_div_img.src = frame_loading_img;
        var game_card_loading_div_txt = document.createElement("div");
        game_card_loading_div_txt.className = "css_dialog_game_card_loading_txt";
        game_card_loading_div_txt.innerText = "正在加载";
        game_card_loading_inner_div.appendChild(game_card_loading_div_img);
        game_card_loading_inner_div.appendChild(game_card_loading_div_txt);
        game_card_loading_div.appendChild(game_card_loading_inner_div);

        game_card_loading_div.startRoate = function() {
            if(gameRoateId) {
                stopRotateAnimation(gameRoateId);
                gameRoateId = null;
            }
            gameRoateId = startRotateAnimation(game_card_loading_div_img);
        };
        game_card_loading_div.stopRoate = function() {
            if(gameRoateId) {
                stopRotateAnimation(gameRoateId);
                gameRoateId = null;
            }
        };
    }

    /**
     * 改变卡片的状态：成功、无网络、加载、失败
     * @param game_card_state
     */
    function changeGameCardState(game_card_state) {
        //console.log("current_game_card_state:" + current_game_card_state + ";game_card_state:" + game_card_state);
        if(!game_card_state || game_card_state == current_game_card_state) {
            return;
        }
		if (null != game_card_loading_div) {
			game_card_loading_div.stopRoate();
			game_card_loading_div.style.display = "none";
		}
		if (null != game_card_no_data_div) {
			game_card_no_data_div.style.display = "none";
		}
		if (null != game_card_content_main_div) {
			game_card_content_main_div.style.display = "none";
		}

        if(GAME_CARD_STATE.FAIL == game_card_state) {
            //console.log("fail gameItems:" + gameItems + ";cached Items:" + cacheMgr.getCache(gameDefaultData.id));
            if(0 == requestTrigger && totalPageIndex == 0) {
                if(isNetConnect()) {
                    exec("UIComponents","showToast",["网络异常，请稍后重试",1]);
                } else {
                    exec("UIComponents","showToast",["网络无连接，请检测网络设置",1]);
                }
            }
            if(null == game_card_no_data_div && game_card_empty_div){
                createNoDataView();
                game_card_empty_div.appendChild(game_card_no_data_div);
            } else {
                if(game_card_no_data_div) {
                    game_card_no_data_div.style.display = "block";
                }

            }
            if(game_card_no_data_div) {
            	//console.log("game_card_no_data_div text is " + GAME_CARD_STATE.FAIL);
            	var loadingFail = document.getElementById("id_game_loading_failer");
            	if(loadingFail) {
            		loadingFail.innerText = GAME_CARD_STATE.FAIL;
            	}
            }
        } else if(GAME_CARD_STATE.LOADING == game_card_state) {
            if(null == game_card_loading_div && game_card_empty_div) {
                createLoadingView();
                game_card_empty_div.appendChild(game_card_loading_div);
                game_card_loading_div.startRoate();
            } else {
                if(game_card_loading_div) {
                    game_card_loading_div.style.display = "block";
                    game_card_loading_div.startRoate();
                }
            }
        } else if(GAME_CARD_STATE.NO_NET == game_card_state) {
            if(null == game_card_no_data_div && game_card_empty_div){
                createNoDataView();
                game_card_empty_div.appendChild(game_card_no_data_div);
            } else {
                if(game_card_no_data_div) {
                    game_card_no_data_div.style.display = "block";
                }
            }
            if(game_card_no_data_div) {
            	var loadingFail = document.getElementById("id_game_loading_failer");
            	if(loadingFail) {
            		loadingFail.innerText=GAME_CARD_STATE.NO_NET;
            	}
            }
        } else if(GAME_CARD_STATE.SUCCESS == game_card_state) {
            if(null == game_card_content_main_div && game_card_empty_div) {
                createGameView();
                game_card_empty_div.appendChild(game_card_content_main_div);
            } else {
                if(game_card_content_main_div) {
                    game_card_content_main_div.style.display = "block";
                }
            }
        } else {
            //console.log("不合法的状态");
        }

        current_game_card_state = game_card_state;

    }

    /**
	 * 创建实际的游戏区域
	 */
    function createGameView() {
        //console.log("createGameView");
        // 游戏内容区域主容器
        game_card_content_main_div = document.createElement("div");

        var dialog_game_content_wrapper = document.createElement("div");
        dialog_game_content_wrapper.className = "css_game_card_content_wrapper";

        for (var i = 0; i < PAGE_MAX_COUNT; i++) {
            var item = createGameItem(i);
            item.opKey = "list" + (i + 1);
            dialog_game_content_wrapper.appendChild(item);
            if(i!=PAGE_MAX_COUNT-1)
            {
                item_bottom_shadow = document.createElement("div");
                item_bottom_shadow.className = "css_game_card_item_shadow";
                dialog_game_content_wrapper.appendChild(item_bottom_shadow);
            }
        }

        var gameItemRecoverTimeout;
        var targetItem;
        dialog_game_content_wrapper.addEventListener("touchstart", function () {
            //console.log("----------------->> touchstart");
            event.stopPropagation();
            targetItem = getParentOfClass("css_game_card_item_div", event.target);
            if (targetItem) {
                moveOverCheck.start(event);
                if(gameItemRecoverTimeout) {
                    clearTimeout(gameItemRecoverTimeout);
                    gameItemRecoverTimeout = null;
                }
                targetItem.style.backgroundColor = "#efefef";
                gameItemRecoverTimeout = setTimeout(function(){
                    targetItem.style.backgroundColor = "";
                    gameItemRecoverTimeout = null;
                },500);
            }
        }, false);
        dialog_game_content_wrapper.addEventListener("touchmove", function () {
            //console.log("----------------->> touchmove");
            if (targetItem) {
                targetItem.style.backgroundColor = "";
                if(gameItemRecoverTimeout) {
                    clearTimeout(gameItemRecoverTimeout);
                }
                if (moveOverCheck.check(event)) {
                    targetItem = null;
                }
            }
        }, false);
        dialog_game_content_wrapper.addEventListener("touchend", function () {
            //console.log("----------------->> touchend");
            event.stopPropagation();
            if (targetItem) {
                if(gameItemRecoverTimeout) {
                    clearTimeout(gameItemRecoverTimeout);
                    gameItemRecoverTimeout = null;
                }
                if("" != targetItem.style.backgroundColor) {
                    targetItem.onClick(targetItem.opKey);
                }
                targetItem.style.backgroundColor = "";
            }
        }, false);

        game_card_content_main_div.appendChild(dialog_game_content_wrapper);

        //创建页码指示器
        //console.log("totalPageIndex is " + totalPageIndex);
        gameIndicator = createCardIndicator(totalPageIndex, 1);
        game_card_content_main_div.appendChild(gameIndicator);

        var bottom_container_div = document.createElement("div");
        bottom_container_div.style.position="relative";
        bottom_container_div.className = "css_game_bottom_container_div";

        var change_game_div = document.createElement("div");
        change_game_div.className="css_game_card_bottom_change_div";
        change_game_div.innerText="换一换";

        var get_more_div = document.createElement("div");
        get_more_div.className="css_game_card_bottom_get_more_div";
        get_more_div.id = "id_game_card_bottom_get_more_div";

        bottom_container_div.appendChild(change_game_div);
        bottom_container_div.appendChild(get_more_div);


        change_game_div.addEventListener("touchstart", function(){
            event.stopPropagation();
            change_game_div.style.backgroundColor = "#efefef";
            moveOverCheck.start(event);
        });
        change_game_div.addEventListener("touchmove", function(){
            event.stopPropagation();
            if (moveOverCheck.check(event)) {
                change_game_div.style.backgroundColor = "";
            }
        });
        change_game_div.addEventListener("touchend", function(){
            event.stopPropagation();
            if(totalPageIndex ==1)
            {
                change_game_div.style.backgroundColor = "";
                return;
            }
            if (!moveOverCheck.isMoveOver()) {
                change_game_div.style.backgroundColor = "";
                exec("LogComponents", "addCmccLog",[cpaCode.game]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.game, opCodeKey.switchBtn]);
                if(isRefreshing) {
                    return;
                }
                isRefreshing = true;
                currentPageIndex++;
                // 更新页码指示
                //console.log("switch page, currentPageIndex is " + currentPageIndex);
                if(((currentPageIndex + 1) % totalPageIndex) == 0) {
                	gameIndicator.setSelected(totalPageIndex);
                } else {
                	gameIndicator.setSelected((currentPageIndex + 1) % totalPageIndex);
                }
                refreshGameView(currentPageIndex, true);
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
                if(gameCardBottomBtnUrl) {
                    exec("UIComponents", 'openBrowser', [ "", gameCardBottomBtnUrl]);
                    exec("LogComponents", "addCmccLog",[cpaCode.game]);
                    exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.game, opCodeKey.moreBtn]);
                }
            }
            get_more_div.style.backgroundColor = "";
        });
        game_card_content_main_div.appendChild(bottom_container_div);
    }


    var isRefreshing = false;

    /**
     * 刷新游戏
     * @param pageIndex
     * @param isNeedAnimation
     */
    function refreshGameView(pageIndex,isNeedAnimation) {
        //console.log("game card refreshGameView" + pageIndex + ";totalPageIndex:" + totalPageIndex);
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
        if(gameIndicator) {
			if (((pageIndex + 1) % totalPageIndex) == 0) {
				gameIndicator.initIndicator(totalPageIndex, totalPageIndex);
			} else {
				gameIndicator.initIndicator(totalPageIndex, (pageIndex + 1) % totalPageIndex);
			}
        }
    }

    /**
     * 刷新底部更多按钮的文本
     */
    function refreshNewsBtn() {

        var game_card_bottom_get_more_btn = document.getElementById("id_game_card_bottom_get_more_div");
        //console.log("refreshNewsBtn" + game_card_bottom_get_more_btn);
        if(game_card_bottom_get_more_btn) {
            game_card_bottom_get_more_btn.innerText = gameCardBottomBtnTxt;
        }
    }

    function clearContent() {
        for (var i = 0; i < PAGE_MAX_COUNT; i++) {
            var item = document.getElementById("game_card_item" + i);
            if(item && item.clear) {
                item.clear();
            }
        }
    }

    function refreshContent(i,isNeedAnimation){
        var item = document.getElementById("game_card_item" + i%PAGE_MAX_COUNT);
        //console.log("refreshContent" + item);
        if(item) {
            item.refresh(gameItems[i]);
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
    function isGameItemLegal(item) {
        return (item && item.name && item.url && item.icon && item.id);
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
    function isNewsItemInCache(item, cacheData) {
    	if(!cacheData || cacheData.length < 1) {
    		return false;
    	}
    	for(var i=0; i<cacheData.length; i++) {
    		if(item.id === cacheData[i].id) {
    			//console.log("card of game : id " + item.id + " has exist");
    			return true;
    		}
    	}
    }

    //创建每一条游戏条目
    function createGameItem(id) {
        var itemDiv = document.createElement("div");
        itemDiv.id = "game_card_item" + id;
        itemDiv.className = "css_game_card_item_div";


        var briefDiv = document.createElement("div");
        briefDiv.className = "css_game_card_item_brief_div";
        var briefDiv_text = document.createElement("div");
        briefDiv_text.className = "game_card_book_item_name_text";
        briefDiv_text.innerHTML = "";
        briefDiv.appendChild(briefDiv_text);

        var gameImg = document.createElement("div");
        gameImg.className = "css_game_card_item_img";

        var gameImgContainer = document.createElement("div");
        gameImgContainer.className = "css_game_card_item_img_container";

        gameImgContainer.appendChild(gameImg);

        itemDiv.appendChild(gameImgContainer);
        itemDiv.appendChild(briefDiv);

        var gameUrl;
        var gameId;
        itemDiv.refresh = function(gameItem) {
            //console.log("itemDiv.refresh" + id + ";gameItem:" + JSON.stringify(gameItem));
            if(gameItem) {
                gameId = gameItem.id;
                briefDiv_text.innerText = gameItem.name;
                if(gameItem.icon) {
                    gameImg.style.backgroundImage = "url('" + gameItem.icon + "')";
                } else {
                    gameImg.style.backgroundImage = "";
                }
                gameUrl = gameItem.url;
                gameImg.style.visibility = "visible";
            }
        };

        itemDiv.onClick = function(opKey) {
            exec('UIComponents',"openBrowser",["",gameUrl]);
            exec("LogComponents", "addCmccLog",[cpaCode.game]);
            exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.game,opKey]);
            var netWorkResultString = exec("SystemComponents", "isNetWorkAvailable", []);
            var netWorkResult = getResultMessage(netWorkResultString);
        };
        itemDiv.clear = function() {
            //console.log("itemDiv.clear" + id);
            briefDiv_text.innerText = "";
            gameImg.style.backgroundImage = "";
            gameImg.style.visibility = "hidden";
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
        if(gameCardContainer.content) {
        	gameCardContainer.content.style.display = "block";
        }
	}

	/** 标题栏点击事件回调*/
	function titleResponseListener(responseId){
		switch(responseId) {
            case 0://点击说法示例区域
                if(gameCacheData && gameCacheData.caseRedDot) {
                      gameCacheData.caseRedDot = false;
                      cacheMgr.setCache(gameCacheData.id, JSON.stringify(gameCacheData));
                }
                if(zdOffDom) {
                    zdOffDom.style.display = "none";
                }
                gameCardContainer.content.style.display = "none";
                if (speechCaseDom) {
                    speechCaseDom.style.display = "block";
                } else {
                    speechCaseDom = createSpeechCaseView(gameDefaultData.id, gameDefaultData.name, gameDefaultData.caseList);
                    //判断一下是否为空
                    if(null != speechCaseDom) {
                    	speechCaseDom.setCancelListener(speechCaseCallBack);
                    	gameCardContainer.appendChild(speechCaseDom);
                    }
                }
                break;
            case 1://点击置顶箭头按钮
                if(speechCaseDom) {
                    speechCaseDom.style.display = "none";
                }
                gameCardContainer.content.style.display = "none";

                if (zdOffDom) {
                    zdOffDom.style.display = "block";
                } else {
                    zdOffDom = createOperationView(gameDefaultData.id, gameDefaultData.name, gameCacheData.id);
                    //判断一下是否为空
                    if(null != zdOffDom) {
                    	zdOffDom.setOpListener(operateCallBack);
                    	gameCardContainer.appendChild(zdOffDom);
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
                stickTopCardByDom(gameCardContainer);
                break;
            case 2://点击关闭
                //显示关闭确认弹框，暂时未实现
                //showCloseConfirmDialogById(gameCacheData.id);
                break;

            default:
                break;
        }
    }
    return createCardFrame;

});

