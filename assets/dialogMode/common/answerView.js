define(function() {
	/******************显示回答的函数模块********************/
	function showAnswer(answerInfo) {
		return createAnswerDialog(answerInfo);
	}
	//以下三个为锁屏使用的临时变量
	var tempDiv = null;
	var tempTaskHandler = null;

	// 底部按钮
	var dialog_answer_bottom_btn = null;

	/**
	 * 创建回答对话框 菜谱、消息推送等共用此
	 *
	 * @param answerInfo
	 *            java处理过的结果，json格式
	 */
	function removeAnswerShare() {
		if(curPage && curPage.answerViewWithShare){
			curPage.answerViewWithShare.removeShare();
		}
	}

	/**************提示语气泡View***********************/
	function createAnswerDialog(answerInfo) {
		// 删除不能重复的业务气泡
		if(answerInfo.focus == "music" && window.musicView){
			musicView.removeOldView();
		} else if(answerInfo.focus == "news" && window.sohuNewsView){
		//	console.log("sohuNewsView.removeOldView();");
		//	sohuNewsView.removeOldView();
			
		}
		
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

		// url匹配
		var replaced_text = answerInfo.answerText;
		// 闲聊时播报的内容
		var replaced_play_text = answerInfo.speechText;
		// 搜索应用时播报的内容
		var replaced_app_play_text = answerInfo.answerText;

		// 匹配网页地址
		var reg_url2 = /\b([\d\w\.\/\+\-\?\:]*)((ht|f)tp(s|)\:\/\/|[\d\d\d|\d\d]\.[\d\d\d|\d\d]\.|www\.|\.tv|\.ac|\.com|\.edu|\.gov|\.int|\.mil|\.net|\.org|\.biz|\.info|\.name|\.pro|\.museum|\.co)([\d\w\.\/\%\+\-\=\&amp;\?\:\\\&quot;\'\,\|\~\;]*)|(\/)$\b/ig;
		var reg_date = /^([0-9]{4}).*/g;
		var results;
		var mylength = 0;
		if (answerInfo.focus == "dialog" || answerInfo.focus == "app") {
			results = replaced_text.match(reg_url2);
			
			if(results != null){
				for (var i=0; i < results.length; i++) {
				  if(null != results[i].match(reg_date)){
				  		mylength++;
				  }
				}
				if( mylength > 0){
					results = null;
				}
			}
			
			if (results != null) {
				var urlText;
				if(answerInfo.urlText) {
					urlText = answerInfo.urlText;
				} else {
					urlText = "打开链接";
				}
				replaced_text = replaced_text.replace(reg_url2, function(m) {
					return '<label id="' + m + '" display="inline-block">&nbsp;' + urlText + ' ></label>';
				});
				if (answerInfo.focus == "dialog") {
					replaced_play_text = replaced_play_text.replace(reg_url2, urlText);
					exec(taskHandler, 'replaceSpeech', [replaced_play_text]);
				} else if (answerInfo.focus == "app") {
					replaced_app_play_text = replaced_app_play_text.replace(reg_url2, "打开链接");
					exec(taskHandler, 'replaceAppSpeech', [replaced_app_play_text]);
				}
				isReplaceUrl = true;
			} else {
				if (answerInfo.focus == "dialog") {
					exec(taskHandler, 'replaceSpeech', [replaced_play_text]);
				} else if (answerInfo.focus == "app") {
					exec(taskHandler, 'replaceAppSpeech', [replaced_app_play_text]);
				}
			}
		}
		
		var picUrl = answerInfo.picUrl;
		if (picUrl) {
			console.log("picUrl:" + picUrl);
			var food_img = document.createElement("img");
			food_img.src = picUrl;
			food_img.className = "css_dialog_answer_food_img";
			show_div.appendChild(food_img);
			
			var pageUrl = answerInfo.pageUrl;
			//如果图片带链接，则支持点击跳转到网页
			if(pageUrl){
				food_img.addEventListener("touchstart", function() {
					moveOverCheck.start(event);
				}, false);
				food_img.addEventListener("touchmove", function() {
					moveOverCheck.check(event);
				}, false);
				food_img.addEventListener("touchend", function() {
					if (!moveOverCheck.isMoveOver()) {
						exec(taskHandler, 'openPageUrl', [pageUrl]);
					}
				}, false);
			}
		}

		answer_text.className = "css_answer_text_whith_share";
		answer_text.innerHTML = replaced_text;
		dialog_answer_text.appendChild(answer_text);
		
		// 除招呼语外都有分享播报按钮
		var sharePlayDiv = null;
		if (answerInfo.showShare) {
			if (answerInfo.type == "NORMAL") {
				sharePlayDiv = createSharePlayView(answerInfo.taskHandler, false, 3);
				if (answerInfo.topic
						&& answerInfo.topic.toLowerCase().indexOf("va_cqa_") >= 0) {
					sharePlayDiv.style.cssText = "display:inline-block;width:40%;text-align:right";
					var footer = document.createElement("div");
					footer.className = "css_dialog_answer_sharePlayDiv";
					footer.style.textAlign = "left";

					var fromText = document.createElement("label");
					fromText.innerText = "来自互联网";
					fromText.style.cssText = "display:inline-block;vertical-align: middle;width:60%;";

					footer.appendChild(fromText);
					footer.appendChild(sharePlayDiv);
					dialog_answer_text.appendChild(footer);
				} else if (cmcc_flag
						&& answerInfo.topic
						&& (answerInfo.topic === "chat_愚人节_讲笑话" || answerInfo.topic
								.toLowerCase().indexOf("chat_笑话") >= 0)) {
					sharePlayDiv.style.cssText = "display:inline-block;width:40%;text-align:right";
					var footer = document.createElement("div");
					footer.className = "css_dialog_answer_sharePlayDiv";
					footer.style.textAlign = "left";

					var fromText = document.createElement("label");
					fromText.innerText = "更多笑话>>";
					fromText.className = "chat_answerView_fromText";
					fromText.style.cssText = "display:inline-block;vertical-align: middle;width:60%;";

					footer.appendChild(fromText);
					
					footer.appendChild(sharePlayDiv);
					dialog_answer_text.appendChild(footer);
					fromText.addEventListener("click", function() {
						console.log("chat_joking more click");
						exec(taskHandler, 'openJokingMore', []);
					}, false);
				} else {
					sharePlayDiv.className = "css_dialog_answer_sharePlayDiv";
					dialog_answer_text.appendChild(sharePlayDiv);
				}
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
		
		curPage.appendChild(show_div); //curPage 中添加view

		// 取消按钮
		if (answerInfo.cancelButtonShowTime > 0) {
			dialog_answer_bottom_btn = createLongButton("取消", function() {
				dismissAnswerCancelBtn();
				exec(taskHandler, 'cancelTask', []);
			});
			show_div.appendChild(dialog_answer_bottom_btn);
		}
		// 搜索网页按钮
		else if (answerInfo.topic && answerInfo.topic.toLowerCase() == "unknown") {
			dialog_answer_bottom_btn = createLongButton("上网搜索", function() {
				exec(answerInfo.taskHandler, 'searchWeb', []);
			});
			show_div.appendChild(dialog_answer_bottom_btn);
		}
		// 跳转操作按钮
		else if(answerInfo.needTaskButton){
			dialog_answer_bottom_btn = createLongButton("打开", function() {
				dismissAnswerCancelBtn();
				exec(taskHandler, 'execTask', []);
			});
			show_div.appendChild(dialog_answer_bottom_btn);
		} else if (answerInfo.smsBtnText) { // 发短信按钮
		    dialog_answer_bottom_btn = createLongButton(answerInfo.smsBtnText, function() {
                var ret = exec(taskHandler, 'sendSms', [answerInfo.focus]);
                var result = getResultMessage(ret);
                    if ("success" == result) {
                        setSendSmsStatus();
                    }
            });
            show_div.appendChild(dialog_answer_bottom_btn);
		}
		
		if (answerInfo.showProgressBar) {
			showProgressBar(answerInfo.taskHandler);
		}

		var bgBack = function() {
			outDiv.style.backgroundColor = "white";
		};
		var pop_copy = function() {
			exec('WidgetMMPContainerComponents', 'copyAnswer', ["copy", answerInfo.answerText]);
		};
		var pop_share = function() {
			exec('WidgetMMPContainerComponents', 'copyAnswer', ["share", taskHandler]);
		};
		var pop_play = function() {
			exec('WidgetMMPContainerComponents', 'copyAnswer', ["play", taskHandler]);
		};

		var intevalId = null;
		var hasMoveMotion = false;
		dialog_answer_text.addEventListener("touchstart", function() {
			hasMoveMotion = false;
			moveOverCheck.start(event);
			if (isDialogFocus) {
				intevalId = setTimeout(function() {
					intevalId = null;
					if (float_layer == null) {
						createFloatLayer();
					}
					float_layer.setCallBack(pop_copy, pop_share, pop_play, bgBack);
					float_layer.setPosition([outDiv.getBoundingClientRect().top, outDiv.getBoundingClientRect().bottom]);
					float_layer.show();
				}, 1200);
				
				//FIXME 改变颜色会导致尖角显示问题，暂时跟以前版本保持一致，不改变背景色。
//				outDiv.style.backgroundColor = "#eeeeee";
			}
		}, false);
		dialog_answer_text.addEventListener("touchmove", function() {
			console.log("point value -- X:" + event.targetTouches[0].pageX + " Y: " + event.targetTouches[0].pageY);
			if (moveOverCheck.check(event)) {
				hasMoveMotion = true;
				if (isDialogFocus) {
					clearTimeout(intevalId);
					intevalId = null;
					bgBack();
				}
			}
		}, false);
		dialog_answer_text.addEventListener("touchend", function() {
			if (isDialogFocus) {
				if (intevalId != null) {
					clearTimeout(intevalId);
					intevalId = null;
					bgBack();
				}
			}
			if (hasMoveMotion == false) {
				exec(answerInfo.taskHandler, 'cancelTask', []);
			}
		}, false);

		show_div.refresh = function() {
			if (sharePlayDiv) {
				sharePlayDiv.refresh();
			}
		};

		if (answerInfo.showShare) {
			show_div.removeShare = function() {
				removeChild(sharePlayDiv.parentNode, sharePlayDiv);
				forceRefreshScreen();
			};
			curPage.answerViewWithShare = show_div;
		}
		// 为网址div设置独一的id，并添加触摸事件
		if (answerInfo.focus == "dialog" || answerInfo.focus == "app") {
			if (results != null) {
				for (var i = 0; i < results.length; i++) {
					var tempid = results[i];
					var href_div = document.getElementById(tempid);
					var href_id = taskHandler + "  " + tempid;
					href_div.setAttribute("id", href_id);
					href_div.className = "css_href_div";
					href_id = href_div.id;
					href_div = richURLdiv(href_id, taskHandler);
				}
			}
		}

		//新框架代码，向curPage中添加主页面列表，此处代码不正确，需要修改
		if (answerInfo.showWelcomeList && focusListView == null && curPage.children.length <= 3) {
			// 添加功能列表时不用滚动
			setTimeout(function() {
				if (answerInfo.listInfo != undefined) {
					createMainList(answerInfo.listInfo);
				}
			}, 0);
		} else {
			show_div.needScroll = true;
			show_div.topSecond = true;
		}
		
		return show_div;
	}

	function richURLdiv(id, taskHandler) {
		var url_div = document.getElementById(id);

		url_div.addEventListener("touchstart",function(){
			openstart(id);
		},false);
		url_div.addEventListener("touchmove",function(){
			openmove(id);
		},false);
		url_div.addEventListener("touchend",function(){
			openend(id,taskHandler);
		},false);
		
		return url_div;
	}

	var bopenmove = false;
	function openstart(id) {
		var url_div = document.getElementById(id);
		url_div = event.target;
		moveOverCheck.start(event);
		url_div.className += " css_href_div_pressed";
		event.stopPropagation();
	}

	function openmove(id) {
		var url_div = document.getElementById(id);
		url_div = event.target;
		if (moveOverCheck.check(event)) {
			bopenmove = true;
			url_div.className = "css_href_div";
		}
		event.stopPropagation();
	}

	function openend(id, taskHandler) {
		var url_div = document.getElementById(id);
		url_div = event.target;
		url_div.className = "css_href_div";
		var reg_url = /\b([\d\w\.\/\+\-\?\:]*)((ht|f)tp(s|)\:\/\/|[\d\d\d|\d\d]\.[\d\d\d|\d\d]\.|www\.|\.tv|\.ac|\.com|\.edu|\.gov|\.int|\.mil|\.net|\.org|\.biz|\.info|\.name|\.pro|\.museum|\.co)([\d\w\.\/\%\+\-\=\&amp;\?\:\\\&quot;\'\,\|\~\;]*)\b/i;
		var matchresult = id.match(reg_url);
		// alert("bopenmove = " + bopenmove + " matchresult = " + matchresult);

		if (bopenmove) {
			bopenmove = false;
		} else {
			if (matchresult != null) {
				var href_url = matchresult[0];
				exec("WidgetMMPContainerComponents", 'openUrl', [href_url]);
			}
			event.stopPropagation();
		}
	}


	/**
	 * 在界面上删除取消按钮，当界面跳转的时候由java回调或者定时时间过了之后由js定时器调用。
	 */
	function dismissAnswerCancelBtn() {
		console.log("dismissAnswerCancelBtn");

		if (dialog_answer_bottom_btn != null && dialog_answer_bottom_btn.parentNode != null) {
			removeChild(dialog_answer_bottom_btn.parentNode, dialog_answer_bottom_btn);
			dialog_answer_bottom_btn = null;
		}

		// 强制界面刷新，解决某些手机（如：G7，MIUI）上按钮不消失的问题
		forceRefreshScreen();
	}
	
	// TODO
	function setSendSmsStatus() {
	    if (dialog_answer_bottom_btn) {
	        
	    }
	}
	

	window.answerView = window.answerView || {};
	answerView.removeAnswerShare = removeAnswerShare;
	answerView.dismissAnswerCancelBtn = dismissAnswerCancelBtn;
	
	return showAnswer;
});

	