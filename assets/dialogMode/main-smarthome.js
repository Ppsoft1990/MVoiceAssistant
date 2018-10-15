//判断是否为移动终端
var isTouch = ('ontouchstart' in window);

// 屏幕滑动距离检测器
var moveOverCheck = new checkMoveOver();

/********************初始化工作开始***************************/
// 获取设备信息
var resultDevice = ifly_getDeviceInfo();
if(!resultDevice){
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

var content_play_loding_interval;
/**
 * canvas方式实现图片旋转
 */
function startRotate(target_canvas, img) {
    stopRotate(content_play_loding_interval);
    console.error("high rotate function is called");
    var dialog_waiting = function() {
        // 获取上下文
        var ctx = target_canvas.getContext("2d");
        // 清空画布
        ctx.clearRect(0, 0, target_canvas.width, target_canvas.height);
        //
        ctx.translate(target_canvas.width / 2, target_canvas.height / 2);

        ctx.rotate(Math.PI / 4);

        ctx.translate(-target_canvas.width / 2, -target_canvas.height / 2);

        if (img != undefined && img != null) {
            ctx.drawImage(img, 0, 0, target_canvas.width, target_canvas.height);
        } else {
            ctx.drawImage(img_dialog_waiting_A[0], 0, 0, target_canvas.width,
                target_canvas.height);
        }
    };
    var funtion_id = setInterval(function() {
        dialog_waiting();
    }, 125);
    return funtion_id;
}

function startRotateLow(target_canvas, img, startFrom) {
    var dialog_waiting = function() {
        // 获取上下文
        var ctx = target_canvas.getContext("2d");
        // 清空画布
        ctx.clearRect(0, 0, target_canvas.width, target_canvas.height);

        var j = startFrom % 6;
        console.log("current image id is:" + j);
        ctx.drawImage(img_dialog_waiting_A[j], 0, 0, target_canvas.width,
            target_canvas.height);
        startFrom++;
    };
    var funtion_id = setInterval(function() {
        dialog_waiting();
    }, 250);

    console.log('startRotateLow, id ' + funtion_id);
    return funtion_id;
}

function startRotateLowVersion(target_canvas, img) {
    stopRotate(content_play_loding_interval);
    console.log("android low version function is called");
    var fun_id = startRotateLow(target_canvas, null, 0);
    return fun_id;
}

function stopRotate(funtion_id) {
    console.log('stopRotate, id ' + funtion_id);
    if (funtion_id != null && typeof funtion_id != "undefined") {
        clearInterval(funtion_id);
        funtion_id = null;
    }
}

//根据android sdk版本，选择旋转动画的函数版本
try {
    if (resultDevice.model == "MI-ONE C1" || resultDevice.model == "MI 1"
        || resultDevice.model == "MI 1S") {
        var androidVersion = 2.1;
    } else {
        var androidVersionName = resultDevice.release;
        androidVersion = parseFloat(resultDevice.release);
    }
} catch (e) {
    androidVersion = 2.2;
} finally{
    if (androidVersion < 2.2) {
        startRotate = startRotateLowVersion;
    }
}



//是否开启动画
var enableAnimation = false;
//皮肤包路径
var skinPath = "../skin/theme_new/";
//版本标识，用来区分灵犀还是语点。默认值为true，表示灵犀
var cmcc_flag = true;

//获取环境信息(皮肤、版本标识、cpu)
var environmentInfo = ifly_getEnvironmentInfo();
if(environmentInfo){
    skinPath = environmentInfo.skinPath;
    cmcc_flag = environmentInfo.isCmcc;

    //双核及以上手机开启动画
    if(environmentInfo.cpuCount >= 2){
        enableAnimation = true;
    }

    //该款手机开启动画容易崩溃，暂时关闭。by mdhuang 2014年1月22日14:07:20
    if(resultDevice.model.indexOf("HUAWEI D2") > -1){
        enableAnimation = false;
    }
} else {
    enableAnimation = true;
}

console.log("deviceWidth is :" + deviceWidth + " ,skinPath is " + skinPath + " ,cmcc_flag is " + cmcc_flag + " ,androidVersion is " + androidVersion + " ,enableAnimation is " + enableAnimation);

// 适配比例，xcss文件解析时需要
var scale = deviceWidth / 320;

var marginBottom = 6*scale; //来自css_dilaog_out_div中的margin_bottom

//平移动画的滚动距离
var translateAnimDistance = 100*scale;

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

    resouceJs.src = "./smarthome/resources.js";

    console.log("com_iflytek_local_resourceFolder  = " + com_iflytek_local_resourceFolder);

    console.log("resourcePath = " + "./" + "smarthome" + "/resources.js");
    head.appendChild(resouceJs);

    // 捕获xcss解析完成的事件
    document.documentElement.addEventListener("xcssParseFinish", function() {
        if(document.getElementById('businessXcss')){
            // 删除已经不需要的节点
            head.removeChild(document.getElementById('businessXcss'));
            head.removeChild(document.getElementById('xcssParser'));
            // 通知java层，business.xcss解析完毕
            //添加用户引导
            createChannel();

            exec('WidgetMMPContainerComponents', 'businessXcssParseFinish', []);

        } else{
            console.warn('unknown parseFinish event');
        }
    }, false);

    //加载解析xcss样式文件
    var businessXcss = createXcssElement('businessXcss');
    businessXcss.href = "./" + "smarthome" + "/business.x.css";
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
    setTimeout(function() {     // 延迟200毫秒获取页面宽度
        deviceWidth = document.body.clientWidth;
        scale = deviceWidth / 320;
        console.log("after reset scale is " + scale);
        marginBottom = 6*scale;
        translateAnimDistance = 100*scale;
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
        require(functionMap[viewName].url, function(func) {
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
function resetElementMargin(view, isErrorView){
    if(!view.previousElementSibling ){
        console.log('first element, need not control position');
        return;
    }

    //errorView特殊处理
    if(isErrorView){
        view.style.marginBottom = window.innerHeight + 'px';
    }
    //先设置当前节点的margin值
    else if(view.clientHeight + 2*marginBottom < window.innerHeight){
        view.style.marginBottom = (window.innerHeight - view.clientHeight - marginBottom) + 'px';
    }

    //然后再恢复前一个节点的margin值，这样能够把当前节点给“拉起来”
    if(view.previousElementSibling){
        view.previousElementSibling.style.marginBottom = marginBottom + 'px';
    }
}

/**
 * 滚动节点位置
 */
function scrollElement(view, resultJson){
    // 本节点为第一置顶元素
    if(view.topFirst){
        // 直接将本节点置顶
        scrollToView(view);
    }
    // 本节点为第二置顶元素
    else if(view.topSecond){
        if (view.previousElementSibling && view.previousElementSibling.topFirst) {
            // 前节点为第一置顶元素，保险起见将前节点再次置顶，规避某些手机上出现不置顶的情况
            scrollToView(view.previousElementSibling);
        } else{
            // 前面没有第一置顶元素，则将本节点置顶
            scrollToView(view);
        }
    }
}

/********************动画处理函数***************************/
function setAnim(viewName, element, resultJson){
    if (resultJson.isHistoryResult || element.noAnim) {
        console.log('no setAnim, return');
        return;
    }
    if (viewName === 'WidgetCustomerQuestionView' || viewName === 'WidgetViaFlyAnswerView' ) {
        addOpacityAnim(element);
    } else {
        addTranslateAnim(element);
    }
}

function startAnim(viewName, element, resultJson){
    if (resultJson.isHistoryResult || element.noAnim) {
        console.log('no startAnim, return');
        return;
    }
    if (viewName === 'WidgetCustomerQuestionView' || viewName === 'WidgetViaFlyAnswerView' ) {
        startOpacityAnim(viewName, element);
    } else {
        startTranslateAnim(element);
    }
}

//渐变动画
function addOpacityAnim(element){
    if (enableAnimation) {
        element.style.opacity = "0.0";
        addClass(element, 'css_dialog_opacity_anim');
    }
}

function startOpacityAnim(viewName, element){
    if (enableAnimation) {
        //动画结束后的清理工作
        var animEndListener = function(){
            removeClass(element, 'css_dialog_opacity_anim');
            element.removeEventListener("webkitTransitionEnd", animEndListener);
        };
        element.addEventListener("webkitTransitionEnd", animEndListener);

        if (viewName === 'WidgetCustomerQuestionView'){
            //转写气泡动画延时一段时间再显示，以便先完成位置置顶的动作
            setTimeout(function(){
                element.style.opacity = "1.0";
            },100);
        } else{
            element.style.opacity = "1.0";
        }
    }
}

//平移动画
function addTranslateAnim(element){
    if (enableAnimation) {
        element.style.opacity = "0.0";
        element.style.webkitTransform = "translate(0," + translateAnimDistance + "px)";
        addClass(element, 'css_dialog_translate_anim');
    }
}

function startTranslateAnim(element){
    if (enableAnimation) {
        //动画结束后的清理工作
        var animEndListener = function(){
            removeClass(element, 'css_dialog_translate_anim');
            element.removeEventListener("webkitTransitionEnd", animEndListener);

            //强制界面重排，解决某些情况下translate完成后界面多出一大块空白的问题
            if(element.style.marginBottom){
                element.style.marginBottom = (parseFloat(element.style.marginBottom) + 1) + 'px';
            } else{
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
function createBoxDiv(id,outDiv) {
    var inner_box = document.createElement("div");
    inner_box.className = "box_inner";
    inner_box.appendChild(outDiv);

    var out_box = document.createElement("div");
    out_box.className = "box_out";
    out_box.appendChild(inner_box);

    if (id) {
        out_box.id = id;
    }
    return out_box;
}

//添加转写气泡
function addQuestionView(text) {
    var viewData = {};
    viewData.questionText = text;
    viewData.taskHandler = 'demo_questionView';
    viewData.intentType = 'demo';
    viewData.editEnable = false;
    addE('QuestionView', JSON.stringify(viewData));
}
function delayedAddAnswerView(text, focus, delayTime) {
    var viewData = {};
    viewData.answerText = text;
    viewData.taskHandler = 'demo_answerView';
    viewData.type = 'NORMAL';
    viewData.showShare = false;
    viewData.topic = 'demo';
    viewData.focus = focus;
    viewData.speechText = text;
    viewData.needTaskButton = false;

    setTimeout(function() {
        addE('AnswerView', JSON.stringify(viewData));
    }, delayTime);
}

//添加转写气泡
function addAnswerView(text) {
    var viewData = {};
    if(text){
        viewData.answerText = text;
    }else{
        viewData.answerText = "";
    }
    viewData.taskHandler = 'demo_answerView';
    viewData.intentType = 'demo';
    viewData.editEnable = false;
    addE('AnswerView', JSON.stringify(viewData));
}

function addWebE(viewName, jsonResult){
    console.log('addWebE begin');
    if (viewName in functionMap) {
        require(functionMap[viewName].url, function(func) {
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
    if(parent == document.body.lastElementChild || child == document.body.lastElementChild){
        isLastElement = true;
    }

    parent.removeChild(child);

    // 最后的节点发生了变化，需要重新调整位置
    var view = document.body.lastElementChild;
    if (isLastElement && view) {
        if (child == errorView || child == curPage.dashbordErrorView) {
            resetElementMargin(view,true);
        } else {
            resetElementMargin(view);
        }
    }

}


function createChannel() {
    console.log("createGuide() is called");

    //main-translate.js文件可能会比resources.js文件先加载完毕，所以判断一下
    if (!window.resourcesJsloadFinish) {
        setTimeout(function () {
            createChannel();
            return;
        }, 50);
        return;
    }

    var result = getResultMessage( exec('SmartHomeBusinessHandler',"getDeviceInfo",[]) );
    console.log("result:" + result);
    var resultJson = eval('(' + result + ')');
    console.log("resultJson:" + JSON.stringify(resultJson));



   createSmartHomeDevicesView(resultJson.deviceInfos);
    //按钮文字变为“正在安装”
    window.onUpdateStart = function(identify){
        refreshBtnsState(identify,AppDeviceState.installing);
        console.log("onUpdateStart: " + pluginType);
    };
    //按钮文字变为“正在安装”
    window.onUpdateSuccess = function(pluginType){
        //考虑到onUpdateSuccess比onDownloadError慢，如果启动下载失败，会导致这里显示正在安装
        //refreshBtnsState(pluginType,"正在安装");
        console.log("onUpdateSuccess: " + pluginType);
    };
    //按钮文字变为“点击安装”
    window.onUpdateError = function(identify){
        refreshBtnsState(identify,AppDeviceState.notInstalled);
        console.log("onUpdateError: " + pluginType);
    };
    //安装完成，隐藏按钮
    window.onInstallSuccess = function(identify){
       refreshBtnsState(identify,AppDeviceState.installed);
       console.log("onInstallSuccess: " + pluginType);
    };

    //按钮文字变为“点击安装”
    window.onInstallError = function(pluginType){
        refreshBtnsState(pluginType,AppDeviceState.notInstalled);
        console.log("onInstallError: " + pluginType);
    };
    
    //按钮文字变为“正在安装”
    window.onInstallStart = function(pluginType){
        //refreshBtnsState(pluginType,"正在安装");
        console.log("onInstallStart: " + pluginType);
    };
    
    //按钮文字变为“正在安装”
    window.onDownloadStart = function(pluginType){
        refreshBtnsState(pluginType,"正在安装");
        console.log("onDownloadStart: " + pluginType);
    };

    //按钮文字变为“点击安装”
    window.onDownloadFinish = function(pluginType){
        refreshBtnsState(pluginType,"点击安装");
        console.log("onDownloadFinish: " + pluginType);
    };
    
    //按钮文字变为“点击安装”
    window.onUninstallSuccess = function(pluginType){
        refreshBtnsState(pluginType,"点击安装");
        console.log("onUninstallSuccess: " + pluginType);
    };
    
    //不做操作
    window.onUninstallError = function(pluginType){
        console.log("onUninstallError: " + pluginType);
    };

    //按钮文字变为“点击安装”
    window.onDownloadError = function(pluginType){
        refreshBtnsState(pluginType,"点击安装");
        console.log("onDownloadError: " + pluginType);
    };


    //更新单条文本的文字
    window.updateItemText = function(deviceIdentifier,txt) {
        console.log("deviceIdentifier:" +deviceIdentifier);
        document.getElementById("device_name_" + deviceIdentifier).innerText = txt;
    };


    //界面需要刷新
    window.onActivityResume = function() {
        var deviceItems = document.getElementsByClassName("device_list_item");
        if(deviceItems && deviceItems.length > 0) {
            for(var index = 0; index < deviceItems.length; index++) {
                var deviceItem = deviceItems[index];
                if(deviceItem && deviceItem.refresh) {
                    deviceItem.refresh();
                }
            }
        }
    };


    window.refreshSmartHomeDevicesView = refreshSmartHomeDevicesView;
                                                               //刷新界面                                                          //刷新界面
                                       //这个调用可能无法实现

}


//刷新按钮的状态
function refreshBtnsState(identify,appState) {
    var item = document.getElementById("operation_btn_text_" + identify);
    if(item) {
        item.innerText = appState;
    }
}

/**
 * 刷新列表不保存历史记录
 */
function refreshSmartHomeDevicesView() {
    document.body.innerHTML = "";
    var smartChannelPanelDiv = document.createElement("div");
    smartChannelPanelDiv.id = "smartChannelPanel";
    smartChannelPanelDiv.style.overflow = "hidden";
    document.body.appendChild(smartChannelPanelDiv);
    var result = getResultMessage( exec('SmartHomeBusinessHandler',"getDeviceInfo",[]) );
    var resultJson = eval('(' + result + ')');
    createSmartHomeDevicesView(resultJson.deviceInfos);
}
/**
 * 刷新列表保存历史记录
 */
function refreshSmartHomeDevicesViewWithHistory() {
    var result = getResultMessage( exec('SmartHomeBusinessHandler',"getDeviceInfo",[]) );
    var resultJson = eval('(' + result + ')');
    createSmartHomeDevicesView(resultJson.deviceInfos);
}


function createSmartHomeDevicesView(devicesList) {
    console.log("createSmartHomeDevicesView devicesInfo: " + JSON.stringify(devicesList));
    document.getElementById("smartChannelPanel").innerHTML = "";
    if (!isEmpty(devicesList)) {
        createDevicesListView(devicesList);
    } else {
        createNoDeviceFoundView();
    }
}



function createNoDeviceFoundView() {
    //最外面的包装结果
    var noDeviceResultView = document.createElement("div");
    noDeviceResultView.className = "css_smart_home_device_not_found_div";

    //错误提示图片
    var noDevicePic = document.createElement("img");
    noDevicePic.src = smart_home_device_not_found_pic;
    noDevicePic.className = "css_smart_home_device_not_found_pic";
    noDeviceResultView.appendChild(noDevicePic);

    //错误提示文字
    var noDeviceTip = document.createElement("div");
    noDeviceTip.innerText = "抱歉，未检测到智能家居设备";
    noDeviceTip.className = "css_smart_home_device_not_found_tip";
    noDeviceResultView.appendChild(noDeviceTip);
    
    var rescanButton = createRepeatBtn();
    rescanButton.style.marginTop= 0 * scale + "px";
    noDeviceResultView.appendChild(rescanButton);

    noDeviceResultView.appendChild(createLXSupportDevicesList());
    

    console.log("createNoDeviceFoundView()---->done");
    document.getElementById("smartChannelPanel").appendChild(noDeviceResultView);
}

function addSupportDeviceBtnEventListener(supportDeviceButton) {
    var targetElement = null;
    supportDeviceButton.addEventListener("touchstart", function() {
        event.stopPropagation();
        targetElement = supportDeviceButton;
        moveOverCheck.start(event);
        targetElement.style.backgroundColor = "#e5e5e5";
    }, false);
    supportDeviceButton.addEventListener("touchmove", function() {
        event.stopPropagation();
        if (targetElement) {
            targetElement.style.background = "";
            if (moveOverCheck.check(event)) {
                targetElement = null;
            }
        }
    }, false);
    supportDeviceButton.addEventListener("touchend", function() {
        event.stopPropagation();
        if (targetElement) {
            targetElement.style.background = "";
            window.location.href="./index-lx-support-devices.html";
            console.log("supportDeviceButton is clicked");
        }
        targetElement = null;
    }, false);
}

function createLXSupportDevicesList() {
    //最外面的包装结果
    var lxSupportDeviceDiv = document.createElement("div");
    lxSupportDeviceDiv.className = "css_smart_home_support_device_total";

    //灵犀支持的语音控制设备列表
    var lxSupportTitle = document.createElement("div");
    lxSupportTitle.innerText = "灵犀支持的智能家居设备";
    lxSupportTitle.className = "css_smart_home_support_list_title";
    lxSupportDeviceDiv.appendChild(lxSupportTitle);

    var result = getResultMessage( exec('SmartHomeBusinessHandler',"getSupportedDevices",[]) );
    console.log("result:" + result);
    var resultJson = eval('(' + result + ')');

    var supportDevices = resultJson.supportDevices;

    //支持的设备设备列表
    var supportDeviceList = document.createElement("div");
    supportDeviceList.className = "css_smart_home_support_device_list";
    //supportDeviceList.appendChild(createSupportDeviceItem("康佳智能电视"));
    if(isEmpty(supportDevices)) {
        supportDeviceList.appendChild(createSupportDeviceItem("康佳电视 KKTV X8000系列"));
        supportDeviceList.appendChild(createSupportDeviceItem("长虹电视 A7000系列"));
        supportDeviceList.appendChild(createSupportDeviceItem("海尔电视 U7000/U9000系列"));
        supportDeviceList.appendChild(createSupportDeviceItem("海尔电视 H7000/H9000/MOKA系列"));
        supportDeviceList.appendChild(createSupportDeviceItem("海信电视 770/880/660/610系列"));
        supportDeviceList.appendChild(createSupportDeviceItem("康佳电视 KKTVX8000系列"));
        supportDeviceList.appendChild(createSupportDeviceItem("创维酷开智能电视"));
        supportDeviceList.appendChild(createSupportDeviceItem("迈乐盒子 M6/M8/A200系列"));
        supportDeviceList.appendChild(createSupportDeviceItem("易视腾盒子 E4/E5系列"));
        supportDeviceList.appendChild(createSupportDeviceItem("海美迪盒子 芒果嗨Q系列"));
        supportDeviceList.appendChild(createSupportDeviceItem("讯飞智能音箱"));
        supportDeviceList.appendChild(createSupportDeviceItem("Philips HUE灯"));
        supportDeviceList.appendChild(createSupportDeviceItem("海尔智能空调"));
        supportDeviceList.appendChild(createSupportDeviceItem("海尔智能热水器"));
        supportDeviceList.appendChild(createSupportDeviceItem("BroadLink智能遥控"));
        supportDeviceList.appendChild(createSupportDeviceItem("BroadLink智能插座"));
    } else {
        for (var itemCount = 0; itemCount < supportDevices.length; itemCount++) {
           var supportDeviceItem = supportDevices[itemCount];
            if(supportDeviceItem) {
                var name = supportDeviceItem.name;
                supportDeviceList.appendChild(createSupportDeviceItem(name));
            }
        }
    }



    lxSupportDeviceDiv.appendChild(supportDeviceList);

    console.log("createLXSupportDevicesList()---->done");
    
    var outDiv = document.createElement("div");
    outDiv.className = 'box_content_white';

    outDiv.appendChild(lxSupportDeviceDiv);

    var outDivBox = createBoxDiv("", outDiv);
    outDivBox.style.marginTop = 22 * scale + "px";
   
   return outDivBox;
}

function createSupportDeviceItem(deviceName) {
    //最外面的包装结果
    var lxSupportDeviceItem = document.createElement("div");
    lxSupportDeviceItem.className = "css_smart_home_support_list_item";

    //支持的设备图片
    var itemPic = document.createElement("div");
    itemPic.innerText = "●";
    itemPic.className = "css_smart_home_support_list_item_pic";
    lxSupportDeviceItem.appendChild(itemPic);

    //支持的设备名称
    var itemName = document.createElement("div");
    itemName.innerText = deviceName;
    itemName.className = "css_smart_home_support_list_item_name";
    lxSupportDeviceItem.appendChild(itemName);

    console.log("createSupportDeviceItem()---->done deviceName: " + deviceName);
    return lxSupportDeviceItem;
}


function isEmpty(list) {
    return undefined == list
        || null == list
        || undefined == list.length
        || 0 == list.length;
}



var speakCases = {
  "voicebox":["我想听刘德华的忘情水","随便来几首歌"],
  "smarttv":["打开央视财经频道","汤唯和吴秀波的电影"],
  "philipshue":["开灯","关灯"],
  "airConditioner":["打开空调","关闭空调"],
  "curtain":["打开窗帘", "关闭窗帘"],
  "belkin_socket":[],
  "broadlinkSwitch":["打开咖啡机","关闭咖啡机"],
  "broadlink_aixbox":[],
  "haier_commercial_aircondition":["打开空调","关闭空调"],
  "haier_fridge":[],
  "haier_washer":[],
  "haier_waterheater":["打开热水器","关闭热水器"]
};


var AppDeviceState = {
    "notInstalled":"点击安装",
    "installing":"正在安装",
    "installed":"打开应用"
};



//创建设备列表
////////****************创建设备列表的每一条*****************/////////
function createDeviceItem(deviceItemInfo) {

    var deviceItemContainer = document.createElement("div");
    deviceItemContainer.style.display = "block";
    var deviceType = deviceItemInfo.typeName;
    var deviceIdentifier = deviceItemInfo.identifier;
    var deviceItem = document.createElement("div");
    deviceItem.identifier = deviceIdentifier;
    console.log("deviceItem.identifier = " + deviceIdentifier);
    deviceItem.className = "device_list_item";

    //左边的父容器
    var deviceItemLeft = document.createElement("div");
    deviceItemLeft.className = "device_item_left";

    //图标
    var iconImg = document.createElement("img");
    iconImg.className = "device_item_icon";
    iconImg.src = getIconSrcByType(deviceType);

    var deviceItemDetail = document.createElement("div");
    deviceItemDetail.className = "device_item_detail";

    var name = document.createElement("div");
    name.id = "device_name_" + deviceIdentifier;
    name.className = "device_list_first_line_text";
    name.innerText = deviceItemInfo.alias;

    var demoSpeechCase = document.createElement("div");
    demoSpeechCase.className = "device_list_second_line_text";
    var firstSpeakCase = getSpeechCaseByType(deviceType);
    if(firstSpeakCase){
        demoSpeechCase.innerText = firstSpeakCase;
    }  else {
        demoSpeechCase.innerText = "空白";
        demoSpeechCase.style.visibility = "hidden";
    }

    console.log(getSpeechCaseByType(deviceType));


    if (!(resultDevice && resultDevice.model && resultDevice.model == "MI 2")) {
        // 屏蔽数字被触摸后的显示问题
        demoSpeechCase.addEventListener("click", function () {
        });
    }

    deviceItemDetail.appendChild(name);
    deviceItemDetail.appendChild(demoSpeechCase);

    deviceItemLeft.appendChild(iconImg);
    deviceItemLeft.appendChild(deviceItemDetail);

    var deviceItemRight = document.createElement("div");
    deviceItemRight.className = "device_item_right";

    /**
     * 如果是app插件需要特俗处理
     */
    if(1 == deviceItemInfo.ctrlType) {
        var operationBtnDiv = document.createElement("div");
        operationBtnDiv.className = "css_device_right_operation_btn_div";
        operationBtnDiv.id = "operation_btn_" + deviceIdentifier;
        operationBtnDiv.style.backgroundSize = "100% 100%";
        operationBtnDiv.stateDesc = AppDeviceState.notInstalled;

        // 设置背景图片
        operationBtnDiv.style.backgroundImage = smart_home_btn_bg_nor;

        var textDiv = document.createElement("div");
        textDiv.id = "operation_btn_text_" + deviceIdentifier;
        textDiv.className = "css_device_right_operation_btn_div_text";
        if(deviceItemInfo.isInstalled) {
            textDiv.innerText = AppDeviceState.installed;
        } else {
            textDiv.innerText = AppDeviceState.notInstalled;
        }

        operationBtnDiv.appendChild(textDiv);

        var target;
        var touchSwitchImgMove;

        operationBtnDiv.addEventListener("touchstart", function () {
            console.log('addDiv ontouchstart');
            target = event.target;

            event.stopPropagation();
            moveOverCheck.start(event);
            operationBtnDiv.style.backgroundImage = smart_home_btn_list_bg_press;
        }, false);

        operationBtnDiv.addEventListener("touchmove", function () {
            console.log('addDiv ontouchmove');
            target = event.target;
            event.stopPropagation();
            if (moveOverCheck.check(event)) {

                touchSwitchImgMove = true;
                operationBtnDiv.style.backgroundImage = smart_home_btn_bg_nor;
            }
        }, false);

        operationBtnDiv.addEventListener("touchend", function () {
            console.log('addDiv ontouchend');
            target = event.target;
            if (touchSwitchImgMove == true) {
                touchSwitchImgMove = false;
            } else {
                //如果存在下载地址，调用灵犀下载管理接口
                if(AppDeviceState.notInstalled == textDiv.innerText) {
                    if(deviceItemInfo.downloadUrl) {
                        exec('SmartHomeBusinessHandler',"installSmartHomeDeciceApp",[deviceItemInfo.downloadUrl,deviceIdentifier,deviceItemInfo.alias]);
                    } else {
                        exec("UIComponents", "showToast", ["获取资源地址失败，请重新扫描或稍后重试", 1]);
                        exec('SmartHomeBusinessHandler','requestDeviceApkUrl',[deviceItemInfo.deviceId]);
                    }
                } else if(AppDeviceState.installed == textDiv.innerText) {
                    exec('SmartHomeBusinessHandler',"enterSmartHomeDeciceApp",[deviceItemInfo.deviceId]);
                } else {
                    exec('SmartHomeBusinessHandler','enterDownloadManager',[]);
                }

            }
            event.stopPropagation();
            operationBtnDiv.style.backgroundImage = smart_home_btn_bg_nor;
        }, false);

        deviceItemRight.appendChild(operationBtnDiv);

        deviceItem.refresh = function() {
            //获取插件的状态
            var pluginStateDesc = getResultMessage(exec('SmartHomeBusinessHandler',"getAppStateDesc",[deviceIdentifier]));
            if(pluginStateDesc) {
                textDiv.innerText = pluginStateDesc;
            }
        };
    }

    deviceItem.appendChild(deviceItemLeft);
    deviceItem.appendChild(deviceItemRight);

    var speechCaseDivContainer = document.createElement("div");
    speechCaseDivContainer.className = "css_speech_case_div_container";
    var speechCaseArray = speakCases[deviceType];

    if(speechCaseArray && speechCaseArray.length > 0) {
        for(var index = 0; index < speechCaseArray.length; index++) {
            var speechCase = speechCaseArray[index];
            if(speechCase) {
                var speechCaseDiv = document.createElement("div");
                speechCaseDiv.className = "css_speech_case_div";
                speechCaseDiv.innerText = speechCase;
                console.log("speechCase"+speechCase);
                speechCaseDivContainer.appendChild(speechCaseDiv);
            }
        }
    }

    deviceItemContainer.appendChild(deviceItem);
    deviceItemContainer.appendChild(speechCaseDivContainer);
    speechCaseDivContainer.style.display = "none";

    deviceItem.showOrHideSpeechCases = function() {
        if(speechCaseDivContainer.style.display == "none") {
            speechCaseDivContainer.style.display = "block";
        } else {
            speechCaseDivContainer.style.display = "none";
        }
    };

    return deviceItemContainer;
}

//根据设备类型获取图标
function getIconSrcByType(type) {
    if("voicebox" == type) {
        return ic_subpage_audio;
    } else if("smarttv" == type){
        return ic_subpage_tv;
    } else if("philipshue" == type) {
        return ic_subpage_light;
    } else if("curtain" == type){
        return ic_subpage_curtains;
    } else if("broadlinkSwitch" == type) {
        return ic_subpage_coffee;
    }else if("airConditioner" == type) {
        return ic_subpage_airconditioning;
    } else if("haier_commercial_aircondition" == type) {
        return ic_subpage_airconditioning;
    } else if("haier_waterheater" == type) {
        return ic_subpage_waterheater;
    } else {
        return ic_subpage_checkmark;
    }
}

//根据设备类型获取说法示例
function getSpeechCaseByType(type) {
    console.log("type:" + type);
    var itemSpeakCases = speakCases[type];
    console.log("itemSpeakCases" +itemSpeakCases);
    if(itemSpeakCases && itemSpeakCases.length > 0) {
        return itemSpeakCases[0];
    }
    return "";
}

function createDevicesListView(devicesList) {
    var lastTouchTime = 0; //上一次touch up时间的时间

    var titleAndOperationContainer = document.createElement("div");

    var titleContainer = document.createElement("div");
    titleContainer.style.width = "100%";
    titleContainer.style.backgroundColor = "#ffffff";
    var titleDiv = document.createElement("div");
    titleDiv.className = "css_title_div";
    titleDiv.innerText = "搜索到以下智能家居设备";
//    var subTitleContainer = document.createElement("div");
//    subTitleContainer.style.width = "100%";
//    subTitleContainer.style.backgroundColor = "#ffffff";
//    var subTitleDiv = document.createElement("div");
//    subTitleDiv.className = "css_sub_title_div";
//    subTitleDiv.innerText = "先去安装设备程序,您就可以用语音控制这些设备了";

    titleContainer.appendChild(titleDiv);
//    subTitleContainer.appendChild(subTitleDiv);
    titleAndOperationContainer.appendChild(titleContainer);
//    titleAndOperationContainer.appendChild(subTitleContainer);


    var operationDivContainer = document.createElement("div");
    operationDivContainer.style.display = "block";
    operationDivContainer.style.backgroundColor = "#ffffff";
    operationDivContainer.style.paddingBottom = 10*scale + "px";
    var emptydeviceItem = document.createElement("div");
    emptydeviceItem.className = "device_list_item";

    //左边的父容器
    var emptydeviceItemLeft = document.createElement("div");
    emptydeviceItemLeft.className = "device_item_left";

    var emptydeviceItemRight = document.createElement("div");
    emptydeviceItemRight.className = "device_item_right";


    var operationBtnDiv = document.createElement("div");
    operationBtnDiv.className = "css_device_right_operation_btn_div";
    operationBtnDiv.style.backgroundSize = "100% 100%";

    //????????????????????????????????? 设置背景图片
    operationBtnDiv.style.backgroundImage = smart_home_btn_bg_nor;

    var textDiv = document.createElement("div");
    textDiv.className = "css_device_right_operation_btn_div_text";
    textDiv.innerText = "重试扫描";
    operationBtnDiv.appendChild(textDiv);

    emptydeviceItemRight.appendChild(operationBtnDiv);

    emptydeviceItem.appendChild(emptydeviceItemLeft);
    emptydeviceItem.appendChild(emptydeviceItemRight);
    operationDivContainer.appendChild(emptydeviceItem);
    titleAndOperationContainer.appendChild(operationDivContainer);

    var titleAndOperationContainerOutDivBox = createBoxDiv("", titleAndOperationContainer);
    titleAndOperationContainerOutDivBox.style.marginTop = 10*scale + "px";
    document.getElementById("smartChannelPanel").appendChild(titleAndOperationContainerOutDivBox);

    var target;
    var touchSwitchImgMove;
    operationBtnDiv.addEventListener("touchstart", function () {
        console.log('addDiv ontouchstart');
        target = event.target;
        event.stopPropagation();
        moveOverCheck.start(event);
        operationBtnDiv.style.backgroundImage = smart_home_btn_list_bg_press;
    }, false);

    operationBtnDiv.addEventListener("touchmove", function () {
        console.log('addDiv ontouchmove');
        target = event.target;
        event.stopPropagation();
        if (moveOverCheck.check(event)) {
            touchSwitchImgMove = true;
            operationBtnDiv.style.backgroundImage = smart_home_btn_bg_nor;
        }
    }, false);

    operationBtnDiv.addEventListener("touchend", function () {
        console.log('addDiv ontouchend');
        target = event.target;
        if (touchSwitchImgMove == true) {
            touchSwitchImgMove = false;
        } else {
            //重新扫描
            exec('SmartHomeBusinessHandler',"scanSmartDevices",[]);
        }
        event.stopPropagation();
        operationBtnDiv.style.backgroundImage = smart_home_btn_bg_nor;
    }, false);



    var outDiv = document.createElement("div");
    outDiv.className = 'box_content_white';

    var deviceListInner = document.createElement("div");
    deviceListInner.className = 'device_list_inner';

    console.log("item" + devicesList.length + devicesList.size);

    for (var itemCount = 0; itemCount < devicesList.length; itemCount++) {
        var item = createDeviceItem(devicesList[itemCount]);
        if (itemCount > 0) {
            item.className += " sub_list_divider";
        }
        deviceListInner.appendChild(item);
    }


    outDiv.appendChild(deviceListInner);

    var targetItem = null;
    var intevalId;
    var startTime;
    deviceListInner.addEventListener("touchstart", function () {
        console.log("----------------->> touchstart");
        event.stopPropagation();
        targetItem = getParentOfClass("device_list_item", event.target);
        startTime = new Date();  //get start time
        if (targetItem) {
            intevalId = setTimeout(function() {
                intevalId = null;
//                exec('SmartHomeBusinessHandler',"onLongClick",[targetItem.identifier]);
            }, 1200);
            moveOverCheck.start(event);
            targetItem.style.backgroundColor = "#e5e5e5";
        }
    }, false);
    deviceListInner.addEventListener("touchmove", function () {
        console.log("----------------->> touchmove");
        if (targetItem) {
            targetItem.style.backgroundColor = "";
            if (moveOverCheck.check(event)) {
                targetItem = null;
                clearTimeout(intevalId);
                intevalId = null;
            }
        }
    }, false);
    deviceListInner.addEventListener("touchend", function () {
        console.log("----------------->> touchend");
        event.stopPropagation();
        if (targetItem) {
            if (intevalId != null) {
                clearTimeout(intevalId);
                intevalId = null;
            }
            targetItem.style.backgroundColor = "";
            var endTime = new Date();
            if(endTime - startTime < 1000) {
                targetItem.showOrHideSpeechCases();
            }
        }
    }, false);

    var outDivBox = createBoxDiv("", outDiv);
    outDivBox.style.marginBottom = "0px";
    document.getElementById("smartChannelPanel").appendChild(outDivBox);
//    var repeatBtn = createRepeatBtn(devicesList);
//    document.getElementById("smartChannelPanel").appendChild(repeatBtn);


}

function createRepeatBtn(deviceInfos) {
    var repeatDiv = document.createElement("div");
    repeatDiv.className = "css_add_operation_btn_nor";
    var repeatTxtDiv = document.createElement("div");
    repeatTxtDiv.className = "css_add_operation_btn_txt";
    repeatDiv.appendChild(repeatTxtDiv);

    repeatTxtDiv.innerText = "重新扫描";

    var target;
    var touchSwitchImgMove;
    repeatDiv.addEventListener("touchstart", function () {
        console.log('addDiv ontouchstart');
        target = event.target;
        event.stopPropagation();
        moveOverCheck.start(event);
        repeatDiv.style.backgroundColor = "#31a782";
    }, false);

    repeatDiv.addEventListener("touchmove", function () {
        console.log('addDiv ontouchmove');
        target = event.target;
        event.stopPropagation();
        if (moveOverCheck.check(event)) {
            touchSwitchImgMove = true;
            repeatDiv.style.backgroundColor = "#37ba91";
        }
    }, false);

    repeatDiv.addEventListener("touchend", function () {
        console.log('addDiv ontouchend');
        target = event.target;
        if (touchSwitchImgMove == true) {
            touchSwitchImgMove = false;
        } else {
            //重新扫描
            exec('SmartHomeBusinessHandler',"scanSmartDevices",[])
        }
        event.stopPropagation();
        repeatDiv.style.backgroundColor = "#37ba91";
    }, false);

    if(deviceInfos) {
        var deviceLength = deviceInfos.length;
        var deviceInfo = getResultMessage(exec("SystemComponents","getDeviceInfo",[]));
        var width = deviceInfo.screenWidth;
        var scale = width/320;
        if(5 == deviceLength) {
            repeatDiv.style.marginTop = 50 * scale + "px";
        } else if(6 == deviceLength) {
            repeatDiv.style.marginTop = 22 * scale + "px";
        } else if(7 == deviceLength) {
            repeatDiv.style.marginBottom = 5 * scale + "px";
        }
    }
    return repeatDiv;
}

/**
 * 函数映射表
 */
var functionMap = {
    QuestionView : {
        url : [ "./common/questionView.js" ]
    },
    WidgetCustomerQuestionView : {
        url : [ "./common/questionView.js" ]
    },
    AnswerView : {
        url : [ "./common/dialogView.js" ]
    },
    WidgetViaFlyAnswerView : {
        url : [ "./smarthome/dialogView.js" ]
    },
    WidgetRemindView : {
        url : [ "./schedule/remindView.js" ]
    },
    WidgetRemindConfirmView : {
        url : [ "./schedule/remindConfirm.js" ]
    }
};

console.log("main-translate.js load finish");