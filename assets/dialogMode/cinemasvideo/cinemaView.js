/**
 * 影院查询视图
 * @author bjwu
 */
define(function() {
    /**
     * 创建主界面列表
     * @param {Object} cinemaData 列表JSON数据
     */
    function createCinemaView(cinemaData) {
        // 数据体
        var data = cinemaData.data;
        
        var cinemaInner = document.createElement("div");
        cinemaInner.className = "inner_content_white";
        var cinemaMiddleContent = document.createElement("div");
        cinemaMiddleContent.className = "css_cinema_middle_content_div";
        // 初始化语音查询返回数据
        initCinemas(cinemaMiddleContent, data);
        cinemaInner.appendChild(cinemaMiddleContent);
        // 添加滑动处理
        pullLoadMoreHelper.createLoadMoreDiv(cinemaMiddleContent, function() {
            if (cinemaMiddleContent.pageIndexNumber == cinemaMiddleContent.pageTotalNumber) {
                console.log("已经加载所有数据");
                return;
            }
            if (isNetWorkAvailable()) {
                if (cinemaMiddleContent.isRequesting) {
                    console.log("Requesting.....");
                    return;
                }
                sendTextRequest(cinemaMiddleContent);
            } else {
                pullLoadMoreHelper.stopRefresh();
                showToast("网络未打开，请检查网络设置");
            }
        });
        //将创建的页面添加到全局页面中
        document.body.appendChild(cinemaInner);

        if (cinemaMiddleContent.pageIndexNumber == cinemaMiddleContent.pageTotalNumber) {
            pullLoadMoreHelper.hideRefreshDiv();
        }

        var targetElement = null;
        cinemaMiddleContent.addEventListener("touchstart", function() {
            targetElement = getParentOfClass("css_cinema_item_div", event.target);
            if (targetElement) {
                moveOverCheck.start(event);
                targetElement.style.backgroundColor = "#e5e5e5";
            }
        }, false);
        cinemaMiddleContent.addEventListener("touchmove", function() {
            if (targetElement) {
                targetElement.style.background = "";
                if (moveOverCheck.check(event)) {
                    targetElement = null;
                }
            }
        }, false);
        cinemaMiddleContent.addEventListener("touchend", function() {
            if (targetElement) {
                targetElement.style.background = "";
                gotoBrief(targetElement.briefUrl);
            }
            targetElement = null;
        }, false);
        
        require(["./common/speakHandler.js"], function(speakHandler) {
            console.log("require speakHandler");
            speakHandler.showSpeakButton();
            var speakText = null;
            if (cinemaData.tip) {
                speakText = cinemaData.tip;
            } else if (cinemaData.speech) {
                speakText = cinemaData.speech;
            }
            speakHandler.setSpeechText(speakText);
            if (!cinemaData.isTextSearchResult) {
                speakHandler.speak();
            }
        });

        return cinemaInner;
    }

    /**
     * 打开影院简介页
     */
    function gotoBrief(briefUrl) {
        exec("UIComponents", 'openBrowser', ["", briefUrl]);
        // window.location.href = briefUrl;
    }
    
    /**
     * 根据数据初始界面和请求相关参数
     */
    function initCinemas(container, data) {
        // 将请求状态设置为false(未请求)
        container.isRequesting = false;
        // 根据数据创建页面
        var cinemas = data.cinemas;
        if (cinemas && cinemas.length > 0) {
            for (var i = 0; i < cinemas.length; i++) {
                var cinemaItem = createCinemaItem(cinemas[i]);
                if (cinemaItem) {
                    container.appendChild(cinemaItem);
                }
            }
        }
        // 当前请求的第几页数据
        if (data.currentServerPage) {
            container.pageIndexNumber = parseInt(data.currentServerPage);
        }
        // 全部页数
        if (data.totalServerPages) {
            container.pageTotalNumber = parseInt(data.totalServerPages);
        }
        if (!container.url) {
            // 优先使用服务端返回的url
            if (data.server_url) {
                container.url = data.server_url;
            } else {    // 获取本地地址
                container.url = getServerUrl();
            }
        }
        // 设置数据源ID
        if (!container.dataSourceId && data.dataSourceId) {
            container.dataSourceId = data.dataSourceId;
        }
        // 设置数据源name
        if (!container.dataSourceName && data.dataSourceName) {
            container.dataSourceName = data.dataSourceName;
        }
        // 保存城市信息
        if (!container.cityName && data.city) {
            container.cityName = data.city;
        }
    }

    /**
     * 生成一个影院条目
     * @param {Object} cinema 一个影院条目的JSON数据
     */
    function createCinemaItem(cinema) {
        var cinemaItem = document.createElement("div");
        cinemaItem.className = "css_cinema_item_div";
        /* var itemDisplayTable = document.createElement("div");
         itemDisplayTable.className = "css_item_display_table_div";

         var itemBody = document.createElement("div");
         itemBody.className = "css_cinema_item_body_div";*/
        var itemBodyLeft = document.createElement("div");
        itemBodyLeft.className = "css_cinema_item_body_left_div";

        var itemBodyLeft_top = document.createElement("div");
        itemBodyLeft_top.className = "css_item_body_left_top_div";
        var cinema_name = document.createElement("div");
        cinema_name.className = "css_cinema_name_div";
        cinema_name.innerHTML = cinema.name;
        var cinema_distance = document.createElement("label");
        cinema_distance.className = "css_cinema_distance_label";
        cinema_distance.setAttribute("onclick", "");
        cinema_distance.innerHTML = cinema.distance + "公里";
        itemBodyLeft_top.appendChild(cinema_name);
        itemBodyLeft_top.appendChild(cinema_distance);

        var itemBodyLeft_bottom = document.createElement("div");
        itemBodyLeft_bottom.className = "css_item_body_left_bottom_div";
        itemBodyLeft_bottom.setAttribute("onclick", "");
        itemBodyLeft_bottom.innerHTML = cinema.address;

        itemBodyLeft.appendChild(itemBodyLeft_top);
        itemBodyLeft.appendChild(itemBodyLeft_bottom);

        var itemBodyRight = document.createElement("div");
        itemBodyRight.className = "css_cinema_item_body_right_div";

        var itemRightArrow = document.createElement("img");
        itemRightArrow.className = "css_more_cinema_arrow_img";
        itemRightArrow.src = ic_list_arrow_left;

        itemBodyRight.appendChild(itemRightArrow);

        cinemaItem.appendChild(itemBodyLeft);
        cinemaItem.appendChild(itemBodyRight);

        cinemaItem.briefUrl = cinema.detail_url;

        return cinemaItem;
    }

    //////////请求相关////////////
    
    var CINEMAS_CMD = "cinemas_near";
    var CINEMAS_CODE = '5003';

    /**
     * 二次请求，请求更多的电影院数据
     * @param cinemaMiddleContent
     */
    function sendTextRequest(cinemaMiddleContent) {
        var xmlHttp = new XMLHttpRequest();
        //超时检测定时器
        var timer;
        //超时处理
        function connectionFail() {
            console.warn('connection is timeout');
            if (xmlHttp) {
                xmlHttp.abort();
            }
            pullLoadMoreHelper.stopRefresh();
        }
        // 结果返回
        xmlHttp.onreadystatechange = function() {
            if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                cinemaMiddleContent.isRequesting = false;
                if (timer) {
                    //清除定时器
                    clearTimeout(timer);
                }
                // 从服务器的response获得数据
                var xmlDocument = xmlHttp.responseXML;
                // 转化成string，便于输出log
                var resStr = new XMLSerializer().serializeToString(xmlDocument);
                console.log('http response is ' + resStr);
                //直接传入doc对象，便于解析处理
                var filterResult = {};
                require(['./cinemasvideo/cinemasHandler.js'], function(recognizeFilter) {
                    recognizeFilter.filterBusinessResult(filterResult, xmlDocument);
                    console.log('filter business result end, filterResult is ' + JSON.stringify(filterResult));
                    if (filterResult && filterResult.data) {
                        var cinemas = filterResult.data.cinemas;
                        initCinemas(cinemaMiddleContent, filterResult.data);
                        if (cinemaMiddleContent.pageIndexNumber == cinemaMiddleContent.pageTotalNumber) {
                            pullLoadMoreHelper.hideRefreshDiv();
                        }
                    }
                });
                pullLoadMoreHelper.stopRefresh();
            } else if (xmlHttp.readyState == 4) {
                cinemaMiddleContent.isRequesting = false;
                if (timer) {
                    //清除定时器
                    clearTimeout(timer);
                }
                pullLoadMoreHelper.stopRefresh();
            }
        };
        
        if (!cinemaMiddleContent.url) {
            console.log("url未定义，终止请求");
            pullLoadMoreHelper.stopRefresh();
            return;
        }
        var url = cinemaMiddleContent.url + CINEMAS_CODE;
        console.log("request url is " + url);

        var xml = createXMLStr(cinemaMiddleContent);
        if (!xml) {
            console.log("创建请求参数失败，终止请求");
            pullLoadMoreHelper.stopRefresh();
            return;
        }
        xmlHttp.open("POST", url, true);
        xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
        if (xmlHttp.overrideMimeType) {//设置MiME类别
            xmlHttp.overrideMimeType("text/xml");
        }
        xmlHttp.send(xml);
        cinemaMiddleContent.isRequesting = true;
        //开启超时检测
        timer = setTimeout(connectionFail, 20000);
    }
    
    function createXMLStr(cinemaMiddleContent) {
        var head = '<?xml version="1.0" encoding="utf-8"?>';
        var requestDocument = document.implementation.createDocument("http://www.w3.org/1999/xhtml", "request", null);
        var request = requestDocument.documentElement;
        //cmd
        var cmd = document.createElement("cmd");
        cmd.textContent = CINEMAS_CMD;
        request.appendChild(cmd);
        //base
        var base = getBaseInfo();
        request.appendChild(base);
        //param
        var param = document.createElement("param");
        //city_name
        if (cinemaMiddleContent.cityName) {
            var cityElement = document.createElement("city_name");
            cityElement.textContent = cinemaMiddleContent.cityName;
            param.appendChild(cityElement);
        }
        //data_source
        var dataSource = document.createElement("data_source");
        param.appendChild(dataSource);
        // id
        if (cinemaMiddleContent.dataSourceId) {
            var dataSourceId = document.createElement("id");
            dataSourceId.textContent = cinemaMiddleContent.dataSourceId;
            dataSource.appendChild(dataSourceId);
        }
        // name
        if (cinemaMiddleContent.dataSourceName) {
            var dataSourceName = document.createElement("name");
            dataSourceName.textContent = cinemaMiddleContent.dataSourceName;
            dataSource.appendChild(dataSourceName);
        }
        // 获取位置缓存信息
        var result = exec("LBSComponents", "getLbsInfo", []);
        console.log("getLbsInfo = " + result);
        if (!result) {
            console.log("未获取到位置信息，请求终止！");
            return null;
        }
        var resultMessage = getResultMessage(result);
        var latitude = resultMessage.latitude;
        var longitude = resultMessage.longitude;
        console.log("latitude = " + latitude + ",  longitude = " + longitude);
        // valat
        var valat = document.createElement("valat");
        valat.textContent = latitude;
        param.appendChild(valat);
        // valong
        var valong = document.createElement("valong");
        valong.textContent = longitude;
        param.appendChild(valong);
        // pageIndex
        var pageIndexElement = document.createElement("page_index");
        pageIndexElement.textContent = cinemaMiddleContent.pageIndexNumber + 1;
        param.appendChild(pageIndexElement);
        request.appendChild(param);

        var xs = new XMLSerializer();
        requestDocumentStr = xs.serializeToString(requestDocument);
        var xmlStr = head + requestDocumentStr;
        console.log('createXMLStr end, xmlStr is ' + xmlStr);
        return xmlStr;
    }
    
    return createCinemaView;
});
