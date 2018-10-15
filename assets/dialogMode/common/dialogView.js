define(function(){
	function createAnswerView(answerInfo){
        var show_div = document.createElement("div");
        show_div.className = "show_div";
        show_div.id = answerInfo.taskHandler;

        var outDiv = document.createElement("div");
        outDiv.className = 'box_content_white';

        var dialog_answer_text = document.createElement("div");
        dialog_answer_text.className = "css_dialog_answer_text";

        var answer_text = document.createElement("div");
        answer_text.className = "css_answer_text_whith_share";
        if(answerInfo.answerText){
            answer_text.innerHTML = answerInfo.answerText;
        }else if(answerInfo.tip){
            answer_text.innerHTML = answerInfo.tip;
        }else{
            answer_text.innerHTML = "";
        }
        
        dialog_answer_text.appendChild(answer_text);
        
        if(answerInfo.type == "NORMAL"){
            var dialogTopic = answerInfo.topic;
            if(isNeedFoot(answerInfo.focus, dialogTopic)){
                var footer = document.createElement("div");
                footer.className = "css_dialog_answer_sharePlayDiv";
                footer.style.textAlign = "left";

                var fromText = document.createElement("label");
                fromText.style.cssText = "display:inline-block;vertical-align: middle;width:60%;";                
                footer.appendChild(fromText);

                if(dialogTopic.indexOf("笑话") >= 0){
                    fromText.innerText = "查看更多";
                    fromText.addEventListener("click",function(){
                        openFrameView(answerInfo.moreUrl);
                    },false);
                } else if(dialogTopic.toLowerCase().indexOf("va_cqa_") >= 0){
                    fromText.innerText = "来自互联网";
                }
                dialog_answer_text.appendChild(footer);
            }
        }

        outDiv.appendChild(dialog_answer_text);
        

        //添加外壳
        var outDivBox = createBoxDiv(answerInfo.taskHandler + "@outDivBox", outDiv);
        show_div.appendChild(outDivBox);

        if("unknown" == dialogTopic){
            var dialog_answer_bottom_btn = createLongButton("上网搜索", function() {
                var openUrl = null;
                if(answerInfo.web_search_url){
                    openUrl = answerInfo.web_search_url;
                } else if(isTouch){
                    openUrl = "http://m.baidu.com/s?word=" + answerInfo.question;
                }else{
                    openUrl = "http://www.baidu.com/s?word=" + answerInfo.question;
                }
                openFrameView(openUrl);
            });
            show_div.appendChild(dialog_answer_bottom_btn);
        }
        document.body.appendChild(show_div); 
        
        show_div.topSecond = true;
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
    
    return createAnswerView;
});