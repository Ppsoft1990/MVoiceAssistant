/**
 * 电话短信频道页面，保存了其它js需要的公共变量和函数。
 * 
 * @author gyliu 2014-7-21
 */

// 用于处理语音回调异常：

function onTtsPlayBegin() {
    console.log("mail-dial, onTtsPlayBegin");
}
function onTtsPlayComplete(errorCode) {
    console.log("mail-dial,, onTtsPlayComplete");
}
function onTtsInterrupt() {
    console.log("mail-dial, onTtsInterrupt");
}
function onTtsResume() {
    console.log("mail-dial, onTtsResume");
}
function onTtsPause() {
    console.log("mail-dial, onTtsPause");
}
function onTtsPlayProcess() {
    console.log("mail-dial, onTtsPlayProcess");
}
function onTtsPlayPrepare() {
    console.log("mail-dial, onTtsPlayPrepare");
}
window.onTtsPlayBegin = onTtsPlayBegin;
window.onTtsPlayComplete = onTtsPlayComplete;
window.onTtsInterrupt = onTtsInterrupt;
window.onTtsResume = onTtsResume;
window.onTtsPause = onTtsPause;
window.onTtsPlayProcess = onTtsPlayProcess;
window.onTtsPlayPrepare = onTtsPlayPrepare;

// 当前添加的View，特指那些可以被清除的View。由java函数调用。
var currentCanDeleteView = null;
var curPage = document.getElementById("dialPanel");;
// 无网络时的view，在不点击气泡操作时，用户设置网络然后返回操作成功时使用
var errorView = null;
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
	
	resouceJs.src = "./dial/resources.js";
	
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
			
			//初始化二级频道页面
//			createDialPage(dialPageData);
			
			flagBusCSSLoaded = true;
		} else{
			console.warn('unknown parseFinish event');
		}
	}, false);
	
	//加载解析xcss样式文件
	var businessXcss = createXcssElement('businessXcss');
	businessXcss.href = "./" + "dial" + "/business.x.css";
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
				
				//滚动到body底部
				// document.body.scrollTop = document.body.scrollHeight;
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

var dialPageData = {
	name : '电话短信',
	id : 'telephone_dial',
	focus : 'telephone',
	icon : 'channel_telephone_icon',
	jsPath : './call/sub_tel.js',
	channelHandler : 'DialBusinesshandlerImpl'
};


/**
 * 获取缓存的用户向导
 */
function getGuideInfo(handlerTag, defaultInfo) {
	var jString = exec(handlerTag, 'getGuideInfo', []);
	var jObject = getResultMessage(jString);

	return jObject ? jObject : defaultInfo;
}

function createDialPage(target){
	console.log("createDialPage() is called");
	
	//main-translate.js文件可能会比resources.js文件先加载完毕，所以判断一下
	if(!window.resourcesJsloadFinish){
		setTimeout(function(){
			createDialPage(dialPageData);
			return;
		},50);
		return;
	}

	
	var requireJSPath = target.jsPath;
	var requireFocus = target.focus;
	// 加载二级页面
		require([ requireJSPath ], function(page) {
			curPage = page;
			/*************二级页面的一些统一处理************/
			// // 将二级页面与频道id关联，便于统一管理 。
			// curPage.id = target.id + "_subPage";
			// // 设置频道业务处理对象，用于频道内部的业务逻辑处理。
			curPage.channelHandler = target.channelHandler;
			// 设置css类
			if (curPage.className) {
				curPage.className = curPage.className + " page";
			} else {
				curPage.className = "page";
			}
			// 进入频道的次数统计
			// if (curPage.entryCount) {
				// curPage.entryCount = curPage.entryCount + 1;
			// } else {
				// curPage.entryCount = 1;
			// }
			/***********************************************/
			
			page.show();

			//this callback should allways be placed on the end of this function
			// be ensure that this message well not send out until all INIT porcess is done 
			exec('WidgetMMPContainerComponents', 'businessXcssParseFinish', []);
		});
}

/*********************二级界面引导和频道消息界面***************************/
function createGuideView(guideInfo, itemClick, isFold, helpButtonClick, openMsgUrlClick, reloadMsgpicUrl,isShowForDefault) {
	function createMsgPicView(openUrlClick, reloadCallback) {
		var picLoadingId = null;
		var messagePicView = document.createElement("div");
		messagePicView.className = "sub_msg_pic_view";

		var picLoading = document.createElement("div");
		picLoading.className = 'sub_msg_pic_load';

		var loadingCanvas = document.createElement("canvas");
		loadingCanvas.className = "sub_msg_pic_load_canvas";
		loadingCanvas.setAttribute("height", dialog_content_play_waiting_canvas_width + "px");
		loadingCanvas.setAttribute("width", dialog_content_play_waiting_canvas_width + "px");

		var loadingError = document.createElement("div");
		loadingError.className = 'sub_msg_pic_load_error';
		loadingError.innerText = "加载失败，点击重试";

		picLoading.appendChild(loadingCanvas);
		picLoading.appendChild(loadingError);

		var messagePic = document.createElement("img");
		messagePic.className = "sub_msg_pic";

		messagePicView.appendChild(messagePic);
		messagePicView.appendChild(picLoading);

		messagePic.onload = function() {
			console.log("channelMsg load success");
			if (picLoadingId) {
				clearInterval(picLoadingId);
				picLoadingId = null;
			}
			loadingError.style.display = "none";
			picLoading.style.display = "none";
			messagePic.style.display = "block";
		};

		messagePic.onerror = function() {
			console.log("channelMsg load error");
			if (picLoadingId) {
				clearInterval(picLoadingId);
				picLoadingId = null;
			}
			messagePic.style.display = "none";
			loadingCanvas.style.display = "none";
			loadingError.style.display = "inline-block";
		};

		messagePicView.setPicUrl = function(urlType, pciUrl) {
			if (0 == urlType) {
				picLoading.style.display = "none";
				messagePic.style.display = "block";
				messagePic.src = pciUrl;
			} else {
				if (picLoadingId) {
					clearInterval(picLoadingId);
					picLoadingId = null;
				}
				messagePic.style.display = "none";
				loadingError.style.display = "none";
				picLoading.style.display = "block";
				loadingCanvas.style.display = "inline-block";

				picLoadingId = startRotate(loadingCanvas, null);
				messagePic.src = pciUrl;
			}
		};

		messagePicView.initPicData = function(urlType, pciUrl) {
			messagePicView.style.display = "block";
			messagePicView.setPicUrl(urlType, pciUrl);
		};

		messagePicView.dismiss = function() {
			console.log("channelMsg load error");
			if (picLoadingId) {
				clearInterval(picLoadingId);
				picLoadingId = null;
				messagePic.style.display = "none";
				loadingCanvas.style.display = "none";
				loadingError.style.display = "inline-block";
			}
		};

		messagePicView.onlyPicViewShow = function() {
			messagePic.style.cssText += "width:100%;height:160px;border-bottom-left-radius:8px;border-bottom-right-radius:8px";
		};
		messagePicView.clearPicStyle = function() {
			messagePic.style.cssText = "display:block";
		};
		
		var guideMove = false;
		messagePicView.addEventListener("touchstart", function() {
			event.stopPropagation();
			guideMove = false;
		}, false);
		messagePicView.addEventListener("touchmove", function() {
			event.stopPropagation();
			guideMove = true;
		}, false);
		messagePicView.addEventListener("touchend", function() {
			event.stopPropagation();
			if (guideMove) {
				return;
			}
			//TODO
			if (event.target == loadingCanvas) {
				return;
			} else if (event.target == loadingError) {
				console.log("null == reloadCallback : " + null == reloadCallback);
				reloadCallback();
			} else {
				openUrlClick();
			}
		}, false);

		return messagePicView;
	}

	var MAX_LENGTH = 6;
	var showLength = 0;
	var foldState = isFold;
	var curHeight = 0;
	var titleText = guideInfo.des;
	var itemShowText = guideInfo.showItems;
	var itemSearchText = guideInfo.searchItems;

	var channelMsgId = guideInfo.msgId;
	var channelPicLocalUrl = guideInfo.msgPicLocalUrl;
	var channelPicUrl = guideInfo.msgPicUrl;
	var channelOpenUrl = guideInfo.msgOpenUrl;

	var messagePicView = null;

	showLength = itemShowText.length < MAX_LENGTH ? itemShowText.length : MAX_LENGTH;

	var outDiv = document.createElement("div");
	outDiv.className = 'box_content_white';

	//添加外壳
	var outDivBox = createBoxDiv("", outDiv);
	
	//消息为默认消息，且默认消息不需要展示
	if(!channelMsgId && !isShowForDefault){
		outDivBox.style.display = "none";
	}

	var inner = document.createElement("div");
	inner.className = "main_list_inner";

	var guideDes = document.createElement("div");
	//guideDes.style.borderBottom = "1px solid #e0e0e0";
	var guideContent = document.createElement("div");

	var guideLeft = document.createElement("div");
	guideLeft.className = "sub_guide_left";
	var guideRight = document.createElement("div");
	guideRight.className = "sub_guide_right";

	var guideText = document.createElement("div");
	guideText.className = "sub_guide_text";
	guideText.innerHTML = titleText;
	
	var guideButton = document.createElement("img");
	guideButton.className = "sub_guide_help";

	guideLeft.appendChild(guideText);
	guideRight.appendChild(guideButton);
	guideDes.appendChild(guideLeft);
	guideDes.appendChild(guideRight);

	//openMsgUrlClick为null，说明该频道不支持消息推送，就不需要创建picview
	if (openMsgUrlClick) {
		outDivBox.openMsgUrlCallback = function() {
			//判断 msgId、msgOpenUrl、openMsgUrlClick
			if (channelMsgId && openMsgUrlClick && channelOpenUrl) {
				openMsgUrlClick(channelMsgId, channelOpenUrl);
			}
		};
		outDivBox.reloadPicUrlCallback = function() {
			console.log("call reload");
			var localPath = null;
			if (reloadMsgpicUrl) {
				localPath = reloadMsgpicUrl(channelMsgId, channelPicUrl);
			}
			if (localPath) {
				messagePicView.initPicData(0, localPath);
			} else {
				messagePicView.initPicData(1, channelPicUrl);
			}
		};

		messagePicView = createMsgPicView(outDivBox.openMsgUrlCallback, outDivBox.reloadPicUrlCallback);
		if (guideInfo.msgPicUrl) {
			messagePicView.style.display = "block";
		} else {
			messagePicView.style.display = "none";
		}
	}

	var guideList = document.createElement("div");
	guideList.className = "sub_guide_list";

	if (foldState) {
		guideContent.style.display = "none";
		guideButton.src = btn_arrow_down_nor;
	} else {
		guideButton.src = btn_arrow_up_nor;
	}

	for (var i = 0; i < showLength; i++) {
		var item = document.createElement("div");
		item.innerHTML = itemShowText[i];
		item.searchText = itemSearchText[i];
		item.className = "sub_guide_item sub_list_divider";
		guideList.appendChild(item);
	}

	inner.appendChild(guideDes);
	
	if (messagePicView) {
		guideContent.appendChild(messagePicView);
	}
	guideContent.appendChild(guideList);
	
	inner.appendChild(guideContent);

	outDiv.appendChild(inner);

	var touchItem = null;
	var guideMove = false;
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
		} else {
			guideButton.src = btn_arrow_down_nor;
		}
		if (foldState) {
			guideContent.style.display = "block";
		} else {
			guideContent.style.display = "none";
		}

		foldState = !foldState;
		outDivBox.drawBg();

		if (helpButtonClick) {
			//箭头按钮点击事件，主要是用于内嵌WebView的位置定位
			helpButtonClick(channelMsgId,foldState);
		}
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
			itemClick(touchItem.searchText,channelMsgId);
			touchItem = null;
		}
	}, false);

	outDivBox.getCurFoldState = function() {
		return foldState;
	};

	outDivBox.updateData = function(updateJson) {
		//如果新旧消息Id相同，不进行刷新，直接返回
		if (updateJson.msgId && channelMsgId && updateJson.msgId == channelMsgId) {
			return;
		}
		
		//默认示例，且默认示例不需要展开
		if(!updateJson.msgId && !isShowForDefault){
			outDivBox.style.display = "none";
		}
		
		//新旧消息ID不同，进行显示，且为展开状态
		if (updateJson.msgId && updateJson.msgId != channelMsgId) {
			foldState = false;
			outDivBox.style.display = "block";
			guideContent.style.display = "block";
		}
		
		channelMsgId = updateJson.msgId;
		channelPicLocalUrl = updateJson.msgPicLocalUrl;
		channelPicUrl = updateJson.msgPicUrl;
		channelOpenUrl = updateJson.msgOpenUrl;

		var updateDes = updateJson.des;
		var updateShowItems = updateJson.showItems;
		var updateSearchItems = updateJson.searchItems;

		if (updateDes) {
			guideText.innerHTML = updateDes;
		}

		if (updateJson.msgPicUrl) {
			if (messagePicView) {
				messagePicView.clearPicStyle();
				if (channelPicLocalUrl) {
					messagePicView.initPicData(0, channelPicLocalUrl);
				} else {
					messagePicView.initPicData(1, channelPicUrl);
				}
			}
		} else {
			if (messagePicView) {
				messagePicView.style.display = "none";
				messagePicView.dismiss();
			}
		}

		if (updateShowItems && updateShowItems.length > 0) {
			//先清空，再重新创建
			guideList.innerHTML = "";
			guideList.style.display = "block";
			showLength = updateShowItems.length < MAX_LENGTH ? updateShowItems.length : MAX_LENGTH;
			for (var i = 0; i < showLength; i++) {
				var item = document.createElement("div");
				item.innerHTML = updateShowItems[i];
				item.searchText = updateSearchItems[i];
				item.className = "sub_guide_item sub_list_divider";
				guideList.appendChild(item);
			}
		} else {
			if (messagePicView) {
				messagePicView.onlyPicViewShow();
				guideList.style.display = 'none';
			}
		}

		var updateHeight = outDivBox.clientHeight;
		if (updateHeight != curHeight) {
			outDivBox.drawBg();
			//背景重绘
			if (helpButtonClick) {//重新定位内嵌webview的位置
				helpButtonClick(channelMsgId,foldState);
			}
		}
	};
	
	outDivBox.dismiss = function(){
		if(messagePicView){
			messagePicView.dismiss();
		}
	};
	
	outDivBox.drawBg = function() {
		curHeight = outDivBox.clientHeight;

		if (messagePicView) {
			if (channelPicUrl) {
				if (channelPicLocalUrl) {//图片有本地资源
					messagePicView.initPicData(0, channelPicLocalUrl);
				} else {
					messagePicView.initPicData(1, channelPicUrl);
				}
			}
		}
	};
	return outDivBox;
}

/*******************创建底部长按钮******************* */
function createLongButton(text,callBackFunc){
	var outDiv = document.createElement("div");
    outDiv.className = 'box_content_white';
    
    var btnText = document.createElement("div");
    btnText.className = "btn_text";
    btnText.innerText = text;
    outDiv.appendChild(btnText);
   
	btnText.addEventListener("touchstart",function(){
		moveOverCheck.start(event);
		outDiv.style.backgroundColor = "#e5e5e5";
	},false);
	btnText.addEventListener("touchmove",function(){
		moveOverCheck.check(event);
		outDiv.style.backgroundColor = "white";
	},false);
	btnText.addEventListener("touchend",function(){
		outDiv.style.backgroundColor = "white";
		if(!moveOverCheck.isMoveOver()){
		    callBackFunc();
		}
	},false);
	
	//添加外壳
    var outDivBox = createBoxDiv("", outDiv);
    
    return outDivBox;
}

/**
 * 删除当前可被删除的元素
 */
function removeCurrentCanDeleteView(viweId) {
	console.log("removeCurrentCanDeleteView :" + currentCanDeleteView);
	if (currentCanDeleteView && currentCanDeleteView.parentNode) {
		if (currentCanDeleteView.deleteView && typeof currentCanDeleteView.deleteView === "function") {
			currentCanDeleteView.deleteView();
		}
		removeChild(currentCanDeleteView.parentNode, currentCanDeleteView);
		currentCanDeleteView = null;
	}
	forceRefreshScreen();
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


function stopRotate(funtion_id) {
	console.log('stopRotate, id ' + funtion_id);
	if (funtion_id != null && typeof funtion_id != "undefined") {
		clearInterval(funtion_id);
		funtion_id = null;
	}
}

function removeErrorView() {
	console.log("curPage.dashbordErrorView is null ==  " + (curPage.dashbordErrorView==null));
    if(curPage.dashbordErrorView){
        removeChild(curPage, curPage.dashbordErrorView);
        curPage.dashbordErrorView = null;
    }
	if (errorView != null) {
		if (errorView != null && errorView.parentNode != null) {
			removeChild(errorView.parentNode, errorView);
		}
		errorView = null;
	}
	// 屏蔽页面刷新不及时的问题
	forceRefreshScreen();
}

/**
 * 函数映射表
 */
var functionMap = {
	QuestionView : {
		url : [ "./dial/questionView_fordial.js" ]
	},
	WidgetCustomerQuestionView : {
		url : [ "./dial/questionView_fordial.js" ]
	},
	AnswerView : {
		url : [ "./common/dialogView.js" ]
	},
	WidgetViaFlyAnswerView : {
		url : [ "./common/dialogView.js" ]
	},
	
	
	
	WidgetViaFlyAnswerView : {
		url : [ "./common/answerView.js" ],
	},
	WidgetContactListView : {
		url : [ "./contact/contactView.js" ],
	},
	WidgetPhoneListView : {
		url : [ "./contact/phoneNumView.js" ],
	},
	WidgetSmsInputView : {
		url : [ "./sms/smsView.js" ],
	},
	NetErrorView : {
		url : [ "./common/errorView.js" ],
	},
	WidgetCallView : {
		url : [ "./call/callView.js" ],
	},
	WidgetContactCreateView : {
		url : [ "./contact/contactCreateView.js" ],
	},
	WidgetContactSearchListView : {
		url : [ "./contact/contactSearchView.js" ],
	},
	RecommendedContactView : {
		url : [ "./contact/recommendedContactView.js" ],
	},
	LatestCallView:{
		url : [ "./call/latestCallView.js" ],
	},
    LatestSmsView : {
    	url : [ "./sms/latestSmsView.js" ],
    },
    WidgetSmsOfflineView : {
    	url : [ "./sms/offlinePackageView.js" ],
    }
};

console.log("main-dial.js load finish");
