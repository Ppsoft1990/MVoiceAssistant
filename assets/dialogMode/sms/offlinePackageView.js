/**
 *	短信下载离线包 气泡
 * 
 * @author huizhong 2013-9-4
 * @author modified by mdhuang 2013-11-11 修改内容：canvas替代
 * */

define(function(itemInfo){
	var offlineView;
	function addOfflineView(itemInfo){
		// if(currentCanDeleteView){
			// removeCurrentCanDeleteView();
		// }
		return createOfflinePackageDownloadView(itemInfo);
	}
	
	function createOfflinePackageDownloadView(itemInfo){
		console.log(itemInfo.taskHandler);
		var isDownloaded = false;
		
		var outDiv = document.createElement("div");
		outDiv.className = "box_content_white";

		var list_inner = document.createElement("div");
		list_inner.className = "tel_his_inner";
		
		var item = document.createElement("div");
	    item.className = "offline_item";
		
		var left = document.createElement("div");
	    left.className = "sub_tel_item_left";
	    var right = document.createElement("div");
	    right.className = "sub_tel_item_right";
	    
	    var firstLine = document.createElement("div");
	    firstLine.className = "offline_content_up";
	    firstLine.innerText = "点击安装离线短信听写包";
	    
	    var secondLine = document.createElement("div");
	    secondLine.className = "offline_content_down";
	    secondLine.innerText = "无网络时也能语音输入短信内容";
	    
	    left.appendChild(firstLine);
	    left.appendChild(secondLine);
	    
	    var downBtn = document.createElement("img");
		downBtn.className = "offline_icon";
		downBtn.src = btn_download_nor;
		
		right.appendChild(downBtn);
	    
	    item.appendChild(left);
	    item.appendChild(right);
	    
	    list_inner.appendChild(item);
	    
	    outDiv.appendChild(list_inner);
	    
	    outDiv.refresh = function(){
	    	firstLine.innerText = "无网络资源包安装成功";
	    	downBtn.style.opacity = 0.0;
			isDownloaded = true;
	    };
	    
	    //添加外壳
        var outDivBox = createBoxDiv(itemInfo.taskHandler, outDiv);
	    curPage.appendChild(outDivBox);
	    
		var isMove = false;
	    list_inner.addEventListener("touchstart",function(){
	    	event.stopPropagation();
	    	if(isDownloaded){
	    		return;
	    	}
	    	downBtn.src = btn_download_press;
			isMove = false;
	    	//outDiv.style.backgroundColor = "#e5e5e5";
	    },false);
	    list_inner.addEventListener("touchmove",function(){
	    	event.stopPropagation();
	    	if(isDownloaded){
	    		return;
	    	}
	    	if (moveOverCheck.check(event)) {
				isMove = true;
				downBtn.src = btn_download_nor;
	    		//outDiv.style.backgroundColor = "white";
			}
	    },false);
	    list_inner.addEventListener("touchend",function(){
	    	event.stopPropagation();
	    	if(isDownloaded){
	    		return;
	    	}
	    	if (isMove == false) {
		    	downBtn.src = btn_download_nor;
		    	//outDiv.style.backgroundColor = "white";
		    	exec(itemInfo.taskHandler,'download',[]);
			}
			isMove = false;
	    },false);
	    
		downloadView = outDivBox;
        return outDivBox;
    }
	
    var refreshDownloadView = function(){
    	if(downloadView){
    		downloadView.refresh();
    	}
    };
    
    // 将需要java回调的函数暴露到全局对象中，方便外部java文件调用
	window.latestSloth = window.latestSloth || {};
	latestSloth.refreshDownloadView = refreshDownloadView;
	return addOfflineView;
	
});
