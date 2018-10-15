/**
 * Created by admin on 14-2-22.
 */
define(function(){
    var localTest = '<?xml version="1.0" encoding="utf-8" ?><biz_result><status><![CDATA[success]]></status><error_code><![CDATA[000000]]></error_code><time_stamp date="2014-03-04" time="11:58:17"/><nlp_version><![CDATA[1.0.0.7830]]></nlp_version><desc><![CDATA[成功]]></desc><rawtext><![CDATA[火车站附近的肯德基。]]></rawtext><result><focus>restaurant</focus><action><operation>query</operation><tip>正在搜索火车站附近的肯德基</tip><speech>[x1][k2]正在搜索火车站附近的肯德基</speech></action><object><data_type>data</data_type><loc_judgement>demand</loc_judgement><page_index>1</page_index><page_total>1</page_total><record_count>1</record_count><data_source><id>11001</id><name>大众点评网</name></data_source><city><id>0</id><name>合肥</name></city><category><id>0</id><name>美食</name></category><keyword>火车站肯德基</keyword><server_url>http://ydclient.voicecloud.cn/do?c=</server_url><more_url>http://m.dianping.com/shoplist/110/r/0/c/10/s/s_-1/kw/火车站肯德基/</more_url><alternative_source><name>去12580查一查</name><url>http://m.12580.com/iflytek/search.do?cityid=21010000&amp;query=%E7%81%AB%E8%BD%A6%E7%AB%99%E8%82%AF%E5%BE%B7%E5%9F%BA&amp;tradeId=1001&amp;css=1</url></alternative_source><shop_list><shop><id>5154969</id><name>肯德基</name><branch_name>火车站店</branch_name><phone_numbers><number>0551-62138220</number></phone_numbers><address>瑶海区站前路1号火车站东商城1楼</address><latitude>31.883062</latitude><longitude>117.316925</longitude><url>http://ditu.google.cn/maps?hl=zh-CN&amp;q=%3F%3F+%3F%3F%3F%3F%3F%3F1%3F%3F%3F%3F%3F%3F%3F1%3F+%3F%3F%3F</url><category>快餐简餐</category><avg_price>27</avg_price><score>70.0</score><score_text>口味:1 环境:2 服务:2</score_text><distance>17310.0</distance><pic>http://i3.dpfile.com/pc/293fdb30eec4c6fe544ac46a4d770f14(278x200)/thumb.jpg</pic><dish_tags></dish_tags><shop_tags></shop_tags><shop_url>http://dpurl.cn/p/3-CSkkPqND</shop_url></shop></shop_list></object></result></biz_result>';
    var localTest = '<?xml version="1.0" encoding="utf-8" ?><biz_result><status><![CDATA[success]]></status><error_code><![CDATA[000000]]></error_code><time_stamp date="2014-03-06" time="15:16:34"/><nlp_version><![CDATA[1.0.0.7830]]></nlp_version><desc><![CDATA[成功]]></desc><rawtext><![CDATA[火车站附近的烧烤。]]></rawtext><result><focus>restaurant</focus><action><operation>query</operation><tip>对不起，没有找到合适的结果，我还是帮您搜索一下吧。</tip><speech>[x1][k2]对不起，没有找到合适的结果，我还是帮您搜索一下吧。</speech></action><object><data_type>data</data_type><loc_judgement>demand</loc_judgement><data_source><id>11001</id><name>大众点评网</name></data_source><city><id>0</id><name>合肥</name></city><category><id>0</id><name>烧烤</name></category><keyword>火车站</keyword><server_url>http://ydclient.voicecloud.cn/do?c=</server_url><more_url>http://m.dianping.com/shoplist/110/r/0/c/508/s/s_-1/kw/火车站/</more_url><alternative_source><name>上网搜索</name><url>http://m.baidu.com/s?word=火车站附近的烧烤。</url></alternative_source><shop_list/></object></result></biz_result>';
    var parser = new DOMParser();
    var xmlDocument = parser.parseFromString(localTest,"text/xml");
    var FilterName = {
        object:"object",
        id:"id",
        name:"name",
        data_source:"data_source",
        url:"url"
    };


    function filterBusinessResult(filterResult, xmlDoc){
        console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);

        var objectElements = xmlDoc.getElementsByTagName(FilterName.object);
        if(objectElements && objectElements.length > 0){
            var objectElement = objectElements[0];

            var data_sourceElements = objectElement.getElementsByTagName(FilterName.data_source);
            if(data_sourceElements && data_sourceElements.length > 0){
                var data_sourceElement = data_sourceElements[0];

                var data_sourceIdElements = data_sourceElement.getElementsByTagName(FilterName.id);
                if(data_sourceIdElements && data_sourceIdElements.length > 0){
                    filterResult.dataSrcId = data_sourceIdElements[0].firstChild.nodeValue;
                }

                var data_sourceNameElements = data_sourceElement.getElementsByTagName(FilterName.name);
                if(data_sourceNameElements && data_sourceNameElements.length > 0){
                    filterResult.dataSrcName = data_sourceNameElements[0].firstChild.nodeValue;
                }
            }

            var urlElements = objectElement.getElementsByTagName(FilterName.url);
            if(urlElements && urlElements.length > 0){
                filterResult.url = urlElements[0].firstChild.nodeValue;
            }
        }
    }


    function onSuccess(filterResult, xmlDoc){
        filterBusinessResult(filterResult, xmlDoc);
        if(filterResult.url) {
            var webObj = {};
			webObj.mTextSearchMode = filterResult.isTextSearchResult;
			webObj.mSpeechText = "正在为您打开139邮箱";
			webObj.mRawText = filterResult.rawtext;
			webObj.mUrl = filterResult.url;
			webObj.mIsVoiceResult = true;

			exec("UIComponents", "addAnswerMessage", ["正在为您打开139邮箱", false]);

			exec("UIComponents", "addCommonResultMessage", [filterResult.rawtext, filterResult.url]);
			
			exec("WidgetMMPContainerComponents", "addWebViewForLocation", [webObj]);

        } else {
            addAnswerView("打开139邮箱失败");
        }
    }

    /**
     * 播报
     * @param filterResult
     * @param content
     */
    function mailTtsSpeak(filterResult, content) {
        require(["./common/speakHandler.js"], function (speakHandler) {
            speakHandler.setSpeechText(content);
            if (!filterResult.isTextSearchResult) {
                speakHandler.speak(200);
            }
        });
    }

    //export
    var mailRecognizeFilter = {};
    mailRecognizeFilter.filterBusinessResult = filterBusinessResult;
    mailRecognizeFilter.onSuccess = onSuccess;
    return mailRecognizeFilter;

});