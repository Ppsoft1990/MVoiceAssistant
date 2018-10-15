/**
 * author bjwu
 */
define(function() {
    /**
     * 业务协议字段 
     */
    var FilterName = {
        object : "object",
        id : "id",
        name : "name",
        data_source : "data_source",

        loc_judgement : "loc_judgement",
        server_url : "server_url",
        url : "url",
        city_name : "city_name",
        page_index : "page_index",
        page_total : "page_total",
        record_count : "record_count",

        site_list : "site_list",
        site : "site",
        address : "address",
        detail_url : "detail_url",
        distance : "distance",
    };

    function filterBusinessResult(filterResult, xmlDoc) {
        console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);

        var objects = xmlDoc.getElementsByTagName(FilterName.object);
        if (!validateElements(objects)) {
            console.log("数据不合法，请检查");
            return;
        }
        var object = objects[0];
        filterResult.queryType = "cinemaQuery";
        filterResult.data = {};
        
        
        var data_sources = object.getElementsByTagName(FilterName.data_source);
        if (validateElements(data_sources)) {
            var data_sourceElement = data_sources[0];

            var data_sourceIdElements = data_sourceElement.getElementsByTagName(FilterName.id);
            if (data_sourceIdElements && data_sourceIdElements.length > 0) {
                filterResult.data.dataSourceId = data_sourceIdElements[0].firstChild.nodeValue;
            }

            var data_sourceNameElements = data_sourceElement.getElementsByTagName(FilterName.name);
            if (data_sourceNameElements && data_sourceNameElements.length > 0) {
                filterResult.data.dataSourceName = data_sourceNameElements[0].firstChild.nodeValue;
            }
        }
        
        var server_urlElements = object.getElementsByTagName(FilterName.server_url);
        if (validateElements(server_urlElements)) {
            filterResult.data.server_url = server_urlElements[0].firstChild.nodeValue;
        }
        
        var urlElements = object.getElementsByTagName(FilterName.url);
        if (validateElements(urlElements)) {
            filterResult.data.url = urlElements[0].firstChild.nodeValue;
        }
        
        var record_counts = object.getElementsByTagName(FilterName.record_count);
        if (validateElements(record_counts)) {
            filterResult.data.totalPage = Math.ceil(record_counts[0].firstChild.nodeValue / 6);
        } else {
            filterResult.data.totalPage = 0;
        }
        
        var city_names = object.getElementsByTagName(FilterName.city_name);
        if (validateElements(city_names)) {
            filterResult.data.city = validateValue(city_names[0].firstChild.nodeValue, "--");
        } else {
            filterResult.data.city = "--";
        }
        
        var page_totals = object.getElementsByTagName(FilterName.page_total);
        if (validateElements(page_totals)) {
            filterResult.data.totalServerPages = validateValue(page_totals[0].firstChild.nodeValue, "0");
        } else {
            filterResult.data.totalServerPages = "0";
        }
        
        var page_indexs = object.getElementsByTagName(FilterName.page_index);
        if (validateElements(page_totals)) {
            filterResult.data.currentServerPage = validateValue(page_indexs[0].firstChild.nodeValue, "0");
        } else {
            filterResult.data.currentServerPage = "0";
        }
       
        filterResult.data.cinemas = new Array();
        
        var site_lists = object.getElementsByTagName(FilterName.site_list);
        if (validateElements(site_lists)) {
            var sites = site_lists[0].getElementsByTagName(FilterName.site);
            if (validateElements(sites)) {
                for (var i = 0; i < sites.length; i++) {
                    var site = {};
                    
                    var names = sites[i].getElementsByTagName(FilterName.name);
                    if (validateElements(names)) {
                        site.name = validateValue(names[0].firstChild.nodeValue, "--");
                    } else {
                        site.name = "--";
                    }
                    
                    var distances = sites[i].getElementsByTagName(FilterName.distance);
                    if (validateElements(distances)) {
                        var value = distances[0].firstChild.nodeValue;
                        if (isNaN(value)) {
                            site.distance = 0;
                        } else {
                            var f = parseFloat(value);
                            site.distance = Math.round(f * 10) / 10;
                        }
                        
                    } else {
                        site.distance = 0;
                    }
                    
                    var addresss = sites[i].getElementsByTagName(FilterName.address);
                    if (validateElements(addresss)) {
                        site.address = validateValue(addresss[0].firstChild.nodeValue, "--");
                    } else {
                        site.address = "--";
                    }
                    
                    var detail_urls = sites[i].getElementsByTagName(FilterName.detail_url);
                    if (validateElements(detail_urls)) {
                        site.detail_url = validateValue(detail_urls[0].firstChild.nodeValue, "http://site.douban.com");
                    } else {
                        site.detail_url = "http://site.douban.com";
                    }
                    
                    filterResult.data.cinemas.push(site);
                }
            }
        }
    }


    /**
     * 验证元素数据是否合法
     * @param {Object} elementList
     */
    function validateElements(elementList) {
        if (elementList && elementList.length > 0 && elementList[0].firstChild) {
            return true;
        }

        return false;
    }

    /**
     * 验证数据的合法性
     * @param {Object} targetValue
     * @param {Object} defaultValue
     */
    function validateValue(targetValue, defaultValue) {
        if (targetValue) {
            return targetValue;
        }

        return defaultValue;
    }

    function onSuccess(filterResult, xmlDoc) {
        console.log("JSON.stringify(filterResult) = " + JSON.stringify(filterResult));
        filterBusinessResult(filterResult, xmlDoc);
        // if(!filterResult.data || !filterResult.data.url) {
            // console.log("param is null");
            // return;
        // }
        // startTtsSpeak(filterResult.tip);
        setTimeout(function() {
            if(filterResult.data && filterResult.data.url) {
                var webObj = {};
                webObj.mTextSearchMode = filterResult.isTextSearchResult;
                webObj.mSpeechText = filterResult.speech;
                webObj.mRawText = filterResult.rawtext;
                webObj.mUrl = filterResult.data.url;
                webObj.mIsVoiceResult = true;

                exec("UIComponents", "addAnswerMessage", [filterResult.tip, false]);

                exec("UIComponents", "addCommonResultMessage", [filterResult.rawtext, filterResult.data.url]);

                exec("WidgetMMPContainerComponents", "addWebViewForLocation", [webObj]);

                console.log("vcinema show URL for cinemas");
            } else {
                addWebE("WidgetCinemasView", filterResult);
                console.log("vcinema show data for cinemas");
            }
        }, 150);
    }
    
    function onFail(filterResult, xmlDoc) {
        console.log("JSON.stringify(filterResult) = " + JSON.stringify(filterResult));
        filterBusinessResult(filterResult, xmlDoc);
        
        delayedAddAnswerView(filterResult.desc, filterResult.focus, 100);
    }

    //export
    var cinemasRecognizeFilter = {};
    cinemasRecognizeFilter.filterBusinessResult = filterBusinessResult;
    cinemasRecognizeFilter.onSuccess = onSuccess;
    cinemasRecognizeFilter.onFail = onFail;
    return cinemasRecognizeFilter;

});
