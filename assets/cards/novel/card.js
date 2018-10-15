define(function(){
    var CARD_NOVEL_TOUCH_BACK_COLOR = "#efefef";
    var cardRequestBaseInfo = null;
    
	var zdOffDom = null;
    var speechCaseDom = null;
	
    var IC_CARD_NOVEL_BOOK_IMG = "./novel/res/ic_mainpage_novel_default.png";
    
    var novelCardContainer = null;
    var novelCard = null;
    
    var novelCardData = null;
    var novelXcssParsed = false;
    
    var novelCardRequestListenerCalled = false;
    
    var isRequesting = false;
	var requestCondition = 0;//0:无网络，不需要请求;1:不判断网络，直接请求;2：判断网络，再请求 
	
	var PAGE_SHOW_NUM = 3; // 一屏显示的小说数目
    var MAX_PAGE_NUM; // 最大切换页数
    var switchPageIndex; // 换一换页面索引，从0开始
    var novelItemCache = []; // 每个小说项的缓存
    
    function createCardFrame(cardDefaultData, initNetState){
        novelCardData = cardDefaultData;
        
		switchPageIndex = 0;
        
        novelCardContainer = document.createElement("div");
        
        novelCardContainer.id = cardDefaultData.id;
        
        novelCardContainer.updateData = function(){
        	if(novelCardData.show ){
				doCardRequest(false);
			}else{
				if(!isRequesting) {
					listener.callBack(novelCardData.id, CARD_CONTENT_NO_REQUEST);
				}
			}
        };
        
        novelCardContainer.updateState = function(state){
            if (state) {
                if (novelXcssParsed) {
                    novelCardContainer.style.display = "block";
					//showContentPage();
                }
                else {
                    novelXcssParsed = true;
                    xcssParser.parseStyleFile("./novel/business.x.css", onCardCssParseFinish);
                }
                novelCardData.show = true;
            }
            else {
                novelCardContainer.style.display = "none";
                novelCardData.show = false;
            }
            
            //缓存数据
            cacheMgr.setCache(novelCardData.id, JSON.stringify(novelCardData));
        };
        
        //读取数据缓存
        var novelCacheData = null;
        var novelCacheString = cacheMgr.getCache(novelCardData.id);
        if (novelCacheString) {
            if (typeof novelCacheString == "string") {
                try {
                    novelCacheData = JSON.parse(novelCacheString);
                } 
                catch (e) {
                    console.log("JSON parse exception");
                }
            }
        }
        if (novelCacheData) {
            //缓存可用
            if (novelCacheData.version == cardDefaultData.version) {
                //读取缓存的显示状态和数据内容
                novelCardData.show = novelCacheData.show;
				novelCardData.caseList = cardDefaultData.caseList;
                novelCardData.caseRedDot = novelCacheData.caseRedDot;
                //增强数据合法性判断
                if (novelCacheData.content && novelCacheData.content.recommend) {
                    novelCardData.content = novelCacheData.content;
                }
            } else {
                //卡片的显示状态需要保留
                novelCardData.show = novelCacheData.show;
                //缓存不可用，设置默认数据为缓存
                cacheMgr.setCache(novelCardData.id, JSON.stringify(novelCardData));
            }
        }
        else {
            //如果没有缓存数据，设置默认数据为缓存数据
            cacheMgr.setCache(novelCardData.id, JSON.stringify(novelCardData));
        }
        
        if (novelCardData.show) {
        	if(initNetState){
				requestCondition = 1;
			}else{
				requestCondition = 0;
			}
            novelXcssParsed = true;
            xcssParser.parseStyleFile("./novel/business.x.css", onCardCssParseFinish);
        }
        else {
            //不需要显示，但是需要通知框架，该卡片初始化时不需要进行数据请求
            // if (!novelCardRequestListenerCalled) {
                // novelCardRequestListenerCalled = true;
                // listener.callBack(novelCardData.id, CARD_CONTENT_NO_REQUEST);
            // }
            listener.callBack(novelCardData.id, CARD_CONTENT_NO_REQUEST);
            requestCondition = 2;
        }
		
		novelCardContainer.date_type = "card";
        novelCardContainer.initShowState = novelCardData.show;
		
        return novelCardContainer;
    }
    
	
	
	
	function operateCallBack(callBackId) {
        switch(callBackId) {
            case 0://取消
                zdOffDom.style.display = "none";
                novelCard.style.display = "block";
                break;
            case 1://置顶
                zdOffDom.style.display = "none";
                novelCard.style.display = "block";
                stickTopCardByDom(novelCardContainer);
                break;
            case 2://点击关闭
                //显示关闭确认弹框，暂时未实现
                //showCloseConfirmDialogById(novelCardContainer.id);
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
        novelCard.style.display = "block";
    }
    function titleResponseListener(responseId){
        switch(responseId) {
            case 0://点击说法示例区域
                if(novelCardData && novelCardData.caseRedDot) {
                    novelCardData.caseRedDot = false;
                    cacheMgr.setCache(novelCardData.id, JSON.stringify(novelCardData));
                }
                if(zdOffDom) {
                    zdOffDom.style.display = "none";
                }
                
                novelCard.style.display = "none";
                if (speechCaseDom) {
                    speechCaseDom.style.display = "block";
                } else {
                    speechCaseDom = createSpeechCaseView(novelCardData.id, novelCardData.name, novelCardData.caseList);
                    //判断一下是否为空
                    speechCaseDom.setCancelListener(speechCaseCallBack);
                    novelCardContainer.appendChild(speechCaseDom);
                }
                break;
            case 1://点击置顶箭头按钮
                if(speechCaseDom) {
                    speechCaseDom.style.display = "none";
                }
                novelCard.style.display = "none";
                
                if (zdOffDom) {
                    zdOffDom.style.display = "block";
                } else {
                    zdOffDom = createOperationView(novelCardData.id, novelCardData.name, novelCardContainer.id);
                    //判断一下是否为空
                    zdOffDom.setOpListener(operateCallBack);
                    novelCardContainer.appendChild(zdOffDom);
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
        novelCard.style.display = "block";
    }
	
	
	
	
	
	
    function onCardCssParseFinish(){
        if (novelCard) {
            //已经创建过，不再创建
            return;
        }
        createNovelCard(novelCardData);
    }
    
    function createNovelCard(novelData){
        if (!novelData) {
            console.log("novel card default data is null");
            return;
        }
        
		// 计算换一换展示的页数
        MAX_PAGE_NUM = Math.floor(novelData.content.recommend.length / PAGE_SHOW_NUM);
        if (MAX_PAGE_NUM > 5) {
            MAX_PAGE_NUM = 5;
        }
        console.log("NovelCard createNovelCard MAX_PAGE_NUM: " + MAX_PAGE_NUM);
		
        var area = document.createElement("div");
        area.className = "css_card";
		
		var title = createCardMainTitle(novelData.id, novelData.name, novelData.caseList[0],titleResponseListener, novelData.caseRedDot);
        area.appendChild(title);
		
        // 创建推荐小说展示区域
        var novel_rcmd_page = createNovelRcmdPage(0); // 第二个参数表示当前页面索引
        area.appendChild(novel_rcmd_page);
        
         // 创建分类区
        var novelCategoryItemArr = [];
        var novel_category = document.createElement("div");
        novel_category.className = "novel_card_category_area";
        for (var j = 0; j < novelData.content.category.length; j++) {
			
			var categoryContainer = document.createElement("div");
			categoryContainer.className = "novel_card_category_item_container";
			
            var category = document.createElement("div");
            category.className = "novel_card_category_item" + j;
            if (novelData.content.category[j].title) {
                category.innerText = novelData.content.category[j].title;
            }
            
            category.opKey = "category" + (j + 1);
            
            category.url = novelData.content.category[j].url;
			
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
                
                exec("WidgetMMPContainerComponents", "appenCardCpaLog", ["novel"]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.novel, categoryTarget.opKey]);
            }
            categoryTarget = null;
        });
        area.appendChild(novel_category);
        
        //创建指示器
        var novelIndicator = createCardIndicator(MAX_PAGE_NUM, 1);
        area.appendChild(novelIndicator);
        
        // 创建底部区域
        var novelCardBottom = createFooter(novelData.content.bottomButton);
        area.appendChild(novelCardBottom);
        
        // 创建底部阴影
        var card_bottom_shadow = document.createElement("div");
        card_bottom_shadow.className = "css_card_bottom_shadow";
        area.appendChild(card_bottom_shadow);
        
        area.update = function(updateContent){
            if (!updateContent) {
                return;
            }
            
           // 刷新推荐小说内容
            
            // 重新计算换一换展示的页数
            MAX_PAGE_NUM = Math.floor(novelData.content.recommend.length / PAGE_SHOW_NUM);
            if (MAX_PAGE_NUM > 5) {
                MAX_PAGE_NUM = 5;
            }
            console.log("NovelCard update MAX_PAGE_NUM: " + MAX_PAGE_NUM);
            
            // novelItemCache清空，重新赋值
            novelItemCache.length = 0;
            switchPageIndex = 0;
            novel_rcmd_page.refreshView(switchPageIndex);
            novelIndicator.initIndicator(MAX_PAGE_NUM, 1);
            // 刷新小说分类
            var categoryDatas = updateContent.category;
            for (var cat = 0; cat < novelCategoryItemArr.length; cat++) {
                novelCategoryItemArr[cat].innerText = categoryDatas[cat].title;
                novelCategoryItemArr[cat].url = categoryDatas[cat].url;
            }
            
            // 刷新底部按钮
            novelCardBottom.refreshView();
        };
		
		area.switchToNext = function(){
            console.log("NovelCard area.switchToNext");
            switchPageIndex = (switchPageIndex + 1) % MAX_PAGE_NUM;
            novel_rcmd_page.switchToNext(switchPageIndex);
            novelIndicator.setSelected(switchPageIndex + 1);
        };
        
        novelCard = area;
        if (novelCardContainer) {
            novelCardContainer.appendChild(area);
			novelCardContainer.showContentPage = showContentPage;
        }
        
        
        if(1 == requestCondition) {
			doCardRequest(false);
		}else if( 2 == requestCondition) {
			doCardRequest(true);
		}else {
			//没有网络，不需要请求，但是需要回调
			listener.callBack(novelCardData.id, CARD_CONTENT_REQUEST_FAILE);
		}
    }
	
	// 构造一屏展示的小说
    function createNovelRcmdPage(index){
        var novel_rcmd_area = document.createElement("div");
        novel_rcmd_area.className = "novel_card_book_area";
        
        function createPage(pos){
            var novelArrayHeader = pos * PAGE_SHOW_NUM;
            for (var i = 0; i < PAGE_SHOW_NUM; i++) {
                var novel_item = document.createElement("div");
                novel_item.className = "novel_card_book_item_area";
				if (i == 1) {
					novel_item.style.width = "40%";
		            novel_item.style.textAlign = "center";
				} else if(i == 2){
		            novel_item.style.textAlign = "right";
		        }
                
                if (!novelItemCache[novelArrayHeader + i]) {
                    var novelItem = createSingleNovel(novelCardData.content.recommend[novelArrayHeader + i]);
					// 日志记录方式修改，同其他换一换
					novelItem.opKey = "list" + (i + 1);
                    novelItemCache[novelArrayHeader + i] = novelItem;
                }
                novel_item.appendChild(novelItemCache[novelArrayHeader + i]);
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
                if (coverTarget.detail_url) {
                    exec('UIComponents', "openBrowser", ["", coverTarget.detail_url]);
                }
                exec("WidgetMMPContainerComponents", "appenCardCpaLog", ["novel"]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.novel, coverTarget.opKey]);
            }
            coverTarget = null;
        });
        
        return novel_rcmd_area;
    }
	
    /**
     *创建推荐小说中的单个小说
     */
    function createSingleNovel(sNovelData){
        var novel_area = document.createElement("div");
        novel_area.className = "novel_card_book_item";
        
        var novel_cover = document.createElement("img");
        novel_cover.className = "novel_card_book_item_cover";
        if (sNovelData.cover_pic) {
            novel_cover.src = sNovelData.cover_pic;
        }
        else {
            novel_cover.src = IC_CARD_NOVEL_BOOK_IMG;
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
        
        novel_area.detail_url = sNovelData.detail_url;
        
        novel_cover.onerror = function(){
            console.log("novel card load error, url is " + novel_cover.src);
            novel_cover.src = IC_CARD_NOVEL_BOOK_IMG;
        };
        
        novel_area.refreshData = function(newData){
            if (!newData) {
                return;
            }
            if (newData.cover_pic) {
                novel_cover.src = newData.cover_pic;
            }
            else {
                novel_cover.src = IC_CARD_NOVEL_BOOK_IMG;
            }
            if (newData.name) {
                //novel_name.innerHTML = newData.name;
                novel_name_text.innerHTML = newData.name;
            }
            else {
                novel_name.innerHTML = "";
            }
            novel_area.detail_url = newData.detail_url;
        };
        return novel_area;
    }
	
	// 创建底部按钮
    function createFooter(bottomButton){
        console.log("NovelCard createFooter");
        
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
            console.log("NovelCard footer touchstart");
            event.stopPropagation();
            moveOverCheck.start(event);
            cardBottomMove = false;
            targetItem = event.target;
            if (targetItem) {
                targetItem.style.backgroundColor = CARD_NOVEL_TOUCH_BACK_COLOR;
            }
        }, false);
        footer.addEventListener("touchmove", function(){
            console.log("NovelCard footer touchmove");
            event.stopPropagation();
            if (moveOverCheck.check(event)) {
                cardBottomMove = true;
            }
            targetItem.style.backgroundColor = "";
        }, false);
        footer.addEventListener("touchend", function(){
            console.log("NovelCard footer touchend");
            event.stopPropagation();
            
            if (cardBottomMove == false) {
                targetItem.style.backgroundColor = "";
                if (targetItem) {
                    if (targetItem == switchBtn) {
                        // 点击换一换按钮
                        novelCard.switchToNext();
						exec("WidgetMMPContainerComponents", "appenCardCpaLog", ["novel"]);
                        exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.novel, switchBtn.opKey]);
                    }
                    else 
                        if (targetItem == moreBtn) {
                            // 点击更多小说按钮
                            if (moreBtn.link) {
                                exec('UIComponents', "openBrowser", ["", moreBtn.link]);
                            }
                            exec("WidgetMMPContainerComponents", "appenCardCpaLog", ["novel"]);
                            exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.novel, moreBtn.opKey]);
                        }
                }  
            }
            targetItem = null;
        }, false);
        
        footer.refreshView = function(){
            var temp = novelCardData.content.bottomButton;
            if (!temp || temp.length <= 0) {
                return;
            }
            moreBtn.innerText = temp[0].name;
            moreBtn.link = temp[0].url;
            console.log("NovelCard refresh moreBtn.innerText: " + moreBtn.innerText);
            console.log("NovelCard refresh moreBtn.link: " + moreBtn.link);
        };
        
        return footer;
    }
    
    function handleCardRequestData(result){
    	isRequesting = false;
        // if (!novelCardRequestListenerCalled) {
            // novelCardRequestListenerCalled = true;
            // listener.callBack(novelCardData.id, CARD_CONTENT_REQUEST_SUCCESS);
        // }
        
        var tmpData = filterCardData(result);
        if (tmpData && tmpData.content) {
			listener.callBack(novelCardData.id, CARD_CONTENT_REQUEST_SUCCESS);
            //检查数据合法性
            if (tmpData.content.recommend && tmpData.content.category && tmpData.content.bottomButton) {
				
                novelCardData.content = tmpData.content;
                //缓存数据
                cacheMgr.setCache(novelCardData.id, JSON.stringify(novelCardData));
                
                if (novelCard) {
                    console.log("NovelCard 更新完成，开始刷新");
                    novelCard.update(tmpData.content);
                }
            } 
        } else {
			listener.callBack(novelCardData.id, CARD_CONTENT_REQUEST_FAILE);
		}
    }
    function handleCardRequestFail(){
    	isRequesting = false;
    	listener.callBack(novelCardData.id, CARD_CONTENT_REQUEST_FAILE);
        console.log("novel card request fail");
        // if (!novelCardRequestListenerCalled) {
            // novelCardRequestListenerCalled = true;
            // listener.callBack(novelCardData.id, CARD_CONTENT_REQUEST_FAILE);
        // }
    }
    
    function doCardRequest(isNeedjudgeNet){
    	if(isRequesting){
    		console.log("novel card is requesting");
    		return;
    	}
    	isRequesting = true;
    	
    	if(isNeedjudgeNet) {
    		var netState = isNetConnect();
    		if(!netState){
    			listener.callBack(novelCardData.id, CARD_CONTENT_REQUEST_FAILE);
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
            listener.callBack(novelCardData.id, CARD_CONTENT_REQUEST_FAILE);
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
                "id": novelCardData.id,
                "version": "" + novelCardData.version,
                "extendParam": {}
            }
        };
        requestOptions.data = JSON.stringify(requestJson);
        
        sendJsonAjaxRequest(requestOptions);
    }
    
    function filterCardData(strResult){
        if (!strResult) {
            return null;
        }
        
        try {
            var resultData = JSON.parse(strResult);
            if ("success" == resultData.status) {
                if (resultData.content) {
                    var recommend = resultData.content.recommend;
                    if (!recommend || recommend.length < PAGE_SHOW_NUM) {
                        resultData.content.recommend = null;
                        return null;
                    }
                    //判断数据有效性
                    for (var i = 0; i < recommend.length; i++) {
                        if (!recommend[i].name || !recommend[i].detail_url) {
                            return null;
                        }
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
            return null;
        }
    }
    
    return createCardFrame;
});
