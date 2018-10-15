/**
 * 小说列表视图
 *
 * @author modified by mdhuang 2013-11-12 修改内容：canvas替代
 */

define(function() {
    var novelListView;
    var pageIndex = 1;
    var pageTotal = 1;
    var isRequestMoreNovel = false;
    
    //需要监听按钮点击事件
    exec("LxBrowserComponents", "isEventCallBackForJS", [true]);
    
    /**
     * 创建小说主界面列表
     * @param {Object} novelData 列表JSON数据
     */
    function createNovelView(novelData) {
        var novelHandler = novelData.novelHandler;
        var novels = novelData.novels;
        var novelHistory = novelData.novelHistory;
        if(novelData.pageIndex) {
            pageIndex = parseInt(novelData.pageIndex);
        }
        if (novelData.pageTotal) {
            pageTotal = parseInt(novelData.pageTotal);
        }
        
        var outDiv = document.createElement("div");
        //outDiv.className = "box_content_white";
        outDiv.style.backgroundColor = "white";
        
        var novelInner = document.createElement("div");
        
        var novelMiddleAndBottom = document.createElement("div");

        var novelMiddleContent = document.createElement("div");
        novelListView = novelMiddleContent;
        novelMiddleContent.style.borderTop = "1px solid #e0e0e0";
        
        var novelsLength = novels.length;
        var listLength = novelsLength;
        var novelItemArray = new Array();
        for (var i = 0; i < listLength; i++) {
            var novelItem = createNovelItem(novels[i],novelHistory);
            if (novelItem) {
                novelMiddleContent.appendChild(novelItem);
                novelItemArray.push(novelItem);
            }
        }
        var novelBottomMore = document.createElement("div");
        novelBottomMore.className = "css_novel_bottom_more_div";
        var moreNovel = document.createElement("label");
        moreNovel.className = "css_more_novel_label";
        moreNovel.innerText = "查看更多";
        var moreNovelDiv = document.createElement("div");
        moreNovelDiv.className = "css_more_novel_div";
        var moreNovelArrow = document.createElement("img");
        moreNovelArrow.className = "css_more_novel_arrow_img";
        moreNovelArrow.src = channel_goto_sub;
        moreNovelDiv.appendChild(moreNovelArrow);
        novelBottomMore.appendChild(moreNovel);
        novelBottomMore.appendChild(moreNovelDiv);

        novelMiddleAndBottom.appendChild(novelMiddleContent);
        novelInner.appendChild(novelMiddleAndBottom);

        outDiv.appendChild(novelInner);

        //将创建的页面添加到全局页面中
        document.body.appendChild(outDiv);
        
        //显示播报按钮
        exec("LxBrowserComponents", "showSpeakButton", [true]);
        
        require(["./novel/novelSpeakHandler.js"], function(novelSpeakHandler) {
            console.log("require novelSpeakHandler");
            novelSpeakHandler.speak(novelData);
        }); 
        
        pullLoadMoreHelper.createLoadMoreDiv(novelInner, function(){
            console.log("novelListView slip load more");
            if(pageIndex < pageTotal) {
                if(!isRequestMoreNovel) {
                    requestMoreNovel(novelData);
                }
            } else {
                exec('UIComponents', 'showToast', ["已经是最后一页", 0]);
                console.log("no more novel available");
                pullLoadMoreHelper.stopRefresh();
                pullLoadMoreHelper.disablePullLoadMore();
            }
        });
        if(pageIndex == pageTotal) {
            pullLoadMoreHelper.disablePullLoadMore();
        }
        
        for (var i = 0; i < novelItemArray.length; i++) {
            novelItemArray[i].drawStartBtnNormal();
        }
        
        var targetElement = null;
        var touchAreaType = 0;
        novelMiddleAndBottom.addEventListener("touchstart", function() {
            var btnMore = getParentOfClass("css_novel_bottom_more_div", event.target);
            if (btnMore) {
                targetElement = btnMore;
                touchAreaType = 1;
            } else {
                var startReadBtn = getParentOfClass("css_item_start_read_div", event.target);
                if (startReadBtn) {
                    targetElement = startReadBtn;
                    touchAreaType = 3;
                } else {
                    targetElement = getParentOfClass("css_novel_item_div", event.target);
                    touchAreaType = 2;
                }
            }
            console.log("touchAreaType = " + touchAreaType);
            if (targetElement) {
                moveOverCheck.start(event);
                if (touchAreaType == 1) {
                    targetElement.style.backgroundColor = "#e5e5e5";
                } else if (touchAreaType == 2) {
                    targetElement.style.backgroundColor = "#e5e5e5";
                } else if (touchAreaType == 3) {
                    targetElement.drawStartBtnTouched();
                }
            }
        }, false);
        novelMiddleAndBottom.addEventListener("touchmove", function() {
            if (targetElement) {
                if (touchAreaType == 1) {
                    targetElement.style.background = "";
                } else if (touchAreaType == 2) {
                    targetElement.style.background = "";
                } else if (touchAreaType == 3) {
                    targetElement.clearStartBtnCanvas();
                }
                if (moveOverCheck.check(event)) {
                    targetElement = null;
                    touchAreaType = 0;
                }
            }
        }, false);
        novelMiddleAndBottom.addEventListener("touchend", function() {
            if (targetElement) {
                if (touchAreaType == 1) {
                    targetElement.style.background = "";
                    //gotoNovelMore(novelHandler);
                    requestMoreNovel(novelData); 
                } else if (touchAreaType == 2) {
                    targetElement.style.background = "";
                    gotoNovelBrief(targetElement.briefUrl);
                } else if (touchAreaType == 3) {
                    targetElement.clearStartBtnCanvas();
                    gotoNovelDetail(targetElement.readUrl);
                }
            }
            targetElement = null;
            touchAreaType = 0;
        }, false);

        return outDiv;
    }
    
    /**
     * 打开小说简介页
     */
    function gotoNovelBrief(briefUrl) {
        exec("UIComponents", 'openBrowser', ["", briefUrl]);
    }
    
    /**
     * 打开小说阅读页 
     */
    function gotoNovelDetail(readUrl) {
        exec("UIComponents", 'openBrowser', ["", readUrl]);
    }
    
    /**
     * 打开更新页面 
     */
    function gotoNovelMore(novelHandler) {
        exec(novelHandler, 'gotoNovelMore', []);
    }
    
    /**
     * 生成小说的一个条目
     * @param {Object} novel 一个小说条目的JSON数据
     */
    function createNovelItem(novel,novelHistory) {
        var novelItem = document.createElement("div");
        novelItem.className = "css_novel_item_div";
        // 左边的小说封面
        var itemLeft = document.createElement("div");
        itemLeft.className = "css_item_left_div";
        var itemCover = document.createElement("img");
        itemCover.className = "css_novel_item_cover_img";
        itemCover.onload = function(){
            itemCover.onload = null;
            itemCover.src = novel.coverUrl;
        };
        itemCover.src = novel_cover_default;
        itemCover.addEventListener("error", function() {
            this.src = novel_cover_default;
        }, false);
        itemLeft.appendChild(itemCover);
        // 中间部分 小说名、作者、简介
        var itemMiddle = document.createElement("div");
        itemMiddle.className = "css_item_middle_div";
        var itemMiddleTop = document.createElement("div");

        var itemNovelNameAuthor = document.createElement("div");
        itemNovelNameAuthor.className = "css_item_novel_name_author_div";
        var itemNovelName = document.createElement("label");
        itemNovelName.className = "css_item_novel_name_label";
        itemNovelName.innerText = novel.name;
        var itemNovelAuthor = document.createElement("label");
        itemNovelAuthor.className = "css_item_novel_author_label";
        itemNovelAuthor.innerText = "作者：  " + novel.author;
        itemNovelNameAuthor.appendChild(itemNovelName);
        itemNovelNameAuthor.appendChild(itemNovelAuthor);

        var itemStartRead = document.createElement("div");
        itemStartRead.className = "css_item_start_read_div";
        var itemStartReadDiv = document.createElement("div");
        itemStartReadDiv.className = "css_item_start_read_absolute_div";
        itemStartReadDiv.innerText = "开始阅读"; 
        //设置自定义属性data-nid，在更新按钮文字时使用
        if(null != novel.nid){
            itemStartReadDiv.setAttribute("data-nid",novel.nid);
        } 
        //如果历史记录中有这本书，则把显示文字变为继续阅读
        if(novelHistory != null){
            for(i=0; i<novelHistory.length; i++){
                if(null != novel.nid && novel.nid == novelHistory[i].nid){
                    itemStartReadDiv.innerText = "继续阅读";
                    break;
                }
            }
        }
        
        itemStartRead.appendChild(itemStartReadDiv);
        itemStartRead.drawStartBtnTouched = function() {
            itemStartRead.style.backgroundColor = "#F1F1F1";
        };
        itemStartRead.clearStartBtnCanvas = function() {
            itemStartRead.style.backgroundColor = "white";
        };
        // 小说阅读界面URL
        itemStartRead.readUrl = novel.readUrl;
        itemStartRead.novelName = novel.name;

        itemMiddleTop.appendChild(itemNovelNameAuthor);
        itemMiddleTop.appendChild(itemStartRead);

        var itemMiddleBottom = document.createElement("div");
        var novelBrief = document.createElement("label");
        novelBrief.className = "css_novel_brief_label";
        var briefStr = novel.brief;
        if (briefStr && briefStr.length > 28) {
            briefStr = briefStr.substring(0,27) + "...";
        }
        novelBrief.innerText = "简介：  " + briefStr;
        itemMiddleBottom.appendChild(novelBrief);

        itemMiddle.appendChild(itemMiddleTop);
        itemMiddle.appendChild(itemMiddleBottom);
        // 右边小箭头图标
        var itemRight = document.createElement("div");
        itemRight.className = "css_itme_right_div";
        var itemRightArrow = document.createElement("img");
        itemRightArrow.className = "css_item_right_arrow_img";
        itemRightArrow.src = channel_goto_sub;
        itemRight.appendChild(itemRightArrow);

        novelItem.appendChild(itemLeft);
        novelItem.appendChild(itemMiddle);
        novelItem.appendChild(itemRight);
        
        novelItem.drawStartBtnNormal = function() {
            itemStartRead.style.backgroundColor = "white";
        };
        
        // 小说简介页面URL
        novelItem.briefUrl = novel.briefUrl;
        return novelItem;
    }
    
    //更新小说阅读业务内嵌页开始阅读按钮文字显示
    function updateNovelReadBtnText(novelHistoryNew) {
        var itemStartReadDivList = curPage.getElementsByClassName("css_item_start_read_absolute_div");
        for (var j = 0; j < itemStartReadDivList.length; j++) {
            itemStartReadDiv = itemStartReadDivList.item(j);
            var nid = itemStartReadDiv.getAttribute('data-nid');
            if(null != nid) {
                for ( i = 0; i < novelHistoryNew.length; i++) {
                    if (nid.localeCompare(novelHistoryNew[i].nid) == 0) {
                        itemStartReadDiv.innerText = "继续阅读";
                        break;
                    }
                }
            }
        }
    }
    
    function requestMoreNovel(novelData) {
        console.log("requestMoreNovel");
        var moreNovelParam = new Object();
        moreNovelParam.name = novelData.name;
        moreNovelParam.pageIndex = parseInt(pageIndex) + 1;
        moreNovelParam.author = novelData.author;
        moreNovelParam.category = novelData.category;
        moreNovelParam.popularity = novelData.popularity;
        moreNovelParam.dataSourceId = novelData.dataSrcId;
        moreNovelParam.dataSourceName = novelData.dataSrcName;
        moreNovelParam.serverUrl = novelData.serverUrl;
        require(["./novel/novelRequestHelper.js"], function(novelRequestHelper) {
            isRequestMoreNovel = true;
            novelRequestHelper.requestMoreNovel(moreNovelParam, function(xmlDocument) {
                isRequestMoreNovel = false;
                if(null != xmlDocument) {
                    require(["./novel/novelHandler.js"], function(novelRecognizeFilter) {
                        var result = new Object();
                        novelRecognizeFilter.filterBusinessResult(result, xmlDocument);
                        if (result.status == "success") {
                            addMoreNovels(result);
                            //更新小说页码
                            if (result.pageIndex) {
                                pageIndex = parseInt(result.pageIndex);
                            } else {
                                pageIndex++;
                            }
                            if (result.pageTotal) {
                                pageTotal = parseInt(result.pageTotal);
                            }
                        } else {
                            console.log("requestMoreNovel, errorCode is not 000000");
                            exec('UIComponents', 'showToast', [result.desc, 0]);
                        }
                        
                        //停止加载动画
                        pullLoadMoreHelper.stopRefresh();
                    }); 
                } else {
                    console.log("requestMoreNovel, xmlDocument is null");
                    //停止加载动画
                    pullLoadMoreHelper.stopRefresh();
                    exec('UIComponents', 'showToast', ["网络连接超时，请稍后重试", 0]);
                }
            });
        }); 

    }
    
    function addMoreNovels(novelData) {
        console.log('addMoreNovels');
        var novels = novelData.novels;
        if (novels) {
            var novelsLength = novels.length;
            var listLength = novelsLength;
            for (var i = 0; i < listLength; i++) {
                var novelItem = createNovelItem(novels[i], null);
                if (novelItem) {
                    if (novelListView) {
                        novelListView.appendChild(novelItem);
                        novelItem.drawStartBtnNormal();
                    }
                }
            }
        }
    }
    
    if(null == window.updateNovelReadBtnText){
        window.updateNovelReadBtnText = updateNovelReadBtnText;
    }

    return createNovelView;
});