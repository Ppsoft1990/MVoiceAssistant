//判断是否为移动终端
var isTouch = ('ontouchstart' in window);

// 屏幕滑动距离检测器
//var moveOverCheck = new checkMoveOver();

/********************初始化工作开始***************************/
// 获取设备信息
// var resultDevice = ifly_getDeviceInfo();
var deviceInfoStr = exec("SystemComponents", "getDeviceInfo", []);
var resultDevice = null;
try {
    resultDevice = getResultMessage(deviceInfoStr);
} catch(e) {
    console.error(e.message);  
}
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

console.log("DEBUG F window.devicePixelRatio = " + window.devicePixelRatio);            
console.log("DEBUG F document.documentElement.clientWidth = " + document.documentElement.clientWidth);
console.log("DEBUG F screen.width = " + screen.width);
console.log("DEBUG F window.innerWidth is = " + window.innerWidth);
console.log("DEBUG F document.body.clientWidth is = " + (null == document.body?0:document.body.clientWidth));

var metaLabel = document.createElement("meta");
metaLabel.setAttribute("id", "viewport");
metaLabel.setAttribute("name", "viewport");

if(resultDevice.wideViewPortMode) {
    metaLabel.setAttribute("content", "width=" + resultDevice.screenWidth);
} else {
    metaLabel.setAttribute("content", "target-densitydpi=device-dpi,width=device-width,initial-scale=1.0,user-scalable=no");
}

var head = document.getElementsByTagName('head').item(0);
head.appendChild(metaLabel);

//设备分辨率
var deviceWidth = resultDevice.screenWidth;

//皮肤包路径
var skinPath = "../skin/theme_new/";
var imgPathPrefix = "../skin/theme_new/dialogModeRes/image/default/";

console.log("deviceWidth is :" + deviceWidth + " ,skinPath is " + skinPath );

// 适配比例，xcss文件解析时需要
var scale = deviceWidth / 320;

// 是否需要延迟加载
var isNeedResetScale = false;
console.log("resultDevice.release = " + resultDevice.release + ", resultDevice.model = " + resultDevice.model);

if(!resultDevice.wideViewPortMode) { //非宽屏模式下使用原来的计算方式
    if (resultDevice.release && resultDevice.release.indexOf("4.0") == 0) {
        isNeedResetScale = true;
    }
    //华为G660，G730手机特殊适配wm
    if (resultDevice.model == "G620-L75" || resultDevice.model == "HUAWEI G660-L075" || resultDevice.model == "HUAWEI G730-L075"
        || resultDevice.model == "ME865" || resultDevice.model == "Nokia_X" || resultDevice.model == "U705T" 
        || resultDevice.model == "ZTE S2005" || resultDevice.model == "ZTE N983" || resultDevice.model == "Lenovo A390t"
        || resultDevice.model == "HUAWEI 7D-503LT" || resultDevice.model == "7D-503LT" 
        || resultDevice.model == "HUAWEI S8-303LT" || resultDevice.model == "HUAWEI S8-303LT") {
       isNeedResetScale = true; 
    }
}

/**
 * Dimen定义区域
 */


/**
 * Image定义区域
 */
//loading
var frame_loading_img = "./common/res/ic_mainpage_loading_1.png";

//卡片置顶切片
var ic_mainpage_cardmanage_top = "./common/res/ic_mainpage_cardmanage_top.png";

//卡片关闭切片
var ic_mainpage_cardmanage_close = "./common/res/ic_mainpage_cardmanage_close.png";

//卡片展开动作按钮
var ic_mainpage_card_menu = "./common/res/ic_mainpage_card_menu.png";
/*
 *不能去掉，因为local_area.js本地卡片在使用该变量定义，更改或者去掉后会引起旧版本的本地卡片出现问题,2128版本卡片资源包由1015更新到1016出现问题  @by jffang 2015-09-18
 */
var ic_mainpage_arrow_down = "./common/res/ic_mainpage_card_menu.png";
//说法示例箭头
var ic_viewsample_arrow_down = "./common/res/ic_viewsample_arrow_down.png";

//说法示例小红点
var ic_viewsample_reddot = "./common/res/ic_viewsample_reddot.png";
