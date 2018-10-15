/****************************错误提示View****************************/
define(function() {
	var callTipJson = {
		"icon" : channel_telephone_icon_dash,
		"tips" : ["“打电话给<label style='color: #66abe0;'>张三</label>”", "“给<label style='color: #66abe0;'>张三</label>打电话”"]
	};
	var smsTipJson = {
		"icon" : channel_message_icon_dash,
		"tips" : ["“发短信给<label style='color: #66abe0;'>张三</label>”", "“给<label style='color: #66abe0;'>张三</label>发短信”", "“把<label style='color: #66abe0;'>张三</label>的号码发给<label style='color: #66abe0;'>李四</label>”"]
	};
	var remindTipJson = {
		"icon" : channel_remind_icon_dash,
		"tips" : ["“<label style='color: #66abe0;'>下午一点</label>提醒我”", "“提醒我<label style='color: #66abe0;'>明天上午8点</label>开会”"]
	};
	var appTipJson = {
		"icon" : channel_appOpen_icon_dash,
		"tips" : ["“打开<label style='color: #66abe0;'>设置</label>”", "“打开<label style='color: #66abe0;'>微信</label>”"]
	};

	var callFocusTipJson = {
	    "tips" : ["·声音可以大一些，清晰一些；", "·请确认该联系人在您的通讯录中。"]
	};

	var appFocusTipJson = {
    	"tips" : ["·声音可以大一些，清晰一些；", "·请确认该应用在您的手机中。"]
    };

	
	var homeTipInfo = [callTipJson,smsTipJson,appTipJson,remindTipJson];
	var callTipInfo = [callTipJson,smsTipJson];
	var smsTipInfo = [smsTipJson];
	var remindTipInfo = [remindTipJson];
	var appTipInfo = [appTipJson];
	var callFocusTipInfo = [callFocusTipJson];
	var smsFocusTipInfo = [callFocusTipJson];
	var appFocusTipInfo = [appFocusTipJson];
	
	
	function createErrorView(errorInfo) {
		if (errorView && errorView.parentNode == curPage) {
            removeErrorView();
        }
        if (currentCanDeleteView) {
        	removeCurrentCanDeleteView();
        }
		var view = document.createElement("div");
        var offlineView;
		var tipView;
		var opView;
		var openContactsBtnBox;
		var tipString;
		var tipInfo;
		var taskHandler = errorInfo.taskHandler;
		//TODO focusType 需要修正
		if(errorInfo.focus) {
			if(errorInfo.focus == "telephone"){
				tipInfo = callFocusTipInfo;
				tipString = "没听清您要打电话给谁？请再说一遍。";
			} else if(errorInfo.focus == "message"){
				tipInfo = smsFocusTipInfo;
				tipString = "没听清您要发短信给谁？请再说一遍。";
			} else if(errorInfo.focus == "app"){
				tipInfo = appFocusTipInfo;
				tipString = "没听清您要打开哪个应用？请再说一遍。";
			} else{
				//FIXME 其余focus怎么处理？
			}
			if(tipString){
                offlineView = createSimpleAnswer(tipString);
			}
			if(tipInfo){
				tipView = createOfflineSpeexhTip(tipInfo , "灵犀建议您：");
			}
		} else if (errorInfo.errorType == "no_network_access" && errorInfo.channel) {
			if (errorInfo.channel == "home") {
				tipInfo = homeTipInfo;
			}else if (errorInfo.channel == "telephone_dial") {
				tipInfo = callTipInfo;	
			}else if (errorInfo.channel == "mms_send") {
				tipInfo = smsTipInfo;	
			}else if (errorInfo.channel == "app_common") {
				tipInfo = appTipInfo;			
			}else if (errorInfo.channel == "schedule_default") {
				tipInfo = remindTipInfo;	
				opView = createOpView(errorInfo.realTaskHandler,"手动设置一个提醒");		
			}
			
            offlineView = createSimpleAnswer("不明白您的意思，请尝试以下说法。");
			if(tipInfo){
				tipView = createOfflineSpeexhTip(tipInfo);
			}
			curPage.dashbordErrorView = view;
		} else {
            offlineView = createNormalErrorView(errorInfo);
		}

		if (errorInfo.focus && (errorInfo.focus == "telephone" || errorInfo.focus == "message")){
            // 打开本地通讯录
            var openContactsBtn = document.createElement("div");
            openContactsBtn.className = 'box_content_white';
            openContactsBtn.style.backgroundColor = "#73C96E";
            
            var btnInfo = document.createElement("div");
            btnInfo.className = "css_pay_info_div";
            btnInfo.innerText = "查看全部联系人";
            openContactsBtn.appendChild(btnInfo);

            //添加外壳
            var openContactsBtnBox = createBoxDiv("", openContactsBtn);
            
			var isNeedRequest = true;
			openContactsBtnBox.addEventListener("touchstart", function() {
                event.stopPropagation();
                isNeedRequest = true;
                btnInfo.style.backgroundColor = "#6DBF68";
            }, false);

			openContactsBtnBox.addEventListener("touchmove", function() {
                event.stopPropagation();
                isNeedRequest = false;
                btnInfo.style.backgroundColor = "#73C96E";
            }, false);

			openContactsBtnBox.addEventListener("touchend", function() {
                event.stopPropagation();
                btnInfo.style.backgroundColor = "#73C96E";
                if (isNeedRequest) {
                    //if (simType == "China_Mobile") {
                    //    exec("WidgetMMPContainerComponents", 'startSingleRecognize', ["telephone_fee", "我要交话费"]);
                    //} else {
                    //    exec(cmBusinessPanel.channelHandler, "queryOrPay", ["payTelFee"]);
                    //}
                    exec(taskHandler, "open_contacts_app", []);
                }
            }, false);
        }
		
		if(offlineView){
		    view.appendChild(offlineView);
	    }
		if(tipView) {
			view.appendChild(tipView);
		}
		if(opView){
			view.appendChild(opView);
		}
		if(openContactsBtnBox){
		    view.appendChild(openContactsBtnBox);
		}
		
		view.needScroll = true;
		view.topFirst = true;
		view.id = taskHandler;
		curPage.appendChild(view);
        // errorView = view;
        currentCanDeleteView = view;
		return view;
	}
	
	function createOfflineTipItem(itemTipJson) {
		var iconSrc = itemTipJson.icon;
		var items = itemTipJson.tips;
		
		var contentItem = document.createElement("div");
		contentItem.className = "main_list_item";
		 
		if(iconSrc){
			var itemLogo = document.createElement("img");
			itemLogo.src = iconSrc;
			itemLogo.className = "main_item_icon_dash";
		}
		var sample = document.createElement("div");
		if(iconSrc){
			sample.className = "error_line_text";
		} else {
			sample.className = "error_line_text_without_src";
		}
		
		for(var i=0; i< items.length; i++){
			var itemContent = document.createElement("div");
			itemContent.className = "dashboard_error_text";
			itemContent.innerHTML = items[i];
			sample.appendChild(itemContent);
		}

        if(iconSrc){
		    contentItem.appendChild(itemLogo);
		}
		contentItem.appendChild(sample);
		
		return contentItem;
	}

	function createOfflineSpeexhTip(tipInfoArr , title){
		var outDiv = document.createElement("div");
        outDiv.className = 'box_content_white';

        if(title){
			var titleText = document.createElement("div");
			titleText.className = "dashboard_error_title" + " sub_list_divider2";
			titleText.innerText = title;
			outDiv.appendChild(titleText);
		}
        
		var container = document.createElement("div");
		container.className = 'main_list_inner';
		
		for(var i = 0; i < tipInfoArr.length; i++){
			var tipItem = createOfflineTipItem(tipInfoArr[i]);
			container.appendChild(tipItem);
		}
		outDiv.appendChild(container);
		
		//添加外壳
        var outDivBox = createBoxDiv("", outDiv);
		return outDivBox;
	}

	/*********************网络错误提示气泡*****************************/
	function createNormalErrorView(errorInfo) {
		var errorType = errorInfo.errorType;
		var realTaskHandler = errorInfo.realTaskHandler;
		var isErrorOperate = 0;

		var outDiv = document.createElement("div");
        outDiv.className = 'box_content_white';
        
		var dialog_error_inner = document.createElement("div");
		dialog_error_inner.className = "css_dialog_answer_text";

		var error_func = document.createElement("div");
		error_func.className = "css_answer_text_whith_share";

		if (errorType != "dialog_error_tip") {
			var errorTextContainer = document.createElement("span");

			errorTextContainer.innerText = errorInfo.errorText;
			var errorIcon = document.createElement("img");

			if (errorType == "no_network_access" || errorType == "goto_language_activity") {
				errorTextContainer.className = "css_dialog_error_whith_icon_text";
				errorIcon.className = "css_dialog_error_set_icon";
				errorIcon.src = error_goto_set;
			} else if (errorType == "network_access_overtime") {
				errorTextContainer.className = "css_dialog_error_whith_icon_text";
				errorIcon.className = "css_dialog_error_retry_icon";
				errorIcon.src = error_goto_retry;
			}
			error_func.appendChild(errorTextContainer);
			error_func.appendChild(errorIcon);

			dialog_error_inner.appendChild(error_func);
			if (errorInfo.isTipShow) {
				var err_func_text = document.createElement("div");
				err_func_text.className = "css_error_tip_text";
				err_func_text.innerText = "无网络时，您可以使用打电话、发短信功能";
				dialog_error_inner.appendChild(err_func_text);
			}

			isErrorOperate = 1;
			if (errorType != "goto_language_activity") {
				console.log("errorType is delete : " + errorType);
			} else {
				console.log("errorType is normal : " + errorType);
				isErrorOperate = 2;
			}
		} else {
			error_func.innerText = errorInfo.errorText;
			dialog_error_inner.appendChild(error_func);
		}
		outDiv.appendChild(dialog_error_inner);

		//气泡尖角
        var corner_img = document.createElement("img");
		corner_img.src = chat_corner_left;
		corner_img.className = "chat_corner_left";
		outDiv.appendChild(corner_img);
		
		//添加外壳
        var outDivBox = createBoxDiv("", outDiv);
		curPage.appendChild(outDivBox);

		// 使用自定义scrolltouch事件，控制在滑动时点击是否生效；
		enableScrollTouch(outDivBox, 15, null);
		outDivBox.addEventListener("scrolltouch", function() {
			if (isErrorOperate == 1) {
				removeErrorView();
			}
			exec(realTaskHandler, errorType, []);
		}, false);

		outDivBox.refresh = function() {
			if (errorType == "no_network_access") {
				errorIcon.src = dialog_goto_right_icon;
			} else if (errorType == "network_access_overtime") {
				errorIcon.src = dialog_stock_refresh;
			}
		};

		return outDivBox;
	}
	
	function createOpView(handlerFlag,opText){
		console.log("handlerFlag == " + handlerFlag);
		var outDiv = document.createElement("div");
	    outDiv.className = "box_content_white";
	    
        var opInner = document.createElement("div");
        opInner.className = "latest_op_inner";

        var opLeft = document.createElement("div");
        opLeft.className = "latest_op_left";
        var opTip = document.createElement("div");
        opTip.className = "latest_op_tip";
        opTip.innerText = opText;
        opLeft.appendChild(opTip);
        var opRight = document.createElement("div");
        opRight.className = "latest_op_right";
        var gotoButton = document.createElement("img");
        gotoButton.src = channel_goto_sub;
        gotoButton.className = "main_item_right_icon";
        
        opRight.appendChild(gotoButton);

        opInner.appendChild(opLeft);
        opInner.appendChild(opRight);

        outDiv.appendChild(opInner);
        
        var isMove = false;
		opInner.addEventListener("touchstart",function(){
			isMove = false;
			outDiv.style.backgroundColor = "#e5e5e5";
		},false);
		opInner.addEventListener("touchmove",function(){
			isMove = true;
			outDiv.style.backgroundColor = "white";
		},false);
		opInner.addEventListener("touchend",function(){
			console.log("handlerFlag1 == " + handlerFlag);
			outDiv.style.backgroundColor = "white";
			if(isMove == false){
				console.log("handlerFlag2 == " + handlerFlag);
				exec(handlerFlag,"openScheduleEdit",[]);
			}
		},false);
		
		//添加外壳
        var outDivBox = createBoxDiv("", outDiv);
        return outDivBox;
    }
	
	/**
     * 该函数以后会提取为公共函数
     */
    function createSimpleAnswer(text, callBack) {
        var outDiv = document.createElement("div");
        outDiv.className = "box_content_white";
        
        var container = document.createElement("div");
        container.className = 'simple_answer_container';
        var dialog_text = document.createElement("div");
        dialog_text.className = "simple_answer_text";
        dialog_text.innerText = text;

        container.appendChild(dialog_text);
        outDiv.appendChild(container);
        
        //气泡尖角
        var corner_img = document.createElement("img");
		corner_img.src = chat_corner_left;
		corner_img.className = "chat_corner_left";
		outDiv.appendChild(corner_img);
		
		//添加外壳
        var outDivBox = createBoxDiv("", outDiv);
        return outDivBox;
    }
	
	function createSimpleOffView(errorInfo){
		var realTaskHandler = errorInfo.realTaskHandler;
        var errorType = errorInfo.errorType;
        var outDiv = document.createElement("div");
        outDiv.className = "box_content_white";

		var dialog_error_inner = document.createElement("div");
		dialog_error_inner.className = "css_dialog_answer_text";

		var error_func = document.createElement("div");
		error_func.className = "css_answer_text_whith_share";

		var errorTextContainer = document.createElement("span");

		errorTextContainer.innerText = errorInfo.errorText;
		var errorIcon = document.createElement("img");

		errorTextContainer.className = "css_dialog_error_whith_icon_text";
		errorIcon.className = "css_dialog_error_set_icon";
		errorIcon.src = error_goto_set;

		error_func.appendChild(errorTextContainer);
		error_func.appendChild(errorIcon);

		dialog_error_inner.appendChild(error_func);
		outDiv.appendChild(dialog_error_inner);

		//气泡尖角
        var corner_img = document.createElement("img");
		corner_img.src = chat_corner_left;
		corner_img.className = "chat_corner_left";
		outDiv.appendChild(corner_img);
		
		//添加外壳
        var outDivBox = createBoxDiv("", outDiv);

		// 使用自定义scrolltouch事件，控制在滑动时点击是否生效；
		enableScrollTouch(outDivBox, 15, null);
		outDivBox.addEventListener("scrolltouch", function() {
            removeChild(outDivBox.parentNode,outDivBox);
			exec(realTaskHandler, errorType, []);
		}, false); 
		return outDivBox;
	}
	
	return createErrorView;
});