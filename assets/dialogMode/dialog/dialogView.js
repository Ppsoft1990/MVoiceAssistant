/**
 * 新版的闲聊视图 
 * yongcao 2014-7-28
 */
define(function(){
    var speakStatus = "stop";//tts播报状态
    var mediaPlayerStatus = "idle";//mediaPlayer播报状态
    var dialogViewData;
    
    //调用浏览器能力显示播报按钮
    exec("LxBrowserComponents", "showSpeakButton", [true]);

    //监听浏览器事件
    exec("LxBrowserComponents", "isEventCallBackForJS", [true]);
    
	function createAnswerView(answerInfo){
	    dialogViewData = answerInfo;
	    
        var show_div = document.createElement("div");
        show_div.className = "show_div";
        show_div.id = answerInfo.taskHandler;

        var outDiv = document.createElement("div");
        outDiv.className = 'box_content_white';

        var dialog_answer_text = document.createElement("div");
        dialog_answer_text.className = "css_dialog_answer_text";

        var answer_text = document.createElement("div");
        answer_text.className = "css_answer_text_whith_share";
        
        // url匹配
		var replaced_text = answerInfo.answerText;
		// 闲聊时播报的内容
		var replaced_play_text = answerInfo.speech;
		// 搜索应用时播报的内容
		var replaced_app_play_text = answerInfo.answerText;

		// 匹配网页地址
		var reg_url2 = /\b([\d\w\.\/\+\-\?\:]*)((ht|f)tp(s|)\:\/\/|[\d\d\d|\d\d]\.[\d\d\d|\d\d]\.|www\.|\.tv|\.ac|\.com|\.edu|\.gov|\.int|\.mil|\.net|\.org|\.biz|\.info|\.name|\.pro|\.museum|\.co)([\d\w\.\/\%\+\-\=\&amp;\?\:\\\&quot;\'\,\|\~\;]*)|(\/)$\b/ig;
		var reg_date = /^([0-9]{4}).*/g;
		var results;
		var mylength = 0;
		if (answerInfo.focus == "dialog") {
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
				console.log("replaced_text is " + replaced_text);
				if (answerInfo.focus == "dialog") {
					replaced_play_text = replaced_play_text.replace(reg_url2, urlText);
				} else if (answerInfo.focus == "app") {
					replaced_app_play_text = replaced_app_play_text.replace(reg_url2, "打开链接");
				}
			} else {
				if (answerInfo.focus == "dialog") {
				} else if (answerInfo.focus == "app") {
				}
			}
		}
		
		var picUrl = answerInfo.picUrl;
		var pageUrl = answerInfo.pageUrl;
		if (picUrl && !pageUrl) {
			console.log("picUrl:" + picUrl);
			var food_img = document.createElement("img");
			food_img.src = picUrl;
			food_img.className = "css_dialog_answer_food_img";
			show_div.appendChild(food_img);
		}
        
        answer_text.innerHTML = replaced_text;
        console.log("answer_text.innerHTML is " + answer_text.innerHTML);
        dialog_answer_text.appendChild(answer_text);
        
        if(answerInfo.type == "NORMAL"){
            var dialogTopic = answerInfo.topic;
            if(isNeedFoot(answerInfo.focus, dialogTopic)){
                var footer = document.createElement("div");
                footer.className = "css_dialog_answer_sharePlayDiv";
                footer.style.textAlign = "left";

                var fromText = document.createElement("label");
                footer.appendChild(fromText);
                
                var rightIcon = document.createElement("img");
                rightIcon.src = ic_list_arrow;
                rightIcon.className = "css_right_arrow_icon";
                footer.appendChild(rightIcon);

                if(dialogTopic.indexOf("笑话") >= 0){
                	footer.className = "css_joke_answer_sharePlayDiv";
                    fromText.innerText = "查看更多";
                    var footerMove = false;
                    footer.addEventListener("touchstart", function() {
                    	event.stopPropagation();
                    	console.log("footer touchstart");
                    	moveOverCheck.start(event);
                    	footer.style.backgroundColor = "#e5e5e5";
                    },false);
                    footer.addEventListener("touchmove", function() {
                    	event.stopPropagation();
                    	console.log("footer touchmove");
                    	if (moveOverCheck.check(event)) {
							footerMove = true;
						}
                    },false);
                    footer.addEventListener("touchend", function() {
                    	event.stopPropagation();
                    	console.log("footer touchend, footerMove is " + footerMove);
                    	if (false == footerMove) {
                    		console.log("answerInfo.moreUrl is " + answerInfo.moreUrl);
                    		exec('UIComponents', 'openBrowser', ["", answerInfo.moreUrl]);
                    		exec('SynthesizeComponents', 'ttsStop', []); // 停止播报
                    	}
                    	footer.style.backgroundColor = "";
                    	footerMove = false;
                    	
                    },false);
                } else if(dialogTopic.toLowerCase().indexOf("va_cqa_") >= 0){
                    fromText.innerText = "来自互联网";
                    fromText.style.color = "#838383";
                    rightIcon.style.display = "none";
                }
                dialog_answer_text.appendChild(footer);
            }
        }


        outDiv.appendChild(dialog_answer_text);
        

        //添加外壳
        var outDivBox = createBoxDiv(answerInfo.taskHandler + "@outDivBox", outDiv);
        show_div.appendChild(outDivBox);

        document.body.appendChild(show_div); 
        
        // 为网址div设置独一的id，并添加触摸事件
		if (answerInfo.focus == "dialog") {
			if (results != null) {
				console.log("results is " + JSON.stringify(results));
				for (var i = 0; i < results.length; i++) {
					var tempid = results[i];
					var href_div = document.getElementById(tempid);
					var href_id = tempid;
					href_div.setAttribute("id", href_id);
					href_div.className = "css_href_div";
					href_id = href_div.id;
					href_div = richURLdiv(href_id, answerInfo);
				}
			}
		}
        
        show_div.topSecond = true;
        
        //播报
        var isTextSearchResult = dialogViewData.isTextSearchResult;
        var isRecognizing = getResultMessage(exec("RecognizeComponents", "isRecognize",[]));
		if ( isTextSearchResult != true && isTextSearchResult != 'true' && !isRecognizing) {
			//语音播报是否开启
			var isSpeechDialogMode = getResultMessage(exec("SystemComponents", "isSpeechDialogMode", []));
			if (true == isSpeechDialogMode || "true" == isSpeechDialogMode) {
				if (dialogViewData.audioUrl) {//历史上的今天使用mediaPlayer播报
					exec("MediaPlayerComponents", "playMedia", [dialogViewData.audioUrl]);
				} else {
					var content = getSpeakContent();
					console.log("content is " + content);
					if (content) {
						exec('SynthesizeComponents', 'ttsSpeak', [content]);
					}
				}
			}
		}
        
        return show_div;
    }
    function isNeedFoot(focus,topic){
        if(!focus){
            return false;
        }
        if(!topic){
            return false;
        }
        if(topic.indexOf("笑话") >= 0)
            return true;
        if(topic.toLowerCase().indexOf("va_cqa_") >= 0){
            return true;
        }
        return false;
    }
    
    function richURLdiv(id, answerInfo) {
		var url_div = document.getElementById(id);
		console.log("richURLdiv, url_div is " + url_div);

		url_div.addEventListener("touchstart",function(){
			openstart(id);
		},false);
		url_div.addEventListener("touchmove",function(){
			openmove(id);
		},false);
		url_div.addEventListener("touchend",function(){
			openend(id,answerInfo);
		},false);
		
		return url_div;
	}
	
	var bopenmove = false;
	function openstart(id) {
		var url_div = document.getElementById(id);
		url_div = event.target;
		moveOverCheck.start(event);
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

	function openend(id, answerInfo) {
		var url_div = document.getElementById(id);
		url_div = event.target;
		url_div.className = "css_href_div";
		var reg_url = /\b([\d\w\.\/\+\-\?\:]*)((ht|f)tp(s|)\:\/\/|[\d\d\d|\d\d]\.[\d\d\d|\d\d]\.|www\.|\.tv|\.ac|\.com|\.edu|\.gov|\.int|\.mil|\.net|\.org|\.biz|\.info|\.name|\.pro|\.museum|\.co)([\d\w\.\/\%\+\-\=\&amp;\?\:\\\&quot;\'\,\|\~\;]*)\b/i;
		var matchresult = id.match(reg_url);

		if (bopenmove) {
			bopenmove = false;
		} else {
			if (matchresult != null) {
				var href_url = matchresult[0];
				exec("UIComponents", 'openBrowser', ["", href_url]);
				exec('SynthesizeComponents', 'ttsStop', []); // 停止播报
			}
			event.stopPropagation();
		}
	}

    /*******************创建底部长按钮******************* */
    function createLongButton(text,callBackFunc){
        var outDiv = document.createElement("div");
        outDiv.className = 'box_content_white';

        var btnText = document.createElement("div");
        btnText.className = "btn_text";
        btnText.innerText = text;
        outDiv.appendChild(btnText);

        btnText.addEventListener("touchstart",function(){
            moveOverCheck.start(event);
            outDiv.style.backgroundColor = "#e5e5e5";
        },false);
        btnText.addEventListener("touchmove",function(){
            moveOverCheck.check(event);
            outDiv.style.backgroundColor = "white";
        },false);
        btnText.addEventListener("touchend",function(){
            outDiv.style.backgroundColor = "white";
            if(!moveOverCheck.isMoveOver()){
                callBackFunc();
            }
        },false);

        if(!isTouch){
            btnText.addEventListener("click",callBackFunc,false);
        }

        //添加外壳
        var outDivBox = createBoxDiv("", outDiv);

        return outDivBox;
    }
    
    function getSpeakContent() {
        var speechText = dialogViewData.speech;
        if (!speechText) {
            speechText = dialogViewData.tip;
        }
        return speechText;
    }
    
    //***********************************监听mediaPlayer的播报状态*************//
    function onPlayPreparing() {
        console.log("mediaPlayer onPlayPreparing");
        mediaPlayerStatus = "preparing";
    }
    
    function onPlayPrepared() {
        console.log("mediaPlayer onPlayPrepared");
        mediaPlayerStatus = "prepared";
    }
    
    function onPlayCompleted() {
        console.log("mediaPlayer onPlayCompleted");
        mediaPlayerStatus = "idle";
    }
    
    function onPlayError(errorCode) {
        console.log("mediaPlayer onPlayError");
        mediaPlayerStatus = "idle";
        
        //若出错，则调用tts播报speech
        var content = getSpeakContent();
        console.log("content is " + content);
        if (content) {
            exec('SynthesizeComponents', 'ttsSpeak', [content]);
        }
    }
    
    function onBufferUpdated() {
    }
    
    function onMediaStopped() {
        console.log("mediaPlayer onMediaStopped");
        mediaPlayerStatus = "idle";
    }
    
    //***************************监听tts播报的状态回调*******************************//
    function onTtsPlayBegin() {
        speakStatus = "playing";
    }

    function onTtsPlayComplete(errorCode) {
        speakStatus = "stop";
        if (0 != errorCode) {
            exec("UIComponents", "showToast", ["播放出错", 0]);
        }
    }

    function onTtsInterrupt() {
        speakStatus = "stop";
    }

    function onTtsResume() {
        speakStatus = "playing";
    }

    function onTtsPause() {
        speakStatus = "pause";
    }

    function onTtsPlayProcess(position) {

    }

    function onTtsPlayPrepare() {

    }
    
    //************************* 浏览器框架事件回调处理 ******************************//

    //播报按钮点击
    function onPlayButtonClick() {
        console.log("onPlayButtonClick, status is " + speakStatus + ", mediaPlayStatus is " + mediaPlayerStatus);
        
        if (dialogViewData.audioUrl) {
            if ("idle" == mediaPlayerStatus) {
                console.log("speakStatus is " + speakStatus);
                if ("playing" == speakStatus) {
                    exec('SynthesizeComponents', 'ttsStop', []);
                } else {
                	exec("MediaPlayerComponents", "playMedia", [dialogViewData.audioUrl]);
                }
            } else {
                exec("MediaPlayerComponents", "stopMedia", []);
                mediaPlayerStatus = "idle";
            }
            
            return;
        }

        if ("playing" == speakStatus) {
            exec('SynthesizeComponents', 'ttsStop', []);
        } else if ("pause" == speakStatus || "stop" == speakStatus) {
            var content = getSpeakContent();
            console.log("content is " + content);
            if (content) {
                exec('SynthesizeComponents', 'ttsSpeak', [content]);
            }
        }
    }

    //手机home键点击
    function onHomeKeyClick() {
        console.log('onHomeKeyClick callBack, mediaPlayerStatus is ' + mediaPlayerStatus + ", speakStatus is " + speakStatus);
        if ("idle" != mediaPlayerStatus) {
            exec("MediaPlayerComponents", "stopMedia", []);
            mediaPlayerStatus = "idle";
        }
        if ("stop" != speakStatus) {
            exec('SynthesizeComponents', 'ttsStop', []);
        }
    }

    //Activity被覆盖
    function onActivityPause() {
        console.log('onActivityPause callBack');
        if ("idle" != mediaPlayerStatus) {
            exec("MediaPlayerComponents", "stopMedia", []);
            mediaPlayerStatus = "idle";
        }
        if ("stop" != speakStatus) {
            exec('SynthesizeComponents', 'ttsStop', []);
        }
    }
    
    window.onTtsPlayBegin = onTtsPlayBegin;
    window.onTtsPlayComplete = onTtsPlayComplete;
    window.onTtsInterrupt = onTtsInterrupt;
    window.onTtsResume = onTtsResume;
    window.onTtsPause = onTtsPause;
    window.onTtsPlayProcess = onTtsPlayProcess;
    window.onTtsPlayPrepare = onTtsPlayPrepare;
    window.onPlayPreparing = onPlayPreparing;
    window.onPlayPrepared = onPlayPrepared;
    window.onPlayCompleted = onPlayCompleted;
    window.onPlayError = onPlayError;
    window.onBufferUpdated = onBufferUpdated;
    window.onMediaStopped = onMediaStopped;
    window.onPlayButtonClick = onPlayButtonClick;
    window.onHomeKeyClick = onHomeKeyClick;
    window.onActivityPause = onActivityPause;
    
    return createAnswerView;
});