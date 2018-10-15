/**
 * 航班动态查询视图
 * @author xfchen2
 * @author modified by mdhuang 2013-12-13 修改内容：canvas替代
 * @author modified by bjwu 2014-7-22 修改内容：新框架页面调整
 */
define(function() {
    var outDivBox;
    function createFlightQueryView(flightQueryInfo) {
        outDiv = document.createElement("div");
        outDiv.className = "box_content_white";

        //记录当前正在输入的文本框
        var currentInput;
        var dialogFlightQueryInnerDiv = document.createElement("div");

        //标题栏，放标题和分享按钮
        var header = document.createElement("div");
        header.className = "css_dialog_flight_query_header";

        var titleDiv = document.createElement("div");
        titleDiv.className = "css_dialog_flight_query_title_div";
        titleDiv.innerText = "航班动态";

        header.appendChild(titleDiv);

        //交互区域，包括输入框和确认按钮
        var interactTopDiv = document.createElement("div");
        interactTopDiv.className = "css_dialog_flight_query_interact_top_div";

        var inputTip = document.createElement("label");
        inputTip.innerText = "航班号：";
        inputTip.className = "css_dialog_flight_query_interact_top_input_tip";
        var inputArea = document.createElement("input");
        inputArea.setAttribute("type", "text");
        //处理历史记录
        if (null != flightQueryInfo.code && "" != flightQueryInfo.code) {
            inputArea.setAttribute("value", flightQueryInfo.code);
        } else if (null != base_getItem("flight_query") && "" != base_getItem("flight_query")) {
            inputArea.setAttribute("value", base_getItem("flight_query"));
        } else {
            inputArea.setAttribute("placeholder", "如CA1501");
        }
        inputArea.className = "css_dialog_flight_query_interact_top_input_area";

        inputArea.addEventListener("touchend", function(event) {
            if (window.browserView) {
                console.log("window.browserView.showMockDialog()");
                window.browserView.showMockDialog();
            }
        });

        var inputContainer = document.createElement("div");
        inputContainer.className = "css_dialog_flight_query_interact_top_input_container";
        inputContainer.appendChild(inputTip);
        inputContainer.appendChild(inputArea);

        //查询按钮
        var confirmButton = document.createElement("div");
        confirmButton.className = "css_dialog_flight_query_interact_bottom_confirm_button";

        //查询按钮的文字
        var confirmButtonText = document.createElement("div");
        confirmButtonText.innerText = "查询";
        confirmButtonText.className = "css_dialog_flight_query_interact_bottom_confirm_button_text";
        confirmButton.appendChild(confirmButtonText);

        //错误信息提示部分
        var errorDiv = document.createElement("div");
        errorDiv.className = "css_dialog_flight_query_interact_error_div";
        if (null != flightQueryInfo.errorTip && "" != flightQueryInfo.errorTip) {
            errorDiv.style.opacity = "1.0";
            errorDiv.innerText = flightQueryInfo.errorTip;
        }

        interactTopDiv.appendChild(inputContainer);
        interactTopDiv.appendChild(confirmButton);
        interactTopDiv.appendChild(errorDiv);

        dialogFlightQueryInnerDiv.appendChild(header);
        dialogFlightQueryInnerDiv.appendChild(interactTopDiv);
        outDiv.appendChild(dialogFlightQueryInnerDiv);

        //添加外壳
        outDivBox = createBoxDiv(flightQueryInfo.taskHandler, outDiv);
        outDivBox.id = flightQueryInfo.taskHandler;
        // 向curPage中添加View
        document.body.appendChild(outDivBox);
        
        // 显示播报按钮及注册监听
        require(["./common/speakHandler.js"], function(speakHandler) {
            console.log("require speakHandler");
            speakHandler.showSpeakButton();
            var speakText = null;
            if (flightQueryInfo.tip) {
                speakText = flightQueryInfo.tip;
            } else if (flightQueryInfo.speech) {
                speakText = flightQueryInfo.speech;
            }
            speakHandler.setSpeechText(speakText);
            if (!flightQueryInfo.isTextSearchResult) {
                speakHandler.speak();
            }
        }); 
        
        confirmButton.addEventListener("touchstart", function(event) {
            console.log("confirmButton touchstart");

            if (null == inputArea.value || "" == inputArea.value) {
                confirmButton.clickable = false;
            } else {
                confirmButton.clickable = true;
            }

            if (confirmButton.clickable) {
                confirmButton.style.background = "#6dbf68";
                moveOverCheck.start(event);
            }
        });
        confirmButton.addEventListener("touchmove", function(event) {
            if (confirmButton.clickable) {
                if (moveOverCheck.check(event)) {
                    confirmButton.style.background = "";
                }
            }
        });
        confirmButton.addEventListener("touchend", function(event) {
            if (confirmButton.clickable) {
                if (!moveOverCheck.isMoveOver()) {
                    confirmButton.style.background = "";
                    var code = inputArea.value;
                    console.log("input code is : " + code);
                    if (checkInputValid(code, errorDiv)) {
                        if (isNetWorkAvailable()) {
                            inputArea.setAttribute('disabled', 'disabled');
                            confirmButton.clickable = false;
                            confirmButtonText.innerText = "查询中...";
                            flightQueryInfo.code = code;
                            sendTextRequest(flightQueryInfo);
                            base_setItem("flight_query", code);
                        } else {
                            showToast("网络未打开，请检查网络设置");
                        }
                    }
                }
            }
        });

        outDivBox.updateErrorState = function(errorDesc) {
            console.log("flightQueryView, updateErrorState");
            if (errorDesc) {
                errorDiv.style.opacity = "1.0";
                errorDiv.innerText = errorDesc;
            }
            confirmButtonText.innerText = "查询";
            inputArea.removeAttribute('disabled');
            confirmButton.clickable = true;
        };
        return outDivBox;
    }

    function checkInputValid(code, errorDiv) {
        if (code.length > 20) {
            errorDiv.style.opacity = "1.0";
            errorDiv.innerText = "请输入正确的航班号";
            return false;
        } else if (!code) {
            errorDiv.style.opacity = "1.0";
            errorDiv.innerText = "请输入航班号";
            return false;
        } else {
            var pattern = /^[A-Za-z0-9]+$/;
            if (-1 == code.search(pattern)) {
                errorDiv.style.opacity = "1.0";
                errorDiv.innerText = "请输入正确的航班号";
                return false;
            }
        }
        errorDiv.innerText = "";
        return true;
    }

    function textWidth(text) {
        var preEle = document.createElement("pre");
        preEle.innerText = text;
        preEle.className = "css_dialog_flight_query_interact_top_input_area_test";
        preEle.style.visibility = "hidden";
        document.body.appendChild(preEle);
        var width = preEle.clientWidth;
        document.body.removeChild(preEle);
        return width + 10;
        //为保证效果，宽度要比文本宽度大些
    }

    function createXMLStr(filterResult) {
        var head = '<?xml version="1.0" encoding="utf-8"?>';
        var requestDocument = document.implementation.createDocument("http://www.w3.org/1999/xhtml", "request", null);
        var request = requestDocument.documentElement;
        //cmd
        var cmd = document.createElement("cmd");
        cmd.textContent = "flight_query";
        request.appendChild(cmd);
        //base
        var base = getBaseInfo();
        request.appendChild(base);
        //param
        var param = document.createElement("param");
        var code = document.createElement("code");
        code.textContent = filterResult.code;
        param.appendChild(code);

        var dataSource = document.createElement("data_source");
        var id = document.createElement("id");
        id.textContent = filterResult.id;
        dataSource.appendChild(id);
        var name = document.createElement("name");
        name.textContent = filterResult.name;
        dataSource.appendChild(name);
        param.appendChild(dataSource);
        request.appendChild(param);

        var xs = new XMLSerializer();
        requestDocumentStr = xs.serializeToString(requestDocument);
        var xmlStr = head + requestDocumentStr;
        console.log('createXMLStr end, xmlStr is ' + xmlStr);
        return xmlStr;
    }

    /**
     * 二次请求
     */
    function sendTextRequest(filterResult) {
        var xmlHttp = new XMLHttpRequest();
        //超时检测定时器
        var timer;
        //超时处理
        function connectionFail() {
            console.warn('connection is timeout');
            if (xmlHttp) {
                xmlHttp.abort();
            }
            outDivBox.updateErrorState("请求超时！");
        }

        xmlHttp.onreadystatechange = function() {
            if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
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
                require(['./trip/tripHandler.js'], function(recognizeFilter) {
                    recognizeFilter.filterBusinessResult(filterResult, xmlDocument);
                    console.log('filter business result end, filterResult is ' + JSON.stringify(filterResult));

                    if (filterResult && filterResult.url) {
                        // window.location.href = filterResult.url;
                        exec("UIComponents", 'openBrowser', ["", filterResult.url]);
                    }
                    outDivBox.updateErrorState(filterResult.desc);
                });
            } else if (xmlHttp.readyState == 4) {
                if (timer) {
                    //清除定时器
                    clearTimeout(timer);
                }
                outDivBox.updateErrorState("请求失败");
            }
        };

        var url = filterResult.server_url;
        var xml = createXMLStr(filterResult);
        xmlHttp.open("POST", url, true);
        xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
        if (xmlHttp.overrideMimeType) {//设置MiME类别
            xmlHttp.overrideMimeType("text/xml");
        }

        xmlHttp.send(xml);
        //开启超时检测
        timer = setTimeout(connectionFail, 20000);
    }
    
    return createFlightQueryView;
});
