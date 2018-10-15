/**
 * 搜索联系人视图（单联系人）
 *
 * @author fpliu@iflytek.com
 * @author modified by mdhuang 2013-11-10 修改内容：canvas替代
 */
define(function() {
	function getSplitPhoneString(isMobileNumber, markUpPhoneNum) {
		var phoneShowString = "";
		var sMarkArray = markUpPhoneNum.split("^");
		var phoneNumber;
		if (sMarkArray.length > 1) {
			phoneNumber = sMarkArray[1];
		} else {
			phoneNumber = sMarkArray[0];
		}
		// 电话号码加粗 分段
		var sArray = phoneNumber.split("&");
		var firstMarkPosition = phoneNumber.indexOf("&");
		if (firstMarkPosition == -1) {
			if (isMobileNumber) {
				phoneShowString = phoneNumber.substring(0, 3) + " " + phoneNumber.substring(3, 7) + " " + phoneNumber.substring(7);
			} else {
				phoneShowString = phoneNumber;
			}
		} else if (firstMarkPosition == 0) {
			var lastMarkPosition = phoneNumber.lastIndexOf("&");

			if (lastMarkPosition == phoneNumber.length - 1) {
				console.log(sArray[1]);
				if (isMobileNumber) {
					var s = sArray[1].substring(0, 3) + " " + sArray[1].substring(3, 7) + " " + sArray[1].substring(7);
					phoneShowString = phoneNumJSpre + s + phoneJSpost;
				} else {
					phoneShowString = phoneNumJSpre + sArray[1] + phoneJSpost;
				}
			} else {
				var s1 = phoneNumJSpre + sArray[1] + phoneJSpost + " ";
				var s2 = sArray[2].substring(0, 4) + " " + sArray[2].substring(4);
				phoneShowString = s1 + s2;
			}
		} else if (firstMarkPosition > 6) {
			var s1 = sArray[0].substring(0, 3) + " " + sArray[0].substring(3) + " ";
			var s2 = phoneNumJSpre + sArray[1] + phoneJSpost;
			phoneShowString = s1 + s2;
		} else {
			phoneShowString = sArray[0] + " " + phoneNumJSpre + sArray[1] + phoneJSpost + " " + sArray[2];
		}

		var leftHtmlStr = phoneShowString;
		if (sMarkArray.length > 1) {
			leftHtmlStr = sMarkArray[0] + " " + leftHtmlStr;
		}

		return leftHtmlStr;
	}

	function createNewContactItem(itemId, contactName, contactIcon, isCreateMode) {
		var contactDetail = document.createElement("div");
		contactDetail.className = "contact_list_item";

		var contactInfo = document.createElement("div");
		contactInfo.innerText = contactName;

		if (!isCreateMode) {
			contactInfo.className = "contact_item_name";
			var icon = document.createElement("div");
			icon.className = "contact_icon_container";

			var iconFrame = document.createElement("img");
			iconFrame.className = "contact_icon_frame";

			if (contactIcon) {
				var iconImg = document.createElement("img");
				iconImg.className = "contact_icon_src";
				iconImg.src = contactIcon;
				icon.appendChild(iconImg);
				iconFrame.src = contact_icon_frame;
			} else {
				iconFrame.src = contact_icon_default;
			}

			icon.appendChild(iconFrame);
			contactDetail.appendChild(icon);
		} else {
			contactInfo.className = "contact_item_name_without_icon";
		}
		contactDetail.appendChild(contactInfo);

		return contactDetail;
	}

	/**
	 * 创建电话短信按钮 
 	 * @param {Object} containerRight
	 */
	function createCallAndSmsBtnTable(containerRight, smsIconId, telIconId) {
    	//电话按钮
		var callNumberBtn = document.createElement("div");
		callNumberBtn.className = "contactview_btn";
		callNumberBtn.id = telIconId;
		//电话图片
		var callNumberImg = document.createElement("img");
		callNumberImg.src = ic_cal_log_item_btn_call_nor;
		callNumberImg.className = "contactview_btn_icon_big";
		callNumberImg.id = telIconId;
		callNumberBtn.appendChild(callNumberImg);
		var isMove = false;
		callNumberBtn.addEventListener("touchstart", function(newInfo) {
			callNumberBtn.style.backgroundColor = "#f2f2f2";
			callNumberBtn.style.border='1px solid #ebebeb';
			callNumberImg.src = ic_cal_log_item_btn_call_press;
			isMove = false;
		}, false);
		callNumberBtn.addEventListener("touchmove", function(newInfo) {
			isMove = true;
			callNumberBtn.style.backgroundColor = "";
			callNumberBtn.style.borderColor='transparent';
			callNumberImg.src = ic_cal_log_item_btn_call_nor;
		}, false);
		callNumberBtn.addEventListener("touchend", function(newInfo) {
			if (isMove == false) {
				callNumberBtn.style.backgroundColor = "";
				callNumberBtn.style.borderColor='transparent';
				callNumberImg.src = ic_cal_log_item_btn_call_nor;
			}
			isMove = false;
		}, false);
		//短信按钮
		var sendMessageBtn = document.createElement("div");
		sendMessageBtn.className = "contactview_btn contactview_item_paddingright";
		sendMessageBtn.id = smsIconId;
		//短信图片
		var sendMessageImg = document.createElement("img");
		sendMessageImg.src = ic_cal_log_item_btn_sms_nor;
		sendMessageImg.className = "contactview_btn_icon_big";
		sendMessageImg.id = smsIconId;
		sendMessageBtn.appendChild(sendMessageImg);
		sendMessageBtn.addEventListener("touchstart", function(newInfo) {
			sendMessageBtn.style.backgroundColor = "#f2f2f2";
			sendMessageBtn.style.borderColor='#ebebeb';
			sendMessageImg.src = ic_cal_log_item_btn_sms_press;
			isMove = false;
		}, false);
		sendMessageBtn.addEventListener("touchmove", function(newInfo) {
			isMove = true;
			sendMessageBtn.style.backgroundColor = "";
			sendMessageBtn.style.borderColor='transparent';
			sendMessageImg.src = ic_cal_log_item_btn_sms_nor;
		}, false);
		sendMessageBtn.addEventListener("touchend", function(newInfo) {
			if (isMove == false) {
				sendMessageBtn.style.backgroundColor = "";
				sendMessageBtn.style.borderColor='transparent';
				sendMessageImg.src = ic_cal_log_item_btn_sms_nor;
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
		containerRight.appendChild(sendMessageBtn);
		containerRight.appendChild(callNumberBtn);
	}
	function createNumberItem(itemType, defaultParam, isMobile, phoneTag, markPhoneNum, rightIconId, leftIconId) {
		var item = document.createElement("div");

		item.className = "contactview_item";

		var left = document.createElement("div");
		left.className = "phone_item_left";


		var phoneNum = document.createElement("label");
		phoneNum.className = "list_first_line_text";
		phoneNum.innerText = markPhoneNum;
		phoneNum.innerHTML = getSplitPhoneString(isMobile, markPhoneNum);
		var numberTag = document.createElement("label");
		numberTag.className = "list_second_line_text";
		numberTag.style.display = "block";
		numberTag.innerText = phoneTag;

		left.appendChild(phoneNum);
		left.appendChild(numberTag);

			
		item.appendChild(left);

		var containerRight = document.createElement("div");
		containerRight.className = "contactview_btn_table";
		left.style.width = "56%";	
		containerRight.style.width = "44%";
		
		createCallAndSmsBtnTable(containerRight, leftIconId, rightIconId);
		item.appendChild(containerRight);

		return item;

	}

	function createContactSearchList(contactSearchInfo) {
		var contactList = contactSearchInfo.contactTagAndNumberArray;
		var listLength = contactList.length;

		var taskHandler = contactSearchInfo.taskHandler;
		var itemType = "contact";

		var outDiv = document.createElement("div");
		outDiv.className = "box_content_white";

		//联系人标题栏
		var isCreateMode = contactSearchInfo.isCreateMode;

		var searchListTitle = createNewContactItem("", contactSearchInfo.contactName, contactSearchInfo.contactIconUri, isCreateMode);
		outDiv.appendChild(searchListTitle);

		//号码列表
		var dialog_contact_inner_div = document.createElement("div");
		dialog_contact_inner_div.className = "phoneNum_list_inner";

		for (var i = 0; i < listLength; i++) {
			var phoneItem = createNumberItem(itemType, null, contactList[i].isMobileNumber, contactList[i].contactTag, contactList[i].contactNumber, "contactSearch_right_" + i, "contactSearch_left_" + i);
			phoneItem.id = "contactSearch_item_" + i;
			phoneItem.className += " sub_list_divider";
			dialog_contact_inner_div.appendChild(phoneItem);
		}
		outDiv.appendChild(dialog_contact_inner_div);

		//添加外壳
		var outDivBox = createBoxDiv(taskHandler, outDiv);
		curPage.appendChild(outDivBox);
		currentCanDeleteView = outDivBox;

		var targetItem = null;
		var touchType = -1;
		var touchId = null;
		var index = -1;
		dialog_contact_inner_div.addEventListener("touchstart", function() {
			event.stopPropagation();
			touchType = -1;
			targetItem = event.target;
			if (targetItem.id.indexOf("contactSearch_left") > -1) {
				touchType = 1;
			} else if (targetItem.id.indexOf("contactSearch_right") > -1) {
				touchType = 2;
			} else {
				targetItem = getParentOfClass("contactview_item", targetItem);
				if (targetItem) {
					touchType = 3;
					index = targetItem.id.indexOf("contactSearch_item");
					console.log("index is " + index);
					targetItem.style.backgroundColor = "#e5e5e5";
				}
			}
		}, false);
		dialog_contact_inner_div.addEventListener("touchmove", function() {
			event.stopPropagation();
			if (touchType > -1) {
				if (touchType != 1 && touchType != 2) {
					targetItem.style.backgroundColor = "";
				}
			}
			touchType = -1;
			targetItem = null;
		}, false);
		dialog_contact_inner_div.addEventListener("touchend", function() {
			event.stopPropagation();
			if (touchType > -1) {
				if (touchType != 1 && touchType != 2) {
					targetItem.style.backgroundColor = "";
				}
				touchId = targetItem.id;
				if (!contactSearchInfo.isCreateMode) {
					targetItem = null;
					removeCurrentCanDeleteView(taskHandler);
					exec(taskHandler, 'phoneItemClick', [touchId]);
				} else {
					console.log("index is " + index);
					if (touchType == 1) {
						var strs = [];
						strs = touchId.split("_");
						index = parseInt(strs[strs.length - 1]);
						removeCurrentCanDeleteView(taskHandler);
						exec(taskHandler, 'startSmsRecog', [contactSearchInfo.contactName, contactList[index].contactNumber]);
						//exec("WidgetMMPContainerComponents", 'startSmsRecog', [contactSearchInfo.contactName, contactList[index].contactNumber]);
					} else if (touchType == 2) {
						var strs = [];
						strs = touchId.split("_");
						index = parseInt(strs[strs.length - 1]);
						exec(taskHandler, 'startCall', [contactList[index].contactNumber, contactSearchInfo.contactName]);
					} else if (touchType == 3) {
						var strs = [];
						strs = touchId.split("_");
						index = parseInt(strs[strs.length - 1]);
						exec(taskHandler, 'startCall', [contactList[index].contactNumber, contactSearchInfo.contactName]);
					}
				}
			}
			touchType = -1;
		}, false);

		return outDivBox;
	}

	return createContactSearchList;
}); 