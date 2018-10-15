var bannerDiv = null;
var BNNER_ITEM_NUM = 4;
var INTERVAL_TIME = 100;
var isFinished = false;//标志页面是否加载完
var myInterval = null;
var pageId = null;
var contentIframe = null;

var exec = function(service, action, args) {
    var result = prompt("iflytek:" + stringify([service, action]), stringify(args));
    return result;
};
var stringify = function(args) {
    if ( typeof JSON === "undefined") {
        var s = "[";
        var i, type, start, name, nameType, a;
        for ( i = 0; i < args.length; i++) {
            if (args[i] !== null) {
                if (i > 0) {
                    s = s + ",";
                }
                type = typeof args[i];
                if ((type === "number") || (type === "boolean")) {
                    s = s + args[i];
                } else if (args[i] instanceof Array) {
                    s = s + "[" + args[i] + "]";
                } else if (args[i] instanceof Object) {
                    start = true;
                    s = s + '{';
                    for (name in args[i]) {
                        if (args[i][name] !== null) {
                            if (!start) {
                                s = s + ',';
                            }
                            s = s + '"' + name + '":';
                            nameType = typeof args[i][name];
                            if ((nameType === "number") || (nameType === "boolean")) {
                                s = s + args[i][name];
                            } else if (( typeof args[i][name]) === 'function') {
                                // don't copy the functions
                                s = s + '""';
                            } else if (args[i][name] instanceof Object) {
                                s = s + PhoneGap.stringify(args[i][name]);
                            } else {
                                s = s + '"' + args[i][name] + '"';
                            }
                            start = false;
                        }
                    }
                    s = s + '}';
                } else {
                    a = args[i].replace(/\\/g, '\\\\');
                    a = a.replace(/"/g, '\\"');
                    s = s + '"' + a + '"';
                }
            }
        }
        s = s + "]";
        return s;
    } else {
        return JSON.stringify(args);
    }
};

/**
 * 检测移动距离是否过大
 */
function checkMoveOver() {
    var startX = 0, startY = 0, curX = 0, curY = 0, moveOver = false;
    const
        length = 8;
    this.start = function(event) {
        console.log('checkMoveOver, start');
        startX = event.targetTouches[0].pageX;
        startY = event.targetTouches[0].pageY;
        curX = startX;
        curY = startY;
        moveOver = false;
    };

    this.check = function(event) {
        console.log('checkMoveOver, check');
        curX = event.targetTouches[0].pageX;
        curY = event.targetTouches[0].pageY;
        if (Math.abs(curX - startX) > length
            || Math.abs(curY - startY) > length) {
            console.warn('checkMoveOver true');
            moveOver = true;
            return true;
        } else {
            return false;
        }
    };

    this.isMoveOver = function() {
        console.warn('isMoveOver :' + moveOver);
        return moveOver;
    };
};

// 屏幕滑动距离检测器
var moveOverCheck = new checkMoveOver();

function createBannerItem(bannerData) {
    console.log("createBannerItem()");
    var bannerItemDiv = document.createElement("div");
    bannerItemDiv.style.width = "25%";
    bannerItemDiv.style.display = "inline-block";

    //创建图片区域
    var bannerImgContainer = document.createElement("div");
    bannerImgContainer.style.width = "52px";
    bannerImgContainer.style.height = "52px";
    bannerImgContainer.style.borderRadius = "9px";
    bannerImgContainer.style.border = "1px solid rgba(0,0,0,0.16)";
    bannerImgContainer.style.backgroundColor = "rgba(0,0,0,0.04)";
    bannerImgContainer.style.marginBottom = "7px";
    bannerImgContainer.style.marginLeft = "auto";
    bannerImgContainer.style.marginRight = "auto";

    var bannerImg = document.createElement("img");
    bannerImg.style.width = "100%";
    bannerImg.style.height = "100%";
    bannerImg.style.borderRadius = "9px";
    bannerImg.src = bannerData.imgUrl;
    bannerImg.imgUrl = bannerData.imgUrl;
    bannerImg.loadSuccess = false;
    bannerImg.loadCount = 1;
    bannerImg.onerror = function() {
        console.log("banner image load error");
        if (this.loadCount < 5) {
            bannerImg.src = "";
            bannerImg.src = this.imgUrl;
            this.loadCount ++;
        } else {
            this.style.display = "none";
        }
    };
    bannerImg.onload = function() {
        console.log("banner image load success");
        this.style.display = "block";
        this.loadSuccess = true;
    };

    bannerImgContainer.appendChild(bannerImg);
    bannerItemDiv.appendChild(bannerImgContainer);

    //创建文字描述区域
    var bannerDes = document.createElement("div");
    bannerDes.style.height = "12px";
    bannerDes.style.lineHeight = "12px";
    bannerDes.style.textAlign = "center";
    bannerDes.style.fontSize = "12px";
    bannerDes.style.color = "#515151";
    bannerDes.style.overflow = "hidden";
    bannerDes.style.whiteSpace = "nowrap";
    bannerDes.style.marginBottom = "7px";
    bannerDes.style.marginLeft = "auto";
    bannerDes.style.marginRight = "auto";
    bannerDes.innerHTML = cutName(bannerData.name);
    bannerItemDiv.appendChild(bannerDes);

    //创建下载按钮
    var downloadButton = document.createElement("div");
    downloadButton.style.width = "53px";
    downloadButton.style.lineHeight = "21px";
    downloadButton.style.border = "1px solid #4282F7";
    downloadButton.style.borderRadius = "2px";
    downloadButton.style.textAlign  = "center";
    downloadButton.style.fontSize = "11px";
    downloadButton.style.color = "#4282f7";
    downloadButton.style.marginLeft = "auto";
    downloadButton.style.marginRight = "auto";
    downloadButton.innerHTML = "下载";
    downloadButton.downloadUrl = bannerData.downUrl;
    downloadButton.name = bannerData.name;
    downloadButton.packageName = bannerData.packageName;
    downloadButton.isAutoOpen = (bannerData.autoOpen == 0 ? false : true);
    downloadButton.fileName = "";
    if (bannerData.fileName) {
        downloadButton.fileName = bannerData.fileName;
    }
    downloadButton.size = "";
    if (bannerData.size) {
        downloadButton.size = bannerData.size;
    }
    downloadButton.entry = pageId;
    
    bannerItemDiv.appendChild(downloadButton);

    //安装按钮添加监听事件
    var downloadButtonMove = false;
    downloadButton.addEventListener("touchstart", function() {
        event.stopPropagation();
        console.log("downloadButton touchstart!");
        moveOverCheck.start(event);
        downloadButtonMove = false;
        downloadButton.style.backgroundColor = "#4282f7";
        downloadButton.style.color = "#ffffff";
    }, false);
    downloadButton.addEventListener("touchmove", function() {
        event.stopPropagation();
        console.log("downloadButton touchmove!");
        if (moveOverCheck.check(event)) {
            downloadButtonMove = true;
        }
        downloadButton.style.backgroundColor = "";
        downloadButton.style.color = "#4282f7";
    }, false);
    downloadButton.addEventListener("touchend", function() {
        event.stopPropagation();
        console.log("downloadButton touchend!");
        if (false == downloadButtonMove) {
            console.log("this.entry is " + this.entry);
            //调用下载能力接口进行处理
            exec("DownloadComponents", "handleAppInstallAction", [this.downloadUrl, this.name, this.packageName, this.isAutoOpen, this.entry, this.fileName, this.size]);
        }
        downloadButton.style.backgroundColor = "";
        downloadButton.style.color = "#4282f7";
    }, false);

    bannerItemDiv.reloadImg = function () {
        console.log("banner image reload. loadSuccess is " + bannerImg.loadSuccess);
        if (false == bannerImg.loadSuccess) {
            bannerImg.src = "";
            bannerImg.src = bannerImg.imgUrl;
        }
    };

    return bannerItemDiv;
}

/**
 *检查数据的有效性 
 */
function checkData(dataArray) {
    if (!dataArray || dataArray.length < BNNER_ITEM_NUM) {
        return false;
    }
    
    for (var i = 0; i < dataArray.length; i ++) {
        var data = dataArray[i];
        if (!data) {
            return false;
        }
    }
    return true;
}

/** 对游戏名称进行分割*/
function cutName(rawName) {
    if(rawName.length <= 5) {
        return rawName;
    } else {
        return rawName.substr(0,4) + "...";
    }
}

function createBanner(bannerDataArray) {
    console.log("createBanner()");
    if (checkData(bannerDataArray)) {
        console.log("bannerDataArray is " + JSON.stringify(bannerDataArray));
        bannerDiv = document.createElement("div");
        bannerDiv.id = "iflytek_app_banner";
        bannerDiv.style.margin = "6px 7px";
        bannerDiv.style.height = "100%";
        bannerDiv.style.border = "1px solid #eaeaea";
        bannerDiv.style.backgroundColor = "#ffffff";
        bannerDiv.style.paddingTop = "18px";
        bannerDiv.style.paddingBottom = "18px";
        bannerDiv.style.position = "relative";
        bannerDiv.loadCount = 1;

        for (var i = 0; i < BNNER_ITEM_NUM; i ++) {
            bannerDiv.appendChild(createBannerItem(bannerDataArray[i]));
        }

        //创建推广按钮
        var spreadButtonDiv = document.createElement("div");
        spreadButtonDiv.style.width = "22px";
        spreadButtonDiv.style.height = "13px";
        spreadButtonDiv.style.lineHeight = "13px";
        spreadButtonDiv.style.borderTopLeftRadius = "2px";
        spreadButtonDiv.style.borderBottomLeftRadius = "2px";
        spreadButtonDiv.style.backgroundColor = "#999999";
        spreadButtonDiv.style.position = "absolute";
        spreadButtonDiv.style.right = "0px";
        spreadButtonDiv.style.top = "0px";
        spreadButtonDiv.style.color = "#ffffff";
        spreadButtonDiv.style.textAlign = "center";
        spreadButtonDiv.style.fontSize = "9px";
        spreadButtonDiv.innerHTML = "推广";

        bannerDiv.appendChild(spreadButtonDiv);

        bannerDiv.reloadImg = function(){
            console.log("bannerDiv.reloadImg()");
            //重复加载图片5次
            myInterval = setInterval(function(){
                console.log("loadCount is " + bannerDiv.loadCount);
                if (bannerDiv.loadCount > 4) {
                    clearInterval(myInterval);
                }

                var childs = bannerDiv.children;
                if (childs) {
                    for(var i = 0; i < BNNER_ITEM_NUM; i++) {
                        var child = childs[i];
                        if (child) {
                            child.reloadImg();
                        }
                    }
                }
                bannerDiv.loadCount ++;
            },1000);
        };
    } else {
        console.log("bannerDataArray is illegal!");
    }
}

function showSmSearchPageBanner() {
    console.log("showSmSearchPageBanner(), isFinished is " + isFinished);
    try {
        var resultDiv = document.getElementById("results");
        if (resultDiv) {
            console.log("resultDiv is " + resultDiv);
            var childDivIndexs = getChildDivIndexs(resultDiv);
            if (childDivIndexs) {
                console.log("childDivIndexs.length is " + childDivIndexs.length);
                if(childDivIndexs.length < 2) {
                    //判断页面是否加载完，若未加载完，则继续循环检测，若已加载完，则若存在一个子元素，则在该子元素下方插入广告位
                    if (!isFinished) {
                        setTimeout(function(){
                            showSmSearchPageBanner();
                        },INTERVAL_TIME);
                    } else {
                        if (childDivIndexs.length == 1) {
                            resultDiv.appendChild(bannerDiv);
                            if (bannerDiv.reloadImg) {
                                bannerDiv.reloadImg();
                            }
                        }
                    }
                } else {
                    var insertElement = resultDiv.children[childDivIndexs[1]];
                    console.log("insertElement is " + insertElement);
                    console.log("bannerDiv is " + bannerDiv);
                    if (bannerDiv) {
                        resultDiv.insertBefore(bannerDiv,insertElement);
                        if (bannerDiv.reloadImg) {
                            bannerDiv.reloadImg();
                        }
                    }
                }
            } else {
                if (!isFinished) {
                    setTimeout(function(){
                        showSmSearchPageBanner();
                    },INTERVAL_TIME);
                }
            }
        } else {
            console.log("resultDiv is null, isFinished is " + isFinished);
            if (!isFinished) {
                setTimeout(function(){
                    showSmSearchPageBanner();
                },INTERVAL_TIME);
            }
        }
    } catch (err) {
        console.log("error is " + err);
        if (!isFinished) {
            setTimeout(function(){
                showSmSearchPageBanner();
            },INTERVAL_TIME);
        }
    }
}

function getChildDivIndexs(parentDiv) {
    console.log("getChildDivs()");
    var childDivIndexs = [];
    var childs = parentDiv.children;
    for (var i = 0; i < childs.length; i ++) {
        if (childs[i].tagName == "DIV") {
            childDivIndexs.push(i);
        }
    }
    return childDivIndexs;
}

function loadFinished() {
    console.log("loadFinished()");
    //设置已加载完成的标志位为true
    isFinished = true;
    //若广告位已添加成功，则不做任何操作
    if (!document.getElementById("iflytek_app_banner")) {
        showSmSearchPageBanner();
    }
}

function createIframeView(url) {
    console.log("createIframeView(), url is " + url);
    bannerDiv = document.createElement("div");
    bannerDiv.id = "iflytek_app_banner";
    bannerDiv.style.margin = "6px 7px";
    bannerDiv.style.height = "54px";
    bannerDiv.style.border = "1px solid #eaeaea";
    bannerDiv.style.backgroundColor = "#ffffff";
    
    contentIframe = document.createElement("iframe");
    contentIframe.style.width = "100%";
    contentIframe.style.height = "100%";
    contentIframe.style.frameborder = "0";
    contentIframe.style.border = "0";
    contentIframe.src = url;
    contentIframe.scrolling = "no";
    
    bannerDiv.appendChild(contentIframe);
}

function createAdvertView() {
    var type = advertData.type;
    console.log("createAdvertView(), type is " + type);
    if (type == "url") {
        createIframeView(advertData.url);
    } else if (type == "data") {
        createBanner(advertData.apps);
    }
}

//监听浏览器事件
exec("LxBrowserComponents", "isEventCallBackForJS", [true]);

window.onPageFinished = loadFinished;

console.log("advertData is " + JSON.stringify(advertData));
pageId = advertData.pageId;
createAdvertView();
if (bannerDiv) {
    showSmSearchPageBanner();
}
