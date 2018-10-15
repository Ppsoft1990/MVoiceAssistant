/**
 * 电话号码列表视图
 * 
 * @author fpliu@iflytek.com
 * @author modified by mdhuang 2013-11-11 修改内容：canvas替代
 */
define(function() {
	var interval;
	var currentProgressingItem;
	function getSplitPhoneString(isMobileNumber,markUpPhoneNum,defaultParamFlag){
		
		var firstHighLightPosition = markUpPhoneNum.indexOf("&");
		var lastHighLightPosition = markUpPhoneNum.lastIndexOf("&");
		var isWholeStringHighLight = false;
		if( 0 == firstHighLightPosition && markUpPhoneNum.length - 1 == lastHighLightPosition ){
			isWholeStringHighLight = true;
		}
		
		var phoneShowString = "";
		var sMarkArray = markUpPhoneNum.split("^");
		var phoneNumber;
		var highLightTag;
		if (defaultParamFlag) {
		    highLightTag = phoneNumJSpre_green;
		} else {
		    highLightTag = phoneNumJSpre;
		}
		if (sMarkArray.length > 1) {
			phoneNumber = sMarkArray[1];
		} else {
			phoneNumber = sMarkArray[0];
		}
		
		if(isWholeStringHighLight){
			var last = phoneNumber.replace("&","");
			if(isMobileNumber){
				phoneShowString = last.substring(0, 3) + " "
							+ last.substring(3, 7) + " "
							+ last.substring(7);
			}
			if(sMarkArray.length > 1){
				sMarkArray[0] = sMarkArray[0].replace("&","");
				phoneShowString = sMarkArray[0] + " " + phoneShowString;
			} else {
				phoneShowString = phoneShowString.replace("&","");
			}
			var lastShowString = highLightTag + phoneShowString + phoneJSpost;
			return lastShowString;
		}
		
		// 电话号码加粗 分段
		var sArray = phoneNumber.split("&");
		var firstMarkPosition = phoneNumber.indexOf("&");
		if (firstMarkPosition == -1) {
			if (isMobileNumber) {
				phoneShowString = phoneNumber.substring(0, 3) + " "
						+ phoneNumber.substring(3, 7) + " "
						+ phoneNumber.substring(7);
			} else {
				phoneShowString = phoneNumber;
			}
		} else if (firstMarkPosition == 0) {
			var lastMarkPosition = phoneNumber.lastIndexOf("&");
			
			if (lastMarkPosition == phoneNumber.length - 1) {
				console.log(sArray[1]);
				if (isMobileNumber) {
					var s = sArray[1].substring(0, 3) + " "
							+ sArray[1].substring(3, 7) + " "
							+ sArray[1].substring(7);
					phoneShowString = highLightTag + s + phoneJSpost;
				} else {
					phoneShowString = highLightTag + sArray[1] + phoneJSpost;
				}
			} else {
				var s1 = highLightTag + sArray[1] + phoneJSpost + " ";
				var s2 = sArray[2].substring(0, 4) + " " + sArray[2].substring(4);
				phoneShowString = s1 + s2;
			}
		} else if (firstMarkPosition > 6) {
			var s1 = sArray[0].substring(0, 3) + " " + sArray[0].substring(3) + " ";
			var s2 = highLightTag + sArray[1] + phoneJSpost;
			phoneShowString = s1 + s2;
		} else {
			phoneShowString = sArray[0] + " " + highLightTag + sArray[1]
					+ phoneJSpost + " " + sArray[2];
		}
	
		var leftHtmlStr = phoneShowString;
		if (sMarkArray.length > 1) {
			leftHtmlStr = sMarkArray[0] + " " + leftHtmlStr;
		}
		console.log(leftHtmlStr);
		return leftHtmlStr;
	}
	function createNewContactItem(itemId,contactName,contactIcon){
	    // var contactItem = document.createElement("div");
	    // contactItem.className = "contact_list_item";

	
	    var contactDetail = document.createElement("div");
	    // contactDetail.className = "contact_item_left";

	    contactDetail.className = "contact_list_item";
	
	    var icon = document.createElement("div");
	    icon.className = "contact_icon_container";
	
	    var iconFrame = document.createElement("img");
	    iconFrame.className = "contact_icon_frame";
	
		if(contactIcon){
			var iconImg = document.createElement("img");
	    	iconImg.className = "contact_icon_src";
		    iconImg.src = contactIcon;
		    icon.appendChild(iconImg);
		    
		    iconFrame.src = contact_icon_frame;
		}else{
			iconFrame.src = contact_icon_default;
		}
	    
	    icon.appendChild(iconFrame);
		
		/*
		var contactInfoBlock = document.createElement("div");
				contactInfoBlock.className = "phone_list_title";
				var contactInfo = document.createElement("div");
				contactInfo.className = "contact_name";
				  contactInfo.innerText = contactName;
				contactInfoBlock.appendChild(contactInfo);
								  contactDetail.appendChild(icon);
				contactDetail.appendChild(contactInfoBlock);*/
		
	    
	    var contactInfo = document.createElement("div");
	    contactInfo.className = "contact_item_name_in_number_list";
	  	contactInfo.innerText = contactName;
	  	
	  	contactDetail.appendChild(icon);
	    contactDetail.appendChild(contactInfo);
	
	    // contactItem.appendChild(contactDetail);

	
	    return contactDetail;
	    // return contactItem;

	}
	
	function createSimCardTable(item, defaultSim, isShowSimName, SimNameList, taskHandler) {
		//选卡区域
		var chooseSimCardTable = document.createElement("div");
		chooseSimCardTable.className = "callview_simcard_table";
		var simCard1Div = document.createElement("div");
		simCard1Div.className = "callview_simcard_cell";
		var simCard1Btn = document.createElement("div");
		simCard1Btn.className = "callview_simcard_button simcard1_margin";
		var isMove = false;
		simCard1Div.appendChild(simCard1Btn);
		chooseSimCardTable.appendChild(simCard1Div);
		var simCard2Div = document.createElement("div");
		simCard2Div.className = "callview_simcard_cell";
		var simCard2Btn = document.createElement("div");
		simCard2Btn.className = "callview_simcard_button simcard2_margin";
		simCard2Div.appendChild(simCard2Btn);
		chooseSimCardTable.appendChild(simCard2Div);
		simCard1Btn.innerText = SimNameList[0];
		simCard2Btn.innerText = SimNameList[1];
		console.log("defaultSim=======>"+defaultSim);
		if (defaultSim == "first") {
			simCard1Btn.style.color = "#26a12f";
			simCard1Btn.style.borderColor = "#62b363";
			simCard2Btn.style.color = "#515151";
			simCard2Btn.style.borderColor = "#bfbfbf";
			
			item.currentCard = 'card1';
		} else {
			simCard2Btn.style.color = "#26a12f";
			simCard2Btn.style.borderColor = "#62b363";
			simCard1Btn.style.color = "#515151";
			simCard1Btn.style.borderColor = "#bfbfbf";
			
			item.currentCard = 'card2';
		}
		
		simCard1Div.addEventListener("touchstart", function() {
			event.stopPropagation();
			simCard1Btn.style.backgroundColor = "#e5e5e5";
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
				simCard1Btn.style.color = "#26a12f";
				simCard1Btn.style.borderColor = "#62b363";
				simCard2Btn.style.color = "#515151";
				simCard2Btn.style.borderColor = "#bfbfbf";
				isMove = false;
				
				item.currentCard = 'card1';
				item.callOut();
			}
		});
		simCard2Div.addEventListener("touchstart", function() {
			event.stopPropagation();
			simCard2Btn.style.backgroundColor = "#e5e5e5";
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
				
				simCard2Btn.style.color = "#26a12f";
				simCard2Btn.style.borderColor = "#62b363";
				simCard1Btn.style.color = "#515151";
				simCard1Btn.style.borderColor = "#bfbfbf";
				isMove = false;
				
				item.currentCard = 'card2';
				item.callOut();
			}
		});
		
		return chooseSimCardTable;
	}
	
	function createNumberItem(itemType,defaultParam,isMobile,phoneTag,markPhoneNum,rightIconId,leftIconId,taskHandler,isDoubleCard,defaultSimMode, isShowSimName,SimNameList){
		
		var isDoubleSim = isDoubleCard;
		var defaultSimCard = defaultSimMode;
		console.log("defaultSimMode==>"+defaultSimMode);
		console.log("defaultSimCard==>"+defaultSimCard);
		
	    var item = document.createElement("div");

	    item.className = "phonenumview_item_dial";
	    
	    var left = document.createElement("div");
	    left.className = "phonenumview_item_left";
	
	    var right = document.createElement("div");
	    right.className = "phone_item_right";
	
	    var phoneNum = document.createElement("label");
	    if(defaultParam){
	        phoneNum.className = "list_first_line_text_large_high_light";
	    } else {
	        phoneNum.className = "list_first_line_text_large";
	    }
	    phoneNum.innerText = markPhoneNum;
	    phoneNum.innerHTML = getSplitPhoneString(isMobile,markPhoneNum,defaultParam);
	    var numberTag = document.createElement("label");
	    if(defaultParam){
	        numberTag.className = "list_second_line_text_large_high_light";
	    } else {
	        numberTag.className = "list_second_line_text_large";
	    }
	    numberTag.innerText = phoneTag;
	
	    left.appendChild(phoneNum);
	    left.appendChild(numberTag);
	
	    var icon_l,icon_r;
	    var progressContainer,progressbar;
	    if(itemType == "message"){
	    	if(defaultParam){
	    		var icon_r = document.createElement("div");
			   	icon_r.className = "making_out_container_high_light";
			   	icon_r.innerText = "准备输入";
			    
	    	}else{
		        icon_r = document.createElement("img");
		        icon_r.id = rightIconId;
		        icon_r.className = "phone_item_icon";
		        icon_r.src = ic_sms;
		    }
	    }else if(itemType == "telephone" ){
	    	if(isDoubleSim) {
	    		var simCardTable = createSimCardTable(item, defaultSimCard, isShowSimName, SimNameList, taskHandler);
		    	right.appendChild(simCardTable);
		    	var icon_r = document.createElement("div");
				icon_r = document.createElement("img");
		        icon_r.id = rightIconId;
		        icon_r.className = "phonenumview_item_icon";
		        icon_r.src = ic_cal_log_item_btn_call_nor;
			        			   	
			   	item.switchProgressView = function(isDefaultParam) {
			   		if (isDefaultParam) {
			   			left.style.width = "60%";
			    		right.style.width = "40%";
			    		icon_r.style.display = 'none';
			    		simCardTable.style.display = 'block';
			    		
			    		phoneNum.className = "list_first_line_text_large_high_light";
			    		numberTag.className = "list_second_line_text_large_high_light";
			   		} else {
			   			left.style.width = "67%";
			    		right.style.width = "33%";
			    		icon_r.style.display = 'inline-block';
			    		simCardTable.style.display = 'none';
			    		
			    		phoneNum.className = "list_first_line_text_large";
			    		numberTag.className = "list_second_line_text_large";
			   		}
			   	};
			   	
			   	item.switchProgressView(defaultParam);
	    	} else {
		    	if(defaultParam){
		    		var icon_r = document.createElement("div");
				   	icon_r.className = "making_out_container_high_light";
				   	icon_r.innerText = "准备呼叫";
		    	}else{
		    		icon_r = document.createElement("img");
			        icon_r.id = rightIconId;
			        icon_r.className = "phonenumview_item_icon";
			        icon_r.src = ic_cal_log_item_btn_call_nor;
		    	}
	    	}
	    }else{
	        icon_l = document.createElement("img");
	        icon_l.id = leftIconId;
	        icon_l.className = "phone_item_icon";
	        icon_l.src = btn_sms_nor;
	
	        icon_r = document.createElement("img");
	        icon_r.id = rightIconId;
	        icon_r.className = "phone_item_icon";
	        icon_r.src = btn_call_nor;
	    }
	    item.touchDown = function(){
	    	icon_r.src = btn_call_press;
	    };
	    item.touchMove = function(){
	    	icon_r.src = btn_call_nor;
	    };
	    item.touchUp = function(){
	    	icon_r.src = btn_call_nor;
	    };
	    item.returnId = rightIconId;
	    if(icon_l){
	    	right.appendChild(icon_l);
	    }
	    if (icon_r) {
		    right.appendChild(icon_r);
		    item.iconR = icon_r;
	    }
	    item.appendChild(left);
	    item.appendChild(right);
	    
	    //进度条
	    progressContainer = document.createElement("div");
		progressContainer.className = "latest_progress_container1_dial";
		progressbar = document.createElement("div");
		progressbar.className = "latest_progress_var_dial";
		progressContainer.appendChild(progressbar);
		item.appendChild(progressContainer);
		
	    var progressId;
		item.startProgress = function(delayTime) {
			// progressbar.style.webkitAnimation = "progressbar " + delayTime + "ms linear 1";
			
			clearInterval(progressId);
			//var delayTime = 3000;
			console.log("delayedtime=======>"+delayTime);
            var inTime = 150;//150ms涨一次进度条
            var count = delayTime / inTime;//总共要涨count次进度条
			var startTime = 0;
			var times = 1;
			progressId = setInterval(function() {
				progressContainer.style.opacity = "1.0";
				progressbar.style.width = (100 / count) * times + "%";//每次涨100/count份进度条
				times++;
				startTime += inTime;
				if (startTime >= delayTime) {
					clearInterval(progressId);
					progressContainer.style.opacity = "0.0";
        			progressbar.style.opacity = "0.0";
					curDelay = false;
					
					item.callOut();
				}
			}, inTime);
			interval = progressId;
			
			currentProgressingItem = item;
		};
		item.stopProgress = function() {
			progressbar.style.width = '0';
			progressContainer.style.opacity = "0.0";
		};
		
		item.callOut = function(){
			// removeCurrentCanDeleteView(taskHandler);
			console.log("phoneitem" + rightIconId);
			exec(taskHandler, 'phoneItemClick', [ rightIconId , item.currentCard]);
    		currentProgressingItem = null;
		};
		
	    return item;
	
	}
	
	function createNumberList(phoneInfo){
		if(currentCanDeleteView){
			removeCurrentCanDeleteView();
			console.log("removeCurrentCanDeleteView");
		}
		if(errorView){
			removeErrorView();
		}
		
		var phoneNumList = phoneInfo.phoneNumList;
		var phoneTagList = phoneInfo.phoneTagList;
		var isMobileList = phoneInfo.phoneFlagList;
		var taskHandler = phoneInfo.taskHandler;
		var itemType = phoneInfo.phoneViewFocus;
		var listLength = phoneNumList.length;
		var isDoubleSim = phoneInfo.isDoubleSim;
		var defaultSimList = phoneInfo.defaultSimList;
		var SimNameList = phoneInfo.SimNameList;
		var isShowSimName = phoneInfo.isShowSimName;
		
		console.log("defaultSimList==>"+defaultSimList);
		console.log("defaultSimList==>"+defaultSimList[0]);
		var defaultItemId = null;
		var defaultItemDom = null;
		var callingIntervalId = null;
		var cancelButton;
		if (phoneInfo.defaultItem > -1) {
			defaultItemId = "phoneItem" + phoneInfo.defaultItem;
		}
		
		var showDiv = document.createElement("div");
		showDiv.id = taskHandler;
		
		var outDiv = document.createElement("div");
		outDiv.className = "box_content_white";
	    
	    var list_num = document.createElement("div");
//	    list_num.className = "list_inner";
	    
	    var numListTitle = createNewContactItem("",phoneInfo.phoneViewTitle,phoneInfo.phoneViewIcon);
	    list_num.appendChild(numListTitle);
	
	    var dialog_contact_inner_div = document.createElement("div");
	    dialog_contact_inner_div.className = "phoneNum_list_inner";
	    var phoneItems = [];
	    for ( var i = 0; i < listLength; i++) {
	    	var defaultItemParam = (phoneInfo.defaultItem === i ? defaultItemId : null);
	        var phoneItem = createNumberItem(itemType,defaultItemParam,isMobileList[i],phoneTagList[i],
	        	phoneNumList[i],"phoneItem" + i,null,taskHandler,isDoubleSim,defaultSimList[i],isShowSimName,SimNameList);
	        	console.log("defaultSimList="+i+"=>"+defaultSimList[i]);
	        phoneItems[i] = phoneItem;
	        phoneItem.className += " sub_list_divider";
	        if (i == (listLength - 1)) {
	        	//给最后一条加上圆角，避免按下效果没有圆角
	        	phoneItem.className += " sub_tel_hot_lastitem_border_radio";
	        }
	        if(phoneInfo.defaultItem === i){
	        	defaultItemDom = phoneItem;
	        }
	        dialog_contact_inner_div.appendChild(phoneItem);
	    }
	    
	    list_num.appendChild(dialog_contact_inner_div);
	    
	    outDiv.appendChild(list_num);
	    showDiv.deleteView = function(){
	    	if(defaultItemId){
		    	clearInterval(callingIntervalId);
		    }
	    };
	    
	    //添加外壳
	    var outDivBox = createBoxDiv("", outDiv);
	    showDiv.appendChild(outDivBox);
	    
    	var cancelCallBack = function(){
    		clearInterval(callingIntervalId);
    		exec(taskHandler, 'cancel', [ taskHandler ]);
			// 通知java函数释放相关资源
			exec('WidgetMMPContainerComponents', 'removeViewForJs',	[ taskHandler ]);
    	};
    	cancelButton = createLongButton("取消",cancelCallBack);
    	showDiv.appendChild(cancelButton);
	
	    curPage.appendChild(showDiv);

	    console.log("defaultItemId = " + defaultItemId + " ;defaultItemDom = " + defaultItemDom);

	   	if(defaultItemDom){
	   		defaultItemDom.startProgress(phoneInfo.delayedtime);
	   	}
	   	
    	var targetItem = null;
    	dialog_contact_inner_div.addEventListener("touchstart",function(){
    		event.stopPropagation();
    		targetItem = getParentOfClass("phonenumview_item_dial",event.target);
    		if(targetItem){
    			targetItem.style.backgroundColor = "#e5e5e5";
		    	if (targetItem.iconR && itemType == "telephone") {
		    		targetItem.iconR.src = ic_cal_log_item_btn_call_press;
		    	}
	    	}
    	},false);
    	dialog_contact_inner_div.addEventListener("touchmove",function(){
    		event.stopPropagation();
    		if(targetItem){
    			targetItem.style.background = "";
		    	if (targetItem.iconR && itemType == "telephone") {
		    		targetItem.iconR.src = ic_cal_log_item_btn_call_nor;
		    	}
	    	}
	    	targetItem = null;
    	},false);
    	dialog_contact_inner_div.addEventListener("touchend",function(){
    		event.stopPropagation();
    		if(targetItem) {
		    	//targetItem.touchUp();
		    	targetItem.style.background = "";
		    	clearInterval(interval);
		    	
	    		if (targetItem.iconR && itemType == "telephone") {
		    		targetItem.iconR.src = ic_cal_log_item_btn_call_nor;
		    	}
		    	
		    	
		    	if (isDoubleSim && targetItem != currentProgressingItem) {
		    		currentProgressingItem.switchProgressView(false);
		    		currentProgressingItem.stopProgress();
		    		targetItem.switchProgressView(true);
		    		targetItem.startProgress(phoneInfo.delayedtime);
		    	} else {
		    		targetItem.callOut();
		    	}
		    	
    		}
    		targetItem = null;
    	},false);
	    
	    currentCanDeleteView = showDiv;
	    
	    return showDiv;
	}

	return createNumberList;
});