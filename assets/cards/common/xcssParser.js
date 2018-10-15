//
// Copyright (c) 2012-2015, iflytek mdhuang
// Licensed under the MIT License.
//

function XcssParser(_scale) {
	var scale = _scale || window.scale;
    var isFileProtocol = (location.protocol === 'file:' || location.protocol === 'chrome:' || location.protocol === 'chrome-extension:' || location.protocol === 'resource:');
    var isAsync = false;

    //解析样式文件
    this.parseStyleFile = function (url, callBack) {
        console.log('parseStyleFile begin: ' + url);

        //记录开始时间
        var startTime = new (Date);

        xhr(url, 'text/css', parseStyle, xhrError);

        //解析样式数据
        function parseStyle(data) {
            try {
                console.log("scale is : " + scale); 
                var styles = data.replace(/[:\s]-?\d+\.?\d*dp(?:\|\d+:-?\d+px)*/g, function(result) {
                    //删除处于第一个字符位置的冒号
                    var isDelete = false;
                    if (result.indexOf(":") == 0) {
                        result = result.replace(':', '');
                        isDelete = true;
                    }
                    
                    var subs = result.split("|");
                    var length = subs.length;
                    if (length == 1) {
                        return ( isDelete ? ':' : '') + ' ' + parseFloat(result.replace('dp', '')) * scale + 'px';
                    } else {
                        var value = '';
                        for (var i = 0; i < length; i++) {
                            var s = subs[i].split(":");
                            if (s.length == 1) {
                                value = s[0];
                            } else if (parseFloat(s[0]) == deviceWidth) {
                                value = s[1];
                                return ( isDelete ? ':' : '') + ' ' + value;
                            }
                        }
                        return ( isDelete ? ':' : '') + ' ' + parseFloat(value.replace('dp', '')) * scale + 'px';
                    }
                });
                createCSS(styles, url);

                console.log("parseStyleFile end, css " + url + " generated in " + (new (Date) - startTime) + 'ms');

                // 回调通知
                callBack();
            } catch (e) {
                console.error("parseStyle error: " + e);
            }
        };

        //xhr请求出错的处理
        function xhrError(status, url) {
            throw new (Error)("Couldn't load " + url + " (" + status + ")");
        };
    };

    function xhr(url, type, callback, errback) {
        var xhr = getXMLHttpRequest();
        var async = isFileProtocol ? false : isAsync;

        if ( typeof (xhr.overrideMimeType) === 'function') {
            xhr.overrideMimeType('text/css');
        }
        xhr.open('GET', url, async);
        xhr.setRequestHeader('Accept', type || 'text/x-xcss, text/css; q=0.9, */*; q=0.5');
        xhr.send(null);

        if (isFileProtocol) {
            if (xhr.status === 0 || (xhr.status >= 200 && xhr.status < 300)) {
                callback(xhr.responseText);
            } else {
                errback(xhr.status, url);
            }
        } else if (async) {
            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4) {
                    handleResponse(xhr, callback, errback);
                }
            };
        } else {
            handleResponse(xhr, callback, errback);
        }

        function handleResponse(xhr, callback, errback) {
            if (xhr.status >= 200 && xhr.status < 300) {
                callback(xhr.responseText, xhr.getResponseHeader("Last-Modified"));
            } else if ( typeof (errback) === 'function') {
                errback(xhr.status, url);
            }
        }

    }

    function getXMLHttpRequest() {
        if (window.XMLHttpRequest) {
            return new (XMLHttpRequest);
        } else {
            try {
                return new (ActiveXObject)("MSXML2.XMLHTTP.3.0");
            } catch (e) {
                console.error("browser doesn't support AJAX.");
                return null;
            }
        }
    }

    function createCSS(styles, url) {
        var css;

        var id = 'xcss:' + extractId(url);

        // If the stylesheet doesn't exist, create a new node
        if (( css = document.getElementById(id)) === null) {
            css = document.createElement('style');
            css.type = 'text/css';
            css.media = 'screen';
            css.id = id;
            document.getElementsByTagName('head')[0].appendChild(css);
        }
        var node = document.createTextNode(styles);
        if (css.childNodes.length > 0) {
            if (css.firstChild.nodeValue !== node.nodeValue) {
                css.replaceChild(node, css.firstChild);
            }
        } else {
            css.appendChild(node);
        }
    }

    function extractId(url) {
        return url.replace(/^[a-z]+:\/\/?[^\/]+/, '')// Remove protocol
        .replace(/^\//, '')// Remove root /
        .replace(/\?.*$/, '')// Remove query
        .replace(/\.[^\.\/]+$/, '')// Remove file extension
        .replace(/[^\.\w-]+/g, '-')// Replace illegal characters
        .replace(/\./g, ':');
    }
}