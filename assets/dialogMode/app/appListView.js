/**********应用列表View*********/
define(function() {

	function createListItem(appName, packageName, appClassName, appIcon) {
		var appImage = document.createElement("img");
		appImage.className = "css_dialog_list_appimg";
		appImage.src = appIcon;

		var applicationName = document.createElement("div");
		applicationName.className = "css_dialog_list_appname";
		applicationName.innerText = appName;

		var listItemDiv = document.createElement("div");
		listItemDiv.className = "css_dialog_list_item";
		listItemDiv.appendChild(appImage);
		listItemDiv.appendChild(applicationName);
		
		listItemDiv.appName = appName;
		listItemDiv.packageName = packageName;
		listItemDiv.appClassName = appClassName;
		return listItemDiv;
	}

	function createAppListView(listInfo) {
		console.log("createAppListView() is called");
		var targetItem = null;
		
		var outDiv = document.createElement("div");
		outDiv.className = "box_content_white";
		 
		var innerDiv = document.createElement("div");
		innerDiv.className = "main_list_inner";

		for (var i = 0, j = 1; i < listInfo.length; i++, j++) {
			console.log(listInfo[i].appName);
			var iconUrl = channel_appOpen_icon;
			if(listInfo[i].appIcon){
				iconUrl = listInfo[i].appIcon;
			}
			//var appListItem = createListItem(listInfo[i].appName, listInfo[i].packageName,listInfo[i].appIcon);
			var appListItem = createListItem(listInfo[i].appName, listInfo[i].packageName, listInfo[i].className, iconUrl);
			if (j < listInfo.length) {
				appListItem.className += " sub_list_divider2 main_list_item";
			}
			innerDiv.appendChild(appListItem);
		}
		
		outDiv.appendChild(innerDiv);
		//添加外壳
        var outDivBox = createBoxDiv("", outDiv);
		
		document.body.appendChild(outDivBox); //使用新框架代码
		
		//每一个条目的点击事件
		innerDiv.addEventListener("touchstart", function() {
			event.stopPropagation();
			targetItem = getParentOfClass("css_dialog_list_item", event.target);
			moveOverCheck.start(event);
			if (targetItem) {
				targetItem.style.backgroundColor = "#e5e5e5";
			}
		}, false);

		innerDiv.addEventListener("touchmove", function() {
			event.stopPropagation();
			if(targetItem){
				targetItem.style.backgroundColor = "";
				if (moveOverCheck.check(event)) {
					targetItem = null;
				}
			}
		}, false);

		innerDiv.addEventListener("touchend", function() {
			event.stopPropagation();
			if (targetItem) {
				targetItem.style.backgroundColor = "";
				console.log("openApp param: " + targetItem.appName
				    + "," + targetItem.packageName + "," + targetItem.appClassName);
				setTimeout(function() {
					exec("AppComponents", 'openApp', [targetItem.appName, targetItem.packageName, targetItem.appClassName]);
				}, 50);
			}
		}, false);


		return outDivBox;
	}
	function creatAppView(listJson){
		console.log("listJson = " + listJson.toString());
		var listInfo = listJson.items;
		createAppListView(listInfo);
	}	
	return createAppListView;
});