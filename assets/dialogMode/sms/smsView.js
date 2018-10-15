/**
 * 短信发送视图
 * 
 * @author modified by mdhuang 2013-11-11 修改内容：canvas替代
 */
define(function() {
	var isSendContactMode = false;
	var isBlessContent = false;
	var isBlessUpdateFinish = true;
	var currentFocus;
	var selectionStart;
	var selectionEnd;
	var isDoubleSim = false;
	var defaultSimCard = "first";
	var doubleBtnDiv;
	function createSmsView(smsJson) {
		if(currentCanDeleteView){
			removeCurrentCanDeleteView();
		}
		if( errorView ){
			removeErrorView();
		}
		var taskHandler = smsJson.taskHandler;
		var hasDefaultNum = smsJson.hasDefault;
		var positiveClickable = false;
		if(smsJson.smsContent || smsJson.isMMS){
			positiveClickable = true;
		}
		isSendContactMode = smsJson.isSendContactMode;
		isBlessContent = smsJson.isBlessContent;
		isDoubleSim = smsJson.isDoubleSim;
		defaultSimCard = smsJson.defaultSimCard;
		SimNameList = smsJson.SimNameList;
		isShowSimName = smsJson.isShowSimName;
		
		var showDiv = document.createElement("div");
		showDiv.id = taskHandler;

		var outDiv = document.createElement("div");
		outDiv.className = "box_content_white";
		
		var inner = document.createElement("div");
		inner.className = "tel_his_inner";

		var smsTitle = document.createElement("div");
		smsTitle.className = "call_waiting_item";

		var contactDetail = document.createElement("div");
		contactDetail.className = "contact_item_left";
		
		var iconPosition = document.createElement("div");
        iconPosition.className = "sms_icon_position";
        
		var contactInfo = document.createElement("div");

		contactInfo.className = "sms_contact_detail";

		var nameBlock = document.createElement("div");
		var name = document.createElement("div");
		name.id = "contact_show_name";

		var select = document.createElement("img");
		select.className = "sms_title_select";
		select.src = contact_arrow_down;
		if(!hasDefaultNum){
			select.style.display = "none";
		}

		nameBlock.appendChild(name);
		nameBlock.appendChild(select);

		var tel = document.createElement("div");
		tel.className = "sms_view_second_line_text";//
		tel.addEventListener("click", function() {
			//屏蔽android点击号码自动跳转到系统电话应用
		});
		if (smsJson.hasDefault) {
			name.className = "sms_title_name";
			name.innerText = smsJson.contactName;
			tel.innerText = smsJson.location + ' ' + smsJson.phoneNumber;
		} else {
			if(smsJson.phoneNumber){
				tel.innerText = smsJson.phoneNumber;
			}
			// 没有默认号码，与原来的相同
			var contactList = smsJson.contactNameList;
			var nameString = "";
			if(contactList){
				for (var i = 0; i < contactList.length; i++) {
					nameString = nameString + contactList[i];
					if (i + 1 < contactList.length) {
						nameString += "，";
					}
				}
				name.className = "sms_title_name_only";
				name.innerText = nameString;
				tel.style.display = "none";
				select.style.display = "none";
			} else if(smsJson.contactName != smsJson.phoneNumber){
				name.className = "sms_title_name";
				name.innerText = smsJson.contactName;
				tel.innerText = smsJson.location + ' ' + smsJson.phoneNumber;
			} else if(smsJson.contactName == smsJson.phoneNumber && smsJson.phoneNumber == ""){
				name.innerText = "无收件人";
				positiveClickable = false;
				name.className = "sms_title_name_only";
				tel.style.display = "none";
				select.style.display = "none";
			} else {
				name.className = "sms_title_name";
				tel.style.display = "block";
				select.style.display = "inline-block";
				name.innerText = "未知联系人";
				tel.innerText = smsJson.location + " " + smsJson.phoneNumber;
				select.style.display = "none";
			}
		
		}
		
		contactInfo.appendChild(nameBlock);
		contactInfo.appendChild(tel);

		//暂时使用站位元素，设计好后使用联系人头像
		contactDetail.appendChild(iconPosition);
		contactDetail.appendChild(contactInfo);

		var addContainer = document.createElement("div");
		addContainer.className = "contact_item_right";

		var addBtn = document.createElement("img");
		addBtn.className = "sms_title_add";
		addBtn.src = btn_add_nor;

		addContainer.appendChild(addBtn);

		smsTitle.appendChild(contactDetail);
		smsTitle.appendChild(addContainer);

		inner.appendChild(smsTitle);
		
		var carModeBlock,audioUrl;
		var smsContentContainer = document.createElement("div");
        smsContentContainer.className = "sms_content_container";

		var smsContent = document.createElement("textarea");
		smsContent.setAttribute("placeholder","输入信息内容");
		smsContent.className = "sms_content";
		smsContent.value = smsJson.smsContent;
		smsContent.ontouchstart = function() {
        	exec("WidgetMMPContainerComponents","showMockDialog", []);
            console.log('ontouchstart---------smsInputView_editText_input');
        };
        
		//在失去焦点后保留光标的位置，方便语音输入内容的时候插入结果
		var lastCursorPos = -1;
		smsContent.onblur = function(event) {
			lastCursorPos = getCursorPos(this);
			console.log("onblur lastcursorPos: " + lastCursorPos);
		};
		
		currentFocus = smsContent;
		smsContentContainer.appendChild(smsContent);

		var smsHintMicroContainer = document.createElement("div");
		smsHintMicroContainer.className = "sms_hint_micro_container";
		
		var changeContactContainer = document.createElement("div");
		changeContactContainer.className = "sms_change_btn_container";
		
		var changeContact = document.createElement("img");
		
		if(isBlessContent) {
			changeContact.className = "sms_bless_btn";
			changeContact.src = btn_bless_content_nor;
		} else {
			changeContact.className = "sms_change_btn";
			changeContact.src = btn_change_contact_nor;
		}
		
		changeContactContainer.appendChild(changeContact);
		
		var smsHintContainer = document.createElement("div");
		smsHintContainer.className = "sms_hint";
		console.log("smsJson.netError is " + smsJson.netError);
		if(!isSendContactMode){
			if(smsJson.netError){
				smsHintContainer.innerText = "请手动输入短信内容";
				smsHintMicroContainer.appendChild(smsHintContainer);
			} else {
			    if(isBlessContent) {
			       changeContact.src = btn_bless_content_nor;
			       smsHintMicroContainer.appendChild(changeContactContainer);
			       changeContactContainer.pressDown = function(){
				   changeContact.src = btn_bless_content_press;
			      };
			       changeContactContainer.touchUp = function(){
				   changeContact.src = btn_bless_content_nor;
			      };
			    } else {
				  smsHintContainer.innerText = "点击右侧麦克风输入短信内容";
				  smsHintMicroContainer.appendChild(smsHintContainer);
			    }
			}
			
		} else {
			smsHintMicroContainer.appendChild(changeContactContainer);
			changeContactContainer.pressDown = function(){
				changeContact.src = btn_change_contact_press;
			};
			changeContactContainer.touchUp = function(){
				changeContact.src = btn_change_contact_nor;
			};
		}
		
		var smsMicroContainer = document.createElement("div");
		smsMicroContainer.className = "sms_muilt_micro_container";
		var smsMiniMicro = document.createElement("img");
		smsMiniMicro.className = "sms_muilt_micro";
		smsMiniMicro.src = sms_muilt_micro_nor;
		smsMicroContainer.appendChild(smsMiniMicro);
		
		smsHintMicroContainer.appendChild(smsMicroContainer);

		inner.appendChild(smsContentContainer);
		inner.appendChild(smsHintMicroContainer);

		outDiv.appendChild(inner);
		

		var cancelCallBack = function(){
			// 调用java函数执行取消操作
			exec(taskHandler, 'smsCancel', [ taskHandler ]);
			// 通知java函数释放相关资源
			exec('WidgetMMPContainerComponents', 'removeViewForJs', [ taskHandler ]);
			// 刷新界面
			onSmsFinish(false, taskHandler);
		};
		var confirmCallBack = function(simCard){
			// 调用java函数执行发送短信的请求
			if (simCard) {
				exec(taskHandler, 'smsSend', [ smsContent.value , simCard , taskHandler]);
			} else {
				exec(taskHandler, 'smsSend', [ smsContent.value , '' , taskHandler]);
			}
			// 通知java函数释放相关资源
			exec('WidgetMMPContainerComponents', 'removeViewForJs', [ taskHandler ]);
			// 刷新界面
			onSmsFinish(true, taskHandler);
		};
		var bottomButton = createDoubleButton(cancelCallBack, confirmCallBack, isDoubleSim, defaultSimCard,isShowSimName, SimNameList);
		doubleBtnDiv = bottomButton;

		//添加外壳
	    var outDivBox = createBoxDiv("", outDiv);
		showDiv.appendChild(outDivBox);
		
		showDiv.appendChild(bottomButton);

		curPage.appendChild(showDiv);
		
		currentCanDeleteView = showDiv;
		smsSendView = showDiv;

		showDiv.onSmsResult = function(result, taskHandler, textAddType){
			console.log("start calculate");
			if (textAddType == "smsSpeech") {
	            var pos = lastCursorPos;
				var content = smsContent.value;
	            if (pos != -1) {
		        	smsContent.value = content.substring(0, pos) + result + content.substring(pos);
		            lastCursorPos += result.length;
	            } else {
	            	smsContent.value = content + result;
	            	lastCursorPos = smsContent.value.length;
	            }
            } else {
            	smsContent.value = result;
            }
							
			removeErrorView();
			if(smsContent.value || audioUrl){
				if( document.getElementById("contact_show_name").innerText != "无收件人") {
					positiveClickable = true;
					bottomButton.setPositiveEnable(true);
				}
			}
			
			exec(taskHandler, "contentChanged" , [smsContent.value]);
			console.log("stop calculate");
		};
		
		showDiv.updateSmsData = function(updateJson){
			var newSmsInfo = eval("(" + updateJson + ")");
			
			if(newSmsInfo.smsContent || audioUrl){
				positiveClickable = true;
				console.log("positiveClickable = true;");
			}else{
				positiveClickable = false;
				console.log("positiveClickable = false;");
			}
			
			smsContent.value = newSmsInfo.smsContent;
			hasDefaultNum = newSmsInfo.hasDefault;
			if (newSmsInfo.hasDefault) {
				
				name.className = "sms_title_name";
				tel.style.display = "block";
				select.style.display = "inline-block";
				name.innerText = newSmsInfo.contactName;
				tel.innerText = newSmsInfo.location + "  " + newSmsInfo.phoneNumber;
			} else {
				var contactList = newSmsInfo.contactNameList;
				var nameString = "";
				if(newSmsInfo.phoneNumber != newSmsInfo.contactName){
					name.className = "sms_title_name";
					name.innerText = newSmsInfo.contactName;
					tel.style.display = "block";
					tel.innerText = newSmsInfo.location + ' ' + newSmsInfo.phoneNumber;
				} else if (contactList != null && contactList.length > 0) {
					for ( var i = 0; i < contactList.length; i++) {
						nameString = nameString + contactList[i];
						if (i + 1 < contactList.length) {
							nameString += "，";
						}
					}
					name.className = "sms_title_name_only";
					name.innerText = nameString;
					tel.style.display = "none";
				} else if (newSmsInfo.contactName == newSmsInfo.phoneNumber && newSmsInfo.phoneNumber == ""){
					name.innerText = "无收件人";
					positiveClickable = false;
					name.className = "sms_title_name_only";
					tel.style.display = "none";
				} else {
					name.className = "sms_title_name";
					tel.style.display = "block";
					select.style.display = "inline-block";
					name.innerText = "未知联系人";
					tel.innerText = newSmsInfo.location + " " + newSmsInfo.phoneNumber;
				}
				select.style.display = "none";
			}
			console.log("bottomButton.setPositiveEnable(" + positiveClickable +");");
			bottomButton.setPositiveEnable(positiveClickable);
		};
		
		showDiv.afterSelectNumber = function(selectLoc, selectNum){
			tel.innerText = selectLoc + "  " + selectNum;
		};
		
		showDiv.stopRecording = function(recordUrl){
			if(carModeBlock){
				carModeBlock.stopRecording();
				if(recordUrl){
					audioUrl = recordUrl;
					positiveClickable = true;
					bottomButton.setPositiveEnable(positiveClickable);
				}
			}
		};
		showDiv.startRecording = function(){
			if(carModeBlock)
				carModeBlock.startRecording();
		};
		
		var selected = false;
		nameBlock.addEventListener("touchstart",function(){
			event.stopPropagation();
			console.log("nameBlock touchstart");
			selected = true;
		},false);
		 
		nameBlock.addEventListener("touchmove",function(){
			event.stopPropagation();
			console.log("nameBlock touchmove");
			selected = false;
		},false);
		
		nameBlock.addEventListener("touchend",function(){
			event.stopPropagation();
			console.log("nameBlock touchend");
			if(selected == true){
				if(hasDefaultNum){
					exec(taskHandler, "selectContact", []);
					isBlessUpdateFinish = false;
				}
			}
			selected = false;
		},false);
		
		var isMove = false;
		addContainer.addEventListener("touchstart", function(event) {
			event.stopPropagation();
			selectionStart = smsContent.selectionStart;
			selectionEnd = smsContent.selectionStart;
			console.log("selectionStart is : " + selectionStart + " selectionEnd is : " + selectionEnd);
			isMove = false;
			addBtn.src = btn_add_press;
		}, false);
		addContainer.addEventListener("touchmove", function(event) {
			event.stopPropagation();
			if (moveOverCheck.check(event)) {
				isMove = true;
				addBtn.src = btn_add_nor;
			}
		}, false);
		
		addContainer.addEventListener("touchend", function() {
			event.stopPropagation();
			if (isMove == false) {
				addBtn.src = btn_add_nor;
				exec(taskHandler, "editContacts", [smsContent.value]);
				// exec(taskHandler, "editContacts", [smsContent.innerText]);
				isBlessUpdateFinish = false;
			}
			isMove = false;
		}, false);
		
		smsContent.addEventListener("input" , function(){
			if(smsContent.value === "") {
				bottomButton.setPositiveEnable(false);
			} else {
				bottomButton.setPositiveEnable(true);
			}
			exec(taskHandler, "contentChanged" , [smsContent.value]);
		});
		
		var isSpeechStarted = false;
		var isSmsRecorgnizeStarted = false;
		
		smsMiniMicro.addEventListener("touchstart", function(){
			event.stopPropagation();
			console.log("micro is touched start");
			
			isMove = false;
			if (!isSpeechStarted){
				smsMiniMicro.src = sms_muilt_micro_press;
			} else if (isSmsRecorgnizeStarted){
				return;
			} else {
				return;
			}
		},false);
		
		smsMiniMicro.addEventListener("touchmove",function(){
			event.stopPropagation();
			console.log("micro is touched move");
			if (moveOverCheck.check(event)) {
				isMove = true;
				smsMiniMicro.src = sms_muilt_micro_nor;
			} else {
				if(isSmsRecorgnizeStarted) {
					smsMiniMicro.src = sms_muilt_micro_nor;
				} else {
					smsMiniMicro.src = sms_muilt_micro_press;
				}
			}
		},false);
		
		smsMiniMicro.addEventListener("touchend",function(){
			event.stopPropagation();
			console.log("micro is touched end");
			if(isMove == false) {
				isBlessUpdateFinish = false;
				if(!isSpeechStarted && !isSmsRecorgnizeStarted) {
					smsMiniMicro.src = sms_muilt_micro_press;
					exec(taskHandler, "smsRecordStart" , [smsContent.value]);
				} else if(isSpeechStarted && !isSmsRecorgnizeStarted) {
					exec(taskHandler, "smsRecordStop" , []);
				} else if(isSmsRecorgnizeStarted){
					smsMiniMicro.src = sms_muilt_micro_nor;
				}
			}
			isMove = false;
		},false);
		
		showDiv.onSmsRecordStart = function(){
			isSpeechStarted = true;
			isSmsRecorgnizeStarted = false;
			smsMiniMicro.src = sms_muilt_micro_press;
		};
		
		showDiv.onSmsRecordEnd = function(){
			isSpeechStarted = false;
			isSmsRecorgnizeStarted = true;
			smsMiniMicro.src = sms_muilt_micro_nor;
		};
		
		showDiv.onSmsRecorgnizeEnd = function(){
			isSpeechStarted = false;
			isSmsRecorgnizeStarted = false;
			smsMiniMicro.src = sms_muilt_micro_nor;
		};
		
	
		showDiv.onNetError = function(isNetError) {
			if (!isSendContactMode) {
				if (isNetError) {
					smsHintContainer.innerText = "请手动输入短信内容";
				} else {
					smsHintContainer.innerText = "点击右侧麦克风输入短信内容";
				}
			}
		};

		if (isSendContactMode) {
			changeContact.addEventListener("touchstart", function() {
				isMove = false;
				changeContactContainer.pressDown();
			}, false);

			changeContact.addEventListener("touchmove", function() {
				isMove = true;
				changeContactContainer.touchUp();
			}, false);

			changeContact.addEventListener("touchend", function() {
				if (!isMove) {
					changeContactContainer.touchUp();
					exec(taskHandler, "changeContactContent", []);
					isBlessUpdateFinish = false;
				}
				isMove = false;
			}, false);
		} else {
			if (isBlessContent) {
				changeContact.addEventListener("touchstart", function() {
					isMove = false;
					changeContactContainer.pressDown();
				}, false);

				changeContact.addEventListener("touchmove", function() {
					isMove = true;
					changeContactContainer.touchUp();
				}, false);

				changeContact.addEventListener("touchend", function() {
					if (!isMove) {
						changeContactContainer.touchUp();
						setTimeout(function(){
							exec(taskHandler, "changeContactContent", []);
						},50);
						isBlessUpdateFinish = true;
					}
					isMove = false;
				}, false);
			}
		}
		bottomButton.setDefaultPositive(positiveClickable);
		bottomButton.drawBg();
		return showDiv;
	}

	function createDoubleButton(callbackNegative, callbackPositive, isDoubleSimCardMode, defaultSimCard, isShowSimName, SimNameList) {
		var isPositiveEnable = true;
		var outDiv = createOutDiv()	;

		var btnInner = document.createElement("div");
		btnInner.className = "double_btn_inner";

		var btnLeftBlock = document.createElement("div");
		btnLeftBlock.className = "box_content_white";
		var btnMiddleBlock = document.createElement("div");
		btnMiddleBlock.className = "box_content_white";
		var btnRightBlock = document.createElement("div");
		btnRightBlock.className = "box_content_white";

		var btnLeftText = document.createElement("div");
		btnLeftText.innerText = "取消";
		btnLeftBlock.appendChild(btnLeftText);
		var btnMiddleText = document.createElement("div");
		btnMiddleText.innerText = SimNameList[0];
		
		btnMiddleBlock.appendChild(btnMiddleText);
		var btnRightText = document.createElement("div");
		btnRightText.innerText = "发送";
		btnRightBlock.appendChild(btnRightText);

		/* 创建外层容器div 从main.js中模仿过来的，添加了更换边框颜色的方法*/
		var createBoxDiv = function(id,outDiv) {
			var inner_box = document.createElement("div");
			inner_box.className = "box_inner";
			inner_box.appendChild(outDiv);
			
			var out_box = document.createElement("div");
			out_box.className = "box_out";
			out_box.style.margin = "0px";
			out_box.appendChild(inner_box);
			
			var out_of_out = document.createElement("div");
			out_of_out.appendChild(out_box);
			
			if (id) {
				out_of_out.id = id;
			}
			out_of_out.changeBorderType = function(type) {
				if (type == "green") {
					outDiv.style.borderRadius = "8px";
					inner_box.style.backgroundColor = "#62B363";
					inner_box.style.borderRadius = "9px";
					out_box.style.backgroundColor = "#62B363";
					out_box.style.borderRadius = "10px";
				} else {
					outDiv.style.borderRadius = "8px";
					inner_box.style.backgroundColor = "#C7C8CB";
					inner_box.style.borderRadius = "9px";
					out_box.style.backgroundColor = "#DCDDE0";
					out_box.style.borderRadius = "10px";
				}
			};
			return out_of_out;
		};
		//添加外壳
	    var btnLeftBlockBox = createBoxDiv("", btnLeftBlock);
	    btnLeftBlockBox.style.display = "inline-block";
	    btnLeftBlockBox.style.width = "49%";
	    var btnMiddleBlockBox = createBoxDiv("", btnMiddleBlock);
	    btnMiddleBlockBox.style.display = "inline-block";
	    btnMiddleBlockBox.style.width = "49%";
	    var btnRightBlockBox = createBoxDiv("", btnRightBlock);
	    btnRightBlockBox.style.display = "inline-block";
	    btnRightBlockBox.style.width = "49%";
	    
	    var middleDiv1 = document.createElement("div");
	    middleDiv1.style.width = "1%";
	    middleDiv1.style.display = "inline-block";
	    var middleDiv2 = document.createElement("div");
	    middleDiv2.style.width = "1%";
	    middleDiv2.style.display = "inline-block";
	    
	    if (isDoubleSimCardMode) {
	    	btnLeftBlockBox.style.width = "32%";
	    	btnMiddleBlockBox.style.width = "32%";
	    	btnRightBlockBox.style.width = "32%";
	    	middleDiv1.style.width = "2%";
	    	middleDiv2.style.width = "2%";
	    	btnRightText.innerText = SimNameList[1];
	    	//btnLeftBlockBox.changeBorderType('normal');
	    	/*if (defaultSimCard == 'first') {
	    		btnMiddleBlockBox.changeBorderType('green');
	    		btnRightBlockBox.changeBorderType('normal');
	    	} else {
	    		btnMiddleBlockBox.changeBorderType('normal');
	    		btnRightBlockBox.changeBorderType('green');
	    	}*/
	    	btnInner.appendChild(btnLeftBlockBox);
			btnInner.appendChild(middleDiv1);
			btnInner.appendChild(btnMiddleBlockBox);
			btnInner.appendChild(middleDiv2);
			btnInner.appendChild(btnRightBlockBox);
	    } else {
	    	btnRightBlockBox.changeBorderType('normal');
			btnInner.appendChild(btnLeftBlockBox);
			btnInner.appendChild(middleDiv1);
			btnInner.appendChild(btnRightBlockBox);
	    }

		outDiv.appendChild(btnInner);

		outDiv.drawBg = function() {
			if(!isPositiveEnable){
				btnMiddleText.style.color = "#a3a3a3";
				btnRightText.style.color = "#a3a3a3";
			}
		};
		
		outDiv.setDefaultPositive = function(isTrue){
			isPositiveEnable = isTrue;
		};
		
		outDiv.setPositiveEnable = function(isEnable){
			if(isPositiveEnable == isEnable){
				return ;
			}
			isPositiveEnable = isEnable;
			if(isPositiveEnable){
				if (defaultSimCard == 'first' || isDoubleSimCardMode == false) {
					btnMiddleText.style.color = "#515151";
					btnRightText.style.color = "#515151";
				} else {
					btnMiddleText.style.color = "#515151";
					btnRightText.style.color = "#515151";
				}
			}else{
				btnMiddleText.style.color = "#a3a3a3";
				btnRightText.style.color = "#a3a3a3";
			}
		};
		
		var touchType = -1;
		btnInner.addEventListener("touchstart",function(){
			event.stopPropagation();
			touchType = -1;
			if(event.target == btnLeftText){
				touchType = 0;
				btnLeftBlock.style.backgroundColor = "#e5e5e5";
			}else if(event.target == btnRightText){
				touchType = 1;
				if(isPositiveEnable){
					btnRightBlock.style.backgroundColor = "#e5e5e5";
				}else{
					touchType = -1;
				}
			}else if(event.target == btnMiddleText){
				touchType = 2;
				if(isPositiveEnable){
					btnMiddleBlock.style.backgroundColor = "#e5e5e5";
				}else{
					touchType = -1;
				}
			}
		},false);
		btnInner.addEventListener("touchmove",function(){
			event.stopPropagation();
			if(0 == touchType){
				btnLeftBlock.style.backgroundColor = "white";
			}else if(1 == touchType){
				btnRightBlock.style.backgroundColor = "white";
			}else if(2 == touchType){
				btnMiddleBlock.style.backgroundColor = "white";
			}
			touchType = -1;
		},false);
		btnInner.addEventListener("touchend",function(){
			event.stopPropagation();
			if(0 == touchType){
				btnLeftBlock.style.backgroundColor = "white";
				callbackNegative();
			}else if(1 == touchType){
				btnRightBlock.style.backgroundColor = "white";
				if (isDoubleSimCardMode) {
					//btnMiddleBlockBox.changeBorderType('normal');
		    		//btnRightBlockBox.changeBorderType('green');
		    		btnMiddleText.style.color = "#515151";
					btnRightText.style.color = "#515151";
					callbackPositive('second');
				} else {
					callbackPositive();
				}
			}else if(2 == touchType){
				btnMiddleBlock.style.backgroundColor = "white";
				//btnMiddleBlockBox.changeBorderType('green');
	    		//btnRightBlockBox.changeBorderType('normal');
	    		btnMiddleText.style.color = "#515151";
				btnRightText.style.color = "#515151";
				callbackPositive('first');
			}
			touchType = -1;
		},false);
		return outDiv;
	}
	
	/**
	 * 短信识别结果，由java层调用
	 */
	function onSmsResult(result, taskHandler, textAddType) {
		console.log('onSmsResult, result is ' + result + ' ,taskHandler is ' + taskHandler);

		if(smsSendView){
			smsSendView.onSmsResult(result, taskHandler, textAddType);
		}
	}
	// java回调，更新短信界面
	function updateSmsData(smsJson) {
		console.log("sms update data is :" + smsJson);
		if (smsSendView) {
			smsSendView.updateSmsData(smsJson);
		}
	}
	function afterSelectNumber(location, phoneNumber) {
		console.log('location:' + location + ' phoneNumber:' + phoneNumber);
		if(smsSendView){
			smsSendView.afterSelectNumber(location, phoneNumber);
		}
	}
	function stopRecording(recordUrl){
		smsSendView.stopRecording(recordUrl);
	}
	function startRecording(){
		smsSendView.startRecording();
	}
	function onSmsFinish(isConfirm, taskHandler) {
		removeErrorView();
		removeCurrentCanDeleteView(taskHandler);
	}
	
	function onSmsRecordStart(){
		if(smsSendView){
			smsSendView.onSmsRecordStart();
		}
	}
	
	function onSmsRecordEnd(){
		if(smsSendView){
			smsSendView.onSmsRecordEnd();
		}
	}
	
	function onSmsRecorgnizeEnd(){
		if(smsSendView){
			smsSendView.onSmsRecorgnizeEnd();
		}
	}
	
	function onNetError(isNetError){
		if(smsSendView){
			smsSendView.onNetError(isNetError);
		}
	}
	
	function clearInputFocus(){
		if(currentFocus){
			currentFocus.blur();
			currentFocus = null;
		}
	}
	
	function getCursorPos(pTextArea) {
	  	var cursurPosition=-1;
        cursurPosition= pTextArea.selectionStart;
        return cursurPosition;
	}
	
	function setDoubleBtnVisibility(pVisibale) {
		if (doubleBtnDiv) {
			if (pVisibale) {
				doubleBtnDiv.style.display = "block";
			} else {
				doubleBtnDiv.style.display = "none";
			}
		}
	}
	
	// 将需要java回调的函数暴露到全局对象smsView中，方便外部java文件调用
	window.smsView = window.smsView || {};

	smsView.updateSmsData = updateSmsData;
	smsView.afterSelectNumber = afterSelectNumber;

	smsView.onSmsResult = onSmsResult;
	smsView.onSmsFinish = onSmsFinish;
	smsView.stopRecording = stopRecording;
	smsView.startRecording = startRecording;
	
	smsView.onSmsRecordStart = onSmsRecordStart;
	smsView.onSmsRecordEnd = onSmsRecordEnd;
	smsView.onSmsRecorgnizeEnd = onSmsRecorgnizeEnd;
	smsView.onNetError = onNetError;
	
	smsView.clearInputFocus = clearInputFocus;
	smsView.setDoubleBtnVisibility = setDoubleBtnVisibility;
	return createSmsView;
});
