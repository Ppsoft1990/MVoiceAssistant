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
//华为G660，G730手机特殊适配wm
if (resultDevice.model == "HUAWEI G660-L075" || resultDevice.model == "HUAWEI G730-L075") {
	deviceWidth = 360;
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

// 加载资源
function loadResource() {
	console.log("loadResource() is called");
	var head = document.getElementsByTagName('head').item(0);
	
	var resouceJs = createScriptElement('resouceJs');
	resouceJs.src = "./localDefault/resources.js";
	head.appendChild(resouceJs);
	
	// 捕获xcss解析完成的事件
	document.documentElement.addEventListener("xcssParseFinish", function() {
		if(document.getElementById('businessXcss')){
			// 删除已经不需要的节点
			head.removeChild(document.getElementById('businessXcss'));
			head.removeChild(document.getElementById('xcssParser'));
			// 通知java层，business.xcss解析完毕
			exec('WidgetMMPContainerComponents', 'businessXcssParseFinish', []);
			
		} else{
			console.warn('unknown parseFinish event');
		}
	}, false);

	//加载解析xcss样式文件
	var businessXcss = createXcssElement('businessXcss');
	businessXcss.href = "./localDefault/business.x.css";
	head.appendChild(businessXcss);

	var xcssParser = createScriptElement('xcssParser');
	xcssParser.src = skinPath + "dialogModeRes/xcssParser.js";
	head.appendChild(xcssParser);
	
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
}

loadResource();

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
				/*
				//设置动画
				setAnim(viewName, view, resultJson);
				
				//重设节点margin值，以保证该节点至少“占据”一屏的空间
				resetElementMargin(view);
				
				//滚动节点位置
				scrollElement(view, resultJson);
					
				//开始动画
				startAnim(viewName, view, resultJson);
				*/
				//滚动到body底部
				document.body.scrollTop = document.body.scrollHeight;
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


var handlerMap = {
	dialog: ["./dialog/dialogHandler.js"]
};

var resourceMap = {
	dialog: "dialog"
};

function handleWebResult(xmlStr){
	console.log("handleWebResult xmlStr : " + xmlStr);
	var parser = new DOMParser();
	var xmlDoc = parser.parseFromString(xmlStr, "text/xml");
	
	//解析后的结果
	var filterResult = {};
	filterCommonResult(filterResult, xmlDoc);
	function resouceLoadFinish(){
		addQuestionView(filterResult.rawtext);
		//判断是否能够处理该业务
		if (filterResult.focus in handlerMap){
			var url = handlerMap[filterResult.focus];
			
			require(handlerMap[filterResult.focus], function(recognizeFilter) {
				if ("success" === filterResult.status) {
					recognizeFilter.onSuccess(filterResult, xmlDoc);
				} else {
					if (recognizeFilter.onFail) {
						recognizeFilter.onFail(filterResult, xmlDoc);
					} else {
						delayedAddAnswerView(filterResult.tip, filterResult.focus, 100);
					}
				}
			}, function(err){
				console.log(err);
			});
		} else {
			addAnswerView("暂不支持此功能");
		}
	}
	
	loadVoiceResource(filterResult.focus, resouceLoadFinish);
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
		url : [ "./common/dialogView.js" ]
	}
};

console.log("localMain.js load finish");