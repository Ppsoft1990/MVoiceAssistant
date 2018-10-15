/**
 * 联系人列表视图
 * 
 * @author fpliu@iflytek.com
 * @author modified by mdhuang 2013-11-11 修改内容：canvas替代
 */
define(function() {
	
	/**
	 * 创建simCard 选择区域
	 */
	function createSimCardTable(defaultSim, taskHandler, itemId, index, isShowSimName, SimNameList) {
		//选卡区域
		var chooseSimCardTable = document.createElement("div");
		chooseSimCardTable.className = "contactview_simcard_table";
		var simCard1Div = document.createElement("div");
		simCard1Div.className = "contactview_simcard_cell";
		var simCard1Btn = document.createElement("div");
		simCard1Btn.className = "callview_simcard_button simcard1_margin";
		simCard1Div.appendChild(simCard1Btn);
		
		
		chooseSimCardTable.appendChild(simCard1Div);
		var simCard2Div = document.createElement("div");
		simCard2Div.className = "contactview_simcard_cell";
		var simCard2Btn = document.createElement("div");
		simCard2Btn.className = "callview_simcard_button simcard2_margin";
		
		simCard2Div.appendChild(simCard2Btn);
		chooseSimCardTable.appendChild(simCard2Div);
	
		simCard1Btn.innerText = SimNameList[0];
		simCard2Btn.innerText = SimNameList[1];
		
		if (defaultSim == "first") {
			simCard1Btn.style.color = "#515151";
			simCard1Btn.style.borderColor = "#bfbfbf";
			simCard2Btn.style.color = "#515151";
			simCard2Btn.style.borderColor = "#bfbfbf";
		} else {
			simCard2Btn.style.color = "#515151";
			simCard2Btn.style.borderColor = "#bfbfbf";
			simCard1Btn.style.color = "#515151";
			simCard1Btn.style.borderColor = "#bfbfbf";
		}
		
		var isMove = false;
		simCard1Div.addEventListener("touchstart", function() {
			event.stopPropagation();
			simCard1Btn.style.backgroundColor = "#e5e5e5";
			isMove = false;
		});
		simCard1Div.addEventListener("touchmove", function() {
			event.stopPropagation();
			simCard1Btn.style.backgroundColor = "#fff";
			isMove = true;
		});
		simCard1Div.addEventListener("touchend", function() {
			event.stopPropagation();
			simCard1Btn.style.backgroundColor = "#fff";
			if(isMove == false) {
				exec(taskHandler,"directCallOut",[itemId, index, "card1"]);
				
				/*simCard1Btn.style.color = "#26a12f";
				simCard1Btn.style.borderColor = "#62b363";
				simCard2Btn.style.color = "#515151";
				simCard2Btn.style.borderColor = "#bfbfbf";*/
				isMove = false;
			}
		});
		simCard2Div.addEventListener("touchstart", function() {
			event.stopPropagation();
			simCard2Btn.style.backgroundColor = "#e5e5e5";
			isMove = false;
		});
		simCard2Div.addEventListener("touchmove", function() {
			event.stopPropagation();
			simCard2Btn.style.backgroundColor = "#fff";
			isMove = true;
		});
		simCard2Div.addEventListener("touchend", function() {
			event.stopPropagation();
			simCard2Btn.style.backgroundColor = "#fff";
			if(isMove == false) {
				exec(taskHandler,"directCallOut",[itemId, index, "card2"]);
				
				/*simCard2Btn.style.color = "#26a12f";
				simCard2Btn.style.borderColor = "#62b363";
				simCard1Btn.style.color = "#515151";
				simCard1Btn.style.borderColor = "#bfbfbf";*/
				isMove = false;
			}
		});
		
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
		chooseSimCardTable.appendChild(rightArea);
		
		return chooseSimCardTable;
	}
	
	/**
	 * 创建电话短信按钮 
 	 * @param {Object} containerRight
	 */
	function createCallAndSmsBtnTable(containerRight, taskHandler, itemId, index) {
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
				
                exec(taskHandler, 'callOut', [itemId, index]);
			}
			isMove = false;
		}, false);
		//短信按钮
		var sendMessageBtn = document.createElement("div");
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
				
                exec(taskHandler, 'sendMessage', [itemId, index ]);
                if (currentCanDeleteView) {
                    removeCurrentCanDeleteView();
                    console.log("removeCurrentCanDeleteView");
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
		containerRight.appendChild(sendMessageBtn);
		containerRight.appendChild(callNumberBtn);
	}
	
	function createNumberItem(markPhoneNum, phoneTag, index, itemType, taskHandler, itemId, isDoubleCard, defaultSim, isShowSimName, SimNameList) {
		var orderContainer = document.createElement("div");
		orderContainer.className = "contact_order_container";

		var orderBg = document.createElement("img");
		orderBg.className = "contact_order_bg";
		orderBg.src = contact_item_order_bg;

		var orderText = document.createElement("div");
		orderText.className = "contact_order_text";
		orderText.innerText = "1";

		orderContainer.appendChild(orderBg);
		orderContainer.appendChild(orderText);
		// orderContainer.style.marginLeft = 4*scale + "px";
		orderContainer.style.visibility = "hidden";
		
		//item : [left | containerRight]
		var item = document.createElement("div");
		item.className = "contactview_item";

		var left = document.createElement("div");
		left.className = "contactview_left";

		var right = document.createElement("div");
		right.className = "phone_item_right";

		var infoContainerBox = document.createElement("div");
		infoContainerBox.className = "contactview_info_outbox_padding_left";
		infoContainerBox.style.width = "100%";
		var infoContainer = document.createElement("div");
		infoContainer.className = "contact_item_info_new contactview_info_padding_right";

		var phoneNum = document.createElement("div");
		phoneNum.className = "call_contact_item_name";
		phoneNum.innerText = markPhoneNum;

		var numberTag = document.createElement("div");
		numberTag.className = "contact_item_number";
		numberTag.innerText = phoneTag;
		if (phoneTag == "") {
			numberTag.style.display = "none";
			phoneNum.className = "call_contact_item_name" + " " + 
					"contactview_info_padding_top_when_number_gone";
		}

		infoContainer.appendChild(phoneNum);
		infoContainer.appendChild(numberTag);
		infoContainerBox.appendChild(infoContainer);
		left.appendChild(orderContainer);
		left.appendChild(infoContainerBox);
		item.appendChild(left);

		if (itemType == "telephone") {
			//双卡模式下打电话多联系人多号码界面，号码条后面需要有双卡选项
			var containerRight = document.createElement("div");
			containerRight.className = "contactview_btn_table";
			left.style.width = "56%";	
    		containerRight.style.width = "44%";
    		 
    		if (isDoubleCard) {
    			var simCardTable = createSimCardTable(defaultSim, taskHandler,itemId, index, isShowSimName, SimNameList);
				simCardTable.style.float = "right";
				containerRight.appendChild(simCardTable);
    		}
			
			item.appendChild(containerRight);
			

			
		} else if (itemType == "contacts") {
			var containerRight = document.createElement("div");
			containerRight.className = "contactview_btn_table";
			left.style.width = "56%";	
    		containerRight.style.width = "44%";
    		
			createCallAndSmsBtnTable(containerRight, taskHandler, itemId, index);
			item.appendChild(containerRight);
		}
		item.index = index;
		return item;
	}

	function createNewContactItem(taskHandler, itemId, contactName,
			contactIcon, contactNumber, contactLocations, contactNumberList, focus,
			isDoubleSimCardMode, defaultSimCardPerNumberList,isShowSimName, SimNameList) {
		console.log("contactName is :", contactName);
		var itemOrder = itemId + 1;
		var foldState = true;
		
		//contactItem : [ left | contactRight]
		var contactItem = document.createElement("div");
		contactItem.className = "contactview_item";
		contactItem.id = "contactItem" + itemId;
		
		//add by junli3
		//left : [orderContainer | infoContainerBox]
		var left = document.createElement("div");
        left.className = "contactview_left";
        var right = document.createElement("div");
        right.className = "phone_item_right";
		
		//orderContainer : [orderBg | orderText]
		var orderContainer = document.createElement("div");
	    orderContainer.className = "contact_order_container";
		var orderBg = document.createElement("img");
		orderBg.className = "contact_order_bg";
		orderBg.src = contact_item_order_bg;
		var orderText = document.createElement("div");
		orderText.className = "contact_order_text";
		orderText.innerText = "" + itemOrder;
		orderContainer.appendChild(orderBg);
		orderContainer.appendChild(orderText);
		
        
        //infoContainerBox : [ containerLeft: [contactInfo : [contactNameInfo|contactNumberInfo]] ]
		var infoContainerBox = document.createElement("div");
		infoContainerBox.className = "contactview_info_outbox_padding_left";
		infoContainerBox.style.width = "100%";
        var containerLeft = document.createElement("div");
		containerLeft.className = "sub_guide_left_new contactview_info_padding_right";
	    var contactInfo = document.createElement("div");
	    contactInfo.className = "contact_item_info_new2";
	  	
	  	var contactNameInfo = document.createElement("div");
	  	contactNameInfo.className = "call_contact_item_name";
	  	contactNameInfo.innerText = contactName;
	  	
	  	var contactNumberInfo = document.createElement("div");
	  	contactNumberInfo.className = "contact_item_number";
	  	var numberShowInfo = "";
	  	if(contactLocations[0] != ""){
	  		numberShowInfo = contactLocations[0] + " " + contactNumberList[0];
	  	} else {
	  		numberShowInfo = contactNumberList[0];
	  	}
	  	contactNumberInfo.innerText = numberShowInfo;
		contactNumberInfo.addEventListener("click", function() {
			//屏蔽android点击号码自动跳转到系统电话应用
		});
	  	
	  	contactInfo.appendChild(contactNameInfo);
	  	contactInfo.appendChild(contactNumberInfo);
	  	

		// containerLeft.appendChild(orderContainer);
		containerLeft.appendChild(contactInfo);

		var containerRight = document.createElement("div");
		containerRight.className = "contactview_btn_table";

		//展开按钮
		var guideButton = document.createElement("div");
		guideButton.className = "contactview_btn";
		//展开图片
		var guideButtonImg = document.createElement("img");
		guideButtonImg.src = ic_cal_log_item_btn_arrow_down;
		guideButtonImg.className = "contactview_btn_icon_small";
		guideButton.appendChild(guideButtonImg);
		
		// var guideButton = document.createElement("img");
		// guideButton.className = "phone_item_icon";

        contactItem.appendChild(left);
		left.appendChild(orderContainer);
		infoContainerBox.appendChild(containerLeft);
		left.appendChild(infoContainerBox);

		var contactNumberListDiv = document.createElement("div");

		var listLength = contactNumberList.length;
		if (listLength != 1) {
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
			containerRight.appendChild(guideButton);
			contactItem.appendChild(containerRight);
			var numberList = [];

			for ( var i = 0; i < listLength; i++) {
				var phoneItem;
				if (isDoubleSimCardMode) {
					phoneItem = createNumberItem(contactNumberList[i],
							contactLocations[i], i, focus, taskHandler, itemId,isDoubleSimCardMode,defaultSimCardPerNumberList[i], isShowSimName, SimNameList);
				} else {
					phoneItem = createNumberItem(contactNumberList[i],
							contactLocations[i], i, focus, taskHandler, itemId,isDoubleSimCardMode,null);
				}
				numberList[i] = phoneItem;
				phoneItem.className += " sub_list_divider";
				contactNumberListDiv.appendChild(phoneItem);
			}

			var guideMove = false;
			guideButton.addEventListener("touchstart", function() {
				event.stopPropagation();
				guideMove = false;
				guideButton.style.backgroundColor = "#f2f2f2";
				guideButton.style.border='1px solid #ebebeb';
			}, false);

			guideButton.addEventListener("touchmove", function() {
				event.stopPropagation();
				guideMove = true;
				guideButton.style.backgroundColor = "";
				guideButton.style.border='';
			}, false);

			guideButton.addEventListener("touchend", function() {
				event.stopPropagation();
				guideButton.style.backgroundColor = "";
				guideButton.style.border='';
				if (guideMove)
					return;
				if (foldState) {
					guideButtonImg.src = ic_cal_log_item_btn_arrow_up;
					contactNumberListDiv.style.display = "block";
					contactNumberInfo.style.display = "none";
					contactNameInfo.className = "call_contact_item_name" + " " + 
					"contactview_info_padding_top_when_number_gone";
				} else {
					guideButtonImg.src = ic_cal_log_item_btn_arrow_down;
					contactNumberListDiv.style.display = "none";
					contactNumberInfo.style.display = "block";
					contactNameInfo.className = "call_contact_item_name";
				}
				exec(taskHandler, "isOpen", [ foldState ]);
				foldState = !foldState;
			}, false);
			if (foldState) {
				guideButtonImg.src = ic_cal_log_item_btn_arrow_down;
				contactNumberListDiv.style.display = "none";
				contactNumberInfo.style.display = "block";
				
				contactNameInfo.className = "call_contact_item_name";
			} else {
				guideButtonImg.src = ic_cal_log_item_btn_arrow_up;
				contactNumberListDiv.style.display = "block";
				contactNumberInfo.style.display = "none";
				
				contactNameInfo.className = "call_contact_item_name" + " " + 
				"contactview_info_padding_top_when_number_gone";
			}

			var targetItem = null;
			var touchType = -1;
			var touchId = null;
			contactNumberListDiv.addEventListener("touchstart", function() {
				event.stopPropagation();
				touchType = -1;
				targetItem = event.target;
				if (targetItem.id.indexOf("contactSearch_left") > -1) {
					targetItem.src = btn_sms_press;
					touchType = 1;
				} else if (targetItem.id.indexOf("contactSearch_right") > -1) {
					targetItem.src = btn_call_press;
					touchType = 2;
				} else {
					targetItem = getParentOfClass("contactview_item", targetItem);
					if (targetItem) {
						touchType = 4;
						targetItem.style.backgroundColor = "#e5e5e5";
					}
				}
			}, false);
			contactNumberListDiv.addEventListener("touchmove", function() {
				event.stopPropagation();
				if (touchType > -1) {
					if (touchType == 1) {
						targetItem.src = btn_sms_nor;
					} else if (touchType == 2) {
						targetItem.src = btn_call_nor;
					} else {
						targetItem.style.backgroundColor = "";
					}
				}
				touchType = -1;
				targetItem = null;
			}, false);
			contactNumberListDiv.addEventListener("touchend", function() {
				event.stopPropagation();
				if (touchType > -1) {
					if (touchType == 1) {
						targetItem.src = btn_sms_nor;
					} else if (touchType == 2) {
						targetItem.src = btn_call_nor;
					} else {
						targetItem.style.backgroundColor = "";
					}
					touchId = targetItem.id;
					if (touchType == 1) {
						exec(taskHandler, 'sendMessage', [ itemId, targetItem.index ]);
						if (currentCanDeleteView) {
							removeCurrentCanDeleteView();
							console.log("removeCurrentCanDeleteView");
						}
					} else if (touchType == 2) {
						exec(taskHandler, 'callOut', [ itemId, targetItem.index ]);
					} else if (focus == "telephone") {
						exec(taskHandler, 'callOut', [ itemId, targetItem.index ]);
					} else if (focus == "message") {
						exec(taskHandler, 'sendMessage', [ itemId, targetItem.index ]);
						if (currentCanDeleteView) {
							removeCurrentCanDeleteView();
							console.log("removeCurrentCanDeleteView");
						}
					} else if(touchType == 4) {
						targetItem.style.backgroundColor = "";
						console.log("targetItem.index is " + targetItem.index);
						exec(taskHandler, 'callOut', [ itemId, targetItem.index ]);
					}
					touchType = -1;
					targetItem = null;
				}

			}, false);
		}
        else{
            if (focus == "telephone" && isDoubleSimCardMode) {
            	//双卡模式下打电话多联系人多号码界面不能有双卡选项
				left.style.width = "56%";	
	    		containerRight.style.width = "44%";
	    		var simCardTable = createSimCardTable(defaultSimCardPerNumberList[0], taskHandler,itemId, 0, isShowSimName, SimNameList);
				simCardTable.style.float = "right";
				containerRight.appendChild(simCardTable);
				contactItem.appendChild(containerRight);
			} else if (focus == "contacts") {
            	left.style.width = "56%";
	    		containerRight.style.width = "44%";
				createCallAndSmsBtnTable(containerRight, taskHandler, itemId, 0);
				contactItem.appendChild(containerRight);
            }
        }
        
		var contactDiv = document.createElement("div");
		contactDiv.appendChild(contactItem);
		contactDiv.appendChild(contactNumberListDiv);

		return contactDiv;
	}
	
	function createNewContactList(contactInfo) {
		if (currentCanDeleteView) {
			removeCurrentCanDeleteView();
			console.log("removeCurrentCanDeleteView");
		}
		var contactNameList = contactInfo.contactNameList;
		var contactIconList = contactInfo.contactIconList;
		var contactNumberList = contactInfo.contactNumberList;
		var contactLength = contactNameList.length;
		var taskHandler = contactInfo.taskHandler;
		var contactAllNumberLists = contactInfo.contactAllNumberLists;
		var contactLocationLists = contactInfo.locationLists;
		var focusType = contactInfo.focusType;
		
		var isDoubleSimCardMode = contactInfo.isDoubleSim;
		var defaultSimCardPerNumberLists = contactInfo.contactAllSimLists;
		var SimNameList = contactInfo.SimNameList;
		var isShowSimName = contactInfo.isShowSimName;
		
		var outDiv = document.createElement("div");
		outDiv.className = "box_content_white";

		var list_inner = document.createElement("div");
		list_inner.className = "main_list_inner";

		for ( var i = 0; i < contactLength; i++) {
			var item;
			if (isDoubleSimCardMode) {
				item = createNewContactItem(taskHandler, i, contactNameList[i],
						contactIconList[i], contactNumberList[i],
						contactLocationLists[i], contactAllNumberLists[i], focusType,
						isDoubleSimCardMode, defaultSimCardPerNumberLists[i], isShowSimName,SimNameList);
			} else {
				item = createNewContactItem(taskHandler, i, contactNameList[i],
						contactIconList[i], contactNumberList[i],
						contactLocationLists[i], contactAllNumberLists[i], focusType,
						isDoubleSimCardMode, null);
			}
			item.className += " main_list_item";
			if (i > 0) {
				item.className += " sub_list_divider";
			} 
			list_inner.appendChild(item);
		}

		outDiv.appendChild(list_inner);

		var cancelCallBack = function() {
			// 使用新架构代码，从curPage中删除View
			removeChild(curPage, contactWaitingView);

			currentCanDeleteView = null;
			exec(taskHandler, 'cancelCall', [ taskHandler ]);
			forceRefreshScreen();
			// 调用java函数释放相关资源
			exec('WidgetMMPContainerComponents', 'removeViewForJs',	[ taskHandler ]);
		};

		var contactWaitingView = document.createElement("div");
		contactWaitingView.id = taskHandler;
		
		//添加外壳
        var outDivBox = createBoxDiv("", outDiv);
		contactWaitingView.appendChild(outDivBox);
		
		var cancelBtn = createLongButton("取消", cancelCallBack);
		contactWaitingView.appendChild(cancelBtn);

		curPage.appendChild(contactWaitingView);
		
		currentCanDeleteView = contactWaitingView;

		var targetItem = null;
		list_inner.addEventListener("touchstart", function() {
			event.stopPropagation();
			targetItem = getParentOfClass("contactview_item", event.target);
			console.log(targetItem);
			if (targetItem) {
				if (targetItem.touchDown) {
					targetItem.touchDown();
				}
				targetItem.style.backgroundColor = "#e5e5e5";
			}
		}, false);

		list_inner.addEventListener("touchmove", function() {
			event.stopPropagation();
			if (targetItem) {
				if (targetItem.touchUp) {
					targetItem.touchUp();
				}
				targetItem.style.background = "";
				forceRefreshScreen();
				targetItem = null;
			}
		}, false);

		list_inner.addEventListener("touchend", function() {
			event.stopPropagation();
			if (targetItem) {
				if (targetItem.touchUp) {
					targetItem.touchUp();
				}
				targetItem.style.background = "";
				removeChild(curPage, contactWaitingView);
				forceRefreshScreen();
				currentCanDeleteView = null;
				exec(taskHandler, 'contactItemClick', [ targetItem.id ]);
				targetItem = null;
			}
		}, false);

		return contactWaitingView;
	}

	return createNewContactList;
});