/**
 * Created by admin on 14-2-22.
 */
define(function(){
    var localTest = '<?xml version="1.0" encoding="utf-8" ?><biz_result><status><![CDATA[success]]></status><error_code><![CDATA[000000]]></error_code><time_stamp date="2014-03-04" time="11:58:17"/><nlp_version><![CDATA[1.0.0.7830]]></nlp_version><desc><![CDATA[成功]]></desc><rawtext><![CDATA[火车站附近的肯德基。]]></rawtext><result><focus>restaurant</focus><action><operation>query</operation><tip>正在搜索火车站附近的肯德基</tip><speech>[x1][k2]正在搜索火车站附近的肯德基</speech></action><object><data_type>data</data_type><loc_judgement>demand</loc_judgement><page_index>1</page_index><page_total>1</page_total><record_count>1</record_count><data_source><id>11001</id><name>大众点评网</name></data_source><city><id>0</id><name>合肥</name></city><category><id>0</id><name>美食</name></category><keyword>火车站肯德基</keyword><server_url>http://ydclient.voicecloud.cn/do?c=</server_url><more_url>http://m.dianping.com/shoplist/110/r/0/c/10/s/s_-1/kw/火车站肯德基/</more_url><alternative_source><name>去12580查一查</name><url>http://m.12580.com/iflytek/search.do?cityid=21010000&amp;query=%E7%81%AB%E8%BD%A6%E7%AB%99%E8%82%AF%E5%BE%B7%E5%9F%BA&amp;tradeId=1001&amp;css=1</url></alternative_source><shop_list><shop><id>5154969</id><name>肯德基</name><branch_name>火车站店</branch_name><phone_numbers><number>0551-62138220</number></phone_numbers><address>瑶海区站前路1号火车站东商城1楼</address><latitude>31.883062</latitude><longitude>117.316925</longitude><url>http://ditu.google.cn/maps?hl=zh-CN&amp;q=%3F%3F+%3F%3F%3F%3F%3F%3F1%3F%3F%3F%3F%3F%3F%3F1%3F+%3F%3F%3F</url><category>快餐简餐</category><avg_price>27</avg_price><score>70.0</score><score_text>口味:1 环境:2 服务:2</score_text><distance>17310.0</distance><pic>http://i3.dpfile.com/pc/293fdb30eec4c6fe544ac46a4d770f14(278x200)/thumb.jpg</pic><dish_tags></dish_tags><shop_tags></shop_tags><shop_url>http://dpurl.cn/p/3-CSkkPqND</shop_url></shop></shop_list></object></result></biz_result>';
    var localTest = '<?xml version="1.0" encoding="utf-8" ?><biz_result><status><![CDATA[success]]></status><error_code><![CDATA[000000]]></error_code><time_stamp date="2014-03-06" time="15:16:34"/><nlp_version><![CDATA[1.0.0.7830]]></nlp_version><desc><![CDATA[成功]]></desc><rawtext><![CDATA[火车站附近的烧烤。]]></rawtext><result><focus>restaurant</focus><action><operation>query</operation><tip>对不起，没有找到合适的结果，我还是帮您搜索一下吧。</tip><speech>[x1][k2]对不起，没有找到合适的结果，我还是帮您搜索一下吧。</speech></action><object><data_type>data</data_type><loc_judgement>demand</loc_judgement><data_source><id>11001</id><name>大众点评网</name></data_source><city><id>0</id><name>合肥</name></city><category><id>0</id><name>烧烤</name></category><keyword>火车站</keyword><server_url>http://ydclient.voicecloud.cn/do?c=</server_url><more_url>http://m.dianping.com/shoplist/110/r/0/c/508/s/s_-1/kw/火车站/</more_url><alternative_source><name>上网搜索</name><url>http://m.baidu.com/s?word=火车站附近的烧烤。</url></alternative_source><shop_list/></object></result></biz_result>';
    /**
     * 文本类别
     */
    const NEWS_TEXT_TYPE = "text";

    /**
     * 音频新闻类别
     */
    const NEWS_AUDIO_TYPE = "audio";

    var parser = new DOMParser();
    var xmlDocument = parser.parseFromString(localTest,"text/xml");
    var FilterName = {
        object:"object",
        id:"id",
        name:"name",
        data_source:"data_source",
        serverUrl:"server_url",
        wapUrl:"wap_url",
        param:"param",
        media:"media",
        news:"news",
        reminderWap:"reminder_wap",
        category:"category",
        location:"loc",
        keyword:"keyword",
        datetime:"datetime",
        date:"date",
        url:"url",
        text:"text",
        pkgName:"pkg_name",
        className:"class_name",
        type:"type",
        item:"item",
        title:"title",
        newsId:"newsid",
        markedTitle:"marked_title",
        content:"content",
        markedContent:"marked_content",
        source:"source",
        htmlContent:"html_content",
        pic_url:"pic_url",
        news_url:"news_url",
        dataSourceId:"id",
        dataSourceName:"name",
        remains:"remains",
        categoryId:"category_id",
        category:"category",
        page_index:"page_index",
        page_total:"page_total",
        record_count:"record_count",
        description:"description"
    };

    //天翼讯飞数据源id
    var VIAFLY_NEWS_DATA_SOURCE_ID = "2001";

    //sohu数据源id
    var SOHU_NEWS_DATA_SOURCE_ID = "2002";

    var serverUrL; //请求地址只有在语音解析时会存在，所以保留
    var wapUrl; // 客户端新版本默认展示wap_url连接 如果服务端返回wap_url为空 则除天翼讯飞信源外，其他信源均按搜狐信源协议解析数据以及进行二次请求 modify by chaoqian 2016-5-20

    var categoryId;
    var categoryName;

    function filterBusinessResult(filterResult, xmlDoc,newsIdArray){
        console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);

        var objectElements = xmlDoc.getElementsByTagName(FilterName.object);
        if(isNotEmpty(objectElements)){
            var objectElement = objectElements[0];

            //解析wap_url
            filterResult.wapUrl = getSubElementValueByTag(objectElement, FilterName.wapUrl);
            if (filterResult.wapUrl){
                wapUrl = filterResult.wapUrl;
            }
            console.log("filterBusinessResult wapUrl: " + wapUrl );

            //解析serverUrl
            filterResult.serverUrl = getSubElementValueByTag(objectElement,FilterName.serverUrl);
            if(filterResult.serverUrl) {
                serverUrL = filterResult.serverUrl;
            }
            if(!filterResult.serverUrl && serverUrL) {
                filterResult.serverUrl = serverUrL;
            }
            //解析param
            var paramElements = objectElement.getElementsByTagName(FilterName.param);
            if(isNotEmpty(paramElements)) {
                var paramElement = paramElements[0];
                filterResult.media = getSubElementValueByTag(paramElement,FilterName.media);
                filterResult.category = getSubElementValueByTag(paramElement,FilterName.category);
                filterResult.location = getSubElementValueByTag(paramElement,FilterName.location);
                filterResult.keyword = getSubElementValueByTag(paramElement,FilterName.keyword);
                var datetimeElements = paramElement.getElementsByTagName(FilterName.datetime);
                if(isNotEmpty(datetimeElements)) {
                    var datetimeElement = datetimeElements[0];
                    var dateElements = datetimeElement.attributes;
                    if(isNotEmpty(dateElements)) {
                        if(dateElements[0] && dateElements[0].firstChild) {
                            filterResult.datetime = dateElements[0].firstChild.nodeValue;
                        }
                    }
                }
                categoryName = getSubElementValueByTag(paramElement,FilterName.category);
                categoryId = getSubElementValueByTag(paramElement,FilterName.categoryId);
                console.log("categoryName: " + categoryName +";categoryId" + categoryId);
            }
            //解析搜狐信源的连接
            var remindWapElements = objectElement.getElementsByTagName(FilterName.reminderWap);
            if(isNotEmpty(remindWapElements)) {
                var remindWapElement = remindWapElements[0];
                var remindWap = {};
                remindWap.url = getSubElementValueByTag(remindWapElement,FilterName.url);
                remindWap.text = getSubElementValueByTag(remindWapElement,FilterName.text);
                remindWap.pkgName = getSubElementValueByTag(remindWapElement,FilterName.pkgName);
                remindWap.className = getSubElementValueByTag(remindWapElement,FilterName.className);
                filterResult.reminderWap = remindWap;
            }

            //解析data_source
            var data_sourceElements = objectElement.getElementsByTagName(FilterName.data_source);
            if(isNotEmpty(data_sourceElements)){
                var data_sourceElement = data_sourceElements[0];
                filterResult.dataSrcId = getSubElementValueByTag(data_sourceElement,FilterName.id);
                filterResult.dataSrcName = getSubElementValueByTag(data_sourceElement,FilterName.name);
            }

            //解析param中的特定参数
            filterNewsDataSource(filterResult,paramElements,data_sourceElements);

            //解析新闻分类信息
            filterResult.categoryId = categoryId;
            filterResult.categoryName = categoryName;

            var newsElements = objectElement.getElementsByTagName(FilterName.news);
            var newsObjects = {};
            if(isNotEmpty(newsElements)){
                var newsElement = newsElements[0];
                if(newsElement) {
                    var type = newsElement.getAttribute("type");
                    if(NEWS_TEXT_TYPE == type) {
                        filterTextNews(newsElement,filterResult,newsIdArray);
                    } else if(NEWS_AUDIO_TYPE == type) {
                        filterAudioNews(newsElement,filterResult);
                    }

                }
            }



        }
    }

    //解析文本类型的新闻
    function filterTextNews(newsElement,filterResult,newsIdArray) {
        if(newsElement) {
            filterResult.sohuNewsItems = [];
            var newsItemElements = newsElement.getElementsByTagName(FilterName.item);
            if(newsItemElements && newsItemElements.length > 0) {

                for(var i = 0; i < newsItemElements.length;i++) {
                    var newsItemElement = newsItemElements[i];
                    if(newsItemElement) {
                        var newsItem = {};
                        newsItem.newsId = getSubElementValueByTag(newsItemElement,FilterName.newsId);
                        if(newsIdArray) {
                            if(newsIdArray.contains(newsItem.newsId)) {
                                continue;
                            }
                        }

                        newsItem.newsTitle = getSubElementValueByTag(newsItemElement,FilterName.title);
                        newsItem.markedTitle = getSubElementValueByTag(newsItemElement,FilterName.markedTitle);
                        newsItem.content = getSubElementValueByTag(newsItemElement,FilterName.content);
                        newsItem.markedContent = getSubElementValueByTag(newsItemElement,FilterName.markedContent);
                        newsItem.source = getSubElementValueByTag(newsItemElement,FilterName.source);
                        newsItem.htmlContent = getSubElementValueByTag(newsItemElement,FilterName.htmlContent);
                        newsItem.newsPic = getSubElementValueByTag(newsItemElement,FilterName.pic_url);
                        newsItem.newsBrief = getSubElementValueByTag(newsItemElement,FilterName.description);
                        newsItem.news_url = getSubElementValueByTag(newsItemElement,FilterName.news_url);
                        newsItem.newsType = NEWS_TEXT_TYPE;

                        //如果新闻信源返回新闻描述为空 则用空字符代替 防止页面展示不正确
                        if (!newsItem.newsBrief){
                            console.log("newsItem.newsBrief is null "  );
                            newsItem.newsBrief = " ";
                        }
                        //id和标题不为空时才展示
                        if(newsItem.newsId &&  newsItem.newsTitle) {
                            filterResult.sohuNewsItems.push(newsItem);
                        }
                    }
                    filterResult.newsListLength = filterResult.sohuNewsItems.length;
                }
            }
        }
    }




    //解析音频类型的新闻
    function filterAudioNews(newsElement,filterResult) {
        if(newsElement) {
            filterResult.newsItems = [];
            var newsItemElements = newsElement.getElementsByTagName(FilterName.item);
            if(newsItemElements && newsItemElements.length > 0) {
                for(var i = 0; i < newsItemElements.length;i++) {
                    var newsItemElement = newsItemElements[i];
                    if(newsItemElement) {
                        var newsItem = {};
                        var titleElements = newsItemElement.getElementsByTagName(FilterName.title);
                        if(titleElements && titleElements.length > 0){
                            newsItem.title = titleElements[0].firstChild.nodeValue;
                        }
                        var newsUrlElements =newsItemElement.getElementsByTagName(FilterName.url);
                        if(newsUrlElements && newsUrlElements.length > 0){
                            newsItem.news_url = newsUrlElements[0].firstChild.nodeValue;
                        }
                        newsItem.newsType = NEWS_AUDIO_TYPE;
                        filterResult.newsItems.push(newsItem);
                    }
                }
            }
        }
    }


    //解析新闻的数据源,包括当前页码和总页数
    function filterNewsDataSource(filterResult,paramElements,newsDataSourceElements) {
        if(isNotEmpty(newsDataSourceElements)) {
            var newsDataSourceElement = newsDataSourceElements[0];
            if(!newsDataSourceElement) {
                return;
            }
            var idElements = newsDataSourceElement.getElementsByTagName(FilterName.dataSourceId);
            var nameElements = newsDataSourceElement.getElementsByTagName(FilterName.dataSourceName);
            if(isNotEmpty(idElements) &&  isNotEmpty(nameElements)) {
                var dataSource = {};
                dataSource.id = getSubElementValueByTag(newsDataSourceElement,FilterName.dataSourceId);
                dataSource.name = getSubElementValueByTag(newsDataSourceElement,FilterName.dataSourceName);
                if(isNotEmpty(paramElements)) {
                    var paramElement = paramElements[0];
                    if(paramElement) {
                        if(VIAFLY_NEWS_DATA_SOURCE_ID == dataSource.id) {
                            dataSource.newsId = getSubElementValueByTag(paramElement,FilterName.newsId);
                            dataSource.remains = getSubElementValueByTag(paramElement,FilterName.remains);
                            dataSource.categoryId = getSubElementValueByTag(paramElement,FilterName.categoryId);
                        //} else if(SOHU_NEWS_DATA_SOURCE_ID == dataSource.id) {
                        } else {
                            console.log("dataSource.id: " + dataSource.id );
                            var page_index = getSubElementValueByTag(paramElement,FilterName.page_index);
                            if(page_index) {
                                dataSource.page_index = Number(page_index);
                            }
                            var page_total = getSubElementValueByTag(paramElement,FilterName.page_total);
                            if(page_total) {
                                dataSource.page_total = Number(page_total);
                            }
                            var record_count = getSubElementValueByTag(paramElement,FilterName.record_count);
                            if(record_count) {
                                dataSource.record_count = Number(record_count);
                            }
                            var category_id = getSubElementValueByTag(paramElement,FilterName.category_id);
                            if(category_id) {
                                dataSource.category_id = Number(category_id);
                            } else {
                                dataSource.category_id = categoryId;
                                dataSource.categoryName = categoryName;
                            }
                        }
                    }
                }
                filterResult.data_source = dataSource;
            }
        }
    }


    //新闻二次请求的结果处理类
    function handlerNewsResult(xmlDoc) {
        if (!xmlDoc) {
            addAnswerView("网络连接超时，请稍后重试");
            return;
        }
        var filterResult = {};
        filterCommonResult(filterResult, xmlDoc);
        if ("success" === filterResult.status) {
            filterBusinessResult(filterResult, xmlDoc);
            if(isResultLegal(filterResult)) {
            	filterResult.isTextSearchResult = isTextSearchResult;
                addE("WidgetSohuNewsView", JSON.stringify(filterResult));
            } else  {
                addAnswerView("网络连接超时，请稍后重试");
            }
        } else {
            addAnswerView("网络连接超时，请稍后重试");
        }

    }



    //解析公共节点
    function filterCommonResult(filterResult, xmlDoc) {
        console.log('filterCommonResult begin, xmlDoc is ' + xmlDoc);
        filterResult.status = xmlDoc.getElementsByTagName('status')[0].firstChild.nodeValue;
        filterResult.error_code = xmlDoc.getElementsByTagName('error_code')[0].firstChild.nodeValue;

        if (xmlDoc.getElementsByTagName('time_stamp')[0]) {
            filterResult.date = xmlDoc.getElementsByTagName('time_stamp')[0].getAttribute('date');
            filterResult.time = xmlDoc.getElementsByTagName('time_stamp')[0].getAttribute('time');
        }
        if (xmlDoc.getElementsByTagName('rawtext')[0]) {
            filterResult.rawtext = xmlDoc.getElementsByTagName('rawtext')[0].firstChild.nodeValue;
        }
        if (xmlDoc.getElementsByTagName('nlp_version')[0]) {
            filterResult.nlp_version = xmlDoc.getElementsByTagName('nlp_version')[0].firstChild.nodeValue;
        }
        if (xmlDoc.getElementsByTagName('tip')[0]) {
            filterResult.tip = xmlDoc.getElementsByTagName('tip')[0].firstChild.nodeValue;
        }
        if (xmlDoc.getElementsByTagName('speech')[0]) {
            filterResult.speech = xmlDoc.getElementsByTagName('speech')[0].firstChild.nodeValue;
        }
        if (xmlDoc.getElementsByTagName('focus')[0]) {
            filterResult.focus = xmlDoc.getElementsByTagName('focus')[0].firstChild.nodeValue;
        }
        if (xmlDoc.getElementsByTagName('operation')[0]) {
            filterResult.operation = xmlDoc.getElementsByTagName('operation')[0].firstChild.nodeValue;
        }
        if (xmlDoc.getElementsByTagName('desc')[0] && xmlDoc.getElementsByTagName('desc')[0].firstChild) {
            filterResult.desc = xmlDoc.getElementsByTagName('desc')[0].firstChild.nodeValue;
        }
    }

    //判断新闻二次请求结果是否合法
    function isResultLegal(filterResult) {
        if(!filterResult) {
            return false;
        }
        var data_source = filterResult.data_source;
        if(!data_source) {
            return false;
        } else {
            if(!data_source.page_index || !data_source.page_total) {
                return false;
            }
        }

        if(!isNotEmpty(filterResult.sohuNewsItems)) {
            return false;
        }
        return true;

    }

	var isTextSearchResult;

    function onSuccess(filterResult, xmlDoc){
        filterBusinessResult(filterResult, xmlDoc);
		
//      delayedAddAnswerView(filterResult.tip, filterResult.focus, 100);
        setTimeout(function() {
            var data_source_id;
            if(filterResult.data_source) {
                data_source_id = filterResult.data_source.id;
            }
            if(filterResult.wapUrl){
                console.log('onSuccess, open wap_url ' + filterResult.wapUrl);
                //exec('UIComponents',"openBrowser",["",filterResult.wapUrl]);

                exec("UIComponents", "addAnswerMessage", [filterResult.tip, false]);

                exec("UIComponents", "addCommonResultMessage", [filterResult.rawtext, filterResult.wapUrl]);

                window.location.href = filterResult.wapUrl;
            }else{
                console.log('onSuccess,  wap_url is empty ' );
                console.log('onSuccess, data_source_id ' + data_source_id);
                if(VIAFLY_NEWS_DATA_SOURCE_ID == data_source_id) {
                    console.log('addE WidgetNewsView' + JSON.stringify(filterResult));
                    addE("WidgetNewsView", JSON.stringify(filterResult));
                //} else if(SOHU_NEWS_DATA_SOURCE_ID == data_source_id) {
                } else {
                    //其他信源均按搜狐信源协议进行二次请求
                    isTextSearchResult = filterResult.isTextSearchResult;
                    //如果是搜狐信源需要直接进行二次请求
                    console.log('addE WidgetSohuNewsView' + JSON.stringify(filterResult));
                    require(['./news/newsRequestHelper.js'], function(newsRequestHelper) {
                        if(1 == filterResult.data_source.page_index) {
                            newsRequestHelper.requestNews(filterResult,"",handlerNewsResult);
                        }
                    });
                }
            }
        }, 150);
    }

    /***
     * 返回某个节点的子节点标签内容
     * @param {Object} parentElement
     * @param {Object} tagName
     */
    function getSubElementValueByTag(parentElement, tagName) {
        if (parentElement && tagName) {
            var subElements = parentElement.getElementsByTagName(tagName);
            if (isNotEmpty(subElements) && subElements[0].firstChild) {
                return subElements[0].firstChild.nodeValue;
            }
        }
        return null;
    }

    function isNotEmpty(elements) {
        return elements && elements.length > 0;
    }

    //export
    var newsRecognizeFilter = {};
    newsRecognizeFilter.filterBusinessResult = filterBusinessResult;
    newsRecognizeFilter.onSuccess = onSuccess;
    return newsRecognizeFilter;

});