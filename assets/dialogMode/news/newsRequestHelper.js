/**
 * 新闻业务请求
 *
 * @author mdhuang 2014-1-20
 */
define(function() {    
    const NEWS_QUERY_CLIENT = "1009";

    //网络请求超时时间
    const TIME_OUT = 10000;

    const NEWS_GET = "news_get";
    /**
     * 天翼讯飞数据源id
     */
    const VIAFLY_NEWS_DATA_SOURCE_ID = "2001";

    /**
     * sohu数据源id
     */
    const SOHU_NEWS_DATA_SOURCE_ID = "2002";

    function requestNews(filterResult,requestPageindex,callbackFunc,view) {

        var xml = createXMLStr(filterResult,requestPageindex);
        console.log("requestNews:    " + xml);
        sendNewsAjaxRequest(xml, callbackFunc,filterResult.serverUrl,filterResult,view);
    }

    function sendNewsAjaxRequest(xml, callbackFunc,serverUrl,filterResult,view) {
        console.log('sendWeatherAjaxRequest begin');

        var xmlHttp = new XMLHttpRequest();
        
        //超时检测定时器 
        var timer; 
        
        //超时处理
        function connectionFail() {
            console.warn('connection is timeout');
            if (xmlHttp){
                xmlHttp.abort();
            }
            callbackFunc(null,view);
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
                callbackFunc(xmlDocument,view);
            }
        };
        xmlHttp.open("POST", serverUrl, true);
        xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
        if (xmlHttp.overrideMimeType) {//设置MiME类别
            xmlHttp.overrideMimeType("text/xml");
        }

        xmlHttp.send(xml);
        
        //开启超时检测
        timer = setTimeout(connectionFail, TIME_OUT);
    }

    function createXMLStr(filterResult,requestPageindex) {
        var head = '<?xml version="1.0" encoding="utf-8"?>';

        var requestDocument = document.implementation.createDocument("", "request", null);
        var request = requestDocument.documentElement;

        //cmd
        var cmd = document.createElement("cmd");
        cmd.textContent = NEWS_GET;
        request.appendChild(cmd);

        //base
        var base = getBaseInfo();
        request.appendChild(base);
        //param
        var param = document.createElement("param");

        var media = filterResult.media;
        var category = filterResult.categoryName;
        var loc = filterResult.location;
        var keyword = filterResult.keyword;
        var dateTime = filterResult.datetime;
        var categoryId = filterResult.categoryId;

        // add param.data_source


        if (filterResult.data_source) {
            var sourceNode = document.createElement("data_source");
            var data_id = null;
            var data_name = null;
            data_id = filterResult.data_source.id;
            data_name = filterResult.data_source.name;
            if (data_id) {
                var idElement = document.createElement("id");
                idElement.textContent = data_id;
                sourceNode.appendChild(idElement);
            }
            if (data_name) {
                var nameElement = document.createElement("name");
                nameElement.textContent = data_name;
                sourceNode.appendChild(nameElement);
            }
            param.appendChild(sourceNode);

        }

        if (media) {
            var mediaElement = document.createElement("media");
            mediaElement.textContent = media;
            param.appendChild(mediaElement);
        }
        if (category) {
            var categoryElement = document.createElement("category");
            categoryElement.textContent = category;
            param.appendChild(categoryElement);
        }
        if (loc) {
            var locElement = document.createElement("loc");
            locElement.textContent = loc;
            param.appendChild(locElement);
        }
        if (keyword) {
            var keywordElement = document.createElement("keyword");
            keywordElement.textContent = keyword;
            param.appendChild(keywordElement);
        }
        if (dateTime) {
            var dateTimeElement = document.createElement("dateTime");
            dateTimeElement.textContent = dateTime;
            param.appendChild(dateTimeElement);
        }
        if(categoryId) {
            var categoryIdElement = document.createElement("category_id");
            categoryIdElement.textContent = categoryId;
            param.appendChild(categoryIdElement);
        }
        if (data_id == VIAFLY_NEWS_DATA_SOURCE_ID) {
            var data_source =  filterResult.data_source;
            if(data_source) {
                if(data_source.newsId) {
                    var newsIdElement = document.createElement("newsId");
                    newsIdElement.textContent = data_source.newsId;
                    param.appendChild(newsIdElement);
                }
                if(data_source.remains) {
                    var remainsElement = document.createElement("remains");
                    newsIdElement.textContent = data_source.remains;
                    param.appendChild(remainsElement);
                }
                if(data_source.categoryId) {
                    var categoryIdElement = document.createElement("remains");
                    categoryIdElement.textContent = data_source.category_id;
                    param.appendChild(categoryIdElement);
                }
            }
        //} else if (SOHU_NEWS_DATA_SOURCE_ID == data_id) {
        } else {
            var data_source =  filterResult.data_source;
            var pageIndexElement = document.createElement("page_index");
            if (requestPageindex) {
                pageIndexElement.textContent = requestPageindex;
            } else {
                pageIndexElement.textContent = data_source.page_index;
            }
            param.appendChild(pageIndexElement);

            if(data_source.page_total) {
                var pageTotalElement = document.createElement("page_total");
                pageTotalElement.textContent = data_source.page_total;
                param.appendChild(pageTotalElement);
            }
            if(data_source.record_count) {
                var recordCountElement = document.createElement("record_count");
                recordCountElement.textContent = data_source.record_count;
                param.appendChild(recordCountElement);
            }

        }


        request.appendChild(param);

        var xs = new XMLSerializer();
        requestDocumentStr = xs.serializeToString(requestDocument);

        var xmlStr = head + requestDocumentStr;

        console.log('createXMLStr end, xmlStr is ' + xmlStr);
        return xmlStr;
    }

    //export
    var newsRequestHelper = {};
    newsRequestHelper.requestNews = requestNews;
    return newsRequestHelper;
});
