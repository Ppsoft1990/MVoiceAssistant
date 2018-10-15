/**
 * 拨打电话视图
 * 
 * @author fpliu@iflytek.com
 * @author modified by mdhuang 2013-11-10 修改内容：canvas替代
 */
define(function() {
	function seperateMobileNum(mobileNum) {
		var length_num = mobileNum.length;
		mobileNum = mobileNum.substring(0, length_num - 4) + " " + mobileNum.substring(length_num - 4);
		length_num++;
		mobileNum = mobileNum.substring(0, length_num - 9) + " " + mobileNum.substring(length_num - 9);
		length_num++;
		mobileNum = mobileNum.substring(0, length_num - 13) + " " + mobileNum.substring(length_num - 13);
		return mobileNum;
	}
	
	function createSimCardTable(defaultSim, isShowSimName, SimNameList, taskHandler) {
		//选卡区域
		var chooseSimCardTable = document.createElement("div");
		chooseSimCardTable.className = "callview_simcard_table";
		var simCard1Div = document.createElement("div");
		simCard1Div.className = "callview_simcard_cell";
		var simCard1Btn = document.createElement("div");
		simCard1Btn.className = "callview_simcard_button simcard1_margin";
		var isMove = false;
		simCard1Btn.innerText = SimNameList[0];
		simCard1Div.appendChild(simCard1Btn);
		chooseSimCardTable.appendChild(simCard1Div);
		var simCard2Div = document.createElement("div");
		simCard2Div.className = "callview_simcard_cell";
		var simCard2Btn = document.createElement("div");
		simCard2Btn.className = "callview_simcard_button simcard2_margin";
		simCard2Btn.innerText = SimNameList[1];
		simCard2Div.appendChild(simCard2Btn);
		chooseSimCardTable.appendChild(simCard2Div);
		
		if (defaultSim == "first") {
			simCard1Btn.style.color = "#26a12f";
			simCard1Btn.style.borderColor = "#62b363";
			simCard2Btn.style.color = "#515151";
			simCard2Btn.style.borderColor = "#bfbfbf";
		} else {
			simCard2Btn.style.color = "#26a12f";
			simCard2Btn.style.borderColor = "#62b363";
			simCard1Btn.style.color = "#515151";
			simCard1Btn.style.borderColor = "#bfbfbf";
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
				exec(taskHandler,"callOut",["card1"]);
				
				simCard1Btn.style.color = "#26a12f";
				simCard1Btn.style.borderColor = "#62b363";
				simCard2Btn.style.color = "#515151";
				simCard2Btn.style.borderColor = "#bfbfbf";
				isMove = false;
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
				exec(taskHandler,"callOut",["card2"]);
				
				simCard2Btn.style.color = "#26a12f";
				simCard2Btn.style.borderColor = "#62b363";
				simCard1Btn.style.color = "#515151";
				simCard1Btn.style.borderColor = "#bfbfbf";
				isMove = false;
			}
		});
		
		return chooseSimCardTable;
	}
	
	function createCallItem(callInfo){
		var outDiv = document.createElement("div");
		outDiv.className = "box_content_white";
		
	    var inner = document.createElement("div");
	    inner.className = "callview_inner";
	
	    var contactItem = document.createElement("div");
	    contactItem.className = "call_waiting_item_dial";
	
	    var contactDetail = document.createElement("div");
	    contactDetail.className = "callview_item";
	
	
		//头像区域
	    var icon = document.createElement("div");
	    icon.className = "callview_icon_container";
	
	    var iconFrame = document.createElement("img");
	    iconFrame.className = "contact_icon_frame";
	    
	    if(callInfo.icon){
	    	var iconImg = document.createElement("img");
	    	iconImg.className = "contact_icon_src";
	    	iconImg.src = callInfo.icon;
	    	icon.appendChild(iconImg);
		    iconFrame.src = contact_icon_frame;
	    }else{
		    iconFrame.src = contact_icon_default;
	    }
	
	    icon.appendChild(iconFrame);
	
		//联系人信息区域
	    var contactInfo = document.createElement("div");
	    contactInfo.className = "callview_contact_detail";
	
	    var name = document.createElement("div");
	    name.className = "sub_tel_item_name";
	
	    var tel = document.createElement("div");
	    tel.className = "list_second_line_text";
	    tel.style.display = "block";
	    
	    var showNum;
	    if(callInfo.mobile){
	    	showNum = seperateMobileNum(callInfo.tel);
	    }else{
	    	showNum = callInfo.tel;
	    }
	    
		if ("未知" == callInfo.name) {
			tel.innerText = callInfo.location;
			name.innerText = showNum;
		} else {
			name.innerText = callInfo.name;
			tel.innerText = callInfo.location + " " +showNum;
		}
	
	    contactInfo.appendChild(name);
	    contactInfo.appendChild(tel);
	    
	    contactDetail.appendChild(icon);
	    contactDetail.appendChild(contactInfo);
	    if (callInfo.isDoubleSim == true) {
		    contactDetail.appendChild(createSimCardTable(callInfo.defaultSim, callInfo.isShowSimName, callInfo.SimNameList, callInfo.taskHandler));
		} else {
			contactDetail.className = "contact_item_left";
			contactInfo.className = "contact_item_detail";
		}
	    
	
	    var progressContainer1 = document.createElement("div");
        progressContainer1.className = "latest_progress_container_dial";
        var progressbar = document.createElement("div");
        progressbar.className = "latest_progress_var_dial";
        progressContainer1.appendChild(progressbar);
	   
	    contactItem.appendChild(contactDetail);
	    contactItem.appendChild(progressContainer1);
	    inner.appendChild(contactItem);
	
	    outDiv.appendChild(inner);
	    //添加外壳
	    var outDivBox = createBoxDiv("", outDiv);
	    
	    var progressId;
	    outDivBox.startProgress = function() {
	    	progressbar.style.webkitAnimation = "progressbar " + callInfo.delayedtime + "ms linear 1";
	    	
			// clearInterval(progressId);
			// var delayTime = callInfo.delayedtime;
			// console.log("delayedtime:=========>"+delayTime);
			// var inTime = 150;//150ms涨一次进度条
            // var count = delayTime / inTime;//总共要涨count次进度条
			// var startTime = 0;
			// var times = 1;
			// progressId = setInterval(function() {
				// progressbar.style.width = (100 / count) * times + "%";
				// times++;
				// startTime += inTime;
				// if (startTime >= delayTime) {
					// clearInterval(progressId);
					// progressContainer1.style.opacity = "0.0";
        			// progressbar.style.opacity = "0.0";
// //        			gotoButton.style.display = "inline-block";
// //					exec(handlerTag,"delay",[]);
					// curDelay = false;
					// exec(callInfo.taskHandler,"delay",[]);
				// }
			// }, inTime);
		};
		
	    var isMoved = false;
	    outDiv.addEventListener("touchstart",function(){
	    	outDiv.style.backgroundColor = "#e5e5e5";
	    },false);
	    outDiv.addEventListener("touchmove",function(){
	    	outDiv.style.backgroundColor = "white";
	    	isMoved = true;
	    },false);
	    outDiv.addEventListener("touchend",function(){
	    	outDiv.style.backgroundColor = "white";
	    	if(isMoved){
	    		isMoved = false;
	    	} else {
	    		isMoved = false;
				clearInterval(progressId);
	    		exec(callInfo.taskHandler,"callOut",[]);
	    	}
	    },false);
	    return outDivBox;
	}
	
	function createWaitingCall(callInfo){
		if (currentCanDeleteView) {
			removeCurrentCanDeleteView();
			console.log("removeCurrentCanDeleteView");
		}
		
		var taskHandler = callInfo.taskHandler;
		var callFlag = null;
		
		var callWaitingView = document.createElement("div");
		callWaitingView.id = taskHandler;
		
		var cancelCallBack = function(){
		   stopRotate(callFlag);
			//使用新架构代码，从curPage中删除View 
			removeChild(curPage, callWaitingView);

			currentCanDeleteView = null;
			exec(taskHandler, 'cancelCall', [ taskHandler ]);
			forceRefreshScreen();
			// 调用java函数释放相关资源
			exec('WidgetMMPContainerComponents', 'removeViewForJs',	[ taskHandler ]);
		};
		
	    var contactInfo = createCallItem(callInfo);
	    var cancelBtn = createLongButton("取消",cancelCallBack);
	    callWaitingView.appendChild(contactInfo);
	    callWaitingView.appendChild(cancelBtn);
	    
	    //开始进度条
	    contactInfo.startProgress();
	  
	    curPage.appendChild(callWaitingView);
	    currentCanDeleteView = callWaitingView;
	    
	    return callWaitingView;
	}
	
	return createWaitingCall;
});


