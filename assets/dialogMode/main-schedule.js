//判断是否为移动终端
var isTouch = ('ontouchstart' in window);

// 屏幕滑动距离检测器
var moveOverCheck = new checkMoveOver();

/********************初始化工作开始***************************/
// 获取设备信息
var resultDevice = ifly_getDeviceInfo();
if (!resultDevice) {
    resultDevice = {};
    if (isTouch) {
        //移动端设置为窗口宽度
        resultDevice.screenWidth = window.innerWidth;
    } else {
        //pc端设置为固定宽度
        resultDevice.screenWidth = 720;
    }
    resultDevice.model = 'unknown';
    resultDevice.release = '2.2';
}

//设备分辨率
var deviceWidth = resultDevice.screenWidth;
// 是否需要延迟加载
var isNeedResetScale = false;
console.log("resultDevice.release = " + resultDevice.release);
if (resultDevice.release && resultDevice.release.indexOf("4.0") == 0) {
    isNeedResetScale = true;
}
//华为G660，G730手机特殊适配wm
if (resultDevice.model == "G620-L75" || resultDevice.model == "HUAWEI G660-L075" || resultDevice.model == "HUAWEI G730-L075") {
    isNeedResetScale = true;
}


//是否开启动画
var enableAnimation = false;
//皮肤包路径
var skinPath = "../skin/theme_new/";
//版本标识，用来区分灵犀还是语点。默认值为true，表示灵犀
var cmcc_flag = true;

//获取环境信息(皮肤、版本标识、cpu)
var environmentInfo = ifly_getEnvironmentInfo();
if (environmentInfo) {
    skinPath = environmentInfo.skinPath;
    cmcc_flag = environmentInfo.isCmcc;

    //双核及以上手机开启动画
    if (environmentInfo.cpuCount >= 2) {
        enableAnimation = true;
    }

    //该款手机开启动画容易崩溃，暂时关闭。by mdhuang 2014年1月22日14:07:20
    if (resultDevice.model.indexOf("HUAWEI D2") > -1) {
        enableAnimation = false;
    }
} else {
    enableAnimation = true;
}


// 适配比例，xcss文件解析时需要
var scale = deviceWidth / 320;

var marginBottom = 6 * scale; //来自css_dilaog_out_div中的margin_bottom

//平移动画的滚动距离
var translateAnimDistance = 100 * scale;

var flagBusCSSLoaded = false;

// 加载资源
function loadResource() {
    console.log("loadResource() is called");
    function createXcssElement(id) {
        var css = document.createElement('link');
        css.id = id;
        css.rel = 'stylesheet/xcss';
        css.type = 'text/css';
        return css;
    }

    function createScriptElement(id) {
        var script = document.createElement('script');
        script.id = id;
        script.type = "text/javascript";
        return script;
    }

    var head = document.getElementsByTagName('head').item(0);

    // 加载js文件
    var resouceJs = createScriptElement('resouceJs');
    var resourceFolderName = null;

    resouceJs.src = "./schedule/resources.js";

    console.log("com_iflytek_local_resourceFolder  = " + com_iflytek_local_resourceFolder);

    console.log("resourcePath = " + "./" + "schedule" + "/resources.js");
    head.appendChild(resouceJs);

    // 捕获xcss解析完成的事件
    document.documentElement.addEventListener("xcssParseFinish", function () {
        if (document.getElementById('businessXcss')) {
            // 删除已经不需要的节点
            head.removeChild(document.getElementById('businessXcss'));
            head.removeChild(document.getElementById('xcssParser'));
            // 通知java层，business.xcss解析完毕
            exec('WidgetMMPContainerComponents', 'businessXcssParseFinish', []);

        } else {
            console.warn('unknown parseFinish event');
        }
    }, false);

    //加载解析xcss样式文件
    var businessXcss = createXcssElement('businessXcss');
    businessXcss.href = "./" + "schedule" + "/business.x.css";
    head.appendChild(businessXcss);

    var xcssParser = createScriptElement('xcssParser');
    xcssParser.src = skinPath + "dialogModeRes/xcssParser.js";
    head.appendChild(xcssParser);
}


if (!isNeedResetScale) {
    loadResource();
}


/**
 * 在调用业务处理逻辑前，再获取一次屏幕宽度，重新计算一次scale
 */
function resetScale() {
    if (!isNeedResetScale) {
        console.log("there's no need reset Scale");
        return;
    }
    console.log("before reset scale is " + scale);
    setTimeout(function () {     // 延迟200毫秒获取页面宽度
        deviceWidth = document.body.clientWidth;
        scale = deviceWidth / 320;
        console.log("after reset scale is " + scale);
        marginBottom = 6 * scale;
        translateAnimDistance = 100 * scale;
        // 调用业务处理逻辑
        loadResource();
    }, 150);
}


/********************初始化工作结束***************************/


/**
 * Java函数对语音识别结果进行处理后，调用此函数进行页面展示
 *
 * @param viewName
 *            需要处理的view的类型，如对话、提醒、股票等
 * @param result
 *            java进行处理后的数据结果，json格式字符串
 */
function addE(viewName, result) {
    console.log('addE begin, viewName is ' + viewName + ' ,result is ' + result);
    if (viewName in functionMap) {
        require(functionMap[viewName].url, function (func) {
            if (func && typeof func == 'function') {
                //解析业务数据
                var resultJson = eval('(' + result + ')');

                //创建节点，并添加到页面中
                var view = func(resultJson);

                //设置动画
                setAnim(viewName, view, resultJson);

                //重设节点margin值，以保证该节点至少“占据”一屏的空间
                resetElementMargin(view);

                //滚动节点位置
                scrollElement(view, resultJson);

                //开始动画
                startAnim(viewName, view, resultJson);
                forceRefreshScreen();

            } else {
                console.error('addE faile, create func is null');
            }
        });
    }
}

/**
 * 重设元素的margin值
 * @param view
 */
function resetElementMargin(view, isErrorView) {
    if (!view.previousElementSibling) {
        console.log('first element, need not control position');
        return;
    }

    //errorView特殊处理
    if (isErrorView) {
        view.style.marginBottom = window.innerHeight + 'px';
    }
    //先设置当前节点的margin值
    else if (view.clientHeight + 2 * marginBottom < window.innerHeight) {
        view.style.marginBottom = (window.innerHeight - view.clientHeight - marginBottom) + 'px';
    }

    //然后再恢复前一个节点的margin值，这样能够把当前节点给“拉起来”
    if (view.previousElementSibling) {
        view.previousElementSibling.style.marginBottom = marginBottom + 'px';
    }
}

/**
 * 滚动节点位置
 */
function scrollElement(view, resultJson) {
    // 本节点为第一置顶元素
    if (view.topFirst) {
        // 直接将本节点置顶
        scrollToView(view);
    }
    // 本节点为第二置顶元素
    else if (view.topSecond) {
        if (view.previousElementSibling && view.previousElementSibling.topFirst) {
            // 前节点为第一置顶元素，保险起见将前节点再次置顶，规避某些手机上出现不置顶的情况
            scrollToView(view.previousElementSibling);
        } else {
            // 前面没有第一置顶元素，则将本节点置顶
            scrollToView(view);
        }
    }
}

/********************动画处理函数***************************/
function setAnim(viewName, element, resultJson) {
    if (resultJson.isHistoryResult || element.noAnim) {
        console.log('no setAnim, return');
        return;
    }
    if (viewName === 'WidgetCustomerQuestionView' || viewName === 'WidgetViaFlyAnswerView') {
        addOpacityAnim(element);
    } else {
        addTranslateAnim(element);
    }
}

function startAnim(viewName, element, resultJson) {
    if (resultJson.isHistoryResult || element.noAnim) {
        console.log('no startAnim, return');
        return;
    }
    if (viewName === 'WidgetCustomerQuestionView' || viewName === 'WidgetViaFlyAnswerView') {
        startOpacityAnim(viewName, element);
    } else {
        startTranslateAnim(element);
    }
}

//渐变动画
function addOpacityAnim(element) {
    if (enableAnimation) {
        element.style.opacity = "0.0";
        addClass(element, 'css_dialog_opacity_anim');
    }
}

function startOpacityAnim(viewName, element) {
    if (enableAnimation) {
        //动画结束后的清理工作
        var animEndListener = function () {
            removeClass(element, 'css_dialog_opacity_anim');
            element.removeEventListener("webkitTransitionEnd", animEndListener);
        };
        element.addEventListener("webkitTransitionEnd", animEndListener);

        if (viewName === 'WidgetCustomerQuestionView') {
            //转写气泡动画延时一段时间再显示，以便先完成位置置顶的动作
            setTimeout(function () {
                element.style.opacity = "1.0";
            }, 100);
        } else {
            element.style.opacity = "1.0";
        }
    }
}

//平移动画
function addTranslateAnim(element) {
    if (enableAnimation) {
        element.style.opacity = "0.0";
        element.style.webkitTransform = "translate(0," + translateAnimDistance + "px)";
        addClass(element, 'css_dialog_translate_anim');
    }
}

function startTranslateAnim(element) {
    if (enableAnimation) {
        //动画结束后的清理工作
        var animEndListener = function () {
            removeClass(element, 'css_dialog_translate_anim');
            element.removeEventListener("webkitTransitionEnd", animEndListener);

            //强制界面重排，解决某些情况下translate完成后界面多出一大块空白的问题
            if (element.style.marginBottom) {
                element.style.marginBottom = (parseFloat(element.style.marginBottom) + 1) + 'px';
            } else {
                element.style.marginBottom = (marginBottom + 1) + 'px';
            }
        };
        element.addEventListener("webkitTransitionEnd", animEndListener);

        element.style.opacity = "1.0";
        element.style.webkitTransform = "translate(0,0px)";
    }
}

/* 创建position为relative的外层div */
function createOutDiv(id) {
    var relativeDiv = document.createElement("div");
    relativeDiv.className = "css_dilaog_out_div";
    if (id != undefined && id != null) {
        relativeDiv.id = id;
    }
    return relativeDiv;
}

/* 创建外层容器div */
function createBoxDiv(id, outDiv) {
//    var inner_box = document.createElement("div");
//    inner_box.className = "box_inner";
//    inner_box.appendChild(outDiv);

    var out_box = document.createElement("div");
    out_box.className = "box_out";
    out_box.appendChild(outDiv);

    if (id) {
        out_box.id = id;
    }
    return out_box;
}

function addWebE(viewName, jsonResult) {
    console.log('addWebE begin');
    if (viewName in functionMap) {
        require(functionMap[viewName].url, function (func) {
            if (func && typeof func == 'function') {
                //创建节点，并添加到页面中
                var view = func(jsonResult);
                forceRefreshScreen();
            } else {
                console.error('addE fail, create func is null');
            }
        });
    }
}


/**
 * 删除当前可被删除的元素
 */
function removeCurrentCanDeleteView() {
    console.log("removeCurrentCanDeleteView :" + currentCanDeleteView);
    if (currentCanDeleteView && currentCanDeleteView.parentNode) {
        if (currentCanDeleteView.deleteView && typeof currentCanDeleteView.deleteView === "function") {
            currentCanDeleteView.deleteView();
        }
        removeChild(currentCanDeleteView.parentNode, currentCanDeleteView);
        currentCanDeleteView = null;
    }
    //forceRefreshScreen();
}


/**
 * 删除子节点，使用此方法便于进行一些公共的逻辑处理。
 *
 * @param parent
 * @param child
 */
function removeChild(parent, child) {
    console.log('removeChild begin');

    // 删除之前，判断是否对页面最后节点的操作
    var isLastElement = false;
    if (parent == document.body.lastElementChild || child == document.body.lastElementChild) {
        isLastElement = true;
    }

    parent.removeChild(child);

    // 最后的节点发生了变化，需要重新调整位置
    var view = document.body.lastElementChild;
    if (isLastElement && view) {
        if (child == document.body.dashbordErrorView) {
            resetElementMargin(view, true);
        } else {
            resetElementMargin(view);
        }
    }

}

/**
 * 函数映射表
 */
var functionMap = {
    WidgetCustomerQuestionView: {
        url: [ "./common/questionView.js" ]
    },
    WidgetViaFlyAnswerView: {
        url: [ "./common/dialogView.js" ]
    },
    WidgetRemindView: {
        url: [ "./schedule/remindView.js" ]
    },
    WidgetRemindConfirmView: {
        url: [ "./schedule/remindConfirm.js" ]
    }
};

console.log("main-schedule.js load finish");