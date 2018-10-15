/**
 * 音乐业务请求
 *
 * @author xfchen2 2014-6-20
 */
define(function() {
    const MUSIC_QUERY_CODE = "8002";

    const MUSIC_QUERY_CMD = "music_query_more";
    
    function requestMoreMusic(moreMusicParam, callbackFunc) {
        console.log('requestMoreMusic begin');
        var xml = createXMLStr(moreMusicParam);
        sendMoreMusicAjaxRequest(xml, callbackFunc);
    }
    
    function sendMoreMusicAjaxRequest(xml, callbackFunc) {
        console.log('sendMoreMusicAjaxRequest begin');

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
            if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                
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
            } else if (xmlHttp.readyState == 4 && xmlHttp.status != 200) {
                callbackFunc(null);
            }
        };
        var url = getServerUrl() + MUSIC_QUERY_CODE;
        console.log("url = " + url);
        xmlHttp.open("POST", url, true);
        xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
        if (xmlHttp.overrideMimeType) {//设置MiME类别
            xmlHttp.overrideMimeType("text/xml");
        }

        xmlHttp.send(xml);
        
        //开启超时检测
        timer = setTimeout(connectionFail, 10000);
    }
    
    function createXMLStr(moreMusicParam) {
        var head = '<?xml version="1.0" encoding="utf-8"?>';
        
        var requestDocument = document.implementation.createDocument("http://www.w3.org/1999/xhtml", "request", null);
        var request = requestDocument.documentElement;

        //cmd
        var cmd = document.createElement("cmd");
        cmd.textContent = MUSIC_QUERY_CMD;
        request.appendChild(cmd);

        //base
        var base = getBaseInfo();
        request.appendChild(base);
        
        //param
        var param = document.createElement("param");
        
        var pageIndexEle = document.createElement("page_index");
        pageIndexEle.textContent = "";
        if(moreMusicParam.pageIndex) {
            pageIndexEle.textContent = moreMusicParam.pageIndex;
        }
        param.appendChild(pageIndexEle);
        
        var cacheIdEle = document.createElement("cache_id");
        cacheIdEle.textContent = "";
        if(moreMusicParam.cacheId) {
            cacheIdEle.textContent = moreMusicParam.cacheId;
        }
        param.appendChild(cacheIdEle);
        
        //数据源元素
        var dataSourceEle = document.createElement("data_source");
        
        var dataSourceIdEle = document.createElement("id");
        dataSourceIdEle.textContent = "";
        if(moreMusicParam.dataSourceId) {
            dataSourceIdEle.textContent = moreMusicParam.dataSourceId;
        }
        dataSourceEle.appendChild(dataSourceIdEle);
        
        var dataSourceNameEle = document.createElement("name");
        dataSourceNameEle.textContent = "";
        if(moreMusicParam.dataSourceName) {
            dataSourceNameEle.textContent = moreMusicParam.dataSourceName;
        }
        dataSourceEle.appendChild(dataSourceNameEle);
        param.appendChild(dataSourceEle);
        
        request.appendChild(param);
        
        var xs = new XMLSerializer();
        requestDocumentStr = xs.serializeToString(requestDocument);

        var xmlStr = head + requestDocumentStr;

        console.log('createXMLStr end, xmlStr is ' + xmlStr);
        return xmlStr;
    }
    
    //export
    var musicRequestHelper = {};
    musicRequestHelper.requestMoreMusic = requestMoreMusic;
    return musicRequestHelper;
    
});