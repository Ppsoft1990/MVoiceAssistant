define(function() {
    var FilterName = {
        object : "object",
        url : "url",
        name : "name",
        price : "price",
        code : "code",
    };

    function filterBusinessResult(filterResult, xmlDoc) {
        console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);

        var objectElements = xmlDoc.getElementsByTagName(FilterName.object);
        if (objectElements && objectElements.length > 0) {
            var objectElement = objectElements[0];
            var urlElements = objectElement.getElementsByTagName(FilterName.url);
            if (urlElements && urlElements.length > 0) {
                var urlElement = urlElements[0];
                if (urlElement.firstChild) {
                    filterResult.url = urlElement.firstChild.nodeValue;
                }
            }
            
            var priceElements = objectElement.getElementsByTagName(FilterName.price);
            if (priceElements && priceElements.length > 0 && priceElements[0].firstChild) {
                filterResult.price = priceElements[0].firstChild.nodeValue;
            }

            var nameElements = objectElement.getElementsByTagName(FilterName.name);
            if (nameElements && nameElements.length > 0 && nameElements[0].firstChild) {
                filterResult.name = nameElements[0].firstChild.nodeValue;
            }

            var codeElements = objectElement.getElementsByTagName(FilterName.code);
            if (codeElements && codeElements.length > 0 && codeElements[0].firstChild) {
                filterResult.code = codeElements[0].firstChild.nodeValue;
            }

        }
    }

    function onSuccess(filterResult, xmlDoc) {
        console.log("onSuccess filterResult = " + JSON.stringify(filterResult));
        handleResult(filterResult, xmlDoc);
    }

    function onFail(filterResult, xmlDoc) {
        console.log("onFail filterResult = " + JSON.stringify(filterResult));
        exec("AuthComponents", "startAuth", []);    // 查询业务失败调用鉴权
        handleResult(filterResult, xmlDoc);
    }

    function handleResult(filterResult, xmlDoc) {
        filterBusinessResult(filterResult, xmlDoc);
        var url = filterResult.url;
        if (url) {
            if (filterResult.focus == "telephone_fee" && filterResult.operation == "pay") {
                var name = filterResult.name;
                var code = filterResult.code;
                var url = filterResult.url;

                console.log("name = " + name + ", code = " + code + ", url = " + url);
                // 当前如果code为空，说明需要客户端根据name查询联系人，再拼接URL
                if (!code && name) {
                    var result = exec("CallAndSmsComponents", "queryContactNumber", [name]);
                    console.log("queryContactNumber = " + result);
                    var resultMessage = getResultMessage(result);
                    if (resultMessage) {
                        var numbers = resultMessage.numbers;
                        if (numbers && numbers.length > 0) {
                            url = url.replace("{code}", numbers[0]);
                            console.log("url = " + url);
                        }
                    }
                }
                url = url.replace("mobile=null", "mobile=");    // 如果存在mobile=null，替换null为空字符
                url = url.replace("mobile={code}", "mobile=");  // 如果存在mobile={code}，替换null为空字符
            }
            if (filterResult.isTextSearchResult) {
                url = url + "&isTextSearch=true";
            }

            exec("UIComponents", "addAnswerMessage", ["为您找到下面的结果", false]);

            exec("UIComponents", "addCommonResultMessage", [filterResult.rawtext, url]);

            window.location.href = url;
            // exec("UIComponents", 'openBrowser', ["", url]);
        } else {
            if (filterResult.tip) {
                delayedAddAnswerView(filterResult.tip, filterResult.focus, 100);
            } else {
                delayedAddAnswerView(filterResult.desc, filterResult.focus, 100);
            }
        }
    }

    var cmbusinessHandler = {};
    cmbusinessHandler.onSuccess = onSuccess;
    cmbusinessHandler.onFail = onFail;
    return cmbusinessHandler;

});
