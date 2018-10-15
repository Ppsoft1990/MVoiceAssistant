define(function(){
    var CARD_NOVEL_TOUCH_BACK_COLOR = "#efefef";
    var cardRequestBaseInfo = null;

    var zdOffDom = null;
    var speechCaseDom = null;

    var IC_CARD_DRAMA_BOOK_IMG = "./drama/res/ic_mainpage_novel_default.png";

    var dramaCardContainer = null;
    var dramaCard = null;

    var dramaCardData = null;
    var dramaXcssParsed = false;

    var isRequesting = false;
    var requestCondition = 0;//0:无网络，不需要请求;1:不判断网络，直接请求;2：判断网络，再请求

    var PAGE_SHOW_NUM = 3; // 一屏显示的听书数目
    var LISTEN_PAGE_NUM = 2; //显示两屏
    var MAX_PAGE_NUM; // 最大切换页数
    var switchPageIndex; // 换一换页面索引，从0开始
    var dramaItemCache = []; // 每个听书项的缓存

    function createCardFrame(cardDefaultData, initNetState){
        dramaCardData = cardDefaultData;

        switchPageIndex = 0;

        dramaCardContainer = document.createElement("div");

        dramaCardContainer.id = cardDefaultData.id;

        dramaCardContainer.updateData = function(){
            console.log("DramaCard is updating");
            if(dramaCardData.show ){
                doCardRequest(false);
            }else{
                if(!isRequesting) {
                    listener.callBack(dramaCardData.id, CARD_CONTENT_NO_REQUEST);
                }
            }
        };

        dramaCardContainer.updateState = function(state){
            if (state) {
                if (dramaXcssParsed) {
                    dramaCardContainer.style.display = "block";
                    //showContentPage();
                }
                else {
                    dramaXcssParsed = true;
                    xcssParser.parseStyleFile("./drama/business.x.css", onCardCssParseFinish);
                }
                dramaCardData.show = true;
            }
            else {
                dramaCardContainer.style.display = "none";
                dramaCardData.show = false;
            }

            //缓存数据
            cacheMgr.setCache(dramaCardData.id, JSON.stringify(dramaCardData));
        };

        //读取数据缓存
        var dramaCacheData = null;
        var dramaCacheString = cacheMgr.getCache(dramaCardData.id);
        if (dramaCacheString) {
            if (typeof dramaCacheString == "string") {
                try {
                    dramaCacheData = JSON.parse(dramaCacheString);
                }
                catch (e) {
                    console.log("JSON parse exception");
                }
            }
        }
        if (dramaCacheData) {
            //缓存可用
            if (dramaCacheData.version == cardDefaultData.version) {
                //读取缓存的显示状态和数据内容
                dramaCardData.show = dramaCacheData.show;
                dramaCardData.caseList = cardDefaultData.caseList;
                dramaCardData.caseRedDot = dramaCacheData.caseRedDot;
                //增强数据合法性判断
                if (dramaCacheData.content && dramaCacheData.content.listenBooks) {
                    dramaCardData.content = dramaCacheData.content;
                }
            } else {
                //卡片的显示状态需要保留
                dramaCardData.show = dramaCacheData.show;
                //缓存不可用，设置默认数据为缓存
                cacheMgr.setCache(dramaCardData.id, JSON.stringify(dramaCardData));
            }
        }
        else {
            //如果没有缓存数据，设置默认数据为缓存数据
            cacheMgr.setCache(dramaCardData.id, JSON.stringify(dramaCardData));
        }

        if (dramaCardData.show) {
            if(initNetState){
                requestCondition = 1;
            }else{
                requestCondition = 0;
            }
            dramaXcssParsed = true;
            xcssParser.parseStyleFile("./drama/business.x.css", onCardCssParseFinish);
        }
        else {
            //不需要显示，但是需要通知框架，该卡片初始化时不需要进行数据请求
            // if (!novelCardRequestListenerCalled) {
            // novelCardRequestListenerCalled = true;
            // listener.callBack(dramaCardData.id, CARD_CONTENT_NO_REQUEST);
            // }
            listener.callBack(dramaCardData.id, CARD_CONTENT_NO_REQUEST);
            requestCondition = 2;
        }

        dramaCardContainer.date_type = "card";
        dramaCardContainer.initShowState = dramaCardData.show;

        return dramaCardContainer;
    }




    function operateCallBack(callBackId) {
        switch(callBackId) {
            case 0://取消
                zdOffDom.style.display = "none";
                dramaCard.style.display = "block";
                break;
            case 1://置顶
                zdOffDom.style.display = "none";
                dramaCard.style.display = "block";
                stickTopCardByDom(dramaCardContainer);
                break;
            case 2://点击关闭
                //显示关闭确认弹框，暂时未实现
                //showCloseConfirmDialogById(dramaCardContainer.id);
                break;

            default:
                break;
        }
    }
    function speechCaseCallBack(){
        if(zdOffDom) {
            zdOffDom.style.display = "none";
        }
        if(speechCaseDom) {
            speechCaseDom.style.display = "none";
        }
        dramaCard.style.display = "block";
    }
    function titleResponseListener(responseId){
        switch(responseId) {
            case 0://点击说法示例区域
                if(dramaCardData && dramaCardData.caseRedDot) {
                    dramaCardData.caseRedDot = false;
                    cacheMgr.setCache(dramaCardData.id, JSON.stringify(dramaCardData));
                }
                if(zdOffDom) {
                    zdOffDom.style.display = "none";
                }

                dramaCard.style.display = "none";
                if (speechCaseDom) {
                    speechCaseDom.style.display = "block";
                } else {
                    speechCaseDom = createSpeechCaseView(dramaCardData.id, dramaCardData.name, dramaCardData.caseList);
                    //判断一下是否为空
                    speechCaseDom.setCancelListener(speechCaseCallBack);
                    dramaCardContainer.appendChild(speechCaseDom);
                }
                break;
            case 1://点击置顶箭头按钮
                if(speechCaseDom) {
                    speechCaseDom.style.display = "none";
                }
                dramaCard.style.display = "none";

                if (zdOffDom) {
                    zdOffDom.style.display = "block";
                } else {
                    zdOffDom = createOperationView(dramaCardData.id, dramaCardData.name, dramaCardContainer.id);
                    //判断一下是否为空
                    zdOffDom.setOpListener(operateCallBack);
                    dramaCardContainer.appendChild(zdOffDom);
                }
                break;
            case 2://刷新，暂时没有实现
                break;
            default:
                break;
        }
    }
    function showContentPage(){
        if(zdOffDom) {
            zdOffDom.style.display = "none";
        }
        if(speechCaseDom) {
            speechCaseDom.style.display = "none";
        }
        dramaCard.style.display = "block";
    }


    function onCardCssParseFinish(){
        if (dramaCard) {
            //已经创建过，不再创建
            return;
        }
        createDramaCard(dramaCardData);
    }

    function createDramaCard(dramaData){
        if (!dramaData) {
            console.log("drama card default data is null");
            return;
        }

        // 计算换一换展示的页数
        MAX_PAGE_NUM = Math.floor(dramaData.content.listenBooks.length / (PAGE_SHOW_NUM * LISTEN_PAGE_NUM));
        if (MAX_PAGE_NUM > 2) {
            MAX_PAGE_NUM = 2;
        }
        console.log("DramaCard createDramaCard MAX_PAGE_NUM: " + MAX_PAGE_NUM);

        var area = document.createElement("div");
        area.className = "css_card";

        var title = createCardMainTitle(dramaData.id, dramaData.name, dramaData.caseList[0],titleResponseListener, dramaData.caseRedDot);
        area.appendChild(title);

        // 创建推荐听书展示区域
        var novel_rcmd_page = createNovelRcmdPage(0); // 第二个参数表示当前页面索引
        var novel_rcmd_page_second = createNovelRcmdPage(1); // 第二个参数表示当前页面索引
        area.appendChild(novel_rcmd_page);
        area.appendChild(novel_rcmd_page_second);

        // 创建分类区
        var novelCategoryItemArr = [];
        var novel_category = document.createElement("div");
        novel_category.className = "novel_card_category_area";
        for (var j = 0; j < dramaData.content.category.length; j++) {

            var categoryContainer = document.createElement("div");
            categoryContainer.className = "novel_card_category_item_container";

            var category = document.createElement("div");
            category.className = "novel_card_category_item" + j;
            if (dramaData.content.category[j].title) {
                category.innerText = dramaData.content.category[j].title;
            }

            category.opKey = "category" + (j + 1);

            category.url = dramaData.content.category[j].url;

            categoryContainer.appendChild(category);
            novel_category.appendChild(categoryContainer);

            novelCategoryItemArr[j] = category;
        }

        // 设置监听
        var categoryTarget = null;
        novel_category.addEventListener("touchstart", function(event){
            event.stopPropagation();
            for (var i = 0; i < 4 ; i++) {
                var className = "novel_card_category_item" + i;
                categoryTarget = getParentOfClass(className, event.target);
                if (categoryTarget != null) {
                    break;
                }
            }

            if (categoryTarget) {
                categoryTarget.style.backgroundColor = "#e0e0e0";
            }
        });
        novel_category.addEventListener("touchmove", function(event){
            event.stopPropagation();
            if (categoryTarget) {
                categoryTarget.style.backgroundColor = "";
            }
            categoryTarget = null;
        });
        novel_category.addEventListener("touchend", function(event){
            event.stopPropagation();
            if (categoryTarget) {
                categoryTarget.style.backgroundColor = "";
                if (categoryTarget.url) {
                    //window.location = categoryTarget.url;
                    exec('UIComponents', "openBrowser", ["", categoryTarget.url]);
                }

                exec("LogComponents", "addCmccLog",[cpaCode.listenbook]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.listenbook, categoryTarget.opKey]);
            }
            categoryTarget = null;
        });
        area.appendChild(novel_category);

        //创建指示器
        var novelIndicator = createCardIndicator(MAX_PAGE_NUM, 1);
        area.appendChild(novelIndicator);

        // 创建底部区域
        var novelCardBottom = createFooter(dramaData.content.bottomButton);
        area.appendChild(novelCardBottom);

        // 创建底部阴影
        var card_bottom_shadow = document.createElement("div");
        card_bottom_shadow.className = "css_card_bottom_shadow";
        area.appendChild(card_bottom_shadow);

        area.update = function(updateContent){
            if (!updateContent) {
                return;
            }

            // 刷新推荐听书内容

            // 重新计算换一换展示的页数
            MAX_PAGE_NUM = Math.floor(dramaData.content.listenBooks.length / (PAGE_SHOW_NUM * LISTEN_PAGE_NUM));
            if (MAX_PAGE_NUM > 2) {
                MAX_PAGE_NUM = 2;
            }
            console.log("DramaCard update MAX_PAGE_NUM: " + MAX_PAGE_NUM);

            // novelItemCache清空，重新赋值
            dramaItemCache.length = 0;
            switchPageIndex = 0;
            novel_rcmd_page.refreshView(switchPageIndex);
            novel_rcmd_page_second.refreshView(switchPageIndex+1);
            novelIndicator.initIndicator(MAX_PAGE_NUM, 1);
            // 刷新听书分类
            var categoryDatas = updateContent.category;
            for (var cat = 0; cat < novelCategoryItemArr.length; cat++) {
                novelCategoryItemArr[cat].innerText = categoryDatas[cat].title;
                novelCategoryItemArr[cat].url = categoryDatas[cat].url;
            }

            // 刷新底部按钮
            novelCardBottom.refreshView();
        };

        area.switchToNext = function(){
            switchPageIndex = (switchPageIndex + 1) % MAX_PAGE_NUM;
            console.log("DramaCard area.switchToNext " + switchPageIndex);
            novel_rcmd_page.switchToNext(switchPageIndex * LISTEN_PAGE_NUM);
            novel_rcmd_page_second.switchToNext(switchPageIndex * LISTEN_PAGE_NUM + 1);
            novelIndicator.setSelected(switchPageIndex + 1);
        };

        dramaCard = area;
        if (dramaCardContainer) {
            dramaCardContainer.appendChild(area);
            dramaCardContainer.showContentPage = showContentPage;
        }


        if(1 == requestCondition) {
            doCardRequest(false);
        }else if( 2 == requestCondition) {
            doCardRequest(true);
        }else {
            //没有网络，不需要请求，但是需要回调
            listener.callBack(dramaCardData.id, CARD_CONTENT_REQUEST_FAILE);
        }
    }

    // 构造一屏展示的听书
    function createNovelRcmdPage(index){
        var novel_rcmd_area = document.createElement("div");
        novel_rcmd_area.className = "novel_card_book_area";

        function createPage(pos){
            console.log("DramaCard createPage pos = " + pos);
            var novelArrayHeader = pos * PAGE_SHOW_NUM;
            console.log("DramaCard novelArrayHeader " +  novelArrayHeader);
            for (var i = 0; i < PAGE_SHOW_NUM; i++) {
                var novel_item = document.createElement("div");
                novel_item.className = "novel_card_book_item_area";
                if (i == 1) {
                    novel_item.style.width = "40%";
                    novel_item.style.textAlign = "center";
                } else if(i == 2){
                    novel_item.style.textAlign = "right";
                }

                if (!dramaItemCache[novelArrayHeader + i]) {
                    var novelItem = createSingleNovel(dramaCardData.content.listenBooks[novelArrayHeader + i]);
                    // 日志记录方式修改，同其他换一换
                    novelItem.opKey = "list" + ((i + pos * PAGE_SHOW_NUM) % (PAGE_SHOW_NUM * LISTEN_PAGE_NUM) + 1);
                    console.log("DramaCard opKey " + novelItem.opKey);
                    dramaItemCache[novelArrayHeader + i] = novelItem;
                }
                novel_item.appendChild(dramaItemCache[novelArrayHeader + i]);
                novel_rcmd_area.appendChild(novel_item);
            }
        }

        createPage(index);

        novel_rcmd_area.refreshView = function(indexRefresh){
            novel_rcmd_area.innerHTML = "";
            createPage(indexRefresh);
        };

        novel_rcmd_area.switchToNext = function(indexSwitch){
            novel_rcmd_area.innerHTML = "";
            createPage(indexSwitch);
        };

        // 增加监听事件
        var coverTarget = null;
        novel_rcmd_area.addEventListener("touchstart", function(event){
            event.stopPropagation();
            coverTarget = getParentOfClass("novel_card_book_item", event.target);
            if (coverTarget) {
                coverTarget.style.backgroundColor = CARD_NOVEL_TOUCH_BACK_COLOR;
            }
        });
        novel_rcmd_area.addEventListener("touchmove", function(event){
            event.stopPropagation();
            if (coverTarget) {
                coverTarget.style.backgroundColor = "";
            }
            coverTarget = null;
        });
        novel_rcmd_area.addEventListener("touchend", function(event){
            event.stopPropagation();
            if (coverTarget) {
                coverTarget.style.backgroundColor = "";
                if (coverTarget.detailUrl) {
                    exec('UIComponents', "openBrowser", ["", coverTarget.detailUrl]);
                }
                console.log("DramaCard coverTarget.opKey = " + coverTarget.opKey);
                exec("LogComponents", "addCmccLog",[cpaCode.listenbook]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.listenbook, coverTarget.opKey]);
            }
            coverTarget = null;
        });

        return novel_rcmd_area;
    }

    /**
     *创建推荐听书中的单个听书
     */
    function createSingleNovel(sNovelData){
        var novel_area = document.createElement("div");
        novel_area.className = "novel_card_book_item";

        var novel_cover = document.createElement("img");
        novel_cover.className = "novel_card_book_item_cover";
        if (sNovelData.coverPic) {
            novel_cover.src = sNovelData.coverPic;
        }
        else {
            novel_cover.src = IC_CARD_DRAMA_BOOK_IMG;
        }

        var novel_name = document.createElement("div");
        novel_name.className = "novel_card_book_item_name";

        var novel_name_text = document.createElement("div");
        novel_name_text.className = "novel_card_book_item_name_text";
        if (sNovelData.name) {
            novel_name_text.innerHTML = sNovelData.name;
        }
        novel_name.appendChild(novel_name_text);

        novel_area.appendChild(novel_cover);
        novel_area.appendChild(novel_name);

        novel_area.detailUrl = sNovelData.detailUrl;

        novel_cover.onerror = function(){
            console.log("DramaCard load error, url is " + novel_cover.src);
            novel_cover.src = IC_CARD_DRAMA_BOOK_IMG;
        };

        novel_area.refreshData = function(newData){
            if (!newData) {
                return;
            }
            if (newData.coverPic) {
                novel_cover.src = newData.coverPic;
            }
            else {
                novel_cover.src = IC_CARD_DRAMA_BOOK_IMG;
            }
            if (newData.name) {
                //novel_name.innerHTML = newData.name;
                novel_name_text.innerHTML = newData.name;
            }
            else {
                novel_name.innerHTML = "";
            }
            novel_area.detailUrl = newData.detailUrl;
        };
        return novel_area;
    }

    // 创建底部按钮
    function createFooter(bottomButton){
        console.log("DramaCard createFooter");

        var footer = document.createElement("div");
        footer.className = "css_novel_bottom_container_div";

        var switchBtn = document.createElement("div");
        switchBtn.className = "novel_bottom_switch";
        switchBtn.innerText = "换一换";
        switchBtn.opKey = "switchBtn";
        switchBtn.index = 1;
        footer.appendChild(switchBtn);

        var moreBtn = document.createElement("div");
        moreBtn.className = "novel_bottom_more";
        moreBtn.innerText = bottomButton[0].name;
        moreBtn.link = bottomButton[0].url;
        moreBtn.opKey = "moreBtn";
        moreBtn.index = 2;
        footer.appendChild(moreBtn);

        var targetItem = null;
        var cardBottomMove = false;
        footer.addEventListener("touchstart", function(){
            console.log("DramaCard footer touchstart");
            event.stopPropagation();
            moveOverCheck.start(event);
            cardBottomMove = false;
            targetItem = event.target;
            if (targetItem) {
                targetItem.style.backgroundColor = CARD_NOVEL_TOUCH_BACK_COLOR;
            }
        }, false);
        footer.addEventListener("touchmove", function(){
            console.log("DramaCard footer touchmove");
            event.stopPropagation();
            if (moveOverCheck.check(event)) {
                cardBottomMove = true;
            }
            targetItem.style.backgroundColor = "";
        }, false);
        footer.addEventListener("touchend", function(){
            console.log("DramaCard footer touchend");
            event.stopPropagation();

            if (cardBottomMove == false) {
                targetItem.style.backgroundColor = "";
                if (targetItem) {
                    if (targetItem == switchBtn) {
                        // 点击换一换按钮
                        dramaCard.switchToNext();
                        exec("LogComponents", "addCmccLog",[cpaCode.listenbook]);
                        exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.listenbook, switchBtn.opKey]);
                    }
                    else
                    if (targetItem == moreBtn) {
                        // 点击更多听书按钮
                        if (moreBtn.link) {
                            exec('UIComponents', "openBrowser", ["", moreBtn.link]);
                        }
                        exec("LogComponents", "addCmccLog",[cpaCode.listenbook]);
                        exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.listenbook, moreBtn.opKey]);
                    }
                }
            }
            targetItem = null;
        }, false);

        footer.refreshView = function(){
            var temp = dramaCardData.content.bottomButton;
            if (!temp || temp.length <= 0) {
                return;
            }
            moreBtn.innerText = temp[0].name;
            moreBtn.link = temp[0].url;
            console.log("DramaCard refresh moreBtn.innerText: " + moreBtn.innerText);
            console.log("DramaCard refresh moreBtn.link: " + moreBtn.link);
        };

        return footer;
    }

    function handleCardRequestData(result){
        isRequesting = false;
        // if (!novelCardRequestListenerCalled) {
        // novelCardRequestListenerCalled = true;
        // listener.callBack(dramaCardData.id, CARD_CONTENT_REQUEST_SUCCESS);
        // }

        var tmpData = filterCardData(result);
        if (tmpData && tmpData.content) {
            listener.callBack(dramaCardData.id, CARD_CONTENT_REQUEST_SUCCESS);
            //检查数据合法性
            if (tmpData.content.listenBooks && tmpData.content.category && tmpData.content.bottomButton) {
                dramaCardData.content = tmpData.content;
                //缓存数据
                cacheMgr.setCache(dramaCardData.id, JSON.stringify(dramaCardData));

                if (dramaCard) {
                    console.log("DramaCard 更新完成，开始刷新");
                    dramaCard.update(tmpData.content);
                }
            }
        } else {
            listener.callBack(dramaCardData.id, CARD_CONTENT_REQUEST_FAILE);
        }
    }
    function handleCardRequestFail(){
        isRequesting = false;
        listener.callBack(dramaCardData.id, CARD_CONTENT_REQUEST_FAILE);
        console.log("drama card request fail");
        // if (!novelCardRequestListenerCalled) {
        // novelCardRequestListenerCalled = true;
        // listener.callBack(dramaCardData.id, CARD_CONTENT_REQUEST_FAILE);
        // }
    }

    function doCardRequest(isNeedjudgeNet){
        if(isRequesting){
            console.log("drama card is requesting");
            return;
        }
        isRequesting = true;

        if(isNeedjudgeNet) {
            var netState = isNetConnect();
            if(!netState){
                listener.callBack(dramaCardData.id, CARD_CONTENT_REQUEST_FAILE);
                return false;
            }
        }

        var requestOptions = {};

        if (null == cardRequestBaseInfo) {
            cardRequestBaseInfo = getBseInfo();
        }

        if (cardRequestBaseInfo && cardRequestBaseInfo.businessRequestUrl) {
            var timeStr = new Date().valueOf();
            requestOptions.url = cardRequestBaseInfo.businessRequestUrl + "?c=1007&gz=0&v=1.0&t=" + timeStr;
        }
        else {
            cardRequestBaseInfo = null;
            listener.callBack(dramaCardData.id, CARD_CONTENT_REQUEST_FAILE);
            return;
        }

        var base = organizeJsonBaseData(cardRequestBaseInfo);
        if (!base) {
            base = {};
        }

        requestOptions.onSuccess = handleCardRequestData;
        requestOptions.onFail = handleCardRequestFail;

        var requestJson = {
            "cmd": "1007",
            "base": base,
            "param": {
                "id": dramaCardData.id,
                "version": "" + dramaCardData.version,
                "extendParam": {}
            }
        };
        requestOptions.data = JSON.stringify(requestJson);
        console.log("requestDramaCard,  param:  cmd:1007  base:base  id:"+dramaCardData.id+" version:"+dramaCardData.version );
        sendJsonAjaxRequest(requestOptions);
    }

    function filterCardData(strResult) {
        if (!strResult) {
            return null;
        }
        try {
            var resultData = JSON.parse(strResult);
            if ("success" == resultData.status) {
                if (resultData.content) {
                    var recommend = resultData.content.listenBooks;
                    if (!recommend || recommend.length < (PAGE_SHOW_NUM * LISTEN_PAGE_NUM)) {
                        resultData.content.listenBooks = null;
                        return null;
                    }
                    //判断数据有效性
                    var validNum = 0;//过滤后的有效数据条数
                    var validData = [];
                    var tempIdArray = [];//临时存放的id数组，用来剔除id重复的数据

                    for (var i = 0; i < recommend.length; i++) {
                        var curItem = recommend[i];
                        if (curItem && curItem.name && curItem.detailUrl && curItem.id) {
                            if (tempIdArray.indexOf(curItem.id) == -1) {
                                //数组中不存在与当前id一样的id
                                tempIdArray.push(curItem.id);
                                validNum++;
                                validData.push(curItem);
                            } else {
                                console.log("recommend drama not available index=" + i);
                            }

                        }
                        //有效数据达到最大展示数之和的数据不需要
                        if (validNum == (PAGE_SHOW_NUM * LISTEN_PAGE_NUM) * 2) {
                            break;
                        }
                    }

                    //不满足一页数据时不保存数据
                    if (validNum < (PAGE_SHOW_NUM * LISTEN_PAGE_NUM)) {
                        return null;
                    } else {
                        resultData.content.listenBooks = validData;
                    }

                    var category = resultData.content.category;
                    if (!category || category.length < 4) {
                        resultData.content.category = null;
                        return null;
                    }
                    //截取前4个分类数据
                    if (category.length > 4) {
                        resultData.content.category = category.slice(0, 4);
                    }
                    //判断数据有效性
                    for (var k = 0; k < category.length; k++) {
                        if (!category[k].title || !category[k].url) {
                            return null;
                        }
                    }

                    var bottomButton = resultData.content.bottomButton;
                    if (!bottomButton || bottomButton.length < 1) {
                        resultData.content.bottomButton = null;
                        return null;
                    }
                    //判断数据有效性
                    if (!bottomButton[0].name || !bottomButton[0].url) {
                        return null;
                    }
                    return resultData;
                }
            }
            return null;
        } catch (err) {
            console.log("drama JSON parser error");
            return null;
        }
    }

    return createCardFrame;
});
