/**
 * 搜狐新闻视图
 *
 * @author ppfeng
 * 2013-4-28
 * @author modified by mdhuang 2013-11-10 修改内容：canvas替代
 */
define(function () {

    var news_info;
    var page_index; //当前新闻的总共页码，相对于服务器
    var page_total; //总共的新闻页码
    var news_num = 0; //新闻条目数
    var newsBottomMore; //加载更多按钮
    var serverUrl;
    var newsIdArray = new Array();
    var sohuNewsItems = [];
    var current_speak_index = 0;

    Array.prototype.contains = function (element) {

        for (var i = 0; i < this.length; i++) {
            if (this[i] == element) {
                return true;
            }
        }
        return false;
    };

    //首次创建新闻视图
    var outDivBox;


    function createNewsView(newsInfo) {
        news_info = newsInfo;
        serverUrl = newsInfo.serverUrl;
        console.log("serverUrl: " + serverUrl);
        var outDiv = document.createElement("div");
        outDiv.className = "box_content_white";
        outDiv.id = "id_sohu_box_content_white";
        // 新闻内容区域主容器
        var dialog_news_content_main_div = document.createElement("div");
        dialog_news_content_main_div.className = "css_dialog_sohu_content_main_div";
        dialog_news_content_main_div.id = "id_dialog_sohu_content_main_div";

        var dialog_news_content_wrapper = document.createElement("div");
        dialog_news_content_wrapper.className = "css_dialog_sohu_news_content_wrapper";
        dialog_news_content_wrapper.id = "id_sohu_news_content_wrapper";
        //测试
        //dialog_news_content_wrapper.style.opacity = "0.0";

        var curShowNewsCount = newsInfo.sohuNewsItems.length;
        // 新闻内容正文区。
        for (var i = 0; i < curShowNewsCount; i++) {
            newsIdArray.push(newsInfo.sohuNewsItems[i].newsId);
            sohuNewsItems.push(newsInfo.sohuNewsItems[i]);
            var item = createSohuNewsItem(news_num,
                newsInfo.sohuNewsItems[i].newsTitle,
                newsInfo.sohuNewsItems[i].newsBrief,
                newsInfo.sohuNewsItems[i].newsPic);
            news_num++;
            item.className += " sub_list_divider";
            dialog_news_content_wrapper.appendChild(item);
        }

        dialog_news_content_main_div.appendChild(dialog_news_content_wrapper);
        outDiv.appendChild(dialog_news_content_main_div);

        page_index = newsInfo.data_source.page_index;
        page_total = newsInfo.data_source.page_total;


        //添加外壳
//        outDivBox = createBoxDiv("", outDiv);

        //curPage表示当前二级页面的对象，不要与新闻翻页的页面搞混淆了
        document.body.appendChild(outDiv);

        //判断是否要实现加载更多
        if (page_index && page_total && page_index < page_total) {
//            createLoadMoreDiv(dialog_news_content_main_div);
//            enablePullLoadMore(outDiv,dialog_news_content_main_div);
            pullLoadMoreHelper.createLoadMoreDiv(dialog_news_content_main_div, gotoMore);
            //pullLoadMoreHelper.enablePullLoadMore(outDiv,dialog_news_content_main_div,gotoMore);
        }
        if(sohuNewsItems.length > 0) {
            var content = getReadContent();
            if(content) {
            	//显示播报按钮
            	exec("LxBrowserComponents", "showSpeakButton", [true]);
            	//监听浏览器事件
            	exec("LxBrowserComponents", "isEventCallBackForJS", [true]);

                var result = exec('RecognizeComponents', 'isRecognize', []);
				var isRecoginzing = getResultMessage(result);
            	if(!newsInfo.isTextSearchResult && !isRecoginzing) {
            	  exec('SynthesizeComponents', 'ttsSpeak', [content]);
            	}
              
            }
        }
        return outDivBox;
    };


    function getReadContent() {
        if(sohuNewsItems.length > current_speak_index) {
           var item = sohuNewsItems[current_speak_index];
           var title = item.newsTitle;
           var desc = item.newsBrief;
            return title + desc;
        }
        return "";
    }

    //点击加载跟多后的处理
    function gotoMore() {
        require(['./news/newsRequestHelper.js'], function (newsRequestHelper) {
            if (serverUrl) {
                news_info.serverUrl = serverUrl;
            }
            console.log("news_info:              " + JSON.stringify(news_info));

            var  netWorkResultString = exec("SystemComponents", "isNetWorkAvailable", []);
            console.log( "netWorkResult String is "  + netWorkResultString);
            var netWorkResult = getResultMessage(netWorkResultString);

            console.log( "netWorkResult "  + netWorkResult);
            if (netWorkResult != true) {
                console.log("网络未打开，请打开网络后重试");
                exec("UIComponents", "showToast", ["网络未打开，请检查网络设置", 1]);
                pullLoadMoreHelper.stopRefresh();
                return;
            }

            newsRequestHelper.requestNews(news_info, page_index + 1, handlerNewsResult);
        });
    };


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


    //加载更多二次请求结果回来后的处理
    function handlerNewsResult(xmlDoc, view) {
        require(['./news/newsHandler.js'], function (recognizeFilter) {
            console.log("handlerNewsResult");
            var filterResult = {};
            if(xmlDoc) {
                filterCommonResult(filterResult, xmlDoc);
                if ("success" === filterResult.status) {
                    console.log("handlerNewsResult success");
                    try{
                        recognizeFilter.filterBusinessResult(filterResult, xmlDoc, newsIdArray);
                        var t_page_index = filterResult.data_source.page_index;
                        var t_page_total = filterResult.data_source.page_total;
                        var curShowNewsCount = filterResult.sohuNewsItems.length;
                        if(0 == curShowNewsCount) {
                            if(t_page_index < t_page_total) {
                                page_index++;
                                news_info = filterResult;
                                gotoMore();
                                return;
                            } else {
                                pullLoadMoreHelper.stopRefresh();
                                pullLoadMoreHelper.disablePullLoadMore();
                                exec("UIComponents","showToast",["没有更多新闻了，亲",0]);
                            }
                        } else {
                            addMoreNews(filterResult);
                        }
                        pullLoadMoreHelper.stopRefresh();
                        if(filterResult.data_source.page_index >= filterResult.data_source.page_total) {
                            pullLoadMoreHelper.disablePullLoadMore();
                            exec("UIComponents","showToast",["没有更多新闻了，亲",0]);
                        }
                    } catch(e) {
                        pullLoadMoreHelper.stopRefresh();
                        exec("UIComponents","showToast",["抱歉，没有获取到相关内容",0]);
                    }
                } else {
                    pullLoadMoreHelper.stopRefresh();
                }
            } else {
                pullLoadMoreHelper.stopRefresh();
                exec("UIComponents","showToast",["网络连接超时，请稍后重试",0]);
            }
        });
    }

    //加载更多新闻到新闻视图中
    function addMoreNews(filterResult) {
        news_info = filterResult;
        page_index = filterResult.data_source.page_index;
        page_total = filterResult.data_source.page_total;

        var dialog_news_content_wrapper = document.getElementById("id_sohu_news_content_wrapper");
        if (!dialog_news_content_wrapper) {
            return;
        }

        var curShowNewsCount = filterResult.sohuNewsItems.length;

        // 新闻内容正文区。
        for (var i = 0; i < curShowNewsCount; i++) {
            newsIdArray.push(filterResult.sohuNewsItems[i].newsId);
            sohuNewsItems.push(filterResult.sohuNewsItems[i]);
            var item = createSohuNewsItem(news_num,
                filterResult.sohuNewsItems[i].newsTitle,
                filterResult.sohuNewsItems[i].newsBrief,
                filterResult.sohuNewsItems[i].newsPic);
            news_num++;
            item.className += " sub_list_divider";
            dialog_news_content_wrapper.appendChild(item);
        }

        if (page_index && page_total && page_index >= page_total) {
            if (newsBottomMore) {
                newsBottomMore.style.visibility = "none";
            }
        }

    }

    var targetItem = null;
    // 点击新闻列项时是否触发touchmove
    function touchstart(id) {
        var element2 = document.getElementById(id);
        event.target = element2;
        targetItem = element2;
        if (targetItem) {
            element2.style.backgroundColor = "#e5e5e5";
//            setTimeout(function () {
//                recoverBackground(element2);
//            }, 5000);
        }
    };
    function recoverBackground(element) {
        element.style.background = "";
    };

    function touchmove(id) {
        if (targetItem) {
            document.getElementById(id).style.background = "";
            if (moveOverCheck.check(event)) {
                targetItem = null;
            }
        }
    };
    function touchend(id) {
        if (targetItem) {
            document.getElementById(id).style.background = "";
            var newsItem = sohuNewsItems[id];
            var news_url = newsItem.news_url;
            news_url = news_url+ "&" +  "lx_focus=news" +  "&"+  "newsid=" + sohuNewsItems[id].newsId
                + "&"+ "dataSrcId=" + news_info.data_source.id
                + "&"+  "dataSrcName=" + news_info.data_source.name;
//            exec(sohu_news_taskHandler, 'lookDetail', [digital]);
            exec('UIComponents',"openBrowser",["",news_url]);
        }
        targetItem = null;
    };


    //创建每一条新闻条目
    function createSohuNewsItem(id, title, brief, url) {
        var itemDiv = document.createElement("div");
        var digital = id;

        itemDiv.id = id;
        itemDiv.className = "css_sohu_item_div";

        var titleAndBriefDiv = document.createElement("div");
        titleAndBriefDiv.className = "css_title_and_brief_div";

        var titleDiv = document.createElement("div");
        titleDiv.className = "css_dialog_sohu_title_div";
        titleDiv.innerText = title;
        titleDiv.id = "newstitle" + digital;

        //标题为空时，保证正常显示
        if (title == "" && brief != "") {
            titleDiv.innerHTML = "&nbsp;&nbsp;&nbsp;";
        }

        var briefDiv = document.createElement("div");
        briefDiv.className = "css_dialog_sohu_brief_div";
        //最大显示长度
        if (brief.length >= 31) {
            brief = brief.substring(0, 31) + "…";
        }
        briefDiv.innerText = brief;
        briefDiv.id = "newsbrief" + digital;

        titleAndBriefDiv.appendChild(titleDiv);
        titleAndBriefDiv.appendChild(briefDiv);

        var newsImg = document.createElement("img");
        newsImg.className = "css_sohu_news_img";
        newsImg.id = "newsImg" + digital;
        if ((url != "") && (url != null) && ( typeof url != "undefined")) {
            newsImg.src = url;
        } else {
            if (title == "" && brief == "") {
                newsImg.style.visibility = "hidden";
            } else {
                newsImg.style.visibility = "visible";
                newsImg.src = sohu_brief_default_img;
            }
        }

        newsImg.onerror = function () {
            newsImg.src = sohu_brief_default_img;
        };

        var arrowImg = document.createElement("img");
        arrowImg.className = "css_sohu_news_arrow_right";
        arrowImg.src = channel_goto_sub;
        arrowImg.id = "arrowImg" + digital;

        itemDiv.appendChild(newsImg);
        itemDiv.appendChild(titleAndBriefDiv);

        itemDiv.appendChild(arrowImg);

        itemDiv.addEventListener("touchstart", function () {
            touchstart(id);
        }, false);
        itemDiv.addEventListener("touchmove", function () {
            touchmove(id);
        }, false);
        itemDiv.addEventListener("touchend", function () {
            touchend(id);
        }, false);
        return itemDiv;
    }



    var isSleeping = false;
    var speakStaus = "stop";
    function onTtsPlayBegin () {
        speakStaus = "playing";
    }
    
    function onTtsPlayComplete(errorCode) {
        speakStaus = "stop";
        if (0 == errorCode) {
            exec('MediaPlayerComponents','playMedia',['file:///android_asset/ringtone/news.mp3']);
            if(current_speak_index + 5 > sohuNewsItems.length) {
                if(page_index < page_total) {
                    gotoMore();
                    pullLoadMoreHelper.startRefresh();
                }
            }
            isSleeping = true;
            setTimeout(function() {
                current_speak_index++;
                var content = getReadContent();
                if(content) {
                    if(isSleeping) {
                        exec('SynthesizeComponents', 'ttsSpeak', [content]);
                    }
                }
                isSleeping = false;
            },1000);
        } else {
            exec("UIComponents","showToast",["播放出错",0]);
        }
    }
    
    function onTtsInterrupt() {
        speakStaus = "stop";
    }
    
    function onTtsResume() {
        speakStaus = "playing";
    }
    
    function onTtsPause() {
        speakStaus = "pause";
    }
    
    function onTtsPlayProcess(position) {

    }
    
    function onTtsPlayPrepare() {

    }

    function setIsSleeping(isSleeping){
        this.isSleeping = isSleeping;
    }

    function onCancel(cancelReason) {
        if("micClicked" == cancelReason) {
            if(isSleeping) {
                isSleeping = false;
            }
            exec('SynthesizeComponents', 'ttsStop', []);
        } else if("onCall" == cancelReason) {
            if(isSleeping) {
                isSleeping = false;
            }
            exec('SynthesizeComponents', 'ttsStop', []);
        } else if("onMessage" == cancelReason) {
            if(isSleeping) {
                isSleeping = false;
            }
            exec('SynthesizeComponents', 'ttsStop', []);
        }
    }
    
    function onAlert() {
        if(isSleeping) {
            isSleeping = false;
        }
        exec('SynthesizeComponents', 'ttsStop', []);
    }
    
    
    
    //******************************************************************************// 
	//************************* 浏览器框架事件回调处理 *******************************//
	//******************************************************************************// 
    
    //播报按钮点击
    function onPlayButtonClick() {
    	console.log('onPlayButtonClick callBack' + speakStaus);

        if("playing" == speakStaus) {
            exec('SynthesizeComponents', 'ttsPause', []);
        } else if("pause" == speakStaus) {
            exec('SynthesizeComponents', 'ttsResume', []);
        } else if("stop" == speakStaus){
            if(isSleeping) {
                return;
            } else {
                var content = getReadContent();
                if(content) {
                   exec('SynthesizeComponents', 'ttsSpeak', [content]);
                }
            }
        }
    }
    //手机home键点击
    function onHomeKeyClick() {
    	console.log('onHomeKeyClick callBack');
    	
    	var result = exec("SynthesizeComponents","isTtsListening",[]);
        var isListening = getResultMessage(result);
        console.log('isListening:'+isListening);
        if(isListening || isSleeping) {
            exec("NewsComponents",'show_notify',[]);
        }

    }
    //灵犀在前台显示
    function onActivityResume() {
    	console.log('onActivityResume callBack');
    	
    	var result = exec("SynthesizeComponents","isTtsListening",[]);
        var isListening = getResultMessage(result);
        console.log('isListening:'+isListening);
        if(isListening || isSleeping) {
            exec("NewsComponents",'hide_notify',[]);
        }
    }

    //界面被覆盖
    function onPagePause() {
        console.log('onPagePause callBack');
        stopPlayNews();
    }

    function stopPlayNews() {
        if(isSleeping) {
            isSleeping = false;
        }
        exec('SynthesizeComponents', 'ttsStop', []);
    }

    //麦克风被点击
    function onMicButtonClick() {
        stopPlayNews();
    }

    //来电
    function onIncomingCall() {
        stopPlayNews();
    }

    //提醒触发
    function onIncomingSchedule() {
        stopPlayNews();
    }

    // 将需要java回调的函数暴露到全局对象中，方便外部java文件调用
    window.onTtsPlayBegin = onTtsPlayBegin;
    window.onTtsPlayComplete = onTtsPlayComplete;
    window.onTtsInterrupt = onTtsInterrupt;
    window.onTtsResume = onTtsResume;
    window.onTtsPause = onTtsPause;
    window.onTtsPlayProcess = onTtsPlayProcess;
    window.onTtsPlayPrepare = onTtsPlayPrepare;
    window.setIsSleeping = setIsSleeping;
    window.onActivityResume = onActivityResume;
    window.onPlayButtonClick = onPlayButtonClick;
    window.onHomeKeyClick = onHomeKeyClick;
    window.onPagePause = onPagePause;
    window.onMicButtonClick = onMicButtonClick;
    window.onIncomingCall = onIncomingCall;
    window.onIncomingSchedule =  onIncomingSchedule;
    return createNewsView;
});
