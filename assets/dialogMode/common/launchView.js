/**
 *
 * @author jffang
 */
define(function() {
    /**
     * 该函数以后会提取为公共函数
     */
    function createSimpleAnswer(text, callBack) {
        var outDiv = document.createElement("div");
        outDiv.className = 'box_content_white';
        	
        var container = document.createElement("div");
        container.className = 'simple_answer_container';
        var dialog_text = document.createElement("div");
        dialog_text.className = "simple_answer_text";
        dialog_text.innerText = text;
        dialog_text.setAttribute("onclick", "");

        container.appendChild(dialog_text);
        outDiv.appendChild(container);
        
        //气泡尖角
        var corner_img = document.createElement("img");
		corner_img.src = chat_corner_left;
		corner_img.className = "chat_corner_left";
		outDiv.appendChild(corner_img);
		
		//添加外壳
        var outDivBox = createBoxDiv("", outDiv);
        return outDivBox;
    }
    
    function createLatestOpView(isSaved, tipText, progressTime, handlerTag){
    	var curDelay = true;
    	
    	var outDiv = document.createElement("div");
        outDiv.className = 'box_content_white';
        
        var opInner = document.createElement("div");
        opInner.className = "latest_op_inner";

        var opBlock = document.createElement("div");

        var opLeft = document.createElement("div");
        opLeft.className = "latest_op_left";
        var opTip = document.createElement("div");
        opTip.className = "latest_op_tip";
        opTip.innerText = tipText;
        opTip.setAttribute("onclick", "");
        opLeft.appendChild(opTip);
        var opRight = document.createElement("div");
        opRight.className = "latest_op_right";
        var cancelButton = document.createElement("img");
        cancelButton.src = btn_close_nor;
        cancelButton.className = "latest_op_cancel";
        var gotoButton = document.createElement("img");
        gotoButton.src = channel_goto_sub;
        gotoButton.className = "latest_op_goto";
        
        opRight.appendChild(cancelButton);
        opRight.appendChild(gotoButton);

        opBlock.appendChild(opLeft);
        opBlock.appendChild(opRight);


        var progressContainer = document.createElement("div");
        progressContainer.className = "latest_progress_container";
        var progressbar = document.createElement("div");
        progressbar.className = "latest_progress_var";

        progressContainer.appendChild(progressbar);
        
        if(isSaved){
        	cancelButton.style.display = "none";
        	gotoButton.style.display = "inline-block";
        	progressContainer.style.opacity = "0.0";
        	curDelay = false; 
        }

        opInner.appendChild(opBlock);
        opInner.appendChild(progressContainer);

        outDiv.appendChild(opInner);
        //添加外壳
        var outDivBox = createBoxDiv("", outDiv);

        var progressId;
        var isMove = false;
        opInner.addEventListener("touchstart", function(){
        	event.stopPropagation();
        	isMove = false;
        	moveOverCheck.start(event);
        },false);
        opInner.addEventListener("touchmove", function(){
        	event.stopPropagation();
        	if(!isMove){
        		isMove = moveOverCheck.check(event);
        	}
        },false);
        opInner.addEventListener("touchend", function(){
        	event.stopPropagation();
        	if(!isMove){
        		if(true == curDelay){
	        		if(event.target == opRight || event.target == cancelButton){
	        			clearInterval(progressId);
	        			exec(handlerTag,"cancel",[]);
	        			cancelButton.style.display = "none";
	        			gotoButton.style.display = "inline-block";
	        			progressContainer.style.opacity = "0.0";
	        			curDelay = false;
	        		}
	        	}else{
	        		exec(handlerTag,"force",[]);
	        	}
        	}
        },false);
        
        outDivBox.startProgress = function() {
			clearInterval(progressId);
			// var delayTime = 2000;			var delayTime = progressTime;
			var inTime = delayTime / 20;
			var startTime = 0;
			var times = 1;
			progressId = setInterval(function() {
				progressbar.style.width = 5 * times + "%";
				times++;
				startTime += inTime;
				if (startTime >= delayTime) {
					clearInterval(progressId);
					
        			progressContainer.style.opacity = "0.0";
					cancelButton.style.display = "none";
        			gotoButton.style.display = "inline-block";
					
					curDelay = false;
					exec(handlerTag,"delay",[]);
				}
			}, inTime);
		};
        outDivBox.cancelProgress = function() {
			clearInterval(progressId);
			
			curDelay = false;
        	progressContainer.style.opacity = "0.0";
			cancelButton.style.display = "none";
        	gotoButton.style.display = "inline-block";
		};

        return outDivBox;
    }
    
	function createLaunchView(appOpJson){
        var appTip = appOpJson.answerTip;
        var openTip = appOpJson.launchTip;
        var isSaved = appOpJson.isSaved;
        var pTime = appOpJson.progressTime;
        var taskHandler = appOpJson.taskHandler;
        
        var view = document.createElement("div");
        view.id = taskHandler;

        var tipView = createSimpleAnswer(appTip);
        var opView = createLatestOpView(isSaved,openTip,pTime,taskHandler);

        view.appendChild(tipView);
        view.appendChild(opView);

        curPage.appendChild(view);

		if(!isSaved){
			opView.startProgress();
		}
		
		latestOperationView = view;
		latestOperationView.cancel = opView.cancelProgress;
		
		view.needScroll = true;
		view.topSecond = true;
        return view;
    }
	
    var cancelTask = function(){
    	if(latestOperationView){
    		latestOperationView.cancel();
    	}
    };
    
    // 将需要java回调的函数暴露到全局对象smsView中，方便外部java文件调用
	window.latestSloth = window.latestSloth || {};
	latestSloth.cancel = cancelTask;
    
    return createLaunchView;
});