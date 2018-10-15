/**
 * Created by admin on 2014/7/29.
 */

function sendJsonAjaxRequest(options){
	//不需要发送请求，直接返回
	if(!options) {
		return;
	}
	//请求的必要参数和数据缺失，返回失败
    if(!options.data || !options.url){
        console.log("json ajax request data is illegal.");
        if(options.onFail){
            options.onFail();
        }
        return;
    }
    
    var timer = null;
    var xmlHttp;
    if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlHttp = new XMLHttpRequest();
    } else {
        // code for IE6, IE5
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }

    xmlHttp.onreadystatechange = function() {
        if (xmlHttp.readyState == 4) {
        	if (timer) {
                //清除定时器
                clearTimeout(timer);
            };
            if( xmlHttp.status == 200){
                // 转化成string，便于输出log
                var resStr = null;
                //Ajax Json请求数据在不同Android rom上的字段有兼容性问题，可能没有response这个字段
                if(xmlHttp.response){
                	resStr = xmlHttp.response;
                }else{
                	resStr = xmlHttp.responseText;
                }
                console.log('http response json is ' + resStr);

                if(options.onSuccess){
                    options.onSuccess(resStr);
                }
            }else{
                if(options.onFail){
                    options.onFail();
                }
            }
        }else{
            console.log("readyState : " + xmlHttp.readyState);
        }
    };
    console.log("AjaxRequest json url = " + options.url + " ,data = " + options.data);

    xmlHttp.open("POST",options.url,true);
	xmlHttp.setRequestHeader("Content-Type", "text/plain;charset=UTF-8");
    xmlHttp.send(options.data);

    //开启超时检测，默认10s超时
    if(!options.timeout){
        options.timeout = 10000;
    }
    timer = setTimeout(function() {
        console.warn('connection is timeout');
        if (xmlHttp){
            xmlHttp.abort();
        }
    }, options.timeout);
}

function sendJsonXmlRequest(options, requestFlag){
    if(!options || !options.data || !options.url){
        console.log("xml ajax request data is illegal.");
        return;
    }
    var xmlHttp;
    //超时检测定时器
    var timer;

    if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlHttp = new XMLHttpRequest();
    } else {
        // code for IE6, IE5
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }

    xmlHttp.onreadystatechange = function() {
        if (xmlHttp.readyState == 4) {
        	if (timer) {
                //清除定时器
                clearTimeout(timer);
            };
            if(xmlHttp.status == 200){
                // 从服务器的response获得数据
                var xmlDocument = xmlHttp.responseXML;

                // 转化成string，便于输出log
                var resStr = new XMLSerializer().serializeToString(xmlDocument);
                console.log('http response xml res is ' + resStr + "requestFlag is " + requestFlag);

                if(options.onSuccess){
                    options.onSuccess(xmlDocument, requestFlag);
                }
            }else{
                if(options.onFail){
                    options.onFail();
                }
            }
        }else{
            console.log(xmlHttp.readyState + "  " + xmlHttp.status);
        }
    };
    console.log("AjaxRequest xml url = " + options.url);

    xmlHttp.open("POST", options.url, true);
    xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
    if (xmlHttp.overrideMimeType) {//设置MiME类别
        xmlHttp.overrideMimeType("text/xml");
    }

    xmlHttp.send(options.data);

    //开启超时检测，默认10s超时
    if(!options.timeout){
        options.timeout = 10000;
    }
    timer = setTimeout(function() {
        console.warn('connection is timeout');
        if (xmlHttp){
            xmlHttp.abort();
        }
    }, options.timeout);
}

/**
 * 组织json ajax请求的base节点参数
 */
function organizeJsonBaseData(LXBaseInfo){
    //判断返回数据合法性
    if(!LXBaseInfo || !LXBaseInfo.base || !LXBaseInfo.base.aid){
        return {};
    }
    var base =  LXBaseInfo.base;
    if(LXBaseInfo.address){
        base.long = LXBaseInfo.address.long;
        base.lat = LXBaseInfo.address.lat;
        if(LXBaseInfo.address.city){
            base.city = LXBaseInfo.address.city;
        }
        if(LXBaseInfo.address.pos){
            base.pos = LXBaseInfo.address.pos;
        }
        if(LXBaseInfo.address.street){
            base.street = LXBaseInfo.address.street;
        }
    }
    return base;
}

function organizeXmlBaseData(baseJson){
    var base = document.createElement("base");
    if(!baseJson){
        return base;
    }
    //appid
    if(baseJson.aid){
        var appid = document.createElement("appid");
        appid.textContent = baseJson.aid;
        base.appendChild(appid);
    }

    //ver
    if(baseJson.ver) {
        var ver = document.createElement("ver");
        ver.textContent = baseJson.ver;
        base.appendChild(ver);
    }

    //clientVer
    if(baseJson.clientver) {
        var clientVer = document.createElement("clientver");
        clientVer.textContent = baseJson.clientver;
        base.appendChild(clientVer);
    }

    //apn
    if(baseJson.apn) {
        var apn = document.createElement("apn");
        apn.textContent = baseJson.apn;
        base.appendChild(apn);
    }
    //imei
    if(baseJson.imei) {
        var imei = document.createElement("imei");
        imei.textContent = baseJson.imei;
        base.appendChild(imei);
    }
    //imsi
    if(baseJson.imsi) {
        var imsi = document.createElement("imsi");
        imsi.textContent = baseJson.imsi;
        base.appendChild(imsi);
    }
    //token
    if(baseJson.token) {
        var token = document.createElement("token");
        token.textContent = baseJson.token;
        base.appendChild(token);
    }
    //uid
    if(baseJson.uid) {
        var uid = document.createElement("uid");
        uid.textContent = baseJson.uid;
        base.appendChild(uid);
    }
    //df
    if(baseJson.df) {
        var df = document.createElement("df");
        df.textContent = baseJson.df;
        base.appendChild(df);
    }
    //osid
    if(baseJson.soid) {
        var osid = document.createElement("osid");
        osid.textContent = baseJson.osid;
        base.appendChild(osid);
    }
    //ua
    if(baseJson.ua) {
        var ua = document.createElement("ua");
        ua.textContent = baseJson.ua;
        base.appendChild(ua);
    }
    
    //cpu
    if(baseJson.cpu) {
        var cpu = document.createElement("cpu");
        cpu.textContent = baseJson.cpu;
        base.appendChild(cpu);
    }
    
    //androidid
    if(baseJson.androidid) {
        var androidid = document.createElement("androidid");
        androidid.textContent = baseJson.androidid;
        base.appendChild(androidid);
    }
    
    //mac
    if(baseJson.mac) {
        var mac = document.createElement("mac");
        mac.textContent = baseJson.mac;
        base.appendChild(mac);
    }
    
    //cellid
    if(baseJson.cellid) {
        var cellid = document.createElement("cellid");
        cellid.textContent = baseJson.cellid;
        base.appendChild(cellid);
    }
    
    //uuid
    if(baseJson.uuid) {
        var uuid = document.createElement("uuid");
        uuid.textContent = baseJson.uuid;
        base.appendChild(uuid);
    }
    
    return base;
}
function organizeXmlParamData(baseJson){
    var param = document.createElement("param");
    if(!baseJson){
        return param;
    }
    if(baseJson.lat && baseJson.long){
        //vacity
        var vacity = document.createElement("vacity");
        vacity.textContent = baseJson.city;
        param.appendChild(vacity);

        //valat
        var valat = document.createElement("valat");
        valat.textContent = baseJson.lat;
        param.appendChild(valat);

        //valong
        var valong = document.createElement("valong");
        valong.textContent = baseJson.long;
        param.appendChild(valong);

        //vapos
        var vapos = document.createElement("vapos");
        vapos.textContent = baseJson.pos;
        param.appendChild(vapos);
    }
    return param;
}
