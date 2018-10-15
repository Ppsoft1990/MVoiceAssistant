/**
 * 电话频道视图
 *
 * @author jffang 2013-5-7
 * @author modified by mdhuang 2013-11-12 修改内容：canvas替代
 */
define(function() {
	var foldKey = "sub_tel_fold";
	var guideFoldState = false;
	var hasClickRegetCalllog = false;
	var guideInfo = {
		"des" : "点击底部麦克风，说出联系人姓名来快速拨打电话",
		"showItems" : ["“打电话给张三”", "“张三”"],
		"searchItems" : ["打电话给张三", "张三"]
	};
	
	var missed_call = 3;
	var telPanel = document.createElement("div");
	
	var guideContainer = document.createElement("div");
	telPanel.appendChild(guideContainer);
	
	document.body.appendChild(telPanel);
	
	var guide = null;

	var waitTime = 0;

	var history = createTelephoneSub();
	telPanel.appendChild(history);

	//常用号码查询入口
	// var directoryAssistance = createDirectoryAssistanceActivity();
	var directoryAssistance = createHotFunction();
	telPanel.appendChild(directoryAssistance);
	
	var currentOpenedMenu = null;


	telPanel.updateUI = function(dataInfo) {
		// alert("SEARCH JSON INFO IS : " + dataInfo);
		console.log("dataInfo:" + dataInfo);
		history.refresh(dataInfo.list);
	};
	
	telPanel.show = function() {
		telPanel.style.display = "block";
		console.log("guideFoldState = " + guideFoldState);
		//目前不需要显示说法示例，所以不显示
		// var showGuideInfo = getGuideInfo(telPanel.channelHandler,guideInfo);
		// if(guide){
			// guide.updateData(showGuideInfo);
		// }else{
			// if(base_getItem(foldKey)){
				// guideFoldState = true;
			// }
			// guide = createGuideView(showGuideInfo,guideItemClick,guideFoldState,closeChannelMsg,null,null,false);
			// guideContainer.appendChild(guide);
			// guide.drawBg();
		// }
		
		var result = exec(telPanel.channelHandler, 'getTelCache', []);
		console.log('getTelCache result:' + result);
		var value = getResultMessage(result);
		console.log(JSON.stringify(value));
		
//		//测试代码
//		var value = JSON.parse("{\"list\":[{\"time\":\"昨天\",\"type\":2,\"mobile\":false,\"tel\":\"609278546\",\"name\":\"白杨\"}]}");
//		console.log("tel updata is : " + JSON.stringify(value));
		
		if (value && value.list) {
			history.refresh(value.list);
		} else {
			console.log("result:" + result);
			if (null!=result.indexOf("reget") && result.indexOf("reget") > 0) {
				history.refresh([],true);
			} else {
			    history.refresh([],true);
			}
		}
	};
	telPanel.dismiss = function() {
		console.log("telPanel dismiss function is called");
		console.log("this is : " + this + " 。id is :" + this.id);
		telPanel.style.display = "none";
		/*
		if(guide.getCurFoldState()){
					base_setItem(foldKey,'true');
				}else{
					base_removeItem(foldKey);
				}*/
		if(guide){
			guide.dismiss();
		}
	};

	function createHotFunction() {
		// 列表主体
        var outDiv = document.createElement("div");
		outDiv.className = "box_content_white";

        // 列表container
        var hot_schedule_list_container = document.createElement("div");
        hot_schedule_list_container.className = "box_content_white";
    	
    	//title
        var title = document.createElement("div");
        title.className = "sub_tel_hot_title";
        var title_text = document.createElement("label");
        title_text.className = "sub_tel_hot_title_text sub_tel_hot_padding_left";
        title_text.innerText = "热门功能";
        title.appendChild(title_text);
        
        //转发联系人
        var sendContact = document.createElement("div");
        sendContact.className = "sub_tel_hot_item sub_list_divider";
        var sendContactLine1 = document.createElement("label");
        sendContactLine1.className = "sub_tel_hot_text_line_1 sub_tel_hot_padding_left";
        sendContactLine1.innerText = "转发联系人";
        sendContact.appendChild(sendContactLine1);
        var sendContactLine2 = document.createElement("label");
        sendContactLine2.className = "sub_tel_hot_text_line_2 sub_tel_hot_padding_left";
        sendContactLine2.innerText = "点击麦克风说：“把张三的号码发给李四”";
        sendContact.appendChild(sendContactLine2);
        
        //发送祝福短信
        var sendBlessMessage = document.createElement("div");
        sendBlessMessage.className = "sub_tel_hot_item sub_list_divider";
        var sendBlessMessageLine1 = document.createElement("label");
        sendBlessMessageLine1.className = "sub_tel_hot_text_line_1 sub_tel_hot_padding_left";
        sendBlessMessageLine1.innerText = "发送祝福短信";
        sendBlessMessage.appendChild(sendBlessMessageLine1);
        var sendBlessMessageLine2 = document.createElement("label");
        sendBlessMessageLine2.className = "sub_tel_hot_text_line_2 sub_tel_hot_padding_left";
        sendBlessMessageLine2.innerText = "点击麦克风说：“发祝福短信给张三”";
        sendBlessMessage.appendChild(sendBlessMessageLine2);
        
        //查询常用号码
        var yellowpage = document.createElement("div");
        yellowpage.className = "sub_tel_hot_item sub_list_divider sub_tel_hot_lastitem_border_radio";
        var left = document.createElement("div");
		left.className = "sub_tel_directory_item_left";
		var right = document.createElement("div");
		right.className = "sub_tel_directory_item_right";
        var yellowpageLine1 = document.createElement("label");
        yellowpageLine1.className = "sub_tel_hot_text_line_1 sub_tel_hot_padding_left";
        yellowpageLine1.innerText = "查询常用号码";
        left.appendChild(yellowpageLine1);
        var yellowpageLine2 = document.createElement("label");
        yellowpageLine2.className = "sub_tel_hot_text_line_2 sub_tel_hot_padding_left";
        yellowpageLine2.innerText = "银行、酒店、快递等常用号码随您查";
        left.appendChild(yellowpageLine2);
        var arrawRight = document.createElement("img");
		arrawRight.src = ic_list_arrow_left;
		arrawRight.className = "ic_sub_tel_directory_item_img";
        right.appendChild(arrawRight);
		
		yellowpage.appendChild(left);
		yellowpage.appendChild(right);
		outDiv.appendChild(title);
		outDiv.appendChild(sendContact);
		outDiv.appendChild(sendBlessMessage);
		outDiv.appendChild(yellowpage);
		
		var touchType = -1;
		outDiv.addEventListener("touchstart", function(){
			event.stopPropagation();
			var target = getParentOfClass("sub_tel_hot_item", event.target);
			if(target == sendContact){
				touchType = 0;
				sendContact.style.backgroundColor = "#e5e5e5";
			}else if(target == sendBlessMessage){
				touchType = 1;
				sendBlessMessage.style.backgroundColor = "#e5e5e5";
			}else if(target == yellowpage){
				touchType = 2;
				yellowpage.style.backgroundColor = "#e5e5e5";
			}
		});
		outDiv.addEventListener("touchmove",function(){
			event.stopPropagation();
			if(0 == touchType){
				sendContact.style.backgroundColor = "";
			}else if(1 == touchType){
				sendBlessMessage.style.backgroundColor = "";
			}else if(2 == touchType){
				yellowpage.style.backgroundColor = "";
			}
			touchType = -1;
		},false);
		outDiv.addEventListener("touchend",function(){
			event.stopPropagation();
			if(0 == touchType){
				sendContact.style.backgroundColor = "";
				exec(telPanel.channelHandler, 'sendContact', []);
			}else if(1 == touchType){
				sendBlessMessage.style.backgroundColor = "";
				exec(telPanel.channelHandler, 'sendBlessMessage', []);
			}else if(2 == touchType){
				yellowpage.style.backgroundColor = "";
				exec(telPanel.channelHandler, 'startDirectoryAssistanceActivity', []);
			}
			touchType = -1;
		},false);
		//添加外壳
	    var outDivBox = createBoxDiv("", outDiv);
		return outDivBox;
	}
	//创建常用号码查询入口界面
	function createDirectoryAssistanceActivity() {
    	var outDiv = document.createElement("div");
    	outDiv.className = "box_content_gray"; 
    	
    	var item = document.createElement("div");
		item.className = "sub_tel_directory_item";
    	var left = document.createElement("div");
		left.className = "sub_tel_directory_item_left";
		var right = document.createElement("div");
		right.className = "sub_tel_directory_item_right";

    	var title = document.createElement("div");
	    title.className = "sub_tel_directory_item_name";
	    title.innerText = "常用号码查询";

	    var hintText = document.createElement("div");
	    hintText.className = "list_directory_second_line_text";
	    hintText.innerText = "银行、酒店、快递等常用号码随您查";

	    var arrawRight = document.createElement("img");
		arrawRight.src = ic_list_arrow_left;
		arrawRight.className = "ic_sub_tel_directory_item_img";
		

		left.appendChild(title);
		left.appendChild(hintText);
		right.appendChild(arrawRight);
		item.appendChild(left);
		item.appendChild(right);
		outDiv.appendChild(item);
		var outDivBox = createBoxDiv("", outDiv);


		var isMoved = false; 
		outDiv.addEventListener("touchstart", function() {
			event.stopPropagation();
			outDiv.style.backgroundColor = "#dedede"; 
			isMoved = false;
		}, false);
		outDiv.addEventListener("touchmove", function() {
			event.stopPropagation(); 
			isMoved = true; 
			outDiv.style.backgroundColor = "";
		}, false);
		outDiv.addEventListener("touchend", function() {
			event.stopPropagation(); 
			outDiv.style.backgroundColor = ""; 
			if (!isMoved) {
				exec(telPanel.channelHandler, 'startDirectoryAssistanceActivity', []);
			}
			isMoved = false; 
		}, false);

		return outDivBox;
    }
	
	//新建通话记录item的菜单界面
	function createTelephoneItemMenu() {
		//整体
		var main = document.createElement("div");
		main.className = "sub_tel_menu_item";
		main.isSaveNumberTouchAble = true;
        main.isMarkiconTouchAble = false;
		
		//保存号码
		var btnSaveNumberDiv = document.createElement("div");
		btnSaveNumberDiv.className = "sub_tel_menu_item_div";
		var btnSaveNumberText = document.createElement("div");
        btnSaveNumberText.innerText = "保存号码";
        btnSaveNumberText.className = "sub_tel_menu_item_text";
		var btnSaveNumberIcon = document.createElement("img");
		btnSaveNumberIcon.src = ic_call_log_menu_icon_save;
		btnSaveNumberIcon.className = "sub_tel_menu_item_icon";
		btnSaveNumberDiv.appendChild(btnSaveNumberIcon);
        btnSaveNumberDiv.appendChild(btnSaveNumberText);
        // if (isSaveNumberTouchAble == false) {
        	// btnSaveNumberDiv.style.opacity=0.3;
        // }
        var isMove = false;
        btnSaveNumberDiv.addEventListener("touchstart", function(newInfo) {
			event.stopPropagation();
			if (main.isSaveNumberTouchAble) {
				btnSaveNumberDiv.style.backgroundColor = "#e9e9e9";
				btnSaveNumberDiv.style.border='1px solid #e3e3e3';
			}
			isMove = false;
		}, false);
		btnSaveNumberDiv.addEventListener("touchmove", function(newInfo) {
			event.stopPropagation();
			isMove = true;
			if (main.isSaveNumberTouchAble) {
				btnSaveNumberDiv.style.backgroundColor = "";
				btnSaveNumberDiv.style.border='1px solid #f5f5f5';
			}
		}, false);
		btnSaveNumberDiv.addEventListener("touchend", function(newInfo) {
			event.stopPropagation();
			if (isMove == false) {
				if (main.isSaveNumberTouchAble) {
					btnSaveNumberDiv.style.backgroundColor = "";
					btnSaveNumberDiv.style.border='1px solid #f5f5f5';
					
					targetItemnew = getParentOfClass("sub_tel_calllog_item", event.target);
				    if (targetItemnew) {
				    	exec(telPanel.channelHandler, 'saveNumber', [targetItemnew.item_no]);
				    }
				}
			}
			isMove = false;
		}, false);
        
        //标记为干扰
		var btnMarkDiv = document.createElement("div");
		btnMarkDiv.className = "sub_tel_menu_item_div";
		var btnMarkText = document.createElement("div");
        btnMarkText.innerText = "标记为干扰";
        btnMarkText.className = "sub_tel_menu_item_text";
        var btnMarkIcon = document.createElement("img");
		btnMarkIcon.src = ic_call_log_menu_icon_mark;
		btnMarkIcon.className = "sub_tel_menu_item_icon";
		btnMarkDiv.appendChild(btnMarkIcon);
        btnMarkDiv.appendChild(btnMarkText);
        // if (isMarkiconTouchAble == false) {
        	// btnMarkDiv.style.opacity=0.3;
        // }
        // FIXME 这里暂时不需要判断点击后是否移动，默认在标记按钮区按下，就算拖动出去也相应功能
        // var isMarkiconTouchOut = false;
        btnMarkDiv.addEventListener("touchstart", function(newInfo) {
			event.stopPropagation();
			if (main.isMarkiconTouchAble) {
				btnMarkDiv.style.backgroundColor = "#e9e9e9";
				btnMarkDiv.style.border='1px solid #e3e3e3';
				// isMarkiconTouchOut = false;
			}
			isMove = false;
		}, false);
		btnMarkDiv.addEventListener("touchmove", function(newInfo) {
			event.stopPropagation();
			if (main.isMarkiconTouchAble) {
				btnMarkDiv.style.backgroundColor = "";
				btnMarkDiv.style.border='1px solid #f5f5f5';
				// isMarkiconTouchOut = true;
			}
			isMove = true;
		}, false);
		btnMarkDiv.addEventListener("touchend", function(newInfo) {
			event.stopPropagation();
			if (isMove == false) {
				if (main.isMarkiconTouchAble) {
					btnMarkDiv.style.backgroundColor = "";
					btnMarkDiv.style.border='1px solid #f5f5f5';
					// if(!isMarkiconTouchOut){
						targetItemnew = getParentOfClass("sub_tel_calllog_item", event.target);
					    if (targetItemnew) {
					    	exec(telPanel.channelHandler, 'markNumber', [targetItemnew.item_no, targetItemnew.item_name]);
					    }
				   	// }
				}
			}
			isMove = false;
		}, false);
        
        //删除通话记录
		var btnDeleteHistoryDiv = document.createElement("div");
		btnDeleteHistoryDiv.className = "sub_tel_menu_item_div";
		var btnDeleteHistoryText = document.createElement("div");
        btnDeleteHistoryText.innerText = "删除通话记录";
        btnDeleteHistoryText.className = "sub_tel_menu_item_text";
        var btnDeleteHistoryIcon = document.createElement("img");
		btnDeleteHistoryIcon.src = ic_call_log_menu_icon_delete;
		btnDeleteHistoryIcon.className = "sub_tel_menu_item_icon";
		btnDeleteHistoryDiv.appendChild(btnDeleteHistoryIcon);
        btnDeleteHistoryDiv.appendChild(btnDeleteHistoryText);
		btnDeleteHistoryDiv.addEventListener("touchstart", function(newInfo) {
			event.stopPropagation();
			btnDeleteHistoryDiv.style.backgroundColor = "#e9e9e9";
			btnDeleteHistoryDiv.style.border='1px solid #e3e3e3';
			isMove = false;
		}, false);
		btnDeleteHistoryDiv.addEventListener("touchmove", function(newInfo) {
			event.stopPropagation();
			isMove = true;
			btnDeleteHistoryDiv.style.backgroundColor = "";
			btnDeleteHistoryDiv.style.border='1px solid #f5f5f5';
		}, false);
		btnDeleteHistoryDiv.addEventListener("touchend", function(newInfo) {
			event.stopPropagation();
			if (isMove == false) {
				btnDeleteHistoryDiv.style.backgroundColor = "";
				btnDeleteHistoryDiv.style.border='1px solid #f5f5f5';
				
				targetItemnew = getParentOfClass("sub_tel_calllog_item", event.target);
			    if (targetItemnew) {
			    	exec(telPanel.channelHandler, 'deleteCallLog', [targetItemnew.item_no, targetItemnew.item_name]);
			    }
			}
			isMove = false;
		}, false);
		
		main.appendChild(btnSaveNumberDiv);
		main.appendChild(btnMarkDiv);
		main.appendChild(btnDeleteHistoryDiv);
		
		main.refresh = function(newInfo) {
			if ("未知" == newInfo.name) {
				main.isSaveNumberTouchAble = true;
				btnSaveNumberDiv.style.opacity = 1;
				main.isMarkiconTouchAble = true;
				btnMarkDiv.style.opacity = 1;
			} else if (newInfo.name.indexOf("标记为") >= 0) {
				main.isSaveNumberTouchAble = true;
				btnSaveNumberDiv.style.opacity = 1;
				main.isMarkiconTouchAble = false;
				btnMarkDiv.style.opacity = 0.3;
			} else {
				main.isSaveNumberTouchAble = false;
				btnSaveNumberDiv.style.opacity = 0.3;
				main.isMarkiconTouchAble = false;
				btnMarkDiv.style.opacity = 0.3;
			}
		};
		return main;
	}
	
	function createTelephoneItem(itemInfo) {
		//整体
		var item = document.createElement("div");
		item.className = "sub_tel_calllog_item";
		//左半部分
		var left = document.createElement("div");
		left.className = "sub_tel_calllog_item_left";
		//右半部分
		var right = document.createElement("div");
		right.className = "sub_tel_calllog_item_right";

		//姓名
		var name = document.createElement("label");
		name.className = "sub_tel_calllog_item_name";
		
		//号码区域
		var teldiv = document.createElement("div");
		teldiv.className = "list_second_line_div";
		teldiv.id = "calllog_list_second_line";
		//已标记图标
		var telMarkIcon = document.createElement("img");
		telMarkIcon.src = ic_btn_marked_dial;
		telMarkIcon.className = "sub_tel_item_markicon_left";
		//号码
		var tel = document.createElement("div");
		tel.className = "calllog_list_second_line_text";
		//通话时间
		var time = document.createElement("label");
		time.className = "sub_tel_item_time";
        teldiv.appendChild(telMarkIcon);
        teldiv.appendChild(tel);
        teldiv.appendChild(time);

		var btnTableDiv = document.createElement("div");
		btnTableDiv.className = "sub_tel_btn_table";
		//拨打电话
		var callNumberBtn = document.createElement("div");
		callNumberBtn.className = "sub_tel_call_and_mms_btn";
		//拨打电话图片
		var callNumberImg = document.createElement("img");
		callNumberImg.src = ic_cal_log_item_btn_call_nor;
		callNumberImg.className = "sub_tel_tel_mms_icon";
		// callNumberImg.style.opacity=0.5;
		callNumberBtn.appendChild(callNumberImg);
		var isMove = false;
		callNumberBtn.addEventListener("touchstart", function(newInfo) {
			event.stopPropagation();
			callNumberBtn.style.backgroundColor = "#f2f2f2";
			callNumberBtn.style.border='1px solid #ebebeb';
			callNumberImg.src = ic_cal_log_item_btn_call_press;
			isMove = false;
		}, false);
		callNumberBtn.addEventListener("touchmove", function(newInfo) {
			event.stopPropagation();
			isMove = true;
			callNumberBtn.style.backgroundColor = "";
			callNumberBtn.style.border='';
			callNumberImg.src = ic_cal_log_item_btn_call_nor;
		}, false);
		callNumberBtn.addEventListener("touchend", function(newInfo) {
			event.stopPropagation();
			if (isMove == false) {
				callNumberBtn.style.backgroundColor = "";
				callNumberBtn.style.border='';
				callNumberImg.src = ic_cal_log_item_btn_call_nor;
				
				exec(telPanel.channelHandler, 'startCall', [item.item_no, item.item_name]);
			}
			isMove = false;
		}, false);
		
		//发短信
		var sendMessageBtn = document.createElement("div");
		sendMessageBtn.className = "sub_tel_call_and_mms_btn";
		//发短信图片
		var sendMessageImg = document.createElement("img");
		sendMessageImg.src = ic_cal_log_item_btn_sms_nor;
		sendMessageImg.className = "sub_tel_tel_mms_icon";
		sendMessageBtn.appendChild(sendMessageImg);
		sendMessageBtn.addEventListener("touchstart", function(newInfo) {
			event.stopPropagation();
			sendMessageBtn.style.backgroundColor = "#f2f2f2";
			sendMessageBtn.style.border='1px solid #ebebeb';
			sendMessageImg.src = ic_cal_log_item_btn_sms_press;
			isMove = false;
		}, false);
		sendMessageBtn.addEventListener("touchmove", function(newInfo) {
			event.stopPropagation();
			isMove = true;
			sendMessageBtn.style.backgroundColor = "";
			sendMessageBtn.style.border='';
			sendMessageImg.src = ic_cal_log_item_btn_sms_nor;
		}, false);
		sendMessageBtn.addEventListener("touchend", function(newInfo) {
			event.stopPropagation();
			if (isMove == false) {
				sendMessageBtn.style.backgroundColor = "";
				sendMessageBtn.style.border='';
				sendMessageImg.src = ic_cal_log_item_btn_sms_nor;
				
				exec(telPanel.channelHandler, 'opRecoSms', [item.item_name, item.item_no]);
				exec(telPanel.channelHandler, 'startSmsRecog', [item.item_name, item.item_no]);
			}
			isMove = false;
		}, false);
		
		//菜单按钮
		var menuBtn = document.createElement("div");
		menuBtn.className = "sub_tel_menu_btn";
		//菜单图片
		var menuBtnImg = document.createElement("img");
		menuBtnImg.src = ic_cal_log_item_btn_arrow_down;
		menuBtnImg.className = "sub_tel_menu_icon";
		item.menuBtnImg = menuBtnImg;
		menuBtn.appendChild(menuBtnImg);
		menuBtn.addEventListener("touchstart", function(newInfo) {
			event.stopPropagation();
			menuBtn.style.backgroundColor = "#f2f2f2";
			menuBtn.style.border='1px solid #ebebeb';
			isMove = false;
		}, false);
		menuBtn.addEventListener("touchmove", function(newInfo) {
			event.stopPropagation();
			isMove = true;
			menuBtn.style.backgroundColor = "";
			menuBtn.style.border='';
		}, false);
		menuBtn.addEventListener("touchend", function(newInfo) {
			event.stopPropagation();
			if (isMove == false) {
				menuBtn.style.backgroundColor = "";
				menuBtn.style.border='';
				if (menuItem.style.display == "table") {
					menuItem.style.display = "none";
					menuBtnImg.src = ic_cal_log_item_btn_arrow_down;
					currentOpenedMenu = null;
				} else {
					if (currentOpenedMenu != null ) {
						var menuImg = currentOpenedMenu.parentNode.menuBtnImg;
						menuImg.src = ic_cal_log_item_btn_arrow_down;
						currentOpenedMenu.style.display = "none";
					}
					menuBtnImg.src = ic_cal_log_item_btn_arrow_up;
					menuItem.style.display = "table";
					currentOpenedMenu = menuItem;
				}
			}
			isMove = false;
		}, false);
		
		btnTableDiv.appendChild(callNumberBtn);
		btnTableDiv.appendChild(sendMessageBtn);
        btnTableDiv.appendChild(menuBtn);
		right.appendChild(btnTableDiv);
		
		var menuItem = createTelephoneItemMenu();
		menuItem.style.display = "none";
		
		var type = document.createElement("label");

		left.appendChild(name);
		left.appendChild(teldiv);
		
		if (resultDevice && resultDevice.model && resultDevice.model == "MI 2") {
			// 小米2上显示会有边框，因此不做特殊处理
		} else {
			// 屏蔽数字被触摸后的显示问题
		    left.addEventListener("click",function(){});
		}

		item.appendChild(left);

		item.appendChild(right);
		
		item.appendChild(menuItem);
		
        var isMarkiconTouchOut = false;
        var targetItemnew = null;
        
		item.refresh = function(newInfo) {
			/*
			name.style.cssText = "";
			if (missed_call == newInfo.type) {
							name.style.cssText = "color:red";
						}*/
			if("未知" == newInfo.name){
			    // markicon.style.display = "block";
			    telMarkIcon.style.display = "none";
			    // isMarkiconTouchAble = true;
				name.innerText = newInfo.tel;
				if (newInfo.mobile) {
					name.innerText = seperateMobileNum(newInfo.tel);
				} else {
					name.innerText = newInfo.tel;
				}
				tel.innerText = "未知";
				
				item.item_no = newInfo.tel;
				item.item_name = newInfo.tel;
				
			} else if (newInfo.name.indexOf("标记为") >= 0) {
			    console.log("telPanel dismiss function is called");
			    // markicon.style.display = "none";
			    telMarkIcon.style.display = "inline";
			    // isMarkiconTouchAble = false;
			    name.innerText = newInfo.tel;
				if (newInfo.mobile) {
					name.innerText = seperateMobileNum(newInfo.tel);
				} else {
					name.innerText = newInfo.tel;
				}
				tel.innerText = newInfo.name.substr("标记为:".length);
				
				item.item_no = newInfo.tel;
				item.item_name = newInfo.tel;
			}else{
			    // markicon.style.display = "none";
			    telMarkIcon.style.display = "none";
			    // isMarkiconTouchAble = false;
				name.innerText = newInfo.name;
				if (newInfo.mobile) {
					tel.innerText = seperateMobileNum(newInfo.tel);
				} else {
					tel.innerText = newInfo.tel;
				}
				item.item_no = newInfo.tel;
				item.item_name = newInfo.name;
			}
			
			time.innerText = newInfo.time;
			type.innerText = newInfo.type;
			
			menuItem.refresh(newInfo);
			//通话记录更新以后，menu区域应该收起来
			if (menuItem.style.display != "none") {
					menuItem.style.display = "none";
					menuBtnImg.src = ic_cal_log_item_btn_arrow_down;
					currentOpenedMenu = null;
			}
		};

		return item;
	}

	function seperateMobileNum(mobileNum) {
		var length_num = mobileNum.length;
		mobileNum = mobileNum.substring(0, length_num - 4) + " " + mobileNum.substring(length_num - 4);
		length_num++;
		mobileNum = mobileNum.substring(0, length_num - 9) + " " + mobileNum.substring(length_num - 9);
		length_num++;
		mobileNum = mobileNum.substring(0, length_num - 13) + " " + mobileNum.substring(length_num - 13);
		return mobileNum;
	}

	function createTelephoneSub() {
		var outDiv = document.createElement("div");
		outDiv.className = "box_content_white";
    	
		var telInner = document.createElement("div");
    
		var list_inner = document.createElement("div");
		list_inner.style.borderTop = "1px solid #e0e0e0";

		var MAX_NUM_HIS = 5;
		var historyShowLength = 0;
		var historyItems = [];
		
		var title_box = document.createElement("div");
	    title_box.className = "tel_and_sms_list_title_item";
	    
	    var title = document.createElement("div");
	    title.className = "tel_and_sms_list_title_text";
	    title.innerText = "最近联系人";
	    title_box.appendChild(title);
	    
	    var seeMore = document.createElement("div");
	    seeMore.className = "tel_and_sms_see_more";
	    seeMore.innerText = "通话记录";
	    
	    //分割线
	    var divider = document.createElement("div");
        divider.className = "css_sub_tel_divider_div";
        
	    var getAllContacts = document.createElement("div");
	    getAllContacts.className = "tel_and_sms_get_all_contacts";
	    getAllContacts.innerText = "联系人"; 
	    getAllContacts.appendChild(divider);
	    // var seeMoreArrow = document.createElement("img");
	    // seeMoreArrow.src = ic_list_arrow_left;
	    // seeMoreArrow.className = "tel_and_sms_see_more_arrow";
		
        var reGet = document.createElement("div");
	    reGet.className = "reget_contacts";
	    reGet.innerText = "重新获取";
		
		for (var i = 0; i < MAX_NUM_HIS; i++) {
			var item = createTelephoneItem();
			item.className += " sub_list_divider2";
			item.style.display = "none";

			historyItems[i] = item;
			list_inner.appendChild(item);
		}
		
		var seeMoreContainer = document.createElement("div");
		seeMoreContainer.className = "tel_and_sms_see_more_container";
		seeMoreContainer.appendChild(seeMore);
		seeMoreContainer.appendChild(getAllContacts);
    	// seeMoreContainer.appendChild(seeMoreArrow);

	    var noContactsContainer = document.createElement("div");
	    noContactsContainer.className = "recent_contacts_isnull_container";
	    
		var recentContactsIcon = document.createElement("img");
	    recentContactsIcon.src = ic_nocontact;
	    recentContactsIcon.className = "recent_contacts_icon";
	    
	    var recentContactsIsnull = document.createElement("div");
	    recentContactsIsnull.className = "recent_contacts_isnull";
	    recentContactsIsnull.innerText = "未获取到最近联系人，请重新获取";
	    
		noContactsContainer.appendChild(recentContactsIcon);
		noContactsContainer.appendChild(recentContactsIsnull);

		var noContactsItem = document.createElement("div");
		noContactsItem.className = "recent_contacts_isnull_item sub_list_divider2";
		
		
		var reGetContactsIcon = document.createElement("img");
	    reGetContactsIcon.src = ic_regetcontact;
	    reGetContactsIcon.className = "reget_contacts_icon";
		
		var reGetContainer = document.createElement("div");
		reGetContainer.className = "reget_contacts_container";
		reGetContainer.appendChild(reGetContactsIcon);
		reGetContainer.appendChild(reGet);
		noContactsContainer.appendChild(reGetContainer);
		noContactsItem.appendChild(noContactsContainer);
		
		var emotionErrorImageIcon = document.createElement("img");
	    emotionErrorImageIcon.src = ic_emotion_error;
	    emotionErrorImageIcon.className = "emotion_error_icon";
	    
	    var emotionErrorTxt = document.createElement("div");
	    emotionErrorTxt.className = "emotion_error_txt";
	    emotionErrorTxt.innerText = "最近联系人为空";
		var emotionErrorContainer = document.createElement("div");
		emotionErrorContainer.className = "emotion_error_container";
		emotionErrorContainer.appendChild(emotionErrorImageIcon);
		emotionErrorContainer.appendChild(emotionErrorTxt);
		noContactsItem.appendChild(emotionErrorContainer);
		
		telInner.appendChild(title_box);
    	telInner.appendChild(list_inner);
    	telInner.appendChild(seeMoreContainer);
		telInner.appendChild(noContactsItem);
		//telInner.appendChild(reGetContainer);
		
		outDiv.appendChild(telInner);

		//添加外壳
	    var outDivBox = createBoxDiv("", outDiv);
	    outDivBox.style.display = "none";
	    
		var targetItem = null;
		var isLongPressed = false;
		var longPressFunc = null;
		var canCallOut = true;
		list_inner.addEventListener("touchstart", function() {
			event.stopPropagation();
			targetItem = getParentOfClass("sub_tel_calllog_item", event.target);
			console.log(targetItem.item_no);
			if (targetItem) {
				targetItem.style.backgroundColor = "#e5e5e5";
				//注释掉长按功能 2014-5-20 gyliu
				/*if (!isLongPressed) {
					isLongPressed = true;
					longPressFunc = setTimeout(function() {
						exec(telPanel.channelHandler, 'longPressCallLog', [targetItem.item_no, targetItem.item_name]);
						console.log("call log long pressed");
						canCallOut = false;
					}, 800);
				}	*/
			}
		}, false);
		
		list_inner.addEventListener("touchmove", function() {
			event.stopPropagation();
			if (targetItem) {
				targetItem.style.background = "";
				if(isLongPressed) {
					isLongPressed = false;
					clearTimeout(longPressFunc);
				}
				targetItem = null;
			}
		}, false);

		list_inner.addEventListener("touchend", function() {
			event.stopPropagation();
			if (targetItem) {
				targetItem.style.background = "";
				console.log("touch end and isLongPressed is " + isLongPressed);
				if(canCallOut) {
					exec(telPanel.channelHandler, 'startCall', [targetItem.item_no, targetItem.item_name]);
				}
				if(isLongPressed) {
					isLongPressed = false;
					clearTimeout(longPressFunc);
				}
				canCallOut = true;
				targetItem = null;
			}
		}, false);
		
		var isSeeMoreOrGetMoreTouchOut = false;
		
		seeMore.addEventListener("touchstart",function() {
			event.stopPropagation(); 
			seeMore.style.backgroundColor = "#e5e5e5";
			isSeeMoreOrGetMoreTouchOut = false;
		},false);
		
		seeMore.addEventListener("touchmove",function() {
			event.stopPropagation(); 
			seeMore.style.backgroundColor = "";
			isSeeMoreOrGetMoreTouchOut = true;
		},false);
		
		seeMore.addEventListener("touchend",function() {
			event.stopPropagation(); 
			seeMore.style.backgroundColor = "";
			if(!isSeeMoreOrGetMoreTouchOut){
				exec(telPanel.channelHandler, 'telseeMore', []);
			}
		},false);
		
		getAllContacts.addEventListener("touchstart",function() {
			event.stopPropagation(); 
			getAllContacts.style.backgroundColor = "#e5e5e5";
			isSeeMoreOrGetMoreTouchOut = false;
		},false);
		
		getAllContacts.addEventListener("touchmove",function() {
			event.stopPropagation(); 
			getAllContacts.style.backgroundColor = "";
			isSeeMoreOrGetMoreTouchOut = true;
		},false);
		
		getAllContacts.addEventListener("touchend",function() {
			event.stopPropagation(); 
			getAllContacts.style.backgroundColor = "";
			if(!isSeeMoreOrGetMoreTouchOut){
				exec(telPanel.channelHandler, 'seeAllContacts', []);
			}
		},false);
		
		reGetContainer.addEventListener("touchstart",function() {
			event.stopPropagation(); 
			reGetContainer.style.backgroundColor = "#58a159";
			isSeeMoreOrGetMoreTouchOut = false;
		},false);
		
		reGetContainer.addEventListener("touchmove",function() {
			event.stopPropagation(); 
			reGetContainer.style.backgroundColor = "#62B363";
			isSeeMoreOrGetMoreTouchOut = true;
		},false);
		
		reGetContainer.addEventListener("touchend",function() {
			event.stopPropagation(); 
			reGetContainer.style.backgroundColor = "#62B363";
			if(!isSeeMoreOrGetMoreTouchOut){
				hasClickRegetCalllog = true;
				exec(telPanel.channelHandler, 'regetContacts', []);
			}
		},false);
		
		outDivBox.refresh = function(newInfos) {
			// alert("update newInfos is : " + newInfos);
			// alert("history items is : " + historyItems);
			console.log("newInfos:" + JSON.stringify(newInfos));
			var isNeedShowRegetContacts = arguments[1] ? arguments[1] : false;
			console.log("isNeedShowRegetContacts:" + isNeedShowRegetContacts);
			var isRegetContacts = false;
			var infoString = JSON.stringify(newInfos);
			if (null!=infoString.indexOf("nobody") && infoString.indexOf("nobody") > 0) {
			   if (null!=infoString.indexOf("1111111") && infoString.indexOf("1111111") > 0) {
			      isRegetContacts = true;
			      newInfos = [];
			      isNeedShowRegetContacts = true;
			   }
			}
			console.log("isRegetContacts:" + isRegetContacts);
			var newInfoLength = newInfos.length;
			if(newInfoLength > MAX_NUM_HIS){
				newInfoLength = MAX_NUM_HIS;
			}
			var historyLength = historyItems.length;
		    if (newInfoLength < 1) {
				if(!isNeedShowRegetContacts) {
					outDivBox.style.display = "none";
					return;
				} else if (isRegetContacts && hasClickRegetCalllog) { 
					//显示“最近联系人为空”
				    noContactsItem.style.display = "block";
				    noContactsContainer.style.display = "none";
				    emotionErrorContainer.style.display = "block";
				    reGetContainer.style.display = "none";
				    seeMoreContainer.style.display = "none";
					list_inner.style.display = "none";
				} else{
					//显示“重新获取联系人”
				    noContactsContainer.style.display = "block";
					noContactsItem.style.display = "block";
					reGetContainer.style.display = "block";
					seeMoreContainer.style.display = "none";
					list_inner.style.display = "none";
					emotionErrorContainer.style.display = "none";
				}
			} else {
				noContactsItem.style.display = "none";
				reGetContainer.style.display = "none";
				list_inner.style.display = "block";
				seeMoreContainer.style.display = "block";
			}
		    outDivBox.style.display = "block";
					
			for (var i = 0; i < newInfoLength; i++) {
				historyItems[i].refresh(newInfos[i]);
				historyItems[i].style.display = "block";
			}
			historyShowLength = i;
			for (var k = newInfoLength; k < historyLength; k++) {
				historyItems[k].style.display = "none";
			}
			
			console.log("into recalculate from refresh");
			reCalculate();
		};

		reCalculate();
		return outDivBox;
	}

	/**
	 * 增加到html界面后，重新计算元素尺寸的方法
	 */
	function reCalculate() {
		
		//直接通过桌面快捷方式进入电话二级频道时，会由于CSS文件还没有加载好导致此处计算offsetWidth出错。所以需要延迟计算
		console.log("prepare recalculate." + flagBusCSSLoaded);
		if(flagBusCSSLoaded == false) {
			if (waitTime < 20) {
				//最多延迟20次,共1s
				setTimeout(function() {
					reCalculate();
				}, 50);
				waitTime++;
				return;
			} else {
				console.log("error, wait css for reCalculate end. count over ");
				return;
			}
		}

		console.log("start recalculate");
		//获取列表项并检查是否要将telLebal的宽度进行调整
		var secondLines = document.getElementsByClassName("list_second_line_div");
		for (var i = 0; i < secondLines.length; i++) {
			if (secondLines[i].id != "calllog_list_second_line") {
				console.log("recalculate error -- 1");
				continue;
			}
			var childs = secondLines[i].childNodes;
			var markicon;
			var telLebal;
			var timeLebal;
			console.log("recalculate 1-- " + i);
			for(var j = 0; j < childs.length ; j++) {
				if (childs[j].className == "sub_tel_item_markicon_left") {
					markicon = childs[j];
				} 
				else if (childs[j].className == "calllog_list_second_line_text") {
					telLebal = childs[j];
				}
				else if (childs[j].className == "sub_tel_item_time") {
					timeLebal = childs[j];
				}
			}
			console.log("recalculate 2-- " + i + "tel: " + telLebal.innerText);
			//计算实际的标记图标、电话号码、时间的总宽度
			var sumOfSubWidth = timeLebal.offsetWidth ;
			if (markicon.style.display != "none") {
				sumOfSubWidth += markicon.offsetWidth + getLengthFromValueOf720P(12);
			}
			console.log("recalculate 3-- " + i + "|" + secondLines[i].offsetWidth 
					+ "|" + sumOfSubWidth + "|" + telLebal.offsetWidth);
			var maxLen = secondLines[i].offsetWidth - getLengthFromValueOf720P(33) * 2
						 - sumOfSubWidth - getLengthFromValueOf720P(18);
			console.log("recalculate 4-- " + i + ":" + maxLen);
			if (maxLen < telLebal.offsetWidth) {
				console.log("recalculate 5-- " + i);
				telLebal.style.width = maxLen + "px";
			}
		}
	}
	
	/**
	 * 根据视觉提供的720p下的像素值得出当前手机上的像素值
 	 * @param {Object} len
	 */
	function getLengthFromValueOf720P(len) {
		//scale是main.js中定义的全局变量
		return len*scale/2.25;
	}
	
	function guideItemClick(searchText){
		exec(telPanel.channelHandler, 'startGuideCall', [ searchText ]);
	}
	function closeChannelMsg(msgID,curFoldState){
		if(curFoldState){
			base_setItem(foldKey,"true");
		}else{
			base_removeItem(foldKey);
		}
	}

	function updateUI(updateInfo){
        var updateJson = eval("(" + updateInfo + ")");
        console.log("updateJson:" + updateJson);
        if(updateJson && updateJson.list){
            history.refresh(updateJson.list);
        }else{
            history.refresh([]);
        }
    }
    
    function updateGuideInfo(updateInfo){
        var updateJson = eval("(" + updateInfo + ")");
        console.log("updateGuideInfo");
       	if(updateJson && guide){
            guide.updateData(updateJson);
        }
    }
    
    window.sub_tel_his = window.sub_tel_his || {};
    sub_tel_his.updateUI = updateUI;
    //java层通知重载通话记录的方法。
    sub_tel_his.reLoadCallLog = telPanel.show;
      
    window.sub_tel_guide = window.sub_tel_guide || {};
    sub_tel_guide.updateGuideInfo = updateGuideInfo;
    
	return telPanel;
});