/**
 * 联系人列表视图
 * 
 */
define(function() {
	function createNewContactList(contactInfo) {
		if (currentCanDeleteView) {
			removeCurrentCanDeleteView();
			console.log("removeCurrentCanDeleteView");
		}
		var contactNameList = contactInfo.contactNameList;
		var contactLength = contactNameList.length;
		var taskHandler = contactInfo.taskHandler;
		var focusType = contactInfo.focusType;

		var outDiv = document.createElement("div");
		outDiv.className = "box_content_white";

		var list_inner = document.createElement("div");
		list_inner.className = "tel_and_sms_see_more_container";
		
		var leftItem = document.createElement("div");
		leftItem.className = "recommended_left";
		var leftHint = document.createElement("div");
		leftHint.className = "recommended_hint";
		leftHint.innerText = contactNameList[0];
		leftItem.appendChild(leftHint);
		
		var middleItem = document.createElement("div");
		middleItem.className = "recommended_middle";
		var middleHint = document.createElement("div");
		middleHint.className = "recommended_hint";
		middleHint.innerText = contactNameList[1];
		middleItem.appendChild(middleHint);
		
		var rightItem = document.createElement("div");
		rightItem.className = "recommended_right";
		var rightHint = document.createElement("div");
		rightHint.className = "recommended_hint";
		rightHint.innerText = contactNameList[2];
		rightItem.appendChild(rightHint);
		
		list_inner.appendChild(leftItem);
		list_inner.appendChild(middleItem);
		list_inner.appendChild(rightItem);
		outDiv.appendChild(list_inner);

		//添加外壳
        var outDivBox = createBoxDiv("", outDiv);
		curPage.appendChild(outDivBox);
		currentCanDeleteView = outDivBox;
		
		var maxHeight = leftHint.clientHeight;
		if(maxHeight < middleHint.clientHeight){
			maxHeight = middleHint.clientHeight;
		}
		if(maxHeight < rightHint.clientHeight){
			maxHeight = rightHint.clientHeight;
		}
		if(maxHeight > leftHint.clientHeight){
			leftHint.style.paddingTop = 24*scale + "px";
			leftHint.style.paddingBottom = 24*scale + "px";
		}
		if(maxHeight > middleHint.clientHeight){
			middleHint.style.paddingTop = 24*scale + "px";
			middleHint.style.paddingBottom = 24*scale + "px";
		}
		if(maxHeight > rightHint.clientHeight){
			rightHint.style.paddingTop = 24*scale + "px";
			rightHint.style.paddingBottom = 24*scale + "px";
		}
		console.log("width is : " + leftItem.clientWidth);
		var isMoved = false;
		leftItem.addEventListener("touchstart", function() {
			event.stopPropagation();
			leftItem.style.backgroundColor = "#e5e5e5";
			isMoved = false;
		}, false);

		leftItem.addEventListener("touchmove", function() {
			event.stopPropagation();
			isMoved = true;
			leftItem.style.backgroundColor = "";
		}, false);

		leftItem.addEventListener("touchend", function() {
			event.stopPropagation();
			leftItem.style.backgroundColor = "";
			if (!isMoved) {
				exec(taskHandler, 'contactItemClick', ['0']);
			}
			isMoved = false;
		}, false);
		
		middleItem.addEventListener("touchstart", function() {
			event.stopPropagation();
			middleItem.style.backgroundColor = "#e5e5e5";
			isMoved = false;
		}, false);

		middleItem.addEventListener("touchmove", function() {
			event.stopPropagation();
			isMoved = true;
			middleItem.style.backgroundColor = "";
		}, false);

		middleItem.addEventListener("touchend", function() {
			event.stopPropagation();
			middleItem.style.backgroundColor = "";
			if (!isMoved) {
				exec(taskHandler, 'contactItemClick', ['1']);
			}
			isMoved = false;
		}, false);
		
		rightItem.addEventListener("touchstart", function() {
			event.stopPropagation();
			rightItem.style.backgroundColor = "#e5e5e5";
			isMoved = false;
		}, false);

		rightItem.addEventListener("touchmove", function() {
			event.stopPropagation();
			isMoved = true;
			rightItem.style.backgroundColor = "";
		}, false);

		rightItem.addEventListener("touchend", function() {
			event.stopPropagation();
			rightItem.style.backgroundColor = "";
			if (!isMoved) {
				exec(taskHandler, 'contactItemClick', ['2']);
			}
			isMoved = false;
		}, false);
		return outDivBox;
	}

	return createNewContactList;
});