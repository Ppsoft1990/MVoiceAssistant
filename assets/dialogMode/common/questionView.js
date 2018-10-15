/*****************转写结果View**********************/
define(function() {
	function createQuestionDialog(questionInfo) {
		var outDiv = document.createElement("div");
        outDiv.className = 'box_content_yellow';
        
		var dialog_question_text = document.createElement("div");
		dialog_question_text.className = "css_dialog_question_text";
        dialog_question_text.setAttribute("onclick", "");
		dialog_question_text.innerText = questionInfo.questionText;

		outDiv.appendChild(dialog_question_text);
		
		//气泡尖角
        var corner_img = document.createElement("img");
		corner_img.src = chat_corner_right;
		corner_img.className = "chat_corner_right";
		outDiv.appendChild(corner_img);
		
		//添加外壳
        var outDivBox = createBoxDiv(questionInfo.taskHandler, outDiv);
        //curPage.appendChild(outDivBox);
        document.body.appendChild(outDivBox);
        
		outDivBox.needScroll = true;
		outDivBox.topFirst = true;
		return outDivBox;
	}

	console.error('questionView.js load finished');
	return createQuestionDialog;
});