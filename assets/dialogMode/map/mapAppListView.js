/**********地图应用列表View*********/
/**
 *@author yongcao 2015-2-6 
 */
define(function() {
    var data = null;
    var operation = null;
    var url = null;
    var Operation = {
        locate: "locate",
        route: "route"
    };

    function createListItem(itemInfo, appIcon) {
        var appName = itemInfo.appName;
        
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
        
        listItemDiv.appItemInfo = itemInfo;
        
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
            var appListItem = createListItem(listInfo[i], iconUrl);
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
                console.log("openApp param: operation is " + operation + ", data is " + JSON.stringify(data));
                //打开地图app进行处理
                var isSuccess = getResultMessage(exec("AppComponents", "openMapApp", [operation, targetItem.appItemInfo, data]));
                if (!isSuccess && url) {
                    exec('UIComponents', 'openBrowser', ["地图", url]);
                }
            }
        }, false);


        return outDivBox;
    }
    function creatAppView(listJson){
        console.log("listJson = " + listJson.toString());
        var listInfo = listJson.mapAppInfo;
        data = listJson.data;
        operation = listJson.operation;
        url = listJson.url;
        createAppListView(listInfo);
    }   
    return creatAppView;
});