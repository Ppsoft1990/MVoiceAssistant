/**
 *Dimen定义区域，如业务有需要，可以进行相关变量定义 
 */

/**
 *Image 定义区域，定义业务处理需要的图片 
 */

var chat_corner_left = skinPath + "dialogModeRes/image/default/chat_corner_left.png";
var chat_corner_right = skinPath + "dialogModeRes/image/default/chat_corner_right.png";

//业务图标
var channel_goto_sub = skinPath + "dialogModeRes/image/default/ic_list_arrow_left.png";

console.log("app resources load finish");


/**
 * 共用函數
 *
 */

/**
 * 获取当前日期：yyyy-MM-dd hh:mm
 */
function getCurrentDateTime() {
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    var hour = date.getHours();
    var minute = date.getMinutes();

    return year + "-" + formatNumber(month) + "-" + formatNumber(day) + " " + formatNumber(hour) + ":" + formatNumber(minute);
}

/**
 * 数字格式化， 小于10的数字，前面加0
 * @param {Object} number
 */
function formatNumber(number) {
    if (number >= 10) {
        return number;
    }

    return "0" + number;
}

var SimType = {
    China_Mobile : "China_Mobile",
    China_Telecom : "China_Telecom",
    China_Unicom : "China_Unicom",
};

function commonFailHandle(filterResult, xmlDoc) {
    var isSimReady = true;
    // 需要调用java方法获取手机卡是否可用

    var simType = SimType.China_Mobile;
    // 需要调用java方法获取手机卡类型

    if (isSimReady) {// 卡可用
        // 先调用一下鉴权逻辑
        // CmccAuthentication.getInstance(getContext()).startAuthTask(null); String
        if (SimType.China_Mobile == simType) {// 是移动卡，显示发短信按钮
            filterBusinessResult(filterResult, xmlDoc);
            setTimeout(function() {
                addE("WidgetCmBusinessView", JSON.stringify(filterResult));
            }, 150);
        } else if (SimType.China_Telecom == simType) {
            delayedAddAnswerView("马上为您发送免费短信查询，请注意查收", filterResult.focus, 100);
            // 調用java 發短信邏輯
            // TODO
        } else if (SimType.China_Unicom == simType) {
            delayedAddAnswerView("马上为您发送免费短信查询，请注意查收", filterResult.focus, 100);
            // 調用java 發短信邏輯
            // TODO
        } else {

        }
        return;
    }
    delayedAddAnswerView(filterResult.tip, filterResult.focus, 100);

}

function getHandler(filterResult, onSuccess, onFail) {
    var cmbusinessHandler = {};
    cmbusinessHandler.filterBusinessResult = filterResult;
    cmbusinessHandler.onSuccess = onSuccess;
    cmbusinessHandler.onFail = onFail;
    return cmbusinessHandler;
}