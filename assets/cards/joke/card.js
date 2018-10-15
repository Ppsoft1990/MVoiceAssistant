define(function(){
    var CARD_JOKE_TOUCH_BACK_COLOR = "#efefef";
    var cardRequestBaseInfo = null;
    
    
    var zdOffDom = null;
    var speechCaseDom = null;
    
    var cardContainer = null;
    var jokeCard = null;
    
    var jokeCardData = null;
    var jokeXcssParsed = false;
    
    var isRequesting = false;
    var requestCondition = 0;//0:无网络，不需要请求;1:不判断网络，直接请求;2：判断网络，再请求 
    function createCardFrame(jokeData, initNetState){
        jokeCardData = jokeData;
        
        cardContainer = document.createElement("div");
        cardContainer.id = jokeData.id;
        
        cardContainer.updateData = function(){
            if (jokeCardData.show) {
                doCardRequest(false);
            }
            else {
                if (!isRequesting) {
                    listener.callBack(jokeCardData.id, CARD_CONTENT_NO_REQUEST);
                }
            }
        };
        cardContainer.updateState = function(state){
            if (state) {
                if (jokeXcssParsed) {
                    cardContainer.style.display = "block";
                    showContentPage();
                } else {
                    jokeXcssParsed = true;
                    xcssParser.parseStyleFile("./joke/business.x.css", onResourceLoadFinish);
                }
                jokeCardData.show = true;
            } else {
                cardContainer.style.display = "none";
                jokeCardData.show = false;
            }
            //缓存数据
            cacheMgr.setCache(jokeCardData.id, JSON.stringify(jokeCardData));
        };
        
        //读取数据缓存
        var jokeCacheData = null;
        var jokeCacheString = cacheMgr.getCache(jokeData.id);
        if (jokeCacheString) {
            if (typeof jokeCacheString == "string") {
                try {
                    jokeCacheData = JSON.parse(jokeCacheString);
                } catch (e) {
                    console.log("JSON parse exception");
                }
            }
        }
        if (jokeCacheData) {
            //缓存可用
            if (jokeCacheData.version == jokeData.version) {
                //读取缓存的显示状态和数据内容
                jokeCardData.show = jokeCacheData.show;
				jokeCardData.caseRedDot = jokeCacheData.caseRedDot;
                //增强数据合法性判断
                if (jokeCacheData.content && jokeData.content.jokers) {
                    jokeCardData.content = jokeCacheData.content;
                }
            } else {
                //卡片的显示状态需要保留
                jokeCardData.show = jokeCacheData.show;
                //缓存不可用，设置默认数据为缓存
                cacheMgr.setCache(jokeCacheData.id, JSON.stringify(jokeCardData));
            }
        } else {
            //如果没有缓存数据，设置默认数据为缓存数据
            cacheMgr.setCache(jokeCardData.id, JSON.stringify(jokeCardData));
        }
        
        if (jokeCardData.show) {
            if (initNetState) {
                requestCondition = 1;
            } else {
                requestCondition = 0;
            }
            jokeXcssParsed = true;
            xcssParser.parseStyleFile("./joke/business.x.css", onResourceLoadFinish);
        } else {
            //不需要显示，但是需要通知框架，该卡片初始化时不需要进行数据请求
            listener.callBack(jokeCardData.id, CARD_CONTENT_NO_REQUEST);
            requestCondition = 2;
        }
        
        cardContainer.initShowState = jokeCardData.show;
        return cardContainer;
    }
    function createJokeArea(jokeData){
    
        if (!jokeData) {
            console.log("joke data is null");
        }
        
        var jokeArea = document.createElement("div");
        jokeArea.className = "css_card";
        
        var jokeTitle = createCardMainTitle(jokeData.id, jokeData.name, jokeData.caseList[0],titleResponseListener, jokeData.caseRedDot);
        if(!jokeTitle) {
            jokeTitle = document.createElement("div");
            jokeTitle.className = 'css_card_title_bar';
            var label = document.createElement("label");
            label.className = "css_card_title_text";
            if (jokeData.name) {
                label.innerHTML = jokeData.name;
            }
            else {
                label.innerHTML = "笑话";
            }
            jokeTitle.appendChild(label);
        }
        
		var jokeContentContainer = document.createElement("div");
        var jokeContent = document.createElement("div");
        jokeContent.className = "joke_content";
		jokeContentContainer.appendChild(jokeContent);
        
        var sep2 = document.createElement("div");
        sep2.className = 'joke_separator';
        
        var operationArea = document.createElement("div");
        
        var switchArea = document.createElement("div");
        switchArea.className = "joke_operation_button_frame";
        var switchBtnText = document.createElement("div");
        switchBtnText.className = "joke_operation_button_text";
        switchBtnText.innerHTML = "再来一个";
        switchArea.appendChild(switchBtnText);
        
        var jokeBtn1Area = document.createElement("div");
        jokeBtn1Area.className = "joke_operation_button_frame";
        jokeBtn1Area.style.width = "34%";
        
        
        var jokeBtn1Text = document.createElement("div");
        jokeBtn1Text.className = "joke_operation_button_text";
        
        jokeBtn1Text.style.borderLeft = "1px solid #e3e3e0";
        jokeBtn1Text.style.borderRight = "1px solid #e3e3e0";
        
        jokeBtn1Area.appendChild(jokeBtn1Text);
        
        var jokeBtn2Area = document.createElement("div");
        jokeBtn2Area.className = "joke_operation_button_frame";
        
        var jokeBtn2Text = document.createElement("div");
        jokeBtn2Text.className = "joke_operation_button_text";
        
        jokeBtn2Area.appendChild(jokeBtn2Text);
        
        operationArea.appendChild(switchArea);
        operationArea.appendChild(jokeBtn1Area);
        operationArea.appendChild(jokeBtn2Area);
        
        jokeArea.appendChild(jokeTitle);
        jokeArea.appendChild(jokeContentContainer);
        jokeArea.appendChild(sep2);
        jokeArea.appendChild(operationArea);
        
        var card_bottom_shadow = document.createElement("div");
        card_bottom_shadow.className = "css_card_bottom_shadow";
        jokeArea.appendChild(card_bottom_shadow);
        
        //初始化界面数据
        jokeContent.innerHTML = jokeData.content.jokers[0].content;
        
        jokeBtn1Text.innerHTML = jokeData.content.bottomButton[0].name;
        jokeBtn1Area.targetUrl = jokeData.content.bottomButton[0].url;
        
        jokeBtn2Text.innerHTML = jokeData.content.bottomButton[1].name;
        jokeBtn2Area.targetUrl = jokeData.content.bottomButton[1].url;
        
        var jokeIndex = 0;
        var jokeArr = jokeData.content.jokers;
        
        var touchTarget = null;
        operationArea.addEventListener("touchstart", function(){
            event.stopPropagation();
            touchTarget = getParentOfClass("joke_operation_button_frame", event.target);
            if (touchTarget) {
                touchTarget.style.backgroundColor = CARD_JOKE_TOUCH_BACK_COLOR;
            }
        }, false);
        operationArea.addEventListener("touchmove", function(){
            event.stopPropagation();
            if (touchTarget) {
                touchTarget.style.backgroundColor = "";
            }
            touchTarget = null;
        }, false);
        operationArea.addEventListener("touchend", function(){
            event.stopPropagation();
            if (touchTarget) {
                touchTarget.style.backgroundColor = "";
                var opCodeKey = "";
                if(switchArea == touchTarget) {
                    jokeIndex = (++jokeIndex) % jokeArr.length;
                    jokeContent.innerHTML = jokeArr[jokeIndex].content;
                    delayRunAddSign("N_HIT_JOKE");
                    opCodeKey = "switchBtn";
                } else if (jokeBtn1Area == touchTarget) {
                    if(jokeBtn1Area.targetUrl) {
                        exec('UIComponents', "openBrowser", ["", jokeBtn1Area.targetUrl]);
                    }
                    opCodeKey = "btn1";
                } else if (jokeBtn2Area == touchTarget) {
                    if(jokeBtn2Area.targetUrl) {
                        exec('UIComponents', "openBrowser", ["", jokeBtn2Area.targetUrl]);
                    }
                    opCodeKey = "btn2";
                }
                
                touchTarget = null;
                
                exec("WidgetMMPContainerComponents", "appenCardCpaLog", ["dialogjoke"]);
                exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.joker, opCodeKey]);
            }
        }, false);
        
        var touchContentMov = false;
        jokeContentContainer.addEventListener("touchstart", function(){
            event.stopPropagation();
			touchContentMov = false;
			jokeContentContainer.style.backgroundColor = CARD_JOKE_TOUCH_BACK_COLOR;
        }, false);
        
        jokeContentContainer.addEventListener("touchmove", function(){
            event.stopPropagation();
			touchContentMov = true;
			jokeContentContainer.style.backgroundColor = "";
        }, false);
        
        jokeContentContainer.addEventListener("touchend", function(){
			if (touchContentMov == false) {
				//var detailPageUrl = "http://ossptest.voicecloud.cn:99/static_html/project/lxCard/joke.html" + "?id=" + jokeIndex;
				if (jokeArr[jokeIndex].url) {
					var opCodeKey = "content";
					var detailPageUrl = jokeArr[jokeIndex].url + "?id=" + jokeIndex;
					console.log("detailPageUrl: " + detailPageUrl);
					exec("UIComponents", "openBrowser", ["", detailPageUrl]);
                    delayRunAddSign("HIT_JOKE");
                    // 稽核日志和操作日志
					exec("WidgetMMPContainerComponents", "appenCardCpaLog", ["dialogjoke"]);
					exec("WidgetMMPContainerComponents", "appenCardOpLog", [cardOpCode.joker, opCodeKey]);
				}
			}
			touchContentMov = false;
			jokeContentContainer.style.backgroundColor = "";
        }, false);
        
        jokeArea.update = function(updateContent){
            jokeArr = updateContent.jokers;
            jokeContent.innerHTML = jokeArr[0].content;
            jokeIndex = 0;
            
            jokeBtn1Text.innerHTML = updateContent.bottomButton[0].name;
            jokeBtn1Area.targetUrl = updateContent.bottomButton[0].url;
            
            jokeBtn2Text.innerHTML = updateContent.bottomButton[1].name;
            jokeBtn2Area.targetUrl = updateContent.bottomButton[1].url;
        };
        //保存变量
        jokeCard = jokeArea;
        
        if (cardContainer) {
            cardContainer.appendChild(jokeArea);
            cardContainer.showContentPage = showContentPage;
        }
        if (1 == requestCondition) {
            doCardRequest(false);
        } else if (2 == requestCondition) {
            doCardRequest(true);
        } else {
            //没有网络，不需要请求，但是需要回调
            listener.callBack(jokeCardData.id, CARD_CONTENT_REQUEST_FAILE);
        }
    }

    function operateCallBack(callBackId) {
        switch(callBackId) {
            case 0://取消
                zdOffDom.style.display = "none";
                jokeCard.style.display = "block";
                break;
            case 1://置顶
                zdOffDom.style.display = "none";
                jokeCard.style.display = "block";
                stickTopCardByDom(cardContainer);
                break;
            case 2://点击关闭
                //显示关闭确认弹框，暂时未实现
                //showCloseConfirmDialogById(cardContainer.id);
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
        jokeCard.style.display = "block";
    }
    function titleResponseListener(responseId){
        switch(responseId) {
            case 0://点击说法示例区域
                if(jokeCardData && jokeCardData.caseRedDot) {
                    jokeCardData.caseRedDot = false;
                    cacheMgr.setCache(jokeCardData.id, JSON.stringify(jokeCardData));
                }
                if(zdOffDom) {
                    zdOffDom.style.display = "none";
                }
                
                jokeCard.style.display = "none";
                if (speechCaseDom) {
                    speechCaseDom.style.display = "block";
                } else {
                    speechCaseDom = createSpeechCaseView(jokeCardData.id, jokeCardData.name, jokeCardData.caseList);
                    //判断一下是否为空
                    speechCaseDom.setCancelListener(speechCaseCallBack);
                    cardContainer.appendChild(speechCaseDom);
                }
                break;
            case 1://点击置顶箭头按钮
                if(speechCaseDom) {
                    speechCaseDom.style.display = "none";
                }
                jokeCard.style.display = "none";
                
                if (zdOffDom) {
                    zdOffDom.style.display = "block";
                } else {
                    zdOffDom = createOperationView(jokeCardData.id, jokeCardData.name, cardContainer.id);
                    //判断一下是否为空
                    zdOffDom.setOpListener(operateCallBack);
                    cardContainer.appendChild(zdOffDom);
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
        jokeCard.style.display = "block";
    }

    function onResourceLoadFinish(){
        if (jokeCard) {
            //已经创建过，不再创建
            return;
        }
        createJokeArea(jokeCardData);
    }
    
    function handleCardRequestData(result){
        isRequesting = false;
        listener.callBack(jokeCardData.id, CARD_CONTENT_REQUEST_SUCCESS);
        
        var tmpData = filterCardData(result);
        
        if (tmpData && tmpData.content) {
            //检查数据合法性
            if (tmpData.content.jokers && tmpData.content.bottomButton) {
                jokeCardData.content = tmpData.content;
                //缓存数据
                cacheMgr.setCache(jokeCardData.id, JSON.stringify(jokeCardData));
                
                if (jokeCard) {
                    jokeCard.update(tmpData.content);
                }
            }
        }
        
    }
    function handleCardRequestFail(){
        isRequesting = false;
        listener.callBack(jokeCardData.id, CARD_CONTENT_REQUEST_FAILE);
        console.log("joke card request fail");
    }
    
    function isNetConnect(){
        var connectS = exec("SystemComponents", "isNetWorkAvailable", []);
        //没有返回结果，默认为链接状态
        if (!connectS) {
            return true;
        }
        var connectMsg = getResultMessage(connectS);
        if (true == connectMsg) {
            return true;
        }
        return false;
    }
    
    function doCardRequest(isNeedjudgeNet){
        if (isRequesting) {
            console.log("joke card is requesting");
            return;
        }
        isRequesting = true;
        if (isNeedjudgeNet) {
            var netState = isNetConnect();
            if (!netState) {
                listener.callBack(jokeCardData.id, CARD_CONTENT_REQUEST_FAILE);
                return false;
            }
        }
        
        var requestOptions = {};
        
        if(null == cardRequestBaseInfo) {
            cardRequestBaseInfo = getBseInfo();
        }
        
        if(cardRequestBaseInfo && cardRequestBaseInfo.businessRequestUrl) {
            var timeStr = new Date().valueOf();
            requestOptions.url = cardRequestBaseInfo.businessRequestUrl + "?c=1007&gz=0&v=1.0&t=" + timeStr;
        } else {
            cardRequestBaseInfo = null;
            listener.callBack(jokeCardData.id, CARD_CONTENT_REQUEST_FAILE);
            return;
        }
        
        requestOptions.onSuccess = handleCardRequestData;
        requestOptions.onFail = handleCardRequestFail;
        
        var base = organizeJsonBaseData(cardRequestBaseInfo);
        if (!base) {
            base = {};
        }
        var requestJson = {
            "cmd": "1007",
            "base": base,
            "param": {
                "id": jokeCardData.id,
                "version": "" + jokeCardData.version,
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
                    var jokers = resultData.content.jokers;
                    if (!jokers || jokers.length < 1) {
                        resultData.content.jokers = null;
                        return null;
                    }
                    //判断数据有效性
                    for (var i = 0; i < jokers.length; i++) {
                        if (!jokers[i].content) {
                            return null;
                        }
                    }
                    var bottoms = resultData.content.bottomButton;
                    if (!bottoms || bottoms.length < 2) {
                        resultData.content.bottomButton = null;
                        return null;
                    }
                    //判断数据有效性
                    for (var j = 0; j < bottoms.length; j++) {
                        if (!bottoms[j].name || !bottoms[j].url) {
                            return null;
                        }
                    }
                    
                    return resultData;
                }
            }
            return null;
        } 
        catch (err) {
            return null;
        }
    }
    
    return createCardFrame;
});
