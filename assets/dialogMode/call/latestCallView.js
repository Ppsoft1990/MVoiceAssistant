/**
 * 最近一次的呼叫记录
 *
 * @author modified by mdhuang 2013-11-10 修改内容：canvas替代
 */
define(function() {
	var latestCallView;
	function addLatestCallView(itemInfo) {
		if (currentCanDeleteView) {
			removeCurrentCanDeleteView();
		}
		if (itemInfo.muiltNumbers) {
			console.log("Call log with muilt numbers");
			return createNumberList(itemInfo);
		} else {
			return createLatestCallView(itemInfo);
		}
	}

	/**
	 * 创建电话短信按钮 
 	 * @param {Object} containerRight
	 */
	function createCallAndSmsBtnTable(containerRight, taskHandler, item) {
    	//电话按钮
		var callNumberBtn = document.createElement("div");
		callNumberBtn.className = "contactview_btn";
		//电话图片
		var callNumberImg = document.createElement("img");
		callNumberImg.src = ic_cal_log_item_btn_call_nor;
		callNumberImg.className = "contactview_btn_icon_big";
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
			callNumberBtn.style.borderColor='transparent';
			callNumberImg.src = ic_cal_log_item_btn_call_nor;
		}, false);
		callNumberBtn.addEventListener("touchend", function(newInfo) {
			event.stopPropagation();
			if (isMove == false) {
				callNumberBtn.style.backgroundColor = "";
				callNumberBtn.style.borderColor='transparent';
				callNumberImg.src = ic_cal_log_item_btn_call_nor;
				
                exec(taskHandler, 'opRecoCall', [item.item_no, item.item_name]);
			}
			isMove = false;
		}, false);
		//短信按钮
		var sendMessageBtn = document.createElement("div");
		//FIXME 目前没有 contactview_item_paddingright 这个样式了？
		sendMessageBtn.className = "contactview_btn contactview_item_paddingright";
		//短信图片
		var sendMessageImg = document.createElement("img");
		sendMessageImg.src = ic_cal_log_item_btn_sms_nor;
		sendMessageImg.className = "contactview_btn_icon_big";
		sendMessageBtn.appendChild(sendMessageImg);
		sendMessageBtn.addEventListener("touchstart", function(newInfo) {
			event.stopPropagation();
			sendMessageBtn.style.backgroundColor = "#f2f2f2";
			sendMessageBtn.style.borderColor='#ebebeb';
			sendMessageImg.src = ic_cal_log_item_btn_sms_press;
			isMove = false;
		}, false);
		sendMessageBtn.addEventListener("touchmove", function(newInfo) {
			event.stopPropagation();
			isMove = true;
			sendMessageBtn.style.backgroundColor = "";
			sendMessageBtn.style.borderColor='transparent';
			sendMessageImg.src = ic_cal_log_item_btn_sms_nor;
		}, false);
		sendMessageBtn.addEventListener("touchend", function(newInfo) {
			event.stopPropagation();
			if (isMove == false) {
				sendMessageBtn.style.backgroundColor = "";
				sendMessageBtn.style.borderColor='transparent';
				sendMessageImg.src = ic_cal_log_item_btn_sms_nor;
				
                if ("home" == item.item_focus) {
					exec(taskHandler, 'opRecoSmsHome', [item.item_name, item.item_no]);
					//exec("WidgetMMPContainerComponents", 'startSmsRecog', [item.item_name, item.item_no]);
				} else {
					
					if ("未知" == item.item_name) {
						exec(taskHandler, 'opRecoSmsSubPage', [item.item_no, item.item_no]);
						//exec("WidgetMMPContainerComponents", 'startSmsRecog', [item.item_no, item.item_no]);
					} else {
						exec(taskHandler, 'opRecoSmsSubPage', [item.item_name, item.item_no]);
						//exec("WidgetMMPContainerComponents", 'startSmsRecog', [item.item_name, item.item_no]);

					}
				}
			}
			isMove = false;
		}, false);
		
		//增加右侧点击无响应区域
		var rightArea = document.createElement("div");
		rightArea.className = "contactview_item_rightarea";
		rightArea.addEventListener("touchstart", function(newInfo) {
			event.stopPropagation();
		});
		rightArea.addEventListener("touchmove", function(newInfo) {
			event.stopPropagation();
		});
		rightArea.addEventListener("touchend", function(newInfo) {
			event.stopPropagation();
		});
		containerRight.appendChild(rightArea);
		containerRight.appendChild(callNumberBtn);
		containerRight.appendChild(sendMessageBtn);
	}
	
	function createLatestCallView(itemInfo) {
		console.log("createLatestCallView is called");
		var outDiv = document.createElement("div");
		outDiv.className = "box_content_white";

		var list_inner = document.createElement("div");
		// list_inner.className = "tel_his_inner";

		var item = document.createElement("div");
		item.className = "contact_select_list_item";
		item.style.paddingTop = "0";
		item.style.paddingBottom = "0";
		var left = document.createElement("div");
		left.className = "phone_item_left";
		var right = document.createElement("div");
		right.className = "phone_item_right";
		
		left.style.width = "65%";
		right.style.width = "35%";

		var info = document.createElement("div");
		info.className = "calllog_tel_info";

		var name = document.createElement("label");
		name.className = "sub_tel_item_name";

		var tel = document.createElement("div");
		tel.className = "list_second_line_text";
		
		var defaultSim = itemInfo.defaultSimCard;
		var SimNameList = itemInfo.SimNameList;
		
		var showNum;
		if (itemInfo.mobile) {
			showNum = seperateMobileNum(itemInfo.tel);
		} else {
			showNum = itemInfo.tel;
		}
		console.log(itemInfo.name);
		var tip;
		if (defaultSim == 'first') {
			tip = '刚刚用' + SimNameList[0] + '拨出';
			
			tel.innerText = itemInfo.location + " " + tip;
			tel.style.color = "#66abe0";
			if ("未知" == itemInfo.name) {
				name.innerText = showNum;
			} else {
				name.innerText = itemInfo.name;
			}
		} else if (defaultSim == 'second') {
			tip = '刚刚用' + SimNameList[1] + '拨出';
			
			tel.innerText = itemInfo.location + " " + tip;
			tel.style.color = "#66abe0";
			if ("未知" == itemInfo.name) {
				name.innerText = showNum;
			} else {
				name.innerText = itemInfo.name;
			}
		} else {
			if ("未知" == itemInfo.name) {
				tel.innerText = itemInfo.location;
				name.innerText = showNum;
			} else {
				name.innerText = itemInfo.name;
				tel.innerText = itemInfo.location + " " + showNum;
			}
		}
		
		
		
		item.item_no = itemInfo.tel;
		item.item_name = itemInfo.name;
		item.item_focus = itemInfo.focus;

		info.appendChild(name);
		info.appendChild(tel);

		left.appendChild(info);

		createCallAndSmsBtnTable(right, itemInfo.taskHandler, item);
		
		item.appendChild(left);
		item.appendChild(right);

		list_inner.appendChild(item);
		outDiv.appendChild(list_inner);

		//添加外壳
		var outDivBox = createBoxDiv("", outDiv);
		curPage.appendChild(outDivBox);

		outDivBox.refresh = function(newInfo) {
			name.innerText = newInfo.name;
			if (newInfo.mobile) {
				tel.innerText = seperateMobileNum(newInfo.tel);
			} else {
				tel.innerText = newInfo.tel;
			}
			time.innerText = newInfo.time;

			item.item_name = newInfo.name;
			item.item_no = newInfo.tel;
		};
		var moveMotion = false;
		list_inner.addEventListener("touchstart", function() {
			event.stopPropagation();
			list_inner.style.backgroundColor = "#e5e5e5";
			moveMotion = false;
		}, false);
		list_inner.addEventListener("touchmove", function() {
			event.stopPropagation();
			moveMotion = true;
			list_inner.style.backgroundColor = "";
		}, false);
		list_inner.addEventListener("touchend", function() {
			event.stopPropagation();
			list_inner.style.backgroundColor = "";
			if (!moveMotion) {
				exec(itemInfo.taskHandler, 'opRecoCall', [item.item_no, item.item_name]);
			}
			moveMotion = false;
		}, false);

		currentCanDeleteView = outDivBox;
		outDivBox.needScroll = true;
		outDivBox.topFirst = true;
		return outDivBox;
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

	function createNewContactItem(contactName, contactIcon) {
		var contactDetail = document.createElement("div");

		contactDetail.className = "phone_list_item_dial_new";

		var contactInfo = document.createElement("div");
		contactInfo.className = "contact_item_name";
		contactInfo.innerText = contactName;
		contactInfo.style.color = "#515151";

		contactDetail.appendChild(contactInfo);

		return contactDetail;

	}

	function createNumberItem(taskHandler, markPhoneNum, location, name, isDefault, defaultSimCard, focus, SimNameList) {
		var item = document.createElement("div");
		item.className = "contact_select_list_item";
		item.style.paddingTop = "0";
		item.style.paddingBottom = "0";
		
		var left = document.createElement("div");
		left.className = "phone_item_left";

		var right = document.createElement("div");
		right.className = "phone_item_right";

		left.style.width = "65%";
		right.style.width = "35%";
		
		var phoneNum = document.createElement("label");
		phoneNum.className = "list_first_line_text";
		phoneNum.innerText = markPhoneNum;
		var numberTag = document.createElement("label");
		numberTag.className = "list_second_line_text";
		numberTag.innerText = location;

		left.appendChild(phoneNum);
		
		var tip;
		if (defaultSimCard == 'first') {
			tip = '刚刚用' + SimNameList[0] + '拨出';
		} else if (defaultSimCard == 'second') {
			tip = '刚刚用' + SimNameList[1] + '拨出';
		} else {
			tip = '刚刚拨出';
		}
		if (location != "null") {
			if (isDefault) {
				location = location + "  " + tip;
			}
			numberTag.innerText = location;
			left.appendChild(numberTag);
		} else if (location == "null") {
			if (isDefault) {
				numberTag.innerText = tip;
				left.appendChild(numberTag);
			}
		}

		item.appendChild(left);
		if (isDefault) {
			phoneNum.style.color = "#66abe0";
			numberTag.style.color = "#66abe0";
		} else {
			isDefault = 'false';
		}

		item.item_no = markPhoneNum;
		item.item_name = name;
		createCallAndSmsBtnTable(right, taskHandler, item);

		item.appendChild(right);
		item.callOut = function() {

			exec(taskHandler, 'opRecoCall', [markPhoneNum, name, isDefault]);
		};
		return item;

	}

	function createNumberList(itemInfo) {
		var phoneNumList = itemInfo.muiltNumbers;
		var locationList = itemInfo.location;
		var listLength = phoneNumList.length;
		var defaultNumber = itemInfo.tel;
		var defaultSimCards = itemInfo.defaultSimCards;
		var focus = itemInfo.focus;
		var SimNameList = itemInfo.SimNameList;
		var outDiv = document.createElement("div");
		outDiv.className = "box_content_white";

		var list_num = document.createElement("div");

		var numListTitle = createNewContactItem(itemInfo.name, itemInfo.iconURL);
		list_num.appendChild(numListTitle);
		var dialog_contact_inner_div = document.createElement("div");
		dialog_contact_inner_div.className = "phoneNum_list_inner";

		var j = 0;
		var phoneItemList = [];
		var lastIsDefault = false;
		
		//先把默认号码加在第一排
		for (var i = 0; i < listLength; i++) {
			if (defaultNumber == phoneNumList[i]) {
				var phoneItemDefault = createNumberItem(itemInfo.taskHandler, phoneNumList[i], 
					locationList[i], itemInfo.name, true, defaultSimCards[i], itemInfo.focus, SimNameList);

				phoneItemDefault.id = "contactSearch_item_" + i;
				phoneItemDefault.className += " sub_list_divider";
				if (i == (listLength - 1)) {
					lastIsDefault = true;
				}
				dialog_contact_inner_div.appendChild(phoneItemDefault);
			}
		}

		for (var i = 0; i < listLength; i++) {
			if (defaultNumber != phoneNumList[i]) {
				var phoneItem = createNumberItem(itemInfo.taskHandler, phoneNumList[i], 
					locationList[i], itemInfo.name, false, defaultSimCards[i], itemInfo.focus, SimNameList);

				phoneItem.id = "contactSearch_item_" + i;
				phoneItemList[j] = phoneItem;
				j++;
				phoneItem.className += " sub_list_divider";
				if (i == (listLength - 1) || 
					(i == (listLength - 2) && lastIsDefault)) {
					//给最后一条加上圆角，避免按下效果没有圆角
					phoneItem.className += " sub_tel_hot_lastitem_border_radio";
				}
				dialog_contact_inner_div.appendChild(phoneItem);
			}
		}

		list_num.appendChild(dialog_contact_inner_div);
		outDiv.appendChild(list_num);

		//添加外壳
		var outDivBox = createBoxDiv("", outDiv);
		curPage.appendChild(outDivBox);

		var targetItem = null;
		var touchType = -1;
		dialog_contact_inner_div.addEventListener("touchstart", function() {
			event.stopPropagation();
			touchType = -1;
			targetItem = event.target;

			targetItem = getParentOfClass("contact_select_list_item", targetItem);
			if (targetItem) {
				touchType = 3;
				index = targetItem.id.indexOf("contactSearch_item");
				console.log("index is " + index);
				targetItem.style.backgroundColor = "#e5e5e5";
			}
		}, false);
		dialog_contact_inner_div.addEventListener("touchmove", function() {
			event.stopPropagation();
			if (touchType > -1) {
				targetItem.style.backgroundColor = "";
			}
			touchType = -1;
			targetItem = null;
		}, false);
		dialog_contact_inner_div.addEventListener("touchend", function() {
			event.stopPropagation();
			if (touchType > -1) {
				targetItem.style.backgroundColor = "";
				targetItem.callOut();
				
				touchType = -1;
				touchId = targetItem.id;
				targetItem = null;
			}
		}, false);

		currentCanDeleteView = outDivBox;
		outDivBox.needScroll = true;
		outDivBox.topFirst = true;
		return outDivBox;
	}

	return addLatestCallView;
});
