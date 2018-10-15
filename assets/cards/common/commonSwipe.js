/**
 * 根据BannerSwipe JS进行修改，变为更为通用的滑动框架
 * @author yongcao
 * @date 2014-9-4
 */

var BASE = {
    getEle: function(str) {
        /**
         * get DOM node
         * @str String, '#id', '.class', 'body'
         */
        if (typeof str !== "string") {
            console.log('Error->BASE.getEle: @str must be an String');
            return;
        }
        var ary = str.split(' ');
        var par = document;
        for(var i = 0; i < ary.length; i++) {
            par = getTargetElement(ary[i]);
        }

        return par;

        function getTargetElement(subStr){
            if(!par)
                return;
            if (par[0])
                par = par[0];
            var tar;
            if (subStr[0] === '#') {  //id
                try{
                    tar = par.getElementById(subStr.substring(1));
                }catch (e){
                    console.log('get DOM Element by id error: '+e);
                }
            } else if (subStr[0] === '.') {  //class
                tar = par.getElementsByClassName(subStr.substring(1));
            } else {  //tag
                tar = par.getElementsByTagName(subStr);
            }
            return tar;
        }
    },
    creEle: function(tag, parEle, id, cls) {
        /**
         * create a DOM node
         * @str String, default is 'div'
         * @parEle DOM element
         * @id,@cls String
         * all parameter allow empty
         */

        !tag && (tag = "div");
        if (typeof tag !== "string") {
            console.log('Error->BASE.creEle: @tag must be an String');
            return;
        }
        var ele = document.createElement(tag);
        id && (typeof id === "string") && (ele.id = id);
        cls && (typeof cls === "string") && (ele.className = cls);
        try{
            parEle && parEle.appendChild(ele);
        }catch (e) {
            console.log('Error->BASE.creEle: @parEle must be DOM element');
        }

        return ele;
    },
    execFun: function(callback, arg) {
        /**
         * if callback is function exec
         * @callback Function
         */
        if(typeof callback === 'function') {
            callback(arg);
        }
    },
    extendObj: function (srcObj, tarObj, subExtend) {
        /**
         * extend the source obj according to the target obj
         * @srcObj,@tarObj Object
         * @subExtend Boolean, extend sub obj
         */
        if (typeof srcObj !== "object" || typeof tarObj !== "object") {
            console.log('Error->BASE.extendObj: @srcObj and @tarObj must be Object');
            return;
        }
        for (var va in tarObj) {
            if (subExtend) {
                dealSubExtend(va);
            } else {
                srcObj[va] = tarObj[va];
            }
        }
        //console.log('Info->BASE.extendObj: srcObj = ' + JSON.stringify(srcObj));

        function dealSubExtend(attr) {
            if (typeof tarObj[attr] === "object") {
                if (typeof srcObj[attr] === "object") {
                    for (var val in tarObj[attr]) {
                        srcObj[attr][val] = tarObj[attr][val];
                    }
                } else {
                    srcObj[attr] = tarObj[attr];
                }
            } else {
                srcObj[attr] = tarObj[attr];
            }
        }
    }
};

function BannerSwipe(configParam) {
    var P = this;

    var $$ = BASE.getEle,
            $_ = BASE.creEle,
            ExecFun = BASE.execFun,
            ExtentObj = BASE.extendObj;

    var innerHTML = "innerHTML",
            className = "className",
            appendChild = "appendChild",
            style = "style";

    var Prefix = getPrefix();
    var Config = getDefaultConfig();  //default config object
    var CurIndex = 0;  //current index
    var AutoRunInterval;  //Function

    P.getCurInfo = function() {
        return {
            currentIndex: CurIndex,
            currentData: Config.viewAry[CurIndex],
            configParam: Config
        };
    };
    P.startRun = startRun;
    P.stopRun = stopRun;
    P.moveTo = moveTo;
    P.refreshImg = refreshImg;

    function initialize() {
        //配置参数的合法性检验
        if (!Config || typeof Config !== 'object') {
            console.log('Error->CommonSwipe@initialize: @Config must be an object');
            return;
        }
        ExtentObj(Config, configParam);
        if (!Config.parWin) {
            console.log('Error->CommonSwipe@initialize: @Config.parWin must be an DOM element');
            return;
        }
        if (!Config.id) {
            console.log('Error->CommonSwipe@initialize: @Config.id can not be empty');
            return;
        }
        if (!Config.viewAry.length) {
            console.log('Error->CommonSwipe@initialize: @Config.viewAry can not be empty');
            return;
        }
        if (!Config.bottomBar) {
            console.log('Error->CommonSwipe@initialize: @Config.bottomBar can not be empty');
            return;
        }
        

        createSwipe();
        initEvent();
        startRun();
    }
    function createSwipe() {
        var id = Config.id;
        var parWin = Config.parWin;
        var viewAry = Config.viewAry;
        var bottomBar = Config.bottomBar;
        
        //创建左右滑动的区域
        var viewUl = createviewUl();
        
        //创建底部显示滑动状态的区域
        //Create the bottom bar if is needed
        if (Config.isNeedBar) {
        	parWin.appendChild(bottomBar);
        }

        function createviewUl() {
            var viewUl = $_('', parWin, id, 'swipe');
            Config.swipe && (viewUl[className] += ' swipe-grab');
            viewUl[style].width = viewAry.length * 100 + "%";
            
            for (var i = 0; i < viewAry.length; i++) {
            	var li = createLi(i);
            	viewUl.appendChild(li);
        	}
            return viewUl;
        }
        function createLi(i) {
            var li = viewAry[i];
            li.className = 'swipe-li';
            li[style].width = 100 / viewAry.length + "%";
            return li;
        }
    }
    function initEvent() {
        var id = Config.id;
        var viewUl = $$("#" + id);
        var flag = 'ontouchstart' in window;
        var START_EVENT = flag ? 'ontouchstart' : 'onmousedown',
                MOVE_EVENT = flag ? 'ontouchmove' : 'onmousemove',
                END_EVENT = flag ? 'ontouchend' : 'onmouseup';

        var begin, moved, focus, startPos, stopPos, startTime;

        viewUl[START_EVENT] = onStart;
		
		var startX;
        var startY;
        function onStart(e) {
        	startX = getCoord(e, 'X');
            startY = getCoord(e, 'Y');
            if (begin)
                return;
            begin = true;
            !Config.swipe && (focus = true);

            //e.preventDefault();

            startPos = getCoord(e, 'X');  //get start X coord
            startTime = new Date();  //get start time
			
            stopRun();
            
            viewUl[MOVE_EVENT] = onMove;
            viewUl[END_EVENT] = onEnd;
        }
        function onMove(e) {
        	//判断是否上下滑动，若是上下滑动则不出理
        	if(startX && startY) {
                var x = getCoord(e, 'X');
                var y = getCoord(e, 'Y');
                var deltaX = x - startX;
                var deltaY = y - startY;
                if (Math.abs(deltaX) < Math.abs(deltaY) * 2) {
                    moved = true;
                    return true;
                }
            }
            
            e.preventDefault();
            e.stopPropagation();

            if (Config.swipe) {  //move img
                moveImg();
            } else {  //if img whether on focus
                imgFocus();
            }

            function moveImg() {
                var startIndex = CurIndex;
                stopPos = getCoord(e, 'X');  //get current X coord

                var width = Config.parWin.offsetWidth;
                var imgLen = Config.viewAry.length;

                var dist = stopPos - startPos;  //displacement

                if (startIndex === 0 && dist > 0) {  //first img to right
                    dist /= 3;
                    (dist >= width / 2) && (dist = width / 2);
                } else if (startIndex === imgLen - 1 && dist < 0) {  //left img to left
                    dist /= 3;
                    (dist <= (-0.5 * width)) && (dist = (-0.5 * width));
                } else {
                    (dist >= width) && (dist = width);
                    (dist <= -width) && (dist = -width);
                }
                viewUl[style].left = (-1 * (width * startIndex) + dist) + "px";  //sync move img

                (startPos !== stopPos) && (moved = true);  //not click
            }
            function imgFocus() {
                var touchTarget;
                if (!e.touches) {
                    touchTarget = e;
                } else {
                    touchTarget = e.touches[0];
                }
                var target = document.elementFromPoint(touchTarget.pageX, touchTarget.pageY);

                if (viewUl === target || viewUl === target.parentNode || viewUl === target.parentNode.parentNode) {
                    focus = true;
                } else {
                    focus = false;
                }
            }
        }
        function onEnd(e) {
        	startX = null;
            startY = null;
            e.preventDefault();
            e.stopPropagation();
            viewUl[MOVE_EVENT] = "";
            viewUl[END_EVENT] = "";

            if (Config.swipe) {  //move img end
                moveEnd();
            } else {  //if img whether on tap
                imgTap();
            }

            function moveEnd() {
                if (!moved) {  //img on click
                	//if clickCallback function is defined,call the clickCallback
                	if (Config.clickCallback) {
                		Config.clickCallback(e);
                	}
                    
                    reset();
                    return;
                }
                //deal move
                var startIndex = CurIndex;
                var time = new Date() - startTime;  //get move time
                var width = Config.parWin.offsetWidth;
                
                if (time < 300) {
                    (startPos < stopPos) && (startIndex--);
                    (startPos > stopPos) && (startIndex++);
                } else {
                    (stopPos - startPos) > width / 3 && (startIndex--);
                    (stopPos - startPos) < -width / 3 && (startIndex++);
                }
                (startIndex < 0) && (startIndex = 0);
                (startIndex >= Config.viewAry.length) && (startIndex = Config.viewAry.length - 1);

                moveTo(startIndex, reset);
            }
            function imgTap() {
                //focus && clickView();
                if (focus && Config.clickCallback) {
                	Config.clickCallback(e);
                }
                reset();
            }
            function reset() {
                moved = false;
                focus = false;
                begin = false;
                startRun();
            }
        }
    }

    function startRun() {
        if (!Config.autoRun || Config.viewAry.length===1)
            return;
        stopRun();
        var next = 1;
        AutoRunInterval = setInterval(function() {
            var index = CurIndex + next;
            (index >= Config.viewAry.length) && (index = 0);
            moveTo(index);
        }, Config.autoRunTime);
    }
    function stopRun() {
    	console.log("stopRun()");
        AutoRunInterval && clearInterval(AutoRunInterval);
    }
    function moveTo(imgIndex, callback) {
        var index = imgIndex - 0;
        if(isNaN(index) || index < 0 || index >= Config.viewAry.length){
            console.log('Error->BannerSwipe@moveTo: can not move to '+imgIndex);
            return;
        }
        CurIndex = index;
        var id = Config.id;
        var viewUl = $$("#"+id);
        var width = Config.parWin.offsetWidth;
        
        //if need animation, start the animation to switch view
        //else switch view directly  
        if (Config.isNeedAnimation) {
        	viewUl[style][Prefix] = "left 0.3s";
        	viewUl[style].left = (-1) * width * index + "px";
        	setTimeout(function() {
            	viewUl[style][Prefix] = "";
            	ExecFun(callback);
            	if (Config.swipeCallback) {
            	    ExecFun(Config.swipeCallback, P.getCurInfo());
            	}
        	}, 300);
        } else {
        	viewUl[style].left = (-1) * width * index + "px";
            ExecFun(callback);
            if (Config.swipeCallback) {
                ExecFun(Config.swipeCallback, P.getCurInfo());
            }
        }
    }
	function refreshImg(id, src) {
        id -= 0;
        if(isNaN(id) || id < 0 || id >= Config.viewAry.length){
            console.log('Error->BannerSwipe@refreshImg: can not find img id of '+id);
            return;
        }
        Config.viewAry[id].src = src;
    }
    
    function getPrefix() {
        //get css3 prefix string
        var mod = $_('modernizr')[style];
        var ary = ['webkitTransition', 'transition', 'MozTransition', 'OTransition', 'msTransition'];
        var ret = ary[0];
        for (var i = 0; i < ary.length; i++) {
            if (mod[ary[i]] !== undefined) {
                ret = ary[i];
                break;
            }
        }
        return ret;
    }
    function getCoord(e, c) {
        var org = e.originalEvent,
                ct = e.changedTouches;
        return ct || (org && org.changedTouches) ? (org ? org.changedTouches[0]['page' + c] : ct[0]['page' + c]) : e['page' + c];
    }
    function getDefaultConfig() {
        return {
            'parWin': null, //parent element which like window
            'id': '', //the id of the ul elment, which is indispensable
            'viewAry': [], //object array, include src|desc|fun
            'bottomBar':null, //div
            "swipe": true, //Boolean, can swipe
            "autoRun": true, //Boolean, can auto run
            "autoRunTime": 5000, //Int, auto run time, unit ms
            "swipeCallback": null,  //Function, swipe or auto run will call the function
            "isNeedAnimation": true, //Boolean, whether need animation when swipe
            "isNeedBar" : true, //Boolean, whether need the bottom bar
            "clickCallback": null //Function, call the function when click the view
        };
    }

    initialize();
}