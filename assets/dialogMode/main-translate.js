//当前的页面
var curPage; 

//翻译模式
var translationMode = "CnToEn";

//判断是否为移动终端
var isTouch = ('ontouchstart' in window);

// 屏幕滑动距离检测器
var moveOverCheck = new checkMoveOver();

/********************初始化工作开始***************************/
// 获取设备信息
var resultDevice = ifly_getDeviceInfo();
if(!resultDevice){
	resultDevice = {};
	if (isTouch) {
		//移动端设置为窗口宽度
		resultDevice.screenWidth = window.innerWidth;
	} else {
		//pc端设置为固定宽度
		resultDevice.screenWidth = 720;
	}
	resultDevice.model = 'unknown';
	resultDevice.release = '2.2';
}

//设备分辨率
var deviceWidth = resultDevice.screenWidth;
// 是否需要延迟加载
var isNeedResetScale = false;
console.log("resultDevice.release = " + resultDevice.release);
if (resultDevice.release && resultDevice.release.indexOf("4.0") == 0) {
    isNeedResetScale = true;
}
//华为G660，G730手机特殊适配wm
if (resultDevice.model == "G620-L75" || resultDevice.model == "HUAWEI G660-L075" || resultDevice.model == "HUAWEI G730-L075") {
    isNeedResetScale = true;
}

//根据android sdk版本，选择旋转动画的函数版本
try {
	if (resultDevice.model == "MI-ONE C1" || resultDevice.model == "MI 1"
			|| resultDevice.model == "MI 1S") {
		var androidVersion = 2.1;
	} else {
		var androidVersionName = resultDevice.release;
		androidVersion = parseFloat(resultDevice.release);
	}
} catch (e) {
	androidVersion = 2.2;
} finally{
	if (androidVersion < 2.2) {
		startRotate = startRotateLowVersion;
	}
}

function startRotateLowVersion(target_canvas, img) {
    stopRotate(content_play_loding_interval);
    console.log("android low version function is called");
    var fun_id = startRotateLow(target_canvas, null, 0);
    return fun_id;
}

//是否开启动画
var enableAnimation = false;
//皮肤包路径
var skinPath = "../skin/theme_new/";
//版本标识，用来区分灵犀还是语点。默认值为true，表示灵犀
var cmcc_flag = true;

//获取环境信息(皮肤、版本标识、cpu)
var environmentInfo = ifly_getEnvironmentInfo();
if(environmentInfo){
	skinPath = environmentInfo.skinPath;
	cmcc_flag = environmentInfo.isCmcc;
	
	//双核及以上手机开启动画
	if(environmentInfo.cpuCount >= 2){
		enableAnimation = true;
	}
	
	//该款手机开启动画容易崩溃，暂时关闭。by mdhuang 2014年1月22日14:07:20
	if(resultDevice.model.indexOf("HUAWEI D2") > -1){
		enableAnimation = false;
	}
} else {
	enableAnimation = true;
} 

console.log("deviceWidth is :" + deviceWidth + " ,skinPath is " + skinPath + " ,cmcc_flag is " + cmcc_flag + " ,androidVersion is " + androidVersion + " ,enableAnimation is " + enableAnimation);

// 适配比例，xcss文件解析时需要
var scale = deviceWidth / 320;

var marginBottom = 6*scale; //来自css_dilaog_out_div中的margin_bottom

//平移动画的滚动距离
var translateAnimDistance = 100*scale;

var flagBusCSSLoaded = false;

var translationGuide = null;
function switchTranlateMode(mode){
	console.log("switchTranlateMode() is called, mode arg is " + mode);
	if(translationGuide && mode){
		translationGuide.switchMode(mode);
	}
}

// 加载资源
function loadResource() {
	console.log("loadResource() is called");
	function createXcssElement(id) {
		var css = document.createElement('link');
		css.id = id;
		css.rel = 'stylesheet/xcss';
		css.type = 'text/css';
		return css;
	}

	function createScriptElement(id) {
		var script = document.createElement('script');
		script.id = id;
		script.type = "text/javascript";
		return script;
	}
	
	var head = document.getElementsByTagName('head').item(0);
	
	// 加载js文件
	var resouceJs = createScriptElement('resouceJs');
	var resourceFolderName = null;
	
	resouceJs.src = "./translate/resources.js";
	
	console.log("com_iflytek_local_resourceFolder  = " + com_iflytek_local_resourceFolder);
	
	console.log("resourcePath = " + "./" + "translate" + "/resources.js");
	head.appendChild(resouceJs);
	
	// 捕获xcss解析完成的事件
	document.documentElement.addEventListener("xcssParseFinish", function() {
		if(document.getElementById('businessXcss')){
			// 删除已经不需要的节点
			head.removeChild(document.getElementById('businessXcss'));
			head.removeChild(document.getElementById('xcssParser'));
			// 通知java层，business.xcss解析完毕
			//添加用户引导
			createGuide(translateGuideData);
			
			exec('WidgetMMPContainerComponents', 'businessXcssParseFinish', []);
			
		} else{
			console.warn('unknown parseFinish event');
		}
	}, false);
	
	//加载解析xcss样式文件
	var businessXcss = createXcssElement('businessXcss');
	businessXcss.href = "./" + "translate" + "/business.x.css";
	head.appendChild(businessXcss);

	var xcssParser = createScriptElement('xcssParser');
	xcssParser.src = skinPath + "dialogModeRes/xcssParser.js";
	head.appendChild(xcssParser);
}

if (!isNeedResetScale) {
    loadResource();
}


/**
 * 在调用业务处理逻辑前，再获取一次屏幕宽度，重新计算一次scale
 */
function resetScale() {
    if (!isNeedResetScale) {
        console.log("there's no need reset Scale");
        return;
    }
    console.log("before reset scale is " + scale);
    setTimeout(function() {     // 延迟200毫秒获取页面宽度
        deviceWidth = document.body.clientWidth;
        scale = deviceWidth / 320;
        console.log("after reset scale is " + scale);
        marginBottom = 6*scale;
        translateAnimDistance = 100*scale;
        // 调用业务处理逻辑
        loadResource();
    }, 150);
}

/********************初始化工作结束***************************/


/**
 * Java函数对语音识别结果进行处理后，调用此函数进行页面展示
 * 
 * @param viewName
 *            需要处理的view的类型，如对话、提醒、股票等
 * @param result
 *            java进行处理后的数据结果，json格式字符串
 */
function addE(viewName, result) {
	console.log('addE begin, viewName is ' + viewName + ' ,result is ' + result);
	if (viewName in functionMap) {
		require(functionMap[viewName].url, function(func) {
			if (func && typeof func == 'function') {
				//解析业务数据
				var resultJson = eval('(' + result + ')');
				
				//创建节点，并添加到页面中
				var view = func(resultJson);
				
				//设置动画
				setAnim(viewName, view, resultJson);
				
				//重设节点margin值，以保证该节点至少“占据”一屏的空间
				resetElementMargin(view);
				
				//滚动节点位置
				scrollElement(view, resultJson);
					
				//开始动画
				startAnim(viewName, view, resultJson);
				
				forceRefreshScreen();
			} else {
				console.error('addE faile, create func is null');
			}
		});
	}
}

/**
 * 重设元素的margin值
 * @param view
 */
function resetElementMargin(view, isErrorView){
	if(!view.previousElementSibling ){
		console.log('first element, need not control position');
		return;
	}
	
	//errorView特殊处理
	if(isErrorView){
		view.style.marginBottom = window.innerHeight + 'px';
	}
	//先设置当前节点的margin值
	else if(view.clientHeight + 2*marginBottom < window.innerHeight){
		view.style.marginBottom = (window.innerHeight - view.clientHeight - marginBottom) + 'px';
	}
	
	//然后再恢复前一个节点的margin值，这样能够把当前节点给“拉起来”
	if(view.previousElementSibling){
		view.previousElementSibling.style.marginBottom = marginBottom + 'px';
	} 
}

/**
 * 滚动节点位置
 */
function scrollElement(view, resultJson){
	// 本节点为第一置顶元素
	if(view.topFirst){
		// 直接将本节点置顶
		scrollToView(view);
	}
	// 本节点为第二置顶元素
	else if(view.topSecond){
		if (view.previousElementSibling	&& view.previousElementSibling.topFirst) {
			// 前节点为第一置顶元素，保险起见将前节点再次置顶，规避某些手机上出现不置顶的情况
			scrollToView(view.previousElementSibling);
		} else{
			// 前面没有第一置顶元素，则将本节点置顶
			scrollToView(view);
		}
	}
}

/********************动画处理函数***************************/
function setAnim(viewName, element, resultJson){
	if (resultJson.isHistoryResult || element.noAnim) {
		console.log('no setAnim, return');
		return;
	}
	if (viewName === 'WidgetCustomerQuestionView' || viewName === 'WidgetViaFlyAnswerView' ) {
		addOpacityAnim(element);
	} else {
		addTranslateAnim(element);
	}
}

function startAnim(viewName, element, resultJson){
	if (resultJson.isHistoryResult || element.noAnim) {
		console.log('no startAnim, return');
		return;
	}
	if (viewName === 'WidgetCustomerQuestionView' || viewName === 'WidgetViaFlyAnswerView' ) {
		startOpacityAnim(viewName, element);
	} else {
		startTranslateAnim(element);
	}
}

//渐变动画
function addOpacityAnim(element){
	if (enableAnimation) {
		element.style.opacity = "0.0";
		addClass(element, 'css_dialog_opacity_anim');
	}
}

function startOpacityAnim(viewName, element){
	if (enableAnimation) {
		//动画结束后的清理工作
		var animEndListener = function(){
			removeClass(element, 'css_dialog_opacity_anim');
			element.removeEventListener("webkitTransitionEnd", animEndListener);
		};
		element.addEventListener("webkitTransitionEnd", animEndListener);
		
		if (viewName === 'WidgetCustomerQuestionView'){
			//转写气泡动画延时一段时间再显示，以便先完成位置置顶的动作
			setTimeout(function(){
				 element.style.opacity = "1.0";
			},100);
		} else{
			element.style.opacity = "1.0";
		}
	}
}

//平移动画
function addTranslateAnim(element){
	if (enableAnimation) {
		element.style.opacity = "0.0";
		element.style.webkitTransform = "translate(0," + translateAnimDistance + "px)";
		addClass(element, 'css_dialog_translate_anim');
	}
}

function startTranslateAnim(element){
	if (enableAnimation) {
		//动画结束后的清理工作
		var animEndListener = function(){
			removeClass(element, 'css_dialog_translate_anim');
			element.removeEventListener("webkitTransitionEnd", animEndListener);
		
			//强制界面重排，解决某些情况下translate完成后界面多出一大块空白的问题
			if(element.style.marginBottom){
			    element.style.marginBottom = (parseFloat(element.style.marginBottom) + 1) + 'px';
			} else{
				element.style.marginBottom = (marginBottom + 1) + 'px';
			}
		};
		element.addEventListener("webkitTransitionEnd", animEndListener);
		
		element.style.opacity = "1.0";
		element.style.webkitTransform = "translate(0,0px)";
	}
}

/**
 * 删除子节点，使用此方法便于进行一些公共的逻辑处理。
 *
 * @param parent
 * @param child
 */
function removeChild(parent, child) {
	console.log('removeChild begin');
	
	// 删除之前，判断是否对页面最后节点的操作
	var isLastElement = false;
	if(parent == curPage.lastElementChild || child == curPage.lastElementChild){
		isLastElement = true;
	}
	
    parent.removeChild(child);

    // 最后的节点发生了变化，需要重新调整位置
    var view = curPage.lastElementChild;
	if (isLastElement && view) {
		if (child == errorView || child == curPage.dashbordErrorView) {
			resetElementMargin(view,true);
//			scrollToBottom();
		} else {
			resetElementMargin(view);
//			scrollToView(view);
		}
	}
	
	// 删除节点将导致页面高度变化，所以需要刷新内嵌的原生webview
    refreshWeb();
}

function refreshWeb() {
	console.log('refreshWeb begin');

	var webChilds = curPage.getElementsByClassName('css_dialog_web_div');
	if (webChilds != null && webChilds.length > 0) {
		var length = webChilds.length;
		for ( var i = 0; i < length; i++) {
			var innerdiv = webChilds[i];
			exec('WidgetMMPContainerComponents', 'refreshWeb', [
					innerdiv.offsetWidth, innerdiv.offsetHeight,
					innerdiv.offsetLeft, innerdiv.offsetTop, innerdiv.id ]);
		}
	}
}

/* 创建position为relative的外层div */
function createOutDiv(id) {
	var relativeDiv = document.createElement("div");
	relativeDiv.className = "css_dilaog_out_div";
	if (id != undefined && id != null) {
		relativeDiv.id = id;
	}
	return relativeDiv;
}

/* 创建外层容器div */
function createBoxDiv(id,outDiv) {
	var inner_box = document.createElement("div");
	inner_box.className = "box_inner";
	inner_box.appendChild(outDiv);
	
	var out_box = document.createElement("div");
	out_box.className = "box_out";
	out_box.appendChild(inner_box);
	
	if (id) {
		out_box.id = id;
	}
	return out_box;
}

//添加转写气泡
function addQuestionView(text) {
	var viewData = {};
	viewData.questionText = text;
	viewData.taskHandler = 'demo_questionView';
	viewData.intentType = 'demo';
	viewData.editEnable = false;
	addE('QuestionView', JSON.stringify(viewData));
}
function delayedAddAnswerView(text, focus, delayTime) {
	var viewData = {};
	viewData.answerText = text;
	viewData.taskHandler = 'demo_answerView';
	viewData.type = 'NORMAL';
	viewData.showShare = false;
	viewData.topic = 'demo';
	viewData.focus = focus;
	viewData.speechText = text;
	viewData.needTaskButton = false;

	setTimeout(function() {
		addE('AnswerView', JSON.stringify(viewData));
	}, delayTime);
}

//添加转写气泡
function addAnswerView(text) {
	var viewData = {};
	if(text){
		viewData.answerText = text;
	}else{
		viewData.answerText = "";
	}
	viewData.taskHandler = 'demo_answerView';
	viewData.intentType = 'demo';
	viewData.editEnable = false;
	addE('AnswerView', JSON.stringify(viewData));
}

function addWebE(viewName, jsonResult){
	console.log('addWebE begin');
	if (viewName in functionMap) {
		require(functionMap[viewName].url, function(func) {
			if (func && typeof func == 'function') {
				//创建节点，并添加到页面中
				var view = func(jsonResult);
				forceRefreshScreen();
			} else {
				console.error('addE fail, create func is null');
			}
		});
	}
}


var translateGuideData = {
	title : "点击底部麦克风，说出以下内容来",
	cnContent : [{
		show : '“翻译很高兴认识你”',
		search : '翻译很高兴认识你'
	}, {
		show : '“翻译早上好”',
		search : '翻译早上好'
	}],
	enContent : [{
		show : '“Nice to meet you”',
		search : 'Nice to meet you'
	}, {
		show : '“Good morning”',
		search : 'Good morning'
	}]
};


function createGuide(guideData){
	console.log("createGuide() is called");
	
	//main-translate.js文件可能会比resources.js文件先加载完毕，所以判断一下
	if(!window.resourcesJsloadFinish){
		setTimeout(function(){
			createGuide(translateGuideData);
			return;
		},50);
		return;
	}
	
	var outDiv = document.createElement("div");
    outDiv.className = 'box_content_white';
    
    //添加外壳
    var outDivBox = createBoxDiv("", outDiv);
    
    var guideDes = document.createElement("div");

    var guideLeft = document.createElement("div");
    guideLeft.className = "sub_guide_left";
    var guideRight = document.createElement("div");
    guideRight.className = "sub_guide_right";

    var guideText = document.createElement("div");
    guideText.className = "sub_guide_text";
    guideText.innerHTML = guideData.title;

    var guideButton = document.createElement("img");
    guideButton.className = "sub_guide_help";
    guideButton.src = btn_arrow_up_nor;

    guideLeft.appendChild(guideText);
    guideRight.appendChild(guideButton);
    guideDes.appendChild(guideLeft);
    guideDes.appendChild(guideRight);
    
    var guideList = document.createElement("div");
    guideList.className = "sub_guide_list";

    
    for (var i = 0; i < guideData.cnContent.length; i++) {
        var item = document.createElement("div");
        item.innerHTML = guideData.cnContent[i].show;
        item.searchText = guideData.cnContent[i].search;
        item.className = "sub_guide_item sub_list_divider";
        guideList.appendChild(item);
    }
    
    outDiv.appendChild(guideDes);
    outDiv.appendChild(guideList);

	var touchItem = null;
    var guideMove = false;
    var foldState = false;
    
    guideDes.addEventListener("touchstart", function() {
        event.stopPropagation();
        guideMove = false;
        if (foldState) {
            guideButton.src = btn_arrow_down_press;
        } else {
            guideButton.src = btn_arrow_up_press;
        }
    }, false);
    guideDes.addEventListener("touchmove", function() {
        event.stopPropagation();
        guideMove = true;
        if (foldState) {
            guideButton.src = btn_arrow_down_nor;
        } else {
            guideButton.src = btn_arrow_up_nor;
        }
    }, false);
    guideDes.addEventListener("touchend", function() {
        event.stopPropagation();
        if (guideMove)
            return;
        if (foldState) {
            guideButton.src = btn_arrow_up_nor;
            guideList.style.display = "block";
        } else {
            guideButton.src = btn_arrow_down_nor;
            guideList.style.display = "none";
        }

        foldState = !foldState;

    }, false);


    guideList.addEventListener("touchstart", function() {
        event.stopPropagation();
        touchItem = getParentOfClass("sub_guide_item", event.target);
        if (touchItem) {
            touchItem.style.backgroundColor = "#e5e5e5";
        }
    }, false);
    guideList.addEventListener("touchmove", function() {
        event.stopPropagation();
        if (touchItem) {
            touchItem.style.backgroundColor = "";
            touchItem = null;
        }
    }, false);
    guideList.addEventListener("touchend", function() {
        event.stopPropagation();
        if (touchItem) {
            touchItem.style.backgroundColor = "";
            exec("TranslateBusinessHandler", 'startTranslation', [touchItem.searchText]);
            touchItem = null;
        }
    }, false);
    document.getElementById("translateGuidePanel").appendChild(outDivBox);
    
    outDivBox.switchMode = function(mode){
    	var items = guideList.children;
    	if(!items || items.length < 1){
    		console.log("翻译模式切换失败");
    		return;
    	}
    	
    	//更改翻译模式
    	translationMode = mode;
    	
    	if("CnToEn" === mode){
    		items[0].innerHTML = guideData.cnContent[0].show;
        	items[0].searchText = guideData.cnContent[0].search;
        	
        	items[1].innerHTML = guideData.cnContent[1].show;
        	items[1].searchText = guideData.cnContent[1].search;
    	}else if("EnToCn" === mode){
    		items[0].innerHTML = guideData.enContent[0].show;
        	items[0].searchText = guideData.enContent[0].search;
        	
        	items[1].innerHTML = guideData.enContent[1].show;
        	items[1].searchText = guideData.enContent[1].search;
    	}
    };
    
    translationGuide = outDivBox;
    
    return outDivBox;
}


/**
 * 函数映射表
 */
var functionMap = {
	QuestionView : {
		url : [ "./common/questionView.js" ]
	},
	WidgetCustomerQuestionView : {
		url : [ "./common/questionView.js" ]
	},
	AnswerView : {
		url : [ "./common/dialogView.js" ]
	},
	WidgetViaFlyAnswerView : {
		url : [ "./translate/answerView.js" ]
	}
};

console.log("main-translate.js load finish");