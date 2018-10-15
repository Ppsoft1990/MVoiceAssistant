
/***
 *智能家居发现的设备列表
 */
define(function() {
    function createSmartHomeDevicesView(devicesList) {
        var resultDiv;
        if(!isEmpty(devicesList)) {
            resultDiv = createDevicesListView();
        } else {
            resultDiv = createNoDeviceFoundView();
        }
        document.body.innerHTML = "";
        document.body.appendChild(resultDiv);
    }
    
    function createDevicesListView() {
        
    }
    
    function createNoDeviceFoundView() {
        //最外面的包装结果
        var noDeviceResultView = document.createElement("div");
        
        //错误提示图片
        var noDevicePic = document.createElement("img");
        noDevicePic.src= smart_home_device_not_found_pic;
        noDevicePic.className="css_smart_home_device_not_found_pic";
        noDeviceResultView.appendChild(noDevicePic);
        
        //错误提示文字
        var noDeviceTip = document.createElement("div");
        noDeviceTip.innerText= "抱歉，未检测到硬件设备";
        noDeviceTip.className="css_smart_home_device_not_found_tip";
        noDeviceResultView.appendChild(noDeviceTip);
        
        //支持设备按钮文件
        var supportDeviceButton = document.createElement("div");
        supportDeviceButton.innerText= "查看支持的设备列表>";
        supportDeviceButton.className="css_smart_home_support_list_btn";
        noDeviceResultView.appendChild(supportDeviceButton);
        addSupportDeviceBtnEventListener(supportDeviceButton);
        
        console.log("createNoDeviceFoundView()---->done");
        return noDeviceResultView;
    }
    
    function addSupportDeviceBtnEventListener(supportDeviceButton) {
        var targetElement = null;
        supportDeviceButton.addEventListener("touchstart", function() {
            event.stopPropagation();
            targetElement = supportDeviceButton;
            moveOverCheck.start(event);
            targetElement.style.backgroundColor = "#e5e5e5";
        }, false);
        supportDeviceButton.addEventListener("touchmove", function() {
            event.stopPropagation();
            if (targetElement) {
                targetElement.style.background = "";
                if (moveOverCheck.check(event)) {
                    targetElement = null;
                }
            }
        }, false);
        supportDeviceButton.addEventListener("touchend", function() {
            event.stopPropagation();
            if (targetElement) {
                document.body.appendChild(createLXSupportDevicesList());
                console.log("supportDeviceButton is clicked");
            }
            targetElement = null;
        }, false);
    }
    
    function createLXSupportDevicesList() {
        //最外面的包装结果
        var lxSupportDeviceDiv = document.createElement("div");
        
        //灵犀支持的语音控制设备列表
        var lxSupportTitle = document.createElement("div");
        lxSupportTitle.innerText= "灵犀支持的语音控制设备列表";
        lxSupportTitle.className="css_smart_home_support_list_title";
        lxSupportDeviceDiv.appendChild(lxSupportTitle);
        
        //支持的设备设备列表
        var supportDeviceList = document.createElement("div");
        supportDeviceList.innerText= "查看支持的设备列表>";
        supportDeviceList.className="css_smart_home_support_device_list";
        supportDeviceList.appendChild(createSupportDeviceItem("XXXX1设备"));
        supportDeviceList.appendChild(createSupportDeviceItem("XXXX2设备"));
        supportDeviceList.appendChild(createSupportDeviceItem("XXXX3设备"));
        supportDeviceList.appendChild(createSupportDeviceItem("XXXX4设备"));
        lxSupportDeviceDiv.appendChild(supportDeviceButton);
        
        console.log("createLXSupportDevicesList()---->done");
        return lxSupportDeviceDiv;
    }
    
    function createSupportDeviceItem(deviceName) {
        //最外面的包装结果
        var lxSupportDeviceItem = document.createElement("div");
        
        //支持的设备图片
        var itemPic = document.createElement("img");
        itemPic.src= smart_home_device_not_found_pic;
        itemPic.className="smart_home_support_device_item_pic";
        lxSupportDeviceItem.appendChild(itemPic);
        
        //支持的设备名称
        var itemName = document.createElement("div");
        itemName.innerText= deviceName;
        itemName.className="css_smart_home_support_list_item_name";
        lxSupportDeviceItem.appendChild(itemName);
        
        console.log("createSupportDeviceItem()---->done deviceName: " + deviceName);
        return lxSupportDeviceItem;
    }
    
    function isEmpty(list) {
        return undefined == list 
               || null == list 
               || 0 == list.length;
    }
    return createSmartHomeDevicesView;
});

