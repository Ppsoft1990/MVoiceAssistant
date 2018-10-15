/**
 * 新建联系人视图
 *
 * @author fpliu@iflytek.com
 * @author modified by mdhuang 2013-11-11 修改内容：canvas替代
 */
define(function() {
	var isContactNameEmpty = false;
	var isPhoneNumberEmpty = true;
	var contactNumberID = -1;
	var contactName = "";
	var contactNumberList = [];
	var saveButton;
	var currentFocus;
	var button;
	var isKeyboardOpen;
	var bottom = 0;

	function createContactCreateView(contactInfo) {
		var taskHandler = contactInfo.taskHandler;
		removeCurrentCanDeleteView();
		contactName = contactInfo.contactName;
		contactNumberList = contactInfo.contactNumberList;

		if (contactName == "") {
			isContactNameEmpty = true;
		} else {
			isContactNameEmpty = false;
		}
		console.log("isContactNameEmpty is " + isContactNameEmpty);
		if(contactNumberList.length == 1){
			if(contactNumberList[0] == "") {
				isPhoneNumberEmpty = true;
			} else {
				isPhoneNumberEmpty = false;
			}
		} else {
			for(var index = 0; index < contactNumberList.length ; index++){
				if(contactNumberList[index] == "") {
					isPhoneNumberEmpty = isPhoneNumberEmpty & true;
				} else {
					isPhoneNumberEmpty = isPhoneNumberEmpty & false;
				}
				if(!isPhoneNumberEmpty){
					break;
				}
			}
		}

		console.log("isPhoneNumberEmpty is " + isPhoneNumberEmpty);
		var container = document.createElement("div");
		container.id = taskHandler;

		// 真正的盛放内容的容器
		var inner_div = document.createElement("div");
		inner_div.className = "box_content_white";

		var title = document.createElement("div");
		title.className = "create_contact_title_item";
		title.innerText = "新建联系人";
		inner_div.appendChild(title);
		// 联系人姓名:容器
		var contactNameContainer = createContactCreateItem(taskHandler, taskHandler + "contactName", "姓名:", contactName, "text");
		
		contactNameContainer.className += " sub_list_divider";
		inner_div.appendChild(contactNameContainer);

		var numberListContainer = document.createElement("div");
		numberListContainer.id = "numberListContainer";
		// 联系人号码:容器
		for (var i = 0; i < contactNumberList.length; i++) {
			var contactNumberContainer = createContactCreateItem(taskHandler, taskHandler + "contactNumber" + i, "电话号码:", contactNumberList[i], "tel" , i);
			contactNumberContainer.className += " sub_list_divider";
			numberListContainer.appendChild(contactNumberContainer);
		}
		contactNumberID = contactNumberList.length;
		if (contactNumberList.length == 0) {
			var contactNumberContainer = createContactCreateItem(taskHandler, taskHandler + "contactNumber" + 0, "电话号码:", "", "tel" , 0);
			contactNumberContainer.className += " sub_list_divider";
			numberListContainer.appendChild(contactNumberContainer);
			contactNumberID = 1;
		}
		inner_div.appendChild(numberListContainer);

		var addNumberItem = document.createElement("div");
		addNumberItem.className = "add_number_item";
		addNumberItem.className += " sub_list_divider";
		addNumberItem.innerText = "点击添加号码";
		inner_div.appendChild(addNumberItem);

		var isMoved = false;
		addNumberItem.addEventListener("touchstart", function() {
			event.stopPropagation();
			//模拟弹框操作，为了使input获取焦点可以弹出键盘
        	exec("WidgetMMPContainerComponents","showMockDialog", []);
            console.log('addNumberItem touchstart');

			addNumberItem.style.backgroundColor = "#e5e5e5";
			isMoved = false;
		}, false);

		addNumberItem.addEventListener("touchmove", function() {
			event.stopPropagation();
			addNumberItem.style.backgroundColor = "";
			isMoved = true;
		}, false);

		addNumberItem.addEventListener("touchend", function() {
			event.stopPropagation();
			// if(bottom == 0){
				// bottom = window.innerHeight - currentCanDeleteView.clientHeight;
				// console.log("bottom is : " + bottom);
			// }
			addNumberItem.style.backgroundColor = "";
			if (!isMoved) {
				var length = contactNumberList.length;
				console.log("contactNumberList is " + contactNumberList);
				console.log("contactNumberList.length is " + contactNumberList.length);
				contactNumberList[length] = "";
				var contactNumberContainer = createContactCreateItem(taskHandler, taskHandler + "contactNumber" + contactNumberID, "电话号码:", "", "tel" , contactNumberID);
				contactNumberContainer.className += " sub_list_divider";
				numberListContainer.appendChild(contactNumberContainer);
				contactNumberID += 1;
				document.getElementsByClassName("css_dialog_contact_create_item_editText_container_left")[0].style.width = 80 + "%";
				document.getElementsByClassName("contact_item_right")[0].style.display = "inline-block";
				var list = document.getElementsByClassName("css_dialog_contact_create_item_editText2");
				setTimeout(function(){
					console.log("list[list.length - 1] top is : " + (currentCanDeleteView.offsetTop + currentCanDeleteView.clientHeight));
					
					var scrollDis = currentCanDeleteView.offsetTop + currentCanDeleteView.clientHeight;
					console.log("scroll distance 1 : " + (scrollDis - bottom));
					scrollTo(0, (scrollDis - bottom));
					// list[list.length - 1].click();
					list[list.length - 1].focus();
					var robotiumTest_evtStart = document.createEvent('HTMLEvents');
      				robotiumTest_evtStart.initEvent('touchstart' , true , false);
      				var robotiumTest_evtend = document.createEvent('HTMLEvents');
      				robotiumTest_evtend.initEvent('touchend' , true , false);
					list[list.length - 1].dispatchEvent(robotiumTest_evtStart);
					list[list.length - 1].dispatchEvent(robotiumTest_evtend);
				},350);
			}
		}, false);

		// 按钮容器
		var buttonContainer = document.createElement("div");
		buttonContainer.className = "css_dilaog_out_div";

		var buttonTextContainer = document.createElement("div");
		buttonTextContainer.className = "css_dialog_bottom_btntext_div";
		buttonTextContainer.style.height = dialog_remind_btn_canvas_height + "px";
		buttonTextContainer.style.lineHeight = dialog_remind_btn_canvas_height + "px";

		// 取消按钮
		var cancelButton = document.createElement("div");
		cancelButton.className = "box_content_white";

		var btnLeftText = document.createElement("div");
		btnLeftText.innerText = "取消";
		cancelButton.appendChild(btnLeftText);

		// 保存按钮
		saveButton = document.createElement("div");
		saveButton.id = taskHandler + "SaveButton";
		saveButton.className = "box_content_white";

		var btnRightText = document.createElement("div");
		btnRightText.innerText = "保存";
		saveButton.appendChild(btnRightText);

		// 给按钮添加外壳
		var cancelButtonBox = createBoxDiv("", cancelButton);
		cancelButtonBox.style.margin = "0px";
		cancelButtonBox.style.display = "inline-block";
		cancelButtonBox.style.width = "49%";

		var saveButtonBox = createBoxDiv("", saveButton);
		saveButtonBox.style.margin = "0px";
		saveButtonBox.style.display = "inline-block";
		saveButtonBox.style.width = "49%";

		var middleDiv = document.createElement("div");
		middleDiv.style.width = "1%";
		middleDiv.style.display = "inline-block";

		buttonTextContainer.appendChild(cancelButtonBox);
		buttonTextContainer.appendChild(middleDiv);
		buttonTextContainer.appendChild(saveButtonBox);

		buttonContainer.appendChild(buttonTextContainer);

		//添加外壳
		var inner_divBox = createBoxDiv("", inner_div);
		container.appendChild(inner_divBox);
		container.appendChild(buttonContainer);

		curPage.appendChild(container);

		currentCanDeleteView = container;

		// 姓名:和号码:同时为空时才不可点击
		if (isContactNameEmpty && isPhoneNumberEmpty) {
			saveButton.style.color = "#a3a3a3";
		} else {
			saveButton.style.color = "#515151";
		}

		// 取消按钮事件监听
		var targetElement = null;
		cancelButton.addEventListener("touchstart", function() {
			targetElement = cancelButton;
			if (targetElement) {
				targetElement.style.backgroundColor = "#e5e5e5";
			}
		}, false);
		cancelButton.addEventListener("touchmove", function() {
			if (targetElement) {
				targetElement.style.backgroundColor = "white";
				if (moveOverCheck.check(event)) {
					targetElement = null;
				}
			}
		}, false);
		cancelButton.addEventListener("touchend", function() {
			if (targetElement) {
				targetElement.style.backgroundColor = "white";
				removeChild(curPage, container);
				// 调用java函数执行取消操作
				exec(taskHandler, 'contactCancel', []);
			}
			targetElement = null;
		}, false);

		// 保存按钮事件监听
		var targetSave = null;
		saveButton.addEventListener("touchstart", function() {
			// 只有不为空才有按下效果
			if (isContactNameEmpty != true || isPhoneNumberEmpty != true) {
				targetSave = saveButton;
				if (targetSave) {
					targetSave.style.backgroundColor = "#e5e5e5";
				}
			}
		}, false);
		saveButton.addEventListener("touchmove", function() {
			// 只有不为空才有按下效果
			if (isContactNameEmpty != true || isPhoneNumberEmpty != true) {
				if (targetSave) {
					targetSave.style.backgroundColor = "white";
					if (moveOverCheck.check(event)) {
						targetSave = null;
					}
				}
			}
		}, false);
		saveButton.addEventListener("touchend", function() {
			console.log("---------->>> isContactNameEmpty:" + isContactNameEmpty + " ,isPhoneNumberEmpty:" + isPhoneNumberEmpty);
			if (isContactNameEmpty != true || isPhoneNumberEmpty != true) {
				if (targetSave) {
					targetSave.style.backgroundColor = "white";

					var contactNameText = document.getElementById(taskHandler + "contactName").value;
					var contactNumbersArray = [];
					var numberContainerList = document.getElementsByClassName("css_dialog_contact_create_item_editText2");
					for (var i = 0; i < numberContainerList.length; i++) {
						contactNumbersArray[i] = numberContainerList[i].value;
					}
					// 操作完成后将自己销毁
					removeChild(curPage, container);
					// 调用java函数执行保存操作
					exec(taskHandler, 'contactSave', [contactNameText, contactNumbersArray]);
				}
				targetSave = null;
			}
		}, false);
		if(bottom == 0){
			bottom = window.innerHeight - currentCanDeleteView.clientHeight;
			console.log("bottom is : " + bottom);
		}
		return container;
	}

	/**
	 * 联系人创建前两个条目
	 */
	function createContactCreateItem(taskHandler, editTextId, labelText, editText, inputType , index) {
		var container = document.createElement("div");
		container.className = "css_dialog_contact_create_item";

		var editTextContainer = document.createElement("div");
		if (inputType == "tel") {
			editTextContainer.className = "css_dialog_contact_create_item_editText_container_left";
		} else {
			editTextContainer.className = "css_dialog_contact_create_item_editText_container";
		}

		// 创建文本框
		var editTextWidget = document.createElement("input");
		editTextWidget.id = editTextId;
		console.log("The textID is :" + editTextId);
		editTextWidget.type = inputType;
		editTextWidget.maxLength = 30;
		editTextWidget.value = editText;
		editTextWidget.style.color = '#515151';
		editTextWidget.style.border = "none";
		if (labelText == "姓名:") {
			editTextWidget.className = "css_dialog_contact_create_item_editText";
		} else {
			editTextWidget.className = "css_dialog_contact_create_item_editText2";
		}

		var reduceContainer = document.createElement("div");
		reduceContainer.className = "contact_item_right";
		var reduceBtn = document.createElement("img");
		reduceBtn.className = "contact_number_reduce";
		reduceBtn.src = btn_contact_reduce_nor;
		reduceContainer.appendChild(reduceBtn);
		if (inputType == "tel" && contactNumberList.length == 1 && contactNumberList[0] == "") {
			reduceContainer.style.display = "none";
			editTextContainer.style.width = 100 + "%";
		}
		var isMoved = false;
		reduceContainer.addEventListener("touchstart",function(){
			reduceBtn.src = btn_contact_reduce_press;
	    },false);
	    reduceContainer.addEventListener("touchmove",function(){
			reduceBtn.src = btn_contact_reduce_nor;
	    	isMoved = true;
	    },false);
	    reduceContainer.addEventListener("touchend",function(){
			reduceBtn.src = btn_contact_reduce_nor;
	    	if(!isMoved){
			    var numberContainerList = document.getElementsByClassName("css_dialog_contact_create_item_editText2");
			    if(numberContainerList.length > 1) {
					var numberListContainer = document.getElementById("numberListContainer");
					numberListContainer.removeChild(container);
				    contactNumberList = [];
				    numberContainerList = document.getElementsByClassName("css_dialog_contact_create_item_editText2");
					for (var i = 0; i < numberContainerList.length; i++) {
						contactNumberList[i] = numberContainerList[i].value;
					}
				} else {
					numberContainerList[0].value = "";
				    contactNumberList = [""];
				}
				
				isPhoneNumberEmpty = true;
				
				for(var index = 0; index < contactNumberList.length ; index++){
					console.log("contactNumberList[index] is :" + contactNumberList[index] );
					if(contactNumberList[index] == "") {
						isPhoneNumberEmpty = isPhoneNumberEmpty & true;
					} else {
						isPhoneNumberEmpty = isPhoneNumberEmpty & false;
					}
					if(!isPhoneNumberEmpty){
						break;
					}
				}
				
				if(isPhoneNumberEmpty && contactNumberList.length == 1) {
					document.getElementsByClassName("css_dialog_contact_create_item_editText_container_left")[0].style.width = 100 + "%";
					document.getElementsByClassName("contact_item_right")[0].style.display = "none";
				}
				console.log("---------->>> isContactNameEmpty:" + isContactNameEmpty + " ,isPhoneNumberEmpty:" + isPhoneNumberEmpty);
		
				if (isContactNameEmpty && isPhoneNumberEmpty) {
					saveButton.style.color = "#a3a3a3";
				} else {
					saveButton.style.color = "#515151";
				}
	    	}
	    	isMoved = false;
	    },false);
		
		editTextWidget.setAttribute("placeholder", labelText);
		var valueBefore = "";
		editTextWidget.addEventListener("input" , function(){
			console.log("isInputing");
			if(inputType == "tel"){
				var regExp = /^[\+0-9]*$/;
				if(!regExp.test(editTextWidget.value)){
					editTextWidget.value = valueBefore;
				}
				valueBefore = editTextWidget.value;
			}
			onContactUpdate();
		});
		
		editTextWidget.addEventListener("click" , function(){
			editTextWidget.value = editTextWidget.value;
			currentFocus = editTextWidget;
			exec("UIComponents","showMockDialog", []);
		});
		
		editTextWidget.addEventListener("focus" , function(){
			console.log("Open keyboard");
			isKeyboardOpen = true;
		});
		editTextWidget.addEventListener("blur" , function(){
			console.log("Close keyboard");
			isKeyboardOpen = false;
		});
		
		editTextContainer.appendChild(editTextWidget);
		container.appendChild(editTextContainer);
		var hintText = "姓名:";
		if (inputType == "tel") {
			hintText = "电话号码:";
			container.appendChild(reduceContainer);
		}
		return container;
	}
	
	function onContactUpdate() {
		
		var nameContainer = document.getElementsByClassName("css_dialog_contact_create_item_editText");
		console.log("nameContainer[0].value is " + nameContainer[0].value);
		if (nameContainer[0].value == "") {
			isContactNameEmpty = true;
		} else {
			isContactNameEmpty = false;
		}
		
		var numberContainerList = document.getElementsByClassName("css_dialog_contact_create_item_editText2");
		isPhoneNumberEmpty = true;
		if(numberContainerList.length > 1) {
			for(var index = 0; index < numberContainerList.length ; index++){
				console.log("numberContainerList[index] is " + numberContainerList[index]);
				if(numberContainerList[index].value == "") {
					isPhoneNumberEmpty = isPhoneNumberEmpty & true;
				} else {
					isPhoneNumberEmpty = isPhoneNumberEmpty & false;
				}
				if(!isPhoneNumberEmpty){
					break;
				}
			}
		} else {
			if (numberContainerList[0].value == "") {
				isPhoneNumberEmpty = true;
				document.getElementsByClassName("css_dialog_contact_create_item_editText_container_left")[0].style.width = 100 + "%";
				document.getElementsByClassName("contact_item_right")[0].style.display = "none";
			} else {
				isPhoneNumberEmpty = false;
				document.getElementsByClassName("css_dialog_contact_create_item_editText_container_left")[0].style.width = 80 + "%";
				document.getElementsByClassName("contact_item_right")[0].style.display = "inline-block";
			}
		}

		if (isContactNameEmpty && isPhoneNumberEmpty) {
			saveButton.style.color = "#a3a3a3";
		} else {
			saveButton.style.color = "#515151";
		}
		
	}
	
	function onContactSave(taskHandler, contactNameValue, contactNumbers){
		// 操作完成后将自己销毁
		removeCurrentCanDeleteView();
		// 调用java函数执行保存操作
		exec(taskHandler, 'contactSave', [contactNameValue, JSON.parse(contactNumbers)]);
	}

	function clearInputFocus(){
		if(currentFocus){
			currentFocus.blur();
			currentFocus = null;
		}
	}


	window.contactCreateView = window.contactCreateView || {};
	// contactCreateView.onContactUpdate = onContactUpdate;
	contactCreateView.onContactSave = onContactSave;
	contactCreateView.clearInputFocus = clearInputFocus;

	return createContactCreateView;
}); 