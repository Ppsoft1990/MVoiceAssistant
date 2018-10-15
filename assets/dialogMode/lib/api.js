//是否为灵犀客户端
var isLingXiClient = true;

////根据webview的userAgent来判断，灵犀webview在userAgent中添加了特殊标识
//if (navigator.userAgent) {
//	if (navigator.userAgent.indexOf('ifly_lingxi') > -1) {
//		//灵犀客户端
//		isLingXiClient = true;
//	} else {
//		//webapp
//		isLingXiClient = false;
//	}
//}
	
//获取设备信息
ifly_getDeviceInfo = function () {
    var resultJson = exec('com.iflytek.mmp.components.DeviceInfoComponents', 'getDeviceInfo', []);
    var device = getResultMessage(resultJson);
    return device;
};
//获取环境信息(皮肤路径、版本标识、cpu信息)
ifly_getEnvironmentInfo = function () {
    var a = exec("WidgetMMPContainerComponents", "getEnvironmentInfo", []);
    return getResultMessage(a);
};

//与接口相关的函数
var getResultCode = function (jsonStr) {
    var jsonObj = convertType(jsonStr);
    return jsonObj.code;
};
var getResultMessage = function (jsonStr) {
    var jsonObj = convertType(jsonStr);
    return jsonObj.message;
};
var convertType = function (jsonStr) {
    var jsonObj = eval("(" + jsonStr + ")");
    return jsonObj;
};
//调用引擎的java接口
var exec = function(service, action, args) {
	if (isLingXiClient) {
		var result = prompt("iflytek:" + stringify([ service, action ]), stringify(args));
	} else {
		var result = "{code:'0',message:''}";
	}
    return result;
};
//将[xxx,yyy,...]组装成json数组
var stringify = function(args) {
    if( typeof JSON === "undefined") {
        var s = "[";
        var i, type, start, name, nameType, a;
        for( i = 0; i < args.length; i++) {
            if(args[i] !== null) {
                if(i > 0) {
                    s = s + ",";
                }
                type = typeof args[i];
                if((type === "number") || (type === "boolean")) {
                    s = s + args[i];
                } else if(args[i] instanceof Array) {
                    s = s + "[" + args[i] + "]";
                } else if(args[i] instanceof Object) {
                    start = true;
                    s = s + '{';
                    for(name in args[i]) {
                        if(args[i][name] !== null) {
                            if(!start) {
                                s = s + ',';
                            }
                            s = s + '"' + name + '":';
                            nameType = typeof args[i][name];
                            if((nameType === "number") || (nameType === "boolean")) {
                                s = s + args[i][name];
                            } else if(( typeof args[i][name]) === 'function') {
                                // don't copy the functions
                                s = s + '""';
                            } else if(args[i][name] instanceof Object) {
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
console.log("js file load -- api.js load finish");
