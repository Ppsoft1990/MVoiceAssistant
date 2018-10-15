/*******************************************************************************
 * 基础函数库
 ******************************************************************************/

//将内容插入textarea光标所在处
insertText = function(obj, str) {
    if(document.selection) {
        var sel = document.selection.createRange();
        sel.text = str;
    } else if( typeof obj.selectionStart === 'number' && typeof obj.selectionEnd === 'number') {
        var startPos = obj.selectionStart, endPos = obj.selectionEnd, cursorPos = startPos, tmpStr = obj.value;
        obj.value = tmpStr.substring(0, startPos) + str + tmpStr.substring(endPos, tmpStr.length);
        cursorPos += str.length;
        obj.selectionStart = obj.selectionEnd = cursorPos;

        console.log('insertText, cursorPos is ' + cursorPos);
    } else {
        obj.value += str;
    }
};
//移动光标至textarea末尾
moveEnd = function(obj) {
    obj.focus();
    var len = obj.value.length;
    if(document.selection) {
        var sel = obj.createTextRange();
        sel.moveStart('character', len);
        sel.collapse();
        sel.select();
    } else if( typeof obj.selectionStart == 'number' && typeof obj.selectionEnd == 'number') {
        obj.selectionStart = obj.selectionEnd = len;
    }
};
/**
 * 模拟滚动
 */
var isTouch = ('ontouchstart' in window);
var Vscroll = function(handle) {
    if(!handle || handle == "" || handle == null)
        handle = this;
    handle.style.overflow = "hidden";
    handle.delay = 2000;
    handle.interval = 20;
    handle.isMove = false;
    var holdEventNodes = [];

    var fixEvent = function(e) {
        console.log("fixEvent begin, event type is " + e.type + " e.layerX is " + e.layerX + " e.pageX is" + e.pageX);
        if( typeof e == "undefined")
            e = window.event;
        if( typeof e.layerX == "undefined")
            e.layerX = e.offsetX;
        if( typeof e.layerY == "undefined")
            e.layerY = e.offsetY;
        if( typeof e.pageX == "undefined")
            e.pageX = e.clientX + document.documentElement.scrollLeft - document.documentElement.clientLeft;
        if( typeof e.pageY == "undefined")
            e.pageY = e.clientY + document.documentElement.scrollTop - document.documentElement.clientTop;

        console.log("fixEvent end, event type is " + e.type + " e.layerX is " + e.layerX + " e.pageX is" + e.pageX);
        return e;
    };
    var moveDown = function(step) {
        if(handle.isMove === false) {
            return;
        }
        // console.log("moveDown begin, step is " + step + " handle.scrollTop is " + handle.scrollTop);

        handle.scrollTop = handle.scrollTop - step;
        //		if(handle.clientHeight+handle.scrollTop - step > handle.scrollHeight){
        //			handle.scrollTop = handle.scrollHeight - handle.clientHeight;
        //		}

        // console.log("moveDown end, step is " + step + " handle.scrollTop is " + handle.scrollTop);
    };
    var start = function(e) {
        console.log("touchstart begin, e.target.nodeName is " + e.target.nodeName + " handle.timeOut is " + handle.timeOut + " isTouch is " + isTouch);
        clearTimeout();
        handle.isMove = false;
        handle.lastTime = e.timeStamp;
        handle.lastMouseY = isTouch ? e.changedTouches[0].pageY : fixEvent(e).pageY;
        handle.stepList = [];
        // e.stopPropagation();

        //以下这些node是很有可能要响应click或者href等事件，所以不要屏蔽。其余节点屏蔽有助于提高滚动效率。
        // if(e.target.nodeName != "#text" && e.target.nodeName != "IMG" && e.target.nodeName != "INPUT" && e.target.nodeName != "TEXTAREA" && e.target.nodeName != "A" && e.target.nodeName != "SELECT" && e.target.nodeName != "BUTTON" && e.target.nodeName != "LABEL") {
        // e.preventDefault();
        // }

        if(holdEventNodes.length >= 1) {
            for(var i = 0; i < holdEventNodes.length; i++) {
                if(e.target.nodeName == holdEventNodes[i]) {
                    console.log('e.target.nodeName is ' + e.target.nodeName + ' ==' + holdEventNodes[i]);
                    break;
                }

                if(i == holdEventNodes.length - 1) {
                    e.preventDefault();
                }
            }
        } else {
            e.preventDefault();
        }

        if(isTouch) {
            handle.addEventListener("touchmove", drags, false);
            handle.addEventListener("touchend", end, false);
        } else {
            handle.addEventListener("mousemove", drags, false);
            handle.addEventListener("mouseup", end, false);
        }
        console.log("start end, handle.lastTime is " + handle.lastTime + " handle.lastMouseY is " + handle.lastMouseY);
        return true;
    };
    var drags = function(e) {
        // console.log("drags begin, handle.timeOut is " + handle.timeOut + " handle.isMove is " + handle.isMove);

        e.preventDefault();
        // e.stopPropagation();
        if(handle.isMove == false) {
            //e.preventDefault();
            // e.stopPropagation();
            clearTimeout();
            handle.isMove = true;
            // return false;
        }
        var newTime = e.timeStamp;
        var pageY = isTouch ? e.changedTouches[0].pageY : fixEvent(e).pageY;

        var step = (pageY - handle.lastMouseY);
        if(Math.abs(step) < 3) {
            console.log("drags move step is " + step + " , so return");
            return;
        }
        var time = (newTime - handle.lastTime);
        handle.stepList.push({
            step : step,
            time : time
        });
        handle.lastTime = newTime;
        moveDown(step);
        handle.lastMouseY = pageY;

        // console.log("drags end, newTime is " + newTime + " pageY is " + pageY + " step is " + step + " time is " + time + " lastMouseY is" + handle.lastMouseY);
        return true;
    };
    var end = function(e) {
        var len = handle.stepList.length;

        console.log("touchend begin, len is " + len + " handle.stepLis is " + handle.stepLis);

        var totalStep = 0;
        var totalTime = 0;
        for(var i = len - 1; i >= 0; i--) {
            if(handle.stepList[i].time != 0) {
                totalStep = totalStep + handle.stepList[i].step;
                totalTime = totalTime + handle.stepList[i].time;
                break;
            }
        }
        if(totalTime != 0) {
            var v = totalStep / totalTime;
            var a = (0 - v) / handle.delay;

            afterTouchendMove(v, a);

            //加快滚动速度
            // var doubleV = v * 2;
            // afterTouchendMove(doubleV, a);
        }
        if(isTouch) {
            handle.removeEventListener("touchmove", drags, false);
            handle.removeEventListener("touchend", end, false);
        } else {
            handle.removeEventListener("mousemove", drags, false);
            handle.removeEventListener("mouseup", end, false);
        }
        console.log("end end, totalTime is " + totalTime + " totalStep is " + totalStep);

        return true;
    };
    var afterTouchendMove = function(v, a) {
        // console.log("afterTouchendMove begin, v is " + v + " a is " + a);
        var step = v * handle.interval;
        //获取移动的距离
        var newV = v + a * handle.interval;
        // moveDown(step);
        // if(newV * step > 0) {
        // handle.timeOut = window.setTimeout(function() {
        // afterTouchendMove(newV, a);
        // }, handle.interval)
        // } else {
        // handle.isMove = true;
        // }

        if(Math.abs(step) >= 1 && handle.isMove) {
            moveDown(step);
            handle.timeOut = window.setTimeout(function() {
                afterTouchendMove(newV, a);
            }, handle.interval);
        }

        // console.log("afterTouchendMove end, step is " + step + " newV is " + newV);
    };
    var clearTimeout = function() {
        if(handle.timeOut) {
            window.clearTimeout(handle.timeOut);
        }
    };
    if(isTouch) {
        console.log("add touch event listener");
        handle.addEventListener("touchstart", start, false);
    } else {
        handle.addEventListener("mousedown", start, false);
    }

    var hasAdded = true;

    this.stopMove = function() {
        handle.isMove = false;
    };

    this.addScroll = function(holdEventNodesName) {
        if(!hasAdded) {
            if(isTouch) {
                handle.addEventListener("touchstart", start, false);
            } else {
                handle.addEventListener("mousedown", start, false);
            }
            hasAdded = true;
        }

        if(holdEventNodesName) {
            holdEventNodes = holdEventNodesName;
        } else {
            holdEventNodes = [];
        }
    };

    this.removeScroll = function() {
        if(hasAdded) {
            if(isTouch) {
                handle.removeEventListener("touchstart", start, false);
            } else {
                handle.removeEventListener("mousedown", start, false);
            }
            hasAdded = false;
        }
    };
};

/**
 * 判断某个元素是否含有指定的class样式
 *
 * @param target
 *            目标元素
 * @param className
 *            样式名称，使用class方式定义的样式[id类型的不起作用]
 */

function hasClass(target, className) {
    var classNames = target.className.split(' ');
    for ( var j = 0; j < classNames.length; j++) {
        if (classNames[j] == className) {
            return true;
        }
    }
    return false;
}

/**
 * 获取距离某个元素最近的指定样式的父元素
 *
 * @param parentClass
 *            父元素的class样式
 * @param childDom
 *            目标元素
 */
function getParentOfClass(parentClass, childDom) {
    /*
    if (childDom.className.indexOf(parentClass) > -1) {
            return childDom;
        }*/
    
    /*
    if (childDom.className == parentClass) {
            return childDom;
        }
        var tmp = childDom;
        while (tmp.tagName.toUpperCase() != "BODY" && tmp.className != parentClass) {
            tmp = tmp.parentNode;
            if (hasClass(tmp, parentClass)) {
                return tmp;
            }
        }*/
    
     var tmp = childDom;
     while (tmp.tagName.toUpperCase() != "BODY") {
        if (hasClass(tmp, parentClass)) {
            return tmp;
        }
        tmp = tmp.parentNode;
    }
    
    return null;
}

/**
 * 自定义滚动触摸事件处理函数
 *
 * @param {Object}
 *            target 需要添加自定义事件的Dom元素
 * @param {Object}
 *            scrollLength 滚动距离，数值类型，可选参数，默认为15
 */

function enableScrollTouch(target, scrollLength, touchObj) {
    if (target == null || target == undefined) {
        alert(target + " need an exist value");
        return;
    }
    if (scrollLength == undefined) {
        scrollLength = 15;
    }
    var needOut = false;
    if (touchObj != null && touchObj != undefined) {
        needOut = true;
    }
    var myEvent = document.createEvent("Event");
    // 事件名称：scrolltouch;是否冒泡:true;是否可取消：true;
    myEvent.initEvent("scrolltouch", true, true);
    var target_start_pageY = 0;
    var target_end_pageY = 0;
    var target_start_pageY = 0;
    var target_end_pageY = 0;
    var target_have_move_motion = false;
    var eventTarget;
    target.addEventListener("touchstart", function() {
        var touchPoint = event.targetTouches[0];
        eventTarget = event.target;
        target_start_pageY = touchPoint.pageY;
        console.log("touchstart Y : " + target_start_pageY);
        if (needOut) {
            touchObj.touchStart(event);
        }
        // console.log("touchstart end, target_return_value is " +
        // touchObj.returnArgument);
    });
    target
        .addEventListener(
        "touchmove",
        function() {
            var touchPoint = event.targetTouches[0];
            target_end_pageY = touchPoint.pageY;
            console.log("touchend Y : " + target_end_pageY);
            console
                .log("touchmove start, target_have_move_motion is "
                + target_have_move_motion);
            if (needOut) {
                touchObj.touchMove();
            }
            if (!target_have_move_motion) {
                if (Math.abs(target_end_pageY - target_start_pageY) > scrollLength) {
                    target_have_move_motion = true;
                    // if(needOut) {
                    // touchObj.touchMove();
                    // }
                    if (needOut) {
                        touchObj.touchElement = null;
                        touchObj.returnArgument = null;
                    }
                }
            }

            console
                .log("touchmove end, target_have_move_motion is "
                + target_have_move_motion);
            // console.log("touchmove end, target_return_value is "
            // + touchObj.returnArgument);
        });
    target.addEventListener("touchend", function() {
        console.log("touchend start, target_have_move_motion is "
            + target_have_move_motion);
        if (!target_have_move_motion) {
            if (needOut) {
                touchObj.touchEnd();
                console.log("touch element id is " + touchObj.returnArgument);
                if (touchObj.returnArgument === undefined) {
                    target.dispatchEvent(myEvent);
                } else if (touchObj.returnArgument != ""
                    && touchObj.returnArgument != null) {
                    target.dispatchEvent(myEvent);
                }
            } else {
                target.dispatchEvent(myEvent);
            }
        }
        target_start_pageY = 0;
        target_end_pageY = 0;
        target_have_move_motion = false;
        console.log("touchend end, target_have_move_motion is "
            + target_have_move_motion);
    });
}

/**
 * canvas绘制函数，模拟9.png图片绘制
 *
 * @param {Object}
 *            canvas canvas对象
 * @param {Object}
 *            img 所需要绘制的背景图片，Image类型
 * @param {Object}
 *            sCoordinates 切分数组
 */
function draw(canvas, img, sCoordinates) {
    var cxt = canvas.getContext("2d");
    var sWidth = img.width;
    var sHeight = img.height;
    var width = canvas.width;
    var height = canvas.height;

    var dMiddleWidth = width - sWidth + sCoordinates[2] - sCoordinates[0];
    var dMiddleHeight = height - sHeight + sCoordinates[7] - sCoordinates[5];

    var sMiddleWidth = sCoordinates[2] - sCoordinates[0];
    var sMiddleHeight = sCoordinates[7] - sCoordinates[5];
    var sRightWidth = sWidth - sCoordinates[2];
    var sBottomHeight = sHeight - sCoordinates[7];

    var dRightCoordinateX = width - sWidth + sCoordinates[2];
    var dBottomCoordinateY = height - sHeight + sCoordinates[7];
    /**
     * 计算坐标数组，用于图片绘制
     */
    var top_left = [ 0, 0, sCoordinates[0], sCoordinates[5], 0, 0,
        sCoordinates[0], sCoordinates[5] ];
    var top_middle = [ sCoordinates[0], 0, sMiddleWidth, sCoordinates[5],
        sCoordinates[0], 0, dMiddleWidth, sCoordinates[5] ];
    var top_right = [ sCoordinates[2], 0, sRightWidth, sCoordinates[5],
        dRightCoordinateX, 0, sRightWidth, sCoordinates[5] ];

    var middle_left = [ 0, sCoordinates[5], sCoordinates[0], sMiddleHeight, 0,
        sCoordinates[5], sCoordinates[0], dMiddleHeight ];
    var middle_middle = [ sCoordinates[0], sCoordinates[5], sMiddleWidth,
        sMiddleHeight, sCoordinates[0], sCoordinates[5], dMiddleWidth,
        dMiddleHeight ];
    var middle_right = [ sCoordinates[2], sCoordinates[5], sRightWidth,
        sMiddleHeight, dRightCoordinateX, sCoordinates[5], sRightWidth,
        dMiddleHeight ];

    var bottom_left = [ 0, sCoordinates[7], sCoordinates[0], sBottomHeight, 0,
        dBottomCoordinateY, sCoordinates[0], sBottomHeight ];
    var bottom_middle = [ sCoordinates[0], sCoordinates[7], sMiddleWidth,
        sBottomHeight, sCoordinates[0], dBottomCoordinateY, dMiddleWidth,
        sBottomHeight ];
    var bottom_right = [ sCoordinates[2], sCoordinates[7], sRightWidth,
        sBottomHeight, dRightCoordinateX, dBottomCoordinateY, sRightWidth,
        sBottomHeight ];

    /**
     * 图片绘制，根据原始图片的宽高和坐标数组把原始图片 分成9块进行绘制，模仿9.png图片的伸缩功能
     */
    cxt.drawImage(img, top_left[0], top_left[1], top_left[2], top_left[3],
        top_left[4], top_left[5], top_left[6], top_left[7]);
    cxt.drawImage(img, top_middle[0], top_middle[1], top_middle[2],
        top_middle[3], top_middle[4], top_middle[5], top_middle[6],
        top_middle[7]);
    cxt.drawImage(img, top_right[0], top_right[1], top_right[2], top_right[3],
        top_right[4], top_right[5], top_right[6], top_right[7]);

    cxt.drawImage(img, middle_left[0], middle_left[1], middle_left[2],
        middle_left[3], middle_left[4], middle_left[5], middle_left[6],
        middle_left[7]);
    cxt.drawImage(img, middle_middle[0], middle_middle[1], middle_middle[2],
        middle_middle[3], middle_middle[4], middle_middle[5],
        middle_middle[6], middle_middle[7]);
    cxt.drawImage(img, middle_right[0], middle_right[1], middle_right[2],
        middle_right[3], middle_right[4], middle_right[5], middle_right[6],
        middle_right[7]);

    cxt.drawImage(img, bottom_left[0], bottom_left[1], bottom_left[2],
        bottom_left[3], bottom_left[4], bottom_left[5], bottom_left[6],
        bottom_left[7]);
    cxt.drawImage(img, bottom_middle[0], bottom_middle[1], bottom_middle[2],
        bottom_middle[3], bottom_middle[4], bottom_middle[5],
        bottom_middle[6], bottom_middle[7]);
    cxt.drawImage(img, bottom_right[0], bottom_right[1], bottom_right[2],
        bottom_right[3], bottom_right[4], bottom_right[5], bottom_right[6],
        bottom_right[7]);

    // cxt.font = "40pt Calibri";
    // cxt.fillText("haha",10,50);

    if (img.background) {
        canvas.style.background = img.background;
        canvas.style.backgroundPosition = img.backgroundPosition;
        canvas.style.backgroundSize = (width - img.minusWidth) + "px "
            + (height - img.minusHeight) + "px";
    }
}

/**
 * 重绘函数
 *
 * @param {Object}
 *            canvas canvas对象
 * @param {Object}
 *            img 所需要绘制的背景图片，Image类型
 * @param {Object}
 *            sCoordinates 切分数组
 */
function reDraw(canvas, img, sCoordinates) {
    /* 清空canvas内容 */
    var cxt = canvas.getContext("2d");
    var width = canvas.width;
    var height = canvas.height;
    cxt.clearRect(0, 0, width, height);

    // 清空背景保护
    if (img.background) {
        canvas.style.background = "";
    }

    /* canvas 重新绘制 */
    draw(canvas, img, sCoordinates);
}
/**
 * 清除画布内容
 *
 * @param {Object}
 *            canvas canvas对象
 */
function clearCanvas(canvas){
	canvas.style.background = "";
    var cxt = canvas.getContext("2d");
    var width = canvas.width;
    var height = canvas.height;
    cxt.clearRect(0, 0, width, height);
}

/**
 * 向父元素添加子元素，添加元素比较多时使用
 *
 * @param {Object}
 *            parent 父元素
 * @param {Object}
 *            children 子元素数组
 */
function addChildrenToParent(parent, children) {
    if (typeof parent == "undefined" || parent == null || parent == 0) {
        console.log("parent is not defined,please check it.");
        return;
    }
    var test = children.length;
    if (typeof test == "undefined" || test == null || test == 0) {
        console.log("子元素数组传值不正确");
        return;
    }
    try {
        for ( var i = 0; i < children.length; i++) {
            parent.appendChild(children[i]);
            console.log("add child success");
        }
    } catch (e) {
        console.log(e.message.toString());
    }
}

/**
 * 判断一个元素是否是另外一个元素的子元素
 *
 * @param {Object}
 *            targetObj
 * @param {Object}
 *            parentObj
 */
function isChild(targetObj, parentObj) {
    if (typeof targetObj == "undefined" || targetObj == null
        || parentObj == null || typeof parentObj == "undefined") {
        return false;
    }
    var tmp = targetObj;
    while (tmp.tagName.toUpperCase() != "BODY") {
        tmp = tmp.parentNode;
        if (tmp == parentObj) {
            return true;
        }
    }
    return false;
}

/**
 * 获取元素最终使用的css样式
 *
 * @param {Object}
 *            ele 指定元素Dom对象
 * @param {Object}
 *            attr 样式值
 */
function getCurrentStyle(ele, attr) {
    // attr = (!-[1,]&& attr=="float")? "styleFloat" :"float";
    if (document.defaultView) {
        var style = document.defaultView.getComputedStyle(ele, null);
        return style ? style.getPropertyValue(attr) : null;
    } else {
        return ele.currentStyle[attr];
    }
}

/*
 * 方法:Array.remove(dx) 功能:删除数组元素. 参数:dx删除元素的下标. 返回:在原数组上修改数组
 */
// 经常用的是通过遍历,重构数组.
Array.prototype.remove = function(dx) {
    if (isNaN(dx) || dx > this.length) {
        return false;
    }
    for ( var i = 0, n = 0; i < this.length; i++) {
        if (this[i] != this[dx]) {
            this[n++] = this[i];
        }
    }
    this.length -= 1;
};
// 在数组中获取指定值的元素索引，注意：若有相同的值则返回第一个
Array.prototype.getIndexByValue = function(value) {
    var index = -1;
    for ( var i = 0; i < this.length; i++) {
        if (this[i] == value) {
            index = i;
            break;
        }
    }
    return index;
};
/**
 * javascript模拟HashMap数据结构
 */
function HashMap() {
    /** Map 大小 * */
    var size = 0;
    /** 对象 * */
    var entry = new Object();
    // 用来按顺序存储key
    var keys = new Array();

    /** 存 * */
    this.put = function(key, value) {
        if (!this.containsKey(key)) {
            entry[key] = value;
            keys[size] = key;
            size++;
        }
    };
    /** 取 * */
    this.get = function(key) {
        return this.containsKey(key) ? entry[key] : null;
    };
    /** 删除 * */
    this.remove = function(key) {
        if (this.containsKey(key) && (delete entry[key])) {
            size--;
            var index = keys.getIndexByValue(key);
            keys.remove(index);
        }
    };
    /** 是否包含 Key * */
    this.containsKey = function(key) {
        return (key in entry);
    };
    /** 是否包含 Value * */
    this.containsValue = function(value) {
        for ( var prop in entry) {
            if (entry[prop] == value) {
                return true;
            }
        }
        return false;
    };
    /** 所有 Value * */
    this.values = function() {
        var values = new Array();
        for ( var prop in entry) {
            values.push(entry[prop]);
        }
        return values;
    };
    /** 所有 Key * */
    this.keys = function() {
        // var keys = new Array();
        // for(var prop in entry) {
        // keys.push(prop);
        // }
        return keys;
    };
    /** Map Size * */
    this.size = function() {
        return size;
    };
    /* 清空 */
    this.clear = function() {
        size = 0;
        entry = new Object();
        keys = new Array();
    };
    /* 转换成数组 */
    this.toArray = function() {
        var list = [];
        var keys = this.keys();
        if (keys.length > 0) {
            for ( var i = 0; i < keys.length; i++) {
                list.push({
                    key : keys[i],
                    value : this.get(keys[i])
                });
            }
        }
        return list;
    };
    /* 由数组 转换 */
    this.fromArray = function(list) {
        if (list != null && list.length > 0) {
            for ( var i = 0; i < list.length; i++) {
                var object = list[i];
                this.put(object.key, object.value);
            }
        }
    };
}

/**
 * 强制屏幕刷新
 */
function forceRefreshScreen() {
    document.body.style.borderTopColor = '#FFFFFF';
    setTimeout(function() {
        document.body.style.borderTopColor = 'transparent';
    }, 0);
}

/**
 * 滚动到屏幕顶部
 */
function scrollToTop(){
	document.body.scrollTop = 0;
}

/**
 * 滚动到屏幕底部
 */
function scrollToBottom() {
    var scrollTop = 0;
    if (document.body.scrollHeight > window.innerHeight) {
    	var scollHeight = document.body.scrollHeight;
    	var windowHeight = window.innerHeight;
        scrollTop = scollHeight - windowHeight;
    }
    
    document.body.scrollTop = scrollTop;
    console.log('scrollToBottom end, scrollTop is ' + scrollTop);
}

/**
 * 滚动至指定节点
 */
function scrollToView(view) {
    if(!view){
    	console.warn('scrollToView error, view is null');
    	return ;
    }
    
	marginBottom = marginBottom ? marginBottom : 10;
	var scrollTop = view.offsetTop - marginBottom;
	scrollTo(0, scrollTop);
	
	//保险起见，延迟一段时间后后再滚动一次，规避某些机型上滚动不到位的问题
	setTimeout(function() {
		document.body.scrollTop = scrollTop;
		console.log('scrollToView end, scrollTop is ' + scrollTop);
	}, 200);
}

/**
 * 滚动至页面最后一个节点
 * 
 * @param distance
 *            滚动距离
 */
function scrollToLastNode() {
    console.log('scrollToLastNode begin');

    var bodyChildrens = document.body.children;
    if (bodyChildrens != null && bodyChildrens.length > 0) {
        var lastNode = bodyChildrens[bodyChildrens.length - 1];
        scrollTo(0, lastNode.offsetTop);
    }
}

/**
 * 检测移动距离是否过大
 */
function checkMoveOver() {
    var startX = 0, startY = 0, curX = 0, curY = 0, moveOver = false;
    const
        length = 8;
    this.start = function(event) {
        console.log('checkMoveOver, start');
        startX = event.targetTouches[0].pageX;
        startY = event.targetTouches[0].pageY;
        curX = startX;
        curY = startY;
        moveOver = false;
    };

    this.check = function(event) {
        console.log('checkMoveOver, check');
        curX = event.targetTouches[0].pageX;
        curY = event.targetTouches[0].pageY;
        if (Math.abs(curX - startX) > length
            || Math.abs(curY - startY) > length) {
            console.warn('checkMoveOver true');
            moveOver = true;
            return true;
        } else {
            return false;
        }
    };

    this.isMoveOver = function() {
        console.warn('isMoveOver :' + moveOver);
        return moveOver;
    };
};

/*******************************************************************************
 * 本地存储，利用html5的localStorage功能。
 * 由于localStorage数据监听不太好用，暂没有封装此类接口，后续有需要的话可以自己来实现。
 ******************************************************************************/
//保存数据。为避免key被覆盖，各上层业务模块调用时key的命名规范建议以业务频道id作为前缀，以作区分。
function base_setItem(key, value){
	window.localStorage.setItem(key, value);
}

function base_getItem(key){
	return window.localStorage.getItem(key);
}

function base_removeItem(key){
	window.localStorage.removeItem(key);
}

function base_clearAllItem(){
	window.localStorage.clear();
}

/*******************************************************************************
   固定长度的数组数据读取接口
 ******************************************************************************/
//将一条记录保存到固定长度的数组中。数组长度超过限制时将第一条记录删除，新记录补充到数组尾部。
function addSingleItemToArray(maxArraySize, arrayDataKey, itemValue) {
	var arrayStr = base_getItem(arrayDataKey);
	var arrayData = convertType(arrayStr);
	if (!arrayData) {
		arrayData = [];
		arrayData.push(itemValue);
	} else if (arrayData.length < maxArraySize) {
		arrayData.push(itemValue);
	} else{
		arrayData.shift();
		arrayData.push(itemValue);
	}
	
	arrayStr = stringify(arrayData);
	base_setItem(arrayDataKey, arrayStr);
	console.log('addSingleItemToArray end, arrayStr is ' + arrayStr);
}

//获取数组对象
function getArrayData(arrayDataKey){
	var arrayStr = base_getItem(arrayDataKey);
	var arrayData = convertType(arrayStr);
	return arrayData;
}

//清空数组对象
function clearArrayData(arrayDataKey){
	base_removeItem(arrayDataKey);
}

/**
 * 获取某元素的innerText值
 */
function getInnerText(element) {  
    return (typeof element.textContent == "string") ? element.textContent : element.innerText;  
}  

//判断元素是否包含此类
function hasClass(ele, cls) {
    return ele.className.match(new RegExp('(\\s|^)'+cls+'(\\s|$)'));
}

//给元素添加类
function addClass(ele, cls) {
  if (!this.hasClass(ele,cls)) {
      ele.className += " "+cls;
  }
}

//删除元素的类
function removeClass(ele, cls) {
  if (hasClass(ele,cls)) {
      var reg = new RegExp('(\\s|^)'+cls+'(\\s|$)');
	  ele.className=ele.className.replace(reg,' ');
   }
}

//浏览器检测
var browser = {
	versions : function() {
		var u = navigator.userAgent, app = navigator.appVersion;
		return { 
			trident : u.indexOf('Trident') > -1, //IE内核
			presto : u.indexOf('Presto') > -1, //opera内核
			webKit : u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
			gecko : u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //火狐内核
			mobile : !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端, //是否为移动终端
			ios : !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
			android : u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或者uc浏览器
			iPhone : u.indexOf('iPhone') > -1 || u.indexOf('Mac') > -1, //是否为iPhone或者QQHD浏览器
			iPad : u.indexOf('iPad') > -1, //是否iPad
			webApp : u.indexOf('Safari') == -1 //是否web应该程序，没有头部与底部 ?
		};
	}(),
	language : (navigator.browserLanguage || navigator.language).toLowerCase()
	
	/*比较特别的地方
	UC浏览器没有安卓报头，只返回：linux ，这里粗略的根据linux来判断是安卓（前提必须满足是移动终端，UC这点是满足的）
	安卓QQ浏览器HD版检测的结果是：mac， Safari，这个很是变态*/
};

/**
 * 获取请求所需基础信息，返回字段样式如下
*/
function getBseInfo(){
    var res = exec("WidgetMMPContainerComponents","getBaseInfo",[]);
    var LXBaseInfo = getResultMessage(res);

    if(!LXBaseInfo || !LXBaseInfo.base || !LXBaseInfo.base.aid){
        return null;
   	}
    return LXBaseInfo;
}

/**
 * canvas方式实现图片旋转
 */
function startRotate(target_canvas, img) {
    // stopRotate(content_play_loading_interval);
    console.error("high rotate function is called");
    var dialog_waiting = function() {
        // 获取上下文
        var ctx = target_canvas.getContext("2d");
        // 清空画布
        ctx.clearRect(0, 0, target_canvas.width, target_canvas.height);
        //
        ctx.translate(target_canvas.width / 2, target_canvas.height / 2);

        ctx.rotate(Math.PI / 4);

        ctx.translate(-target_canvas.width / 2, -target_canvas.height / 2);

        if (img != undefined && img != null) {
            ctx.drawImage(img, 0, 0, target_canvas.width, target_canvas.height);
        } else {
            ctx.drawImage(img_dialog_waiting_A[0], 0, 0, target_canvas.width, target_canvas.height);
        }
    };
    var funtion_id = setInterval(function() {
        dialog_waiting();
    }, 125);
    return funtion_id;
}

/**
 * 停止加载动画
 */
function stopRotate(funtion_id) {
    console.log('stopRotate, id ' + funtion_id);
    if (funtion_id != null && typeof funtion_id != "undefined") {
        clearInterval(funtion_id);
        funtion_id = null;
    }
}

/** CSS3方式实现动画*/
function startRotateAnimation(div) {
	console.log("startRotateAnimation");
	var angle = 0;
	var rotate = function(obj, angle) {
		if(obj) {
            obj.style.Transform = "rotate(" + angle + "deg)";
            obj.style.webkitTransform = "rotate(" + angle + "deg)";
		}
	};
	var dialog_waiting = function() {
		angle+=45;
		if(angle >= 360) {
			angle = 0;
		}
		rotate(div, angle);
	};
	var funtion_id = setInterval(function() {
        dialog_waiting();
    }, 125);
	
	return funtion_id;
}

/** 停止CSS3方式实现动画*/
function stopRotateAnimation(funtion_id) {
    console.log('stopRotateAnimation, id ' + funtion_id);
    if (funtion_id != null && typeof funtion_id != "undefined") {
        clearInterval(funtion_id);
        funtion_id = null;
    }
}

/** 复位CSS3动画使用的图片*/
function resetRotateAnimation(div) {
	console.log('resetRotateAnimation');
	if(div) {
		div.style.Transform = "rotate(0deg)";
		div.style.webkitTransform = "rotate(0deg)";
	}
}

/** 延迟请求增加积分*/
function delayRunAddSign(opcode){
    setTimeout(function(){exec("CommonComponents", "addCoin", [{"opCode":opcode}])}, 50);
}

console.log('js file load -- base.js load finish');
