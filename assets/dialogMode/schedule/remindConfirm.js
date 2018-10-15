define(function() {
	function createRemindConfirmView(remindInfo) {
		var remindTaskHandler = remindInfo.taskHandler;
		
		// 真正盛放内容的容器
		var dialog_remind_confirm_inner_div = document.createElement("div");
		dialog_remind_confirm_inner_div.className = "css_dialog_remind_inner main_list_inner";

		for (var i = 0; i < 2; i++) {
			var itemDiv = createRemindConfirmItemView(remindTaskHandler, i, remindInfo.array[i]);
			dialog_remind_confirm_inner_div.appendChild(itemDiv);
			if (i == 0) {
				itemDiv.className += " sub_list_divider2";
			}
		}
		
		var outDiv = document.createElement("div");
		outDiv.style.backgroundColor ="#FFFFFF";
		outDiv.style.borderRadius = "8px";
		
		outDiv.appendChild(dialog_remind_confirm_inner_div);
		
		//添加外壳
	    var outDivBox = createBoxDiv(remindTaskHandler, outDiv);
		document.body.appendChild(outDivBox);

		//点击事件
		var isMove = false;
		dialog_remind_confirm_inner_div.addEventListener("touchstart", function(e) {
			isMove = false;
			var target = e.target;
			target.style.backgroundColor = "#BCD5EF";
		}, false);
		dialog_remind_confirm_inner_div.addEventListener("touchmove", function(e) {
			isMove = true;
			var target = e.target;
			target.style.backgroundColor = "";
		}, false);
		dialog_remind_confirm_inner_div.addEventListener("touchend", function(e) {
			var target = e.target;
			target.style.backgroundColor = "";
			if(!isMove){
				var id = target.id;
				var length = id.length;
				var index = id.substring(length - 1, length);
                document.body.removeChild(outDivBox);
				exec(remindTaskHandler, 'clickItem', [index]);
			}
		}, false);

		currentCanDeleteView = outDivBox;
		return outDivBox;
	}
	function createRemindConfirmItemView(remindTaskHandler, index, text) {
		var itemDiv = document.createElement("div");
		itemDiv.className = "css_dialog_remind_confirm_item_div main_list_item";
		itemDiv.id = remindTaskHandler + index;
		itemDiv.innerText = text;

		return itemDiv;
	}
	return createRemindConfirmView;
});