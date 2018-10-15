define(function(){
    var CARD_COMIC_TOUCH_BACK_COLOR = "#efefef";
    var cardRequestBaseInfo = null;
    
	var zdOffDom = null;
    var speechCaseDom = null;
	
    var IC_CARD_COMIC_BOOK_IMG = "./novel/res/ic_mainpage_novel_default.png";
    
    var comicCardContainer = null;
    var comicCard = null;
    
    var comicCardData = null;
    var comicXcssParsed = false;
    
    var comicCardRequestListenerCalled = false;
    
    var isRequesting = false;
    var isCacheNew = false;   //数据是否已更新
	var requestCondition = 0;//0:无网络，不需要请求;1:不判断网络，直接请求;2：判断网络，再请求 
	
	var PAGE_SHOW_NUM = 4; // 一屏显示的动漫数目
    var MAX_PAGE_NUM; // 最大切换页数
    var switchPageIndex; // 换一换页面索引，从0开始
    var comicItemCache = []; // 每个动漫项的缓存
    
    function createCardFrame(cardDefaultData, initNetState){
        comicCardData = cardDefaultData;
        
		switchPageIndex = 0;
        
        comicCardContainer = document.createElement("div");
        
        comicCardContainer.id = cardDefaultData.id;
        
        comicCardContainer.updateData = function(){
        	if(comicCardData.show ){
				doCardRequest(false);
			}else{
				if(!isRequesting) {
					listener.callBack(comicCardData.id, CARD_CONTENT_NO_REQUEST);
				}
			}
        };
        
        /** 开关卡片*/
        comicCardContainer.updateState = function(state){
        	
			console.log("updateState, state=" + state);
			comicCardData.show = state;
			if (state) {
				if (comicXcssParsed) {
					comicCardContainer.style.display = "block";

					console.log("updateState, isCacheNew=" + isCacheNew);
					console.log("updateState, isRequesting=" + isRequesting);
					if (!isCacheNew && !isRequesting) {
						doCardRequest(true);
					}

					// showContentPage();
				} else {
					comicXcssParsed = true;
					xcssParser.parseStyleFile("./comic/business.x.css", onCardCssParseFinish);
				}
			} else {
				comicCardContainer.style.display = "none";
			}

			//缓存数据
			cacheMgr.setCache(comicCardData.id, JSON.stringify(comicCardData)); 
        };
        
        //读取数据缓存
        var comicCacheData = null;
        var comicCacheString = cacheMgr.getCache(comicCardData.id);
        if (comicCacheString) {
            if (typeof comicCacheString == "string") {
                try {
                    comicCacheData = JSON.parse(comicCacheString);
                } 
                catch (e) {
                    console.log("JSON parse exception");
                }
            }
        }
        if (comicCacheData) {
            //缓存可用
            if (comicCacheData.version == cardDefaultData.version) {
                //读取缓存的显示状态和数据内容
                comicCardData.show = comicCacheData.show;
				comicCardData.caseList = cardDefaultData.caseList;
                comicCardData.caseRedDot = comicCacheData.caseRedDot;
                //增强数据合法性判断
                if (comicCacheData.content && comicCacheData.content.comic) {
                    comicCardData.content = comicCacheData.content;
                }
            } else {
                //卡片的显示状态需要保留
                comicCardData.show = comicCacheData.show;
                //缓存不可用，设置默认数据为缓存
                cacheMgr.setCache(comicCardData.id, JSON.stringify(comicCardData));
            }
        }
        else {
            //如果没有缓存数据，设置默认数据为缓存数据
            cacheMgr.setCache(comicCardData.id, JSON.stringify(comicCardData));
        }
        
        if (comicCardData.show) {
        	if(initNetState){
				requestCondition = 1;
			}else{
				requestCondition = 0;
			}
            comicXcssParsed = true;
            xcssParser.parseStyleFile("./comic/business.x.css", onCardCssParseFinish);
        }
        else {
            //不需要显示，但是需要通知框架，该卡片初始化时不需要进行数据请求
            // if (!comicCardRequestListenerCalled) {
                // comicCardRequestListenerCalled = true;
                // listener.callBack(comicCardData.id, CARD_CONTENT_NO_REQUEST);
            // }
            listener.callBack(comicCardData.id, CARD_CONTENT_NO_REQUEST);
            requestCondition = 2;
        }
		
		comicCardContainer.date_type = "card";
        comicCardContainer.initShowState = comicCardData.show;
		
        return comicCardContainer;
    }
	
	function operateCallBack(callBackId) {
        switch(callBackId) {
            case 0://取消
                zdOffDom.style.display = "none";
                comicCard.style.display = "block";
                break;
            case 1://置顶
                zdOffDom.style.display = "none";
                comicCard.style.display = "block";
                stickTopCardByDom(comicCardContainer);
                break;
            case 2://点击关闭
                //显示关闭确认弹框，暂时未实现
                //showCloseConfirmDialogById(comicCardContainer.id);
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
        comicCard.style.display = "block";
    }
    function titleResponseListener(responseId){
        switch(responseId) {
            case 0://点击说法示例区域
                if(comicCardData && comicCardData.caseRedDot) {
                    comicCardData.caseRedDot = false;
                    cacheMgr.setCache(comicCardData.id, JSON.stringify(comicCardData));
                }
                if(zdOffDom) {
                    zdOffDom.style.display = "none";
                }
                
                comicCard.style.display = "none";
                if (speechCaseDom) {
                    speechCaseDom.style.display = "block";
                } else {
                    speechCaseDom = createSpeechCaseView(comicCardData.id, comicCardData.name, comicCardData.caseList);
                    //判断一下是否为空
                    speechCaseDom.setCancelListener(speechCaseCallBack);
                    comicCardContainer.appendChild(speechCaseDom);
                }
                break;
            case 1://点击置顶箭头按钮
                if(speechCaseDom) {
                    speechCaseDom.style.display = "none";
                }
                comicCard.style.display = "none";
                
                if (zdOffDom) {
                    zdOffDom.style.display = "block";
                } else {
                    zdOffDom = createOperationView(comicCardData.id, comicCardData.name, comicCardContainer.id);
                    //判断一下是否为空
                    zdOffDom.setOpListener(operateCallBack);
                    comicCardContainer.appendChild(zdOffDom);
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
        comicCard.style.display = "block";
    }
	
    function onCardCssParseFinish(){
        if (comicCard) {
            //已经创建过，不再创建
            return;
        }
        createcomicCard(comicCardData);
    }
    
    function createcomicCard(comicData){
        if (!comicData) {
            console.log("comic card default data is null");
            return;
        }
        
		// 计算换一换展示的页数
        MAX_PAGE_NUM = Math.floor(comicData.content.comic.length / PAGE_SHOW_NUM);
        if (MAX_PAGE_NUM > 5) {
            MAX_PAGE_NUM = 5;
        }
        console.log("comicCard createcomicCard MAX_PAGE_NUM: " + MAX_PAGE_NUM);
		
        var area = document.createElement("div");
        area.className = "css_card";
		
		var title = createCardMainTitle(comicData.id, comicData.name, comicData.caseList[0],titleResponseListener, comicData.caseRedDot);
        area.appendChild(title);
		
        // 创建推荐动漫展示区域
        var comic_rcmd_page = createcomicRcmdPage(0); // 第二个参数表示当前页面索引
        area.appendChild(comic_rcmd_page);
        
         // // 创建分类区
        // var comicCategoryItemArr = [];
        // var comic_category = document.createElement("div");
        // comic_category.className = "comic_card_category_area";
        // for (var j = 0; j < comicData.content.category.length; j++) {
// 			
			// var categoryContainer = document.createElement("div");
			// categoryContainer.className = "comic_card_category_item_container";
// 			
            // var category = document.createElement("div");
            // category.className = "comic_card_category_item" + j;
            // if (comicData.content.category[j].title) {
                // category.innerText = comicData.content.category[j].title;
            // }
//             
            // category.opKey = "category" + (j + 1);
//             
            // category.url = comicData.content.category[j].url;
// 			
			// categoryContainer.appendChild(category);
            // comic_category.appendChild(categoryContainer);
//             
            // comicCategoryItemArr[j] = category;
        // }
// 		
        // // 设置监听
       // var categoryTarget = null;
        // comic_category.addEventListener("touchstart", function(event){
            // event.stopPropagation();
			// for (var i = 0; i < 4 ; i++) {
				// var className = "comic_card_category_item" + i;
				// categoryTarget = getParentOfClass(className, event.target);
				// if (categoryTarget != null) {
					// break;
				// }
			// }
//             
            // if (categoryTarget) {
                // categoryTarget.style.backgroundColor = "#e0e0e0";
            // }
        // });
        // comic_category.addEventListener("touchmove", function(event){
            // event.stopPropagation();
            // if (categoryTarget) {
                // categoryTarget.style.backgroundColor = "";
            // }
            // categoryTarget = null;
        // });
        // comic_category.addEventListener("touchend", function(event){
            // event.stopPropagation();
            // if (categoryTarget) {
                // categoryTarget.style.backgroundColor = "";
                // if (categoryTarget.url) {
                    // //window.location = categoryTarget.url;
                    // exec('UIComponents', "openBrowser", ["", categoryTarget.url]);
                // }
//                 
                // exec("LogComponents", "addCmccLog", [cpaCode.comic]);
                // exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.comic, categoryTarget.opKey]);
            // }
            // categoryTarget = null;
        // });
        // area.appendChild(comic_category);
        
        //创建指示器
        var comicIndicator = createCardIndicator(MAX_PAGE_NUM, 1);
        area.appendChild(comicIndicator);
        
        // 创建底部区域
        var comicCardBottom = createFooter(comicData.content.bottomButton);
        area.appendChild(comicCardBottom);
        
        // 创建底部阴影
        var card_bottom_shadow = document.createElement("div");
        card_bottom_shadow.className = "css_card_bottom_shadow";
        area.appendChild(card_bottom_shadow);
        
        area.update = function(updateContent){
            if (!updateContent) {
                return;
            }
            
           // 刷新推荐动漫内容
            
            // 重新计算换一换展示的页数
            MAX_PAGE_NUM = Math.floor(comicData.content.comic.length / PAGE_SHOW_NUM);
            if (MAX_PAGE_NUM > 5) {
                MAX_PAGE_NUM = 5;
            }
            console.log("comicCard update MAX_PAGE_NUM: " + MAX_PAGE_NUM);
            
            // comicItemCache清空，重新赋值
            comicItemCache.length = 0;
            switchPageIndex = 0;
            comic_rcmd_page.refreshView(switchPageIndex);
            comicIndicator.initIndicator(MAX_PAGE_NUM, 1);
            // // 刷新动漫分类
            // var categoryDatas = updateContent.category;
            // for (var cat = 0; cat < comicCategoryItemArr.length; cat++) {
                // comicCategoryItemArr[cat].innerText = categoryDatas[cat].title;
                // comicCategoryItemArr[cat].url = categoryDatas[cat].url;
            // }
            
            // 刷新底部按钮
            comicCardBottom.refreshView();
        };
		
		area.switchToNext = function(){
            console.log("comicCard area.switchToNext");
            switchPageIndex = (switchPageIndex + 1) % MAX_PAGE_NUM;
            comic_rcmd_page.switchToNext(switchPageIndex);
            comicIndicator.setSelected(switchPageIndex + 1);
        };
        
        comicCard = area;
        if (comicCardContainer) {
            comicCardContainer.appendChild(area);
			comicCardContainer.showContentPage = showContentPage;
        }
        
        
        if(1 == requestCondition) {
			doCardRequest(false);
		}else if( 2 == requestCondition) {
			doCardRequest(true);
		}else {
			//没有网络，不需要请求，但是需要回调
			listener.callBack(comicCardData.id, CARD_CONTENT_REQUEST_FAILE);
		}
    }
	
	// 构造一屏展示的动漫
    function createcomicRcmdPage(index){
        var comic_rcmd_area = document.createElement("div");
        comic_rcmd_area.className = "comic_card_book_area";
        
        function createPage(pos){
            var comicArrayHeader = pos * PAGE_SHOW_NUM;
            for (var i = 0; i < PAGE_SHOW_NUM; i++) {
                var comic_item = document.createElement("div");
                comic_item.className = "comic_card_book_item_area";
				// if (i == 1) {
					// comic_item.style.width = "40%";
		            // comic_item.style.textAlign = "center";
				// } else if(i == 2){
		            // comic_item.style.textAlign = "right";
		        // }
                
                if (!comicItemCache[comicArrayHeader + i]) {
                    var comicItem = createSinglecomic(comicCardData.content.comic[comicArrayHeader + i]);
					// 日志记录方式修改，同其他换一换
					comicItem.opKey = "list" + (i + 1);
                    comicItemCache[comicArrayHeader + i] = comicItem;
                }
                comic_item.appendChild(comicItemCache[comicArrayHeader + i]);
                comic_rcmd_area.appendChild(comic_item);
                
                //在非最后一个视频后增加一个空白间隔区域
				if (i != PAGE_SHOW_NUM) {
					var spaceDiv = document.createElement("div");
					spaceDiv.className = "comic_card_after_book_item_space";
					comic_rcmd_area.appendChild(spaceDiv);
				}
            }
        }
        
        createPage(index);
        
        comic_rcmd_area.refreshView = function(indexRefresh){
            comic_rcmd_area.innerHTML = "";
            createPage(indexRefresh);
        };
        
        comic_rcmd_area.switchToNext = function(indexSwitch){
            comic_rcmd_area.innerHTML = "";
            createPage(indexSwitch);
        };
        
        // 增加监听事件
        var coverTarget = null;
        comic_rcmd_area.addEventListener("touchstart", function(event){
            event.stopPropagation();
            coverTarget = getParentOfClass("comic_card_book_item", event.target);
            if (coverTarget) {
                coverTarget.style.backgroundColor = CARD_COMIC_TOUCH_BACK_COLOR;
            }
        });
        comic_rcmd_area.addEventListener("touchmove", function(event){
            event.stopPropagation();
            if (coverTarget) {
                coverTarget.style.backgroundColor = "";
            }
            coverTarget = null;
        });
        comic_rcmd_area.addEventListener("touchend", function(event){
            event.stopPropagation();
            if (coverTarget) {
                coverTarget.style.backgroundColor = "";
                if (coverTarget.detailUrl) {
                    exec('UIComponents', "openBrowser", ["", coverTarget.detailUrl]);
                }
                exec("LogComponents", "addCmccLog", [cpaCode.comic]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.comic, coverTarget.opKey]);
            }
            coverTarget = null;
        });
        
        return comic_rcmd_area;
    }
	
    /**
     *创建推荐动漫中的单个动漫
     */
    function createSinglecomic(scomicData){
        var comic_area = document.createElement("div");
        comic_area.className = "comic_card_book_item";
        
        var comic_cover = document.createElement("img");
        comic_cover.className = "comic_card_book_item_cover";
        if (scomicData.coverPic) {
            comic_cover.src = scomicData.coverPic;
        }
        else {
            comic_cover.src = IC_CARD_COMIC_BOOK_IMG;
        }
        
        var comic_name = document.createElement("div");
        comic_name.className = "comic_card_book_item_name";
        
        var comic_name_text = document.createElement("div");
        comic_name_text.className = "comic_card_book_item_name_text";
        if (scomicData.name) {
            comic_name_text.innerHTML = scomicData.name;
        }
        comic_name.appendChild(comic_name_text);
        
        comic_area.appendChild(comic_cover);
        comic_area.appendChild(comic_name);
        
        comic_area.detailUrl = scomicData.detailUrl;
        
        comic_cover.onerror = function(){
            console.log("comic card load error, url is " + comic_cover.src);
            comic_cover.src = IC_CARD_COMIC_BOOK_IMG;
        };
        
        comic_area.refreshData = function(newData){
            if (!newData) {
                return;
            }
            if (newData.coverPic) {
                comic_cover.src = newData.coverPic;
            }
            else {
                comic_cover.src = IC_CARD_COMIC_BOOK_IMG;
            }
            if (newData.name) {
                //comic_name.innerHTML = newData.name;
                comic_name_text.innerHTML = newData.name;
            }
            else {
                comic_name.innerHTML = "";
            }
            comic_area.detailUrl = newData.detailUrl;
        };
        return comic_area;
    }
	
	// 创建底部按钮
    function createFooter(bottomButton){
        console.log("comicCard createFooter");
        
        var footer = document.createElement("div");
        footer.className = "css_comic_bottom_container_div";
        
        var switchBtn = document.createElement("div");
        switchBtn.className = "comic_bottom_switch";
        switchBtn.innerText = "换一换";
        switchBtn.opKey = "switchBtn";
        switchBtn.index = 1;
        footer.appendChild(switchBtn);
        
        var moreBtn = document.createElement("div");
        moreBtn.className = "comic_bottom_more";
        moreBtn.innerText = bottomButton[0].name;
        moreBtn.link = bottomButton[0].url;
        moreBtn.opKey = "moreBtn";
        moreBtn.index = 2;
        footer.appendChild(moreBtn);
        
        var targetItem = null;
        var cardBottomMove = false;
        footer.addEventListener("touchstart", function(){
            console.log("comicCard footer touchstart");
            event.stopPropagation();
            moveOverCheck.start(event);
            cardBottomMove = false;
            targetItem = event.target;
            if (targetItem) {
                targetItem.style.backgroundColor = CARD_COMIC_TOUCH_BACK_COLOR;
            }
        }, false);
        footer.addEventListener("touchmove", function(){
            console.log("comicCard footer touchmove");
            event.stopPropagation();
            if (moveOverCheck.check(event)) {
                cardBottomMove = true;
            }
            targetItem.style.backgroundColor = "";
        }, false);
        footer.addEventListener("touchend", function(){
            console.log("comicCard footer touchend");
            event.stopPropagation();
            
            if (cardBottomMove == false) {
                targetItem.style.backgroundColor = "";
                if (targetItem) {
                    if (targetItem == switchBtn) {
                        // 点击换一换按钮
                        comicCard.switchToNext();
						exec("LogComponents", "addCmccLog", [cpaCode.comic]);
                        exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.comic, switchBtn.opKey]);
                    }
                    else 
                        if (targetItem == moreBtn) {
                            // 点击更多动漫按钮
                            if (moreBtn.link) {
                                exec('UIComponents', "openBrowser", ["", moreBtn.link]);
                            }
                            exec("LogComponents", "addCmccLog", [cpaCode.comic]);
                            exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.comic, moreBtn.opKey]);
                        }
                }  
            }
            targetItem = null;
        }, false);
        
        footer.refreshView = function(){
            var temp = comicCardData.content.bottomButton;
            if (!temp || temp.length <= 0) {
                return;
            }
            moreBtn.innerText = temp[0].name;
            moreBtn.link = temp[0].url;
            console.log("comicCard refresh moreBtn.innerText: " + moreBtn.innerText);
            console.log("comicCard refresh moreBtn.link: " + moreBtn.link);
        };
        
        return footer;
    }
    
    function handleCardRequestData(result){
    	isRequesting = false;
        // if (!comicCardRequestListenerCalled) {
            // comicCardRequestListenerCalled = true;
            // listener.callBack(comicCardData.id, CARD_CONTENT_REQUEST_SUCCESS);
        // }
        console.log("comic request result,"+result);
        var tmpData = filterCardData(result);
        console.log("comic filter result,"+tmpData);
        if (tmpData && tmpData.content) {
			listener.callBack(comicCardData.id, CARD_CONTENT_REQUEST_SUCCESS);
            //检查数据合法性
            // if (tmpData.content.comic && tmpData.content.category && tmpData.content.bottomButton) {
            if (tmpData.content.comic && tmpData.content.bottomButton) {
				
                comicCardData.content = tmpData.content;
                //缓存数据
                cacheMgr.setCache(comicCardData.id, JSON.stringify(comicCardData));
                isCacheNew = true;
                
                if (comicCard) {
                    console.log("comicCard 更新完成，开始刷新");
                    comicCard.update(tmpData.content);
                }
            } 
        } else {
			listener.callBack(comicCardData.id, CARD_CONTENT_REQUEST_FAILE);
		}
    }
    function handleCardRequestFail(){
    	isRequesting = false;
    	listener.callBack(comicCardData.id, CARD_CONTENT_REQUEST_FAILE);
        console.log("comic card request fail");
        // if (!comicCardRequestListenerCalled) {
            // comicCardRequestListenerCalled = true;
            // listener.callBack(comicCardData.id, CARD_CONTENT_REQUEST_FAILE);
        // }
    }
    
    function doCardRequest(isNeedjudgeNet){
    	if(isRequesting){
    		console.log("comic card is requesting");
    		return;
    	}
    	// isRequesting = true;
    	
    	if(isNeedjudgeNet) {
    		var netState = isNetConnect();
    		if(!netState){
    			listener.callBack(comicCardData.id, CARD_CONTENT_REQUEST_FAILE);
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
            listener.callBack(comicCardData.id, CARD_CONTENT_REQUEST_FAILE);
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
                "id": comicCardData.id,
                "version": "" + comicCardData.version,
                "extendParam": {}
            }
        };
        console.log("requestComicCard,  param:  cmd:1007  base:base  id:"+comicCardData.id+" version:"+comicCardData.version );
        requestOptions.data = JSON.stringify(requestJson);
        isRequesting = true;
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
                	//判断bottomButton数据有效性
                    var bottomButton = resultData.content.bottomButton;
                    if (!bottomButton || bottomButton.length < 1) {
                        resultData.content.bottomButton = null;
                        return null;
                    }
                    if (!bottomButton[0].name || !bottomButton[0].url) {
                        return null;
                    }
                    
                    //判断comic数据有效性
                    var recommend = resultData.content.comic;
                    console.log("recommend comic length="+recommend.length);
                    if (!recommend || recommend.length < PAGE_SHOW_NUM) {
                        resultData.content.comic = null;
                        return null;
                    }
                    var validNum = 0;//过滤后的有效数据条数
                    var validData = [];
                    var tempIdArray = [];//临时存放的id数组，用来剔除id重复的数据
                    for (var i = 0; i < recommend.length; i++) {
                    	var curItem = recommend[i];
                        if (curItem && curItem.name && curItem.detailUrl && curItem.id) {
                        	if(tempIdArray.indexOf(curItem.id) == -1){
                        		//数组中不存在与当前id一样的id
                        		tempIdArray.push(curItem.id);
                        		validNum++;
							    validData.push(curItem);
                        	}
                        }else{
                        	console.log("recommend comic not available index="+i);
                        }
                        //有效数据达到最大展示数之和的数据不需要
                        if(validNum == PAGE_SHOW_NUM*5){
							break;
						}
                    }
                    //不满足一页数据时不保存数据
                    if(validNum < PAGE_SHOW_NUM){
                    	return null;
                    }else{
                    	resultData.content.comic = validData;
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
