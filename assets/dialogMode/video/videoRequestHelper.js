/**
 * 视频业务请求
 *
 * @author qqliu 2014-6-23
 */
define(function() {
    const VIDEO_QUERY_CODE = "8003";
    const VIDEO_QUERY_CMD = "video_query_more";
    //网络请求超时时间
    const TIME_OUT = 10000;
    
    //默认地址使用现网地址
    const SERVER_URL = "http://ydclient.voicecloud.cn/do?c=" + VIDEO_QUERY_CODE;
    
    function requestMore(moreVideoParam, callbackFunc) {
        console.log('requestMoreVideo begin');
        var xml = createXMLStr(moreVideoParam);
        return sendMoreVideoAjaxRequest(xml, callbackFunc);
    }
    
    function sendMoreVideoAjaxRequest(xml, callbackFunc) {
        console.log('sendMoreVideoAjaxRequest begin');

        var xmlHttp = new XMLHttpRequest();
        
        //超时检测定时器 
        var timer; 
        
        //超时处理
        function connectionFail() {
            console.warn('connection is timeout');
            if (xmlHttp){
                xmlHttp.abort();
            }
            callbackFunc(null);
        }

        xmlHttp.onreadystatechange = function() {

            if (xmlHttp.readyState == 4) {
                if (xmlHttp.status == 200) {
                    if (timer) {
                        //清除定时器
                        clearTimeout(timer);
                    };

                    // 从服务器的response获得数据
                    var xmlDocument = xmlHttp.responseXML;

                    // 转化成string，便于输出log
                    var resStr = new XMLSerializer().serializeToString(xmlDocument);
                    console.log('http response is ' + resStr);

                    // 直接传入doc对象，便于解析处理
                    callbackFunc(xmlDocument);
                } else {
                    console.warn('request more video is failed');
                    callbackFunc(null);
                }
            }

        };

        var serverUrlResult = exec("SystemComponents", "getUrl", ["business"]);
        var serverUrl = getResultMessage(serverUrlResult);
        if(undefined == serverUrl || null == serverUrl || "" == serverUrl) {
            serverUrl = SERVER_URL;
            console.log("video query more, use default url");
        } else {
            serverUrl = serverUrl + VIDEO_QUERY_CODE;
        }
        console.log("video query more, url= " + serverUrl);
        xmlHttp.open("POST", serverUrl, true);
        xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
        if (xmlHttp.overrideMimeType) {//设置MiME类别
            xmlHttp.overrideMimeType("text/xml");
        }

        xmlHttp.send(xml);
        
        //开启超时检测
        timer = setTimeout(connectionFail, TIME_OUT);
        
        return 1;
    }
    
    function createXMLStr(moreVideoParam) {
        var head = '<?xml version="1.0" encoding="utf-8"?>';
        
        var requestDocument = document.implementation.createDocument("", "request", null);
        var request = requestDocument.documentElement;

        //cmd
        var cmd = document.createElement("cmd");
        cmd.textContent = VIDEO_QUERY_CMD;
        request.appendChild(cmd);

        //base
        var base = getBaseInfo();
        if(base != undefined && base != null) {
            request.appendChild(base);
        }
        
        //param
        var param = document.createElement("param");
        param.appendChild(createDataSourceParam(moreVideoParam.dataSrcId, moreVideoParam.dataSrcName));
        addSubParam(param, "keyword", moreVideoParam.paramKeyWord);
        addSubParam(param, "category", moreVideoParam.paramCategory);
        addSubParam(param, "page_index", moreVideoParam.pageIndex);
        addSubParam(param, "sort", moreVideoParam.paramSort);
        
        request.appendChild(param);
        
        var xs = new XMLSerializer();
        requestDocumentStr = xs.serializeToString(requestDocument);

        var xmlStr = head + requestDocumentStr;

        console.log('VideoRequest createXMLStr end, xmlStr is ' + xmlStr);
        return xmlStr;
    }
    
    //创建数据源元素
    function createDataSourceParam(dataSourceId, dataSourceName) {
        var dataSourceElement = document.createElement("data_source");
        addSubParam(dataSourceElement, "id", dataSourceId);
        addSubParam(dataSourceElement, "name", dataSourceName);
        return dataSourceElement;
    }

    function addSubParam(param, name, value) {
        if (param && name) {
            var subElement = document.createElement(name);
            subElement.textContent = "";
            if (value) {
                subElement.textContent = value;
            }
            param.appendChild(subElement);
        } else {
            console.log("addSubParam() param or name is null");
        }
    }

    
    //export
    var videoRequestHelper = {};
    videoRequestHelper.requestMore = requestMore;
    return videoRequestHelper;
});