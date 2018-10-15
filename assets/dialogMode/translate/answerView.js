define(function() {
	var answerViewData;
	curPage = document.body;
	var num = 0;
	var intervalNum = null; //计时器返回值，用于清除计时器
	
	/******************显示回答的函数模块********************/
	function showAnswer(answerInfo) {
		return createAnswerDialog(answerInfo);
	}

	function getSpeakContent() {
		var content = answerViewData.answerText;
		return content;
	}

	/**
	 * 创建分享、重播的视图
	 *
	 * @param taskHandler
	 *            底层java函数的标识符
	 
	 */
	function createSharePlayView(taskHandler) {
		var sharePlayDiv = document.createElement("div");
		
		//复制按钮
		var copyImg = document.createElement("img");
		copyImg.src = btn_copy_nor;
		copyImg.className = "css_dialog_content_copy_btn";
		
		
		//播报按钮
		var playImg = document.createElement("img");
		playImg.id = "playImg" + taskHandler;
		playImg.className = "css_dialog_content_play_btn";
		playImg.src = answer_content_play_normal;

		sharePlayDiv.appendChild(copyImg);
		sharePlayDiv.appendChild(playImg);   
		

		sharePlayDiv.translationMode = translationMode;

		// 添加控制按钮触摸响应函数
		var target_have_move_motion = false;
		sharePlayDiv.addEventListener("touchstart", function() {
			// 阻止冒泡，使answerView不再对此事件进行处理
			event.stopPropagation();
            moveOverCheck.start(event);
			var targetElement = event.target;
			if (targetElement === playImg) {
				targetElement.src = answer_content_play_pressed;
			} else if (targetElement === copyImg) {
				targetElement.src = btn_copy_press;
			}
		}, false);

		sharePlayDiv.addEventListener("touchmove", function() {
			// 阻止冒泡，使answerView不再对此事件进行处理
			event.stopPropagation();
			if (moveOverCheck.check(event)) {
				target_have_move_motion = true;
			}
		}, false);

		sharePlayDiv.addEventListener("touchend", function() {
			// 阻止冒泡，使answerView不再对此事件进行处理
			event.stopPropagation();
			var targetElement = event.target;
			if (targetElement === playImg) {
				targetElement.src = answer_content_play_normal;

				if (!target_have_move_motion) {
					if (null == intervalNum) {
						var content = getSpeakContent();
						
						console.log("content is " + content);
						if (content) {
							exec("TranslateBusinessHandler", "ttsSpeak", [sharePlayDiv.translationMode, content]);
						}
					} else {
						exec("TranslateBusinessHandler", "ttsStop", []);
					}
				}
			} else if (targetElement === copyImg) {
				targetElement.src = btn_copy_nor;
				if (!target_have_move_motion) {
					exec("TranslateBusinessHandler", "copyContent", [getSpeakContent()]);
				}
			}
			
			target_have_move_motion = false;
		}, false);

		sharePlayDiv.refresh = function() {
			playImg.src = dialogmode_content_play_normal;
		};

		sharePlayDiv.ChangeImage = function(num) {
			var remainder = num % 3;
			if (remainder == 1) {
				playImg.src = answer_content_play_wave;
			} else if (remainder == 2) {
				playImg.src = answer_content_play_wave2;
			} else if (remainder == 0) {
				playImg.src = answer_content_play_normal;
			}
		};

		return sharePlayDiv;
	}

	// 底部按钮
	var dialog_answer_bottom_btn = null;

	/**
	 * 创建回答对话框 菜谱、消息推送等共用此
	 *
	 * @param answerInfo
	 *            java处理过的结果，json格式
	 */
	function removeAnswerShare() {
		console.log("removeAnswerShare, curPage is " + curPage + ", curPage.answerViewWithShare is " + curPage.answerViewWithShare);
		if (curPage && curPage.answerViewWithShare) {
			curPage.answerViewWithShare.removeShare();
		}
	}

	function startSpeakAnimation() {
		console.log("startSpeakAnimation()");
		intervalNum = setInterval(function() {
			num++;
			curPage.answerViewWithShare.ChangeImage(num);
		}, 300);
	}

	function stopSpeakAnimation() {
		console.log("stopSpeakAnimation()");
		clearInterval(intervalNum);
		intervalNum = null;
		curPage.answerViewWithShare.ChangeImage(3);
		num = 0;
	}

	/**************提示语气泡View***********************/
	function createAnswerDialog(answerInfo) {
		console.log("createAnswerDialog begin");

		answerViewData = answerInfo;

		var isReplaceUrl = false;

		var isDialogFocus = (answerInfo.showShare || answerInfo.focus == "message");
		var taskHandler = answerInfo.taskHandler;
		var show_div = document.createElement("div");
		show_div.id = taskHandler;

		var outDiv = document.createElement("div");
		outDiv.className = 'box_content_white';

		var dialog_answer_text = document.createElement("div");
		dialog_answer_text.className = "css_dialog_answer_text2";
		var answer_text = document.createElement("div");

		answer_text.className = "css_answer_text_whith_share";
		answer_text.innerHTML = answerInfo.answerText;
		dialog_answer_text.appendChild(answer_text);

		// 除招呼语外都有分享播报按钮
		var sharePlayDiv = null;
		if (answerInfo.showShare) {
			if (answerInfo.type == "NORMAL") {
				sharePlayDiv = createSharePlayView(answerInfo.taskHandler);
				sharePlayDiv.className = "css_dialog_answer_sharePlayDiv";
				dialog_answer_text.appendChild(sharePlayDiv);
			}
		}

		outDiv.appendChild(dialog_answer_text);

		//气泡尖角
		var corner_img = document.createElement("img");
		corner_img.src = chat_corner_left;
		corner_img.className = "chat_corner_left";
		outDiv.appendChild(corner_img);

		//添加外壳
		var outDivBox = createBoxDiv(taskHandler + "@outDivBox", outDiv);
		show_div.appendChild(outDivBox);

		curPage.appendChild(show_div);

		show_div.ChangeImage = function(num) {
			if (sharePlayDiv) {
				sharePlayDiv.ChangeImage(num);
			}
		};

		if (answerInfo.showShare) {
			show_div.removeShare = function() {
				removeChild(sharePlayDiv.parentNode, sharePlayDiv);
				forceRefreshScreen();
			};
			curPage.answerViewWithShare = show_div;
		}

		return show_div;
	}


	window.answerView = window.answerView || {};
	answerView.removeAnswerShare = removeAnswerShare;
	answerView.startSpeakAnimation = startSpeakAnimation;
	answerView.stopSpeakAnimation = stopSpeakAnimation;

	return showAnswer;
});

