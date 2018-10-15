/**
 * 最近一次的短信记录
 * 
 * @author modified by mdhuang 2013-11-11 修改内容：canvas替代
 */
define(function() {
	var latestCallView;
	function addLatestSmsView(itemInfo){
		if(currentCanDeleteView){
			removeCurrentCanDeleteView();
		}
		return createLatestSmsView(itemInfo);
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
			callNumberBtn.style.border='';
			callNumberImg.src = ic_cal_log_item_btn_call_nor;
		}, false);
		callNumberBtn.addEventListener("touchend", function(newInfo) {
			event.stopPropagation();
			if (isMove == false) {
				callNumberBtn.style.backgroundColor = "";
				callNumberBtn.style.border='';
				callNumberImg.src = ic_cal_log_item_btn_call_nor;
				
        		if ("未知" == item.item_no) {
                	exec(taskHandler, 'opRecoCall',[item.item_name,item.item_no]);
				} else {
					exec(taskHandler, 'opRecoCall',[item.item_no,item.item_name]);
		   		}
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
				
				if ("telephone" == item.item_focus) {
			    		if ("未知" == item.item_no) {
        				exec(taskHandler , 'opRecoSmsSubPage' , [item.item_name,item.item_name]);
			    		//exec("WidgetMMPContainerComponents",'startSmsRecog',[item.item_name,item.item_name]);
						} else {
						exec(taskHandler , 'opRecoSmsSubPage' , [item.item_name,item.item_no]);
						//exec("WidgetMMPContainerComponents",'startSmsRecog',[item.item_name,item.item_no]);

						}
				} else {
		    			exec(taskHandler, 'resend', []);
		   		}
				if(currentCanDeleteView == showDiv && item.item_focus != 'telephone'){
					removeCurrentCanDeleteView();
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
	
	function createLatestSmsView(itemInfo) {
		console.log("createLatestSmsView is called");
		
		var showDiv = document.createElement("div");
		
		var outDiv = document.createElement("div");
		outDiv.className = "box_content_white";

		var list_inner = document.createElement("div");
		// list_inner.className = "tel_his_inner";
		
		var item = document.createElement("div");
	    item.className = "sub_tel_item";
	    item.style.paddingTop = "0";
		item.style.paddingBottom = "0";
	    var left = document.createElement("div");
	    left.className = "phone_item_left";
	    var right = document.createElement("div");
	    right.className = "phone_item_right";
	
		left.style.width = "65%";
		right.style.width = "35%";
		
	    var name = document.createElement("label");
	    name.className = "sub_sms_item_name";
	    
	    var tel = document.createElement("div");
	    tel.className = "list_second_line_text";
	    
	    var showNum;
	    if(itemInfo.mobile){
	    	showNum = seperateMobileNum(itemInfo.tel);
	    }else{
	    	showNum = itemInfo.tel;
	    }
	    
		if(itemInfo.location != "") {
			if(showNum != "未知") {
				showNum = itemInfo.location + " " + showNum;
			} else {
				showNum = itemInfo.location;
			}
		}
	    
		name.innerText = itemInfo.name;
		tel.innerText = showNum;
		
		item.item_no = itemInfo.tel; 
		
		item.item_name = itemInfo.name;
		
		item.item_focus = itemInfo.focus;
	
	    left.appendChild(name);
	    left.appendChild(tel);
	
	    // right.appendChild(icon_l);
	    // right.appendChild(icon_r);
	    createCallAndSmsBtnTable(right, itemInfo.taskHandler, item);
	
	    item.appendChild(left);
	    if(!itemInfo.muiltNumber){
	    	item.appendChild(right);
	    }
	    
	    list_inner.appendChild(item);
	    outDiv.appendChild(list_inner);
	    
	    outDiv.refresh = function(newInfo){
	    	name.innerText = newInfo.name;
        	if(newInfo.mobile){
	        	tel.innerText = seperateMobileNum(newInfo.tel);
        	}else{
        		tel.innerText = newInfo.tel;
        	}
        	time.innerText = newInfo.time;
        	item.item_name = newInfo.name;
        	item.item_no = newInfo.tel;
	    };

	    //添加外壳
        var outDivBox = createBoxDiv(itemInfo.taskHandler, outDiv);
        showDiv.appendChild(outDivBox);
        
        if(itemInfo.isReceiverCardFlag && 
        	(itemInfo.isHaveWeChatFlag || itemInfo.isHaveFriendCircleFlag
        		|| itemInfo.isHaveWeiboFlag || itemInfo.isHaveQZoneFlag)
        		&& !itemInfo.isNotShowAgain){
	        var shareOutBox = createShareDiv(itemInfo);
			showDiv.appendChild(shareOutBox);
        }
        
	    curPage.appendChild(showDiv);
	    
	    var moveMotion = false;
	    item.addEventListener("touchstart",function(){
	    	event.stopPropagation();
	    	outDiv.style.backgroundColor = "#e5e5e5";
	    },false);
	    item.addEventListener("touchmove",function(){
	    	event.stopPropagation();
	    	moveMotion = true;
	    	outDiv.style.backgroundColor = "";
	    },false);
	    item.addEventListener("touchend",function(){
	    	event.stopPropagation();
	    	if(false == moveMotion){
	    		outDiv.style.backgroundColor = "";
	    		if ("未知" == item.item_no) {
		    		exec(itemInfo.taskHandler, 'opRecoCall',[item.item_name,item.item_no]);
				} else {
					exec(itemInfo.taskHandler, 'opRecoCall',[item.item_no,item.item_name]);
		   		}

	    	}
	    	moveMotion = false;
	    },false);
	    
	    currentCanDeleteView = showDiv;
	    
	    showDiv.needScroll = true;
	    return showDiv;
	}
	
	function seperateMobileNum(mobileNum){
    	var length_num = mobileNum.length;
    	mobileNum = mobileNum.substring(0,length_num-4) + " " + mobileNum.substring(length_num-4);
    	length_num++;
    	mobileNum = mobileNum.substring(0,length_num-9) + " " +  mobileNum.substring(length_num-9);
    	length_num++;
    	mobileNum = mobileNum.substring(0,length_num-13) + " " +  mobileNum.substring(length_num-13);
    	return mobileNum;
    }
    
    function createShareDiv(itemInfo){
    	console.log("Create Share container");
    	var shareDiv = document.createElement("div");
		shareDiv.className = "box_content_white";

		var shareListInner = document.createElement("div");
		
		var shareListTitleContainer = document.createElement("div");
		shareListTitleContainer.className = "css_share_title_container sub_list_divider2";
		shareListTitleContainer.innerText = "这么好的功能，快告诉给好友吧！";
		shareListInner.appendChild(shareListTitleContainer);
		
		var shareListContainer = document.createElement("div");
		shareListContainer.className = "css_dialog_contact_create_item";
		var shareListShell = document.createElement("div");
		shareListShell.className = "css_share_item_container_shell";
		
		//创建微信区域
		var weChatDivContainer = document.createElement("div");
		weChatDivContainer.className = "css_share_item_container";
		
		var weChatIconShell = document.createElement("div");
		weChatIconShell.className = "css_share_item_icon_shell";
		var weChatDivIcon = document.createElement("img");
		weChatDivIcon.className = "css_share_item_icon";
		weChatDivIcon.src = ic_weixin_nor;
		weChatIconShell.appendChild(weChatDivIcon);
		
		weChatDivContainer.appendChild(weChatIconShell);
		
		var weChatLabel = document.createElement("div");
		weChatLabel.className = "css_share_item_label";
		weChatLabel.innerText = "微信好友";
		weChatDivContainer.appendChild(weChatLabel);
		
		shareListShell.appendChild(weChatDivContainer);
		//创建朋友圈区域
		var timeLineDivContainer = document.createElement("div");
		timeLineDivContainer.className = "css_share_item_container";
		
		var timeLineIconShell = document.createElement("div");
		timeLineIconShell.className = "css_share_item_icon_shell";
		var timeLineDivIcon = document.createElement("img");
		timeLineDivIcon.className = "css_share_item_icon";
		timeLineDivIcon.src = ic_timeline_nor;
		timeLineIconShell.appendChild(timeLineDivIcon);
		
		timeLineDivContainer.appendChild(timeLineIconShell);
		
		var timeLineLabel = document.createElement("div");
		timeLineLabel.className = "css_share_item_label";
		timeLineLabel.innerText = "朋友圈";
		timeLineDivContainer.appendChild(timeLineLabel);
		
		shareListShell.appendChild(timeLineDivContainer);
		//创建微博区域
		var weiboDivContainer = document.createElement("div");
		weiboDivContainer.className = "css_share_item_container";
		
		var weiboIconShell = document.createElement("div");
		weiboIconShell.className = "css_share_item_icon_shell";
		var weiboDivIcon = document.createElement("img");
		weiboDivIcon.className = "css_share_item_icon";
		weiboDivIcon.src = ic_weibo_nor;
		weiboIconShell.appendChild(weiboDivIcon);
		
		weiboDivContainer.appendChild(weiboIconShell);
		
		var weiboLabel = document.createElement("div");
		weiboLabel.className = "css_share_item_label";
		weiboLabel.innerText = "新浪微博";
		weiboDivContainer.appendChild(weiboLabel);
		
		shareListShell.appendChild(weiboDivContainer);
		//创建QQ空间区域
		var qzoneDivContainer = document.createElement("div");
		qzoneDivContainer.className = "css_share_item_container";
		
		var qzoneIconShell = document.createElement("div");
		qzoneIconShell.className = "css_share_item_icon_shell";
		var qzoneDivIcon = document.createElement("img");
		qzoneDivIcon.className = "css_share_item_icon";
		qzoneDivIcon.src = ic_qqzone_nor;
		qzoneIconShell.appendChild(qzoneDivIcon);
		
		qzoneDivContainer.appendChild(qzoneIconShell);
		
		var qzoneLabel = document.createElement("div");
		qzoneLabel.className = "css_share_item_label";
		qzoneLabel.innerText = "QQ空间";
		qzoneDivContainer.appendChild(qzoneLabel);
		
		shareListShell.appendChild(qzoneDivContainer);
		
		shareListContainer.appendChild(shareListShell);
		
		shareListInner.appendChild(shareListContainer);
		
		shareDiv.appendChild(shareListInner);
		var shareOutBox = createBoxDiv(itemInfo.taskHandler, shareDiv);
		
		var moveMotion = false;
	    		
		if(!itemInfo.isHaveWeChatFlag){
			weChatDivIcon.src = ic_weixin_dim;
		} else {
			weChatIconShell.addEventListener("touchstart",function(){
		    	event.stopPropagation();
				weChatDivIcon.src = ic_weixin_press;
		    	moveMotion = false;
		    },false);
		    
			weChatIconShell.addEventListener("touchmove",function(){
		    	event.stopPropagation();
				weChatDivIcon.src = ic_weixin_nor;
		    	moveMotion = true;
		    },false);
			
			
			weChatIconShell.addEventListener("touchend",function(){
		    	event.stopPropagation();
		    	if(!moveMotion){
	        		//TODO exec
	        		exec("ContactForwardSendShare","shareToWeiXin",[]);
		    	}
				weChatDivIcon.src = ic_weixin_nor;
		    	moveMotion = false;
		    },false);
		}
		
		if(!itemInfo.isHaveFriendCircleFlag){
			timeLineDivIcon.src = ic_timeline_dim;
		} else {
			timeLineIconShell.addEventListener("touchstart",function(){
		    	event.stopPropagation();
				timeLineDivIcon.src = ic_timeline_press;
		    	moveMotion = false;
		    },false);
		    
			timeLineIconShell.addEventListener("touchmove",function(){
		    	event.stopPropagation();
				timeLineDivIcon.src = ic_timeline_nor;
		    	moveMotion = true;
		    },false);
			
			
			timeLineIconShell.addEventListener("touchend",function(){
		    	event.stopPropagation();
		    	if(!moveMotion){
	        		//TODO exec
	        	exec("ContactForwardSendShare","shareToTimeLine",[]);

		    	}
				timeLineDivIcon.src = ic_timeline_nor;
		    	moveMotion = false;
		    },false);
		}
		
		if(!itemInfo.isHaveWeiboFlag){
			weiboDivIcon.src = ic_weibo_dim;
		} else {
			weiboIconShell.addEventListener("touchstart",function(){
		    	event.stopPropagation();
				weiboDivIcon.src = ic_weibo_press;
		    	moveMotion = false;
		    },false);
		    
			weiboIconShell.addEventListener("touchmove",function(){
		    	event.stopPropagation();
				weiboDivIcon.src = ic_weibo_nor;
		    	moveMotion = true;
		    },false);
			
			
			weiboIconShell.addEventListener("touchend",function(){
		    	event.stopPropagation();
		    	if(!moveMotion){
	        		//TODO exec
	        	exec("ContactForwardSendShare","shareToWeiBo",[]);

		    	}
				weiboDivIcon.src = ic_weibo_nor;
		    	moveMotion = false;
		    },false);
		}
		
		if(!itemInfo.isHaveQZoneFlag){
			qzoneDivIcon.src = ic_qqzone_dim;
		} else {
			qzoneIconShell.addEventListener("touchstart",function(){
		    	event.stopPropagation();
				qzoneDivIcon.src = ic_qqzone_press;
		    	moveMotion = false;
		    },false);
		    
			qzoneIconShell.addEventListener("touchmove",function(){
		    	event.stopPropagation();
				qzoneDivIcon.src = ic_qqzone_nor;
		    	moveMotion = true;
		    },false);
			
			
			qzoneIconShell.addEventListener("touchend",function(){
		    	event.stopPropagation();
		    	if(!moveMotion){
	        		//TODO exec
	        	exec("ContactForwardSendShare","shareToQQZone",[]);

		    	}
				qzoneDivIcon.src = ic_qqzone_nor;
		    	moveMotion = false;
		    },false);
		}
		
		return shareOutBox;
    }
    
	return addLatestSmsView;
});
