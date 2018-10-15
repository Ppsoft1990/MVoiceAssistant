/**********新建提醒view********/
define(function() {
    window.remindCurrentCanDeleteView;
	function showRemind(remindInfo) {
        //removeCurrentCanDeleteScheduleView();
		return createRemindView(remindInfo);
	}


     function removeCurrentCanDeleteScheduleView() {
          if(null != window.remindCurrentCanDeleteView) {
              document.body.removeChild(window.remindCurrentCanDeleteView);
              window.remindCurrentCanDeleteView = null;
          }
     }

	/**
	 * 创建提醒界面
	 * @param remindInfo  java处理过的结果，json格式
	 */
	function createRemindView(remindInfo) {
		var remindTaskHandler = remindInfo.taskHandler;
		
		// 真正盛放内容的容器
		var dialog_remind_inner_div = document.createElement("div");
		dialog_remind_inner_div.className = "css_dialog_remind_inner";
		
		//左边的闹钟图片
		var clockImg = document.createElement("img");
        clockImg.id = "left_ring_type_image"
		clockImg.className = "css_schedule_clock_img";
		clockImg.src = getLeftImage(remindInfo.ringType, remindInfo.recordSubType);
		
		//中间的容器
		var middleContainer = document.createElement("div");
		middleContainer.className = "css_schedule_middle_container";
		// 提醒内容
		var dialog_remind_content_label = document.createElement("div");
		dialog_remind_content_label.id = "remind_content";
		// dialog_remind_content_label.innerText = remindInfo.tempContent;
		dialog_remind_content_label.innerText = remindInfo.topText;
		dialog_remind_content_label.className = "css_dialog_remind_content_label";
		
		//提醒时间
		var dialog_remind_time_container = document.createElement("div");
		dialog_remind_time_container.className = "css_dialog_remind_time_container";
		dialog_remind_time_container.id = "remind_time_container";
		dialog_remind_time_container.innerHTML = remindInfo.bottomText;
		/*dialog_remind_time_container.innerHTML = remindInfo.tempTime + "&nbsp;&nbsp;" +
												 remindInfo.tempDate + "&nbsp;&nbsp;" +
												 remindInfo.tempWeek;*/

        /*var dialog_remind_ringtone_container = document.createElement("div");
        dialog_remind_ringtone_container.id = "remind_ringtone_container";
        dialog_remind_ringtone_container.className = "css_dialog_remind_ringtone_container";
        dialog_remind_ringtone_container.innerText = remindInfo.tempRingDesc;*/
		
		middleContainer.appendChild(dialog_remind_content_label);
		middleContainer.appendChild(dialog_remind_time_container);
        // middleContainer.appendChild(dialog_remind_ringtone_container);
		
		//右边的图片容器
		var ImgContainer = document.createElement("div");
		ImgContainer.className = "css_schedule_right_img_container";
		
		//录音播报按钮
		var broadcastImg = document.createElement("img");
		broadcastImg.className = "css_schedule_broadcast_img";
		broadcastImg.src = dialogmode_content_play_normal;
		broadcastImg.id = "id_schedule_broadcast_img";
		
		//if(!remindInfo.hasAudio){
			broadcastImg.style.display = "none";
			ImgContainer.className = "css_schedule_right_img_container2";
		//}
		
		//右边的向右箭头图片
		var arrowImg = document.createElement("img");
		arrowImg.className = "css_schedule_right_img";
		arrowImg.src = ic_list_arrow_left;
		
		//ImgContainer.appendChild(broadcastImg);
		ImgContainer.appendChild(arrowImg);
		
		dialog_remind_inner_div.appendChild(clockImg);
		dialog_remind_inner_div.appendChild(middleContainer);
		dialog_remind_inner_div.appendChild(ImgContainer);
		
		broadcastImg.changeSpeekImage = function(playImageIndex){
			console.log("playImageIndex = " + playImageIndex);
//			if(playImageIndex == "0"){
//				broadcastImg.src = dialogmode_content_play_normal;
//			} else if(playImageIndex == "1"){
//				broadcastImg.src = dialogmode_content_play_wave;
//			} else if(playImageIndex == "2"){
//				broadcastImg.src = dialogmode_content_play_wave2;
//			}
		};
		
		var touchMove = false;
//		broadcastImg.addEventListener("touchstart", function() {
//			broadcastImg = event.target;
//			broadcastImg.src = dialogmode_content_play_pressed;
//			event.stopPropagation();
//			moveOverCheck.start(event);
//		}, false);
//
//		broadcastImg.addEventListener("touchmove", function() {
//			event.stopPropagation();
//			broadcastImg = event.target;
//			broadcastImg.src = dialogmode_content_play_normal;
//			if (moveOverCheck.check(event)) {
//				touchMove = true;
//			}
//		}, false);
//
//		broadcastImg.addEventListener("touchend", function() {
//			broadcastImg = event.target;
//			broadcastImg.src = dialogmode_content_play_normal;
//			if (touchMove == false) {
//				//开始播报
//				exec(remindTaskHandler, 'broadcastRecord', []);
//			}
//			touchMove = false;
//			event.stopPropagation();
//		}, false);

		//整个容器的点击事件
		dialog_remind_inner_div.addEventListener("touchstart", function(event) {
			moveOverCheck.start(event);
		}, false);
		dialog_remind_inner_div.addEventListener("touchmove", function() {
			moveOverCheck.check(event);
		}, false);
		dialog_remind_inner_div.addEventListener("touchend", function() {
			if (!moveOverCheck.isMoveOver()) {
				exec(remindTaskHandler, 'jumpToRemindEdit', []);
			}
		}, false);

		var outDiv = document.createElement("div");
        outDiv.className = 'box_content_white';

		var gotoScheduleListDivWrapper = document.createElement("div");
		gotoScheduleListDivWrapper.className = 'box_out';

		var gotoScheduleListDiv = document.createElement("div");
		gotoScheduleListDiv.innerText= "查看闹钟列表";
		gotoScheduleListDiv.className = 'css_schedule_goto_list';
		gotoScheduleListDiv.addEventListener("touchstart", function(event) {
			moveOverCheck.start(event);
		}, false);
		gotoScheduleListDiv.addEventListener("touchmove", function() {
			moveOverCheck.check(event);
		}, false);
		gotoScheduleListDiv.addEventListener("touchend", function() {
			if (!moveOverCheck.isMoveOver()) {
				exec(remindTaskHandler, 'gotoScheduleList', []);
			}
		}, false);
		gotoScheduleListDivWrapper.appendChild(gotoScheduleListDiv);

		outDiv.appendChild(dialog_remind_inner_div);

		//添加外壳
	    var outDivBox = createBoxDiv(remindTaskHandler, outDiv);

		var outDivBoxWrapper = document.createElement("div");
		outDivBoxWrapper.appendChild(outDivBox);
		outDivBoxWrapper.appendChild(gotoScheduleListDivWrapper);

		document.body.appendChild(outDivBoxWrapper); //向curPage中添加view
		// 设置当前可删除view
        window.remindCurrentCanDeleteView = outDivBoxWrapper;
        currentCanDeleteView = outDivBoxWrapper;
		outDivBoxWrapper.refresh = function() {
			
		};

		return outDivBoxWrapper;
	}

	function updateRemindView(remind) {
		console.log("udate remind info is " + remind);
		if (remind != null) {
			var remindInfo = eval("(" + remind + ")");
			//时间
			var dialog_remind_time = document.getElementById("remind_time_container");
			dialog_remind_time.innerHTML = remindInfo.bottomText;
			/*dialog_remind_time.innerHTML = remindInfo.tempTime + "&nbsp;&nbsp;" +
										   remindInfo.tempDate + "&nbsp;&nbsp;" +
										   remindInfo.tempWeek;*/

			// 提醒内容
			var dialog_remind_content = document.getElementById("remind_content");
			dialog_remind_content.innerText = remindInfo.topText;
			// dialog_remind_content.innerText = remindInfo.tempContent;

            var clockImg = document.getElementById("left_ring_type_image");
            clockImg.src = getLeftImage(remindInfo.ringType, remindInfo.recordSubType);
            // var remind_ringtone_container = document.getElementById("remind_ringtone_container");
            // remind_ringtone_container.innerText = remindInfo.tempRingDesc;
		}
	}
	
	function showSpeekView(playIndex){
		console.log("showSpeekView || playIndex = " + playIndex);
		//document.getElementById("id_schedule_broadcast_img").changeSpeekImage(playIndex);
	}

    function getLeftImage(ringType, recordSubType){
        console.log("ringType  = " + ringType);
        console.log("recordSubType  = " + recordSubType);
        if (ringType == "short" || ringType == "local") {
            //edit by zqmao 由原来的long图片，改成remind图片
            return ic_list_reminder_record_remind;
        } else if (ringType == "weather") {
            return ic_list_reminder_weather;
        } else if (ringType == "news") {
            return ic_list_reminder_news;
        } else if (ringType == "personal") {
            return ic_list_reminder_person;
        } else if (ringType == "long") {
            //edit by zqmao 由原来的long图片，改成remind图片
            return ic_list_reminder_record_remind;
        } else if (ringType == "record") {
            if (recordSubType == "morning") {
                return ic_list_reminder_record_morning
            } else if (recordSubType == "night") {
                return ic_list_reminder_record_night;
            } else if (recordSubType == "remind") {
                return ic_list_reminder_record_remind;
            } else {
                return ic_list_reminder_normal;
            }
        } else {
            return ic_list_reminder_normal;
        }
    }

	window.remindView = window.remindView || {};
	remindView.updateRemindView = updateRemindView;
	remindView.showSpeekView = showSpeekView;
    remindView.removeCurrentCanDeleteScheduleView = removeCurrentCanDeleteScheduleView;
	return showRemind;
});