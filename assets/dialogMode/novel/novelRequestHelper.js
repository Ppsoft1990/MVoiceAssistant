/**
 * 小说业务请求
 *
 * @author xfchen2 2014-6-20
 */
define(function() {
    const NOVEL_QUERY_CODE = "";

    const NOVEL_QUERY_CMD = "novel_get";
    
    var serverUrl;
    
    function requestMoreNovel(moreNovelParam, callbackFunc) {
        console.log('requestMoreNovel begin');
        serverUrl = moreNovelParam.serverUrl;
        var xml = createXMLStr(moreNovelParam);
        sendMoreNovelAjaxRequest(xml, callbackFunc);
    }
    
    function sendMoreNovelAjaxRequest(xml, callbackFunc) {
        console.log('sendMoreNovelAjaxRequest begin');

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

        var url = serverUrl;
        xmlHttp.open("POST", url, true);
        xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
        if (xmlHttp.overrideMimeType) {//设置MiME类别
            xmlHttp.overrideMimeType("text/xml");
        }

        xmlHttp.send(xml);
        
        //开启超时检测
        timer = setTimeout(connectionFail, 10000);
    }
    
    function createXMLStr(moreNovelParam) {
        var head = '<?xml version="1.0" encoding="utf-8"?>';
        
        var requestDocument = document.implementation.createDocument("http://www.w3.org/1999/xhtml", "request", null);
        var request = requestDocument.documentElement;

        //cmd
        var cmd = document.createElement("cmd");
        cmd.textContent = NOVEL_QUERY_CMD;
        request.appendChild(cmd);

        //base
        var base = getBaseInfo();
        request.appendChild(base);
        
        //param
        var param = document.createElement("param");
        
        var nameEle = document.createElement("name");
        nameEle.textContent = "";
        if(moreNovelParam.name) {
            nameEle.textContent = moreNovelParam.name;
        }
        param.appendChild(nameEle);
        
        var pageIndexEle = document.createElement("page_index");
        pageIndexEle.textContent = "";
        if(moreNovelParam.pageIndex) {
            pageIndexEle.textContent = moreNovelParam.pageIndex;
        }
        param.appendChild(pageIndexEle);
        
        var authorEle = document.createElement("author");
        authorEle.textContent = "";
        if(moreNovelParam.author) {
            authorEle.textContent = moreNovelParam.author;
        }
        param.appendChild(authorEle);
        
        var categoryEle = document.createElement("category");
        categoryEle.textContent = "";
        if(moreNovelParam.category) {
            categoryEle.textContent = moreNovelParam.category;
        }
        param.appendChild(categoryEle);
        
        var popularityEle = document.createElement("popularity");
        popularityEle.textContent = "";
        if(moreNovelParam.popularity) {
            popularityEle.textContent = moreNovelParam.popularity;
        }
        param.appendChild(popularityEle);
        
        //数据源元素
        var dataSourceEle = document.createElement("data_source");
        
        var dataSourceIdEle = document.createElement("id");
        dataSourceIdEle.textContent = "";
        if(moreNovelParam.dataSourceId) {
            dataSourceIdEle.textContent = moreNovelParam.dataSourceId;
        }
        dataSourceEle.appendChild(dataSourceIdEle);
        
        var dataSourceNameEle = document.createElement("name");
        dataSourceNameEle.textContent = "";
        if(moreNovelParam.dataSourceName) {
            dataSourceNameEle.textContent = moreNovelParam.dataSourceName;
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
    var novelRequestHelper = {};
    novelRequestHelper.requestMoreNovel = requestMoreNovel;
    return novelRequestHelper;
});