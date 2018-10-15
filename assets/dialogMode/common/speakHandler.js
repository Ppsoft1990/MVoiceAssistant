define(function() {
    /**
     * 标志播报的状态
     * 0: 停止中
     * 1: 暂停中
     * 2: 播报中
     */
    var speakStatus=0;
    // 播报内容
    var speechText = null;
    
    //需要监听按钮点击事件
    exec("LxBrowserComponents", "isEventCallBackForJS", [true]);
    
    /**
     * 设置播报内容
     */
    function setSpeechText(text) {
        speechText = text;
    }
    
    /**
     * 显示播报按钮 
     */
    function showSpeakButton() {
        //显示播报按钮
        exec("LxBrowserComponents", "showSpeakButton", [true]);
    }
    
    /**
     * 开始播报 
     */
    function speak(delayTime) {
        if (!speechText) {
            console.log("speech text is invalidate, please check");
            return;
        }
        if (!delayTime || typeof delayTime != "number" || !isFinite(delayTime) || delayTime < 50) {
            delayTime = 50;
        }
        
        setTimeout(function() {
            var ttsSwitcher = exec("SystemComponents", "isSpeechDialogMode", []);
            var isOpen = getResultMessage(ttsSwitcher);
            if (isOpen) {
                exec("SynthesizeComponents", "ttsSpeak", [speechText]);
            }
        }, delayTime);
    }
    
    function onTtsPlayBegin() {
        console.log("speakHandler, onTtsPlayBegin");
        speakStatus = 2;
    }
    
    function onTtsPlayComplete(errorCode) {
        console.log("speakHandler, onTtsPlayComplete");
        speakStatus = 0;
    }
    
    function onTtsInterrupt() {
        console.log("speakHandler, onTtsInterrupt");
        speakStatus = 0;
    }
    
    function onTtsResume() {
        console.log("speakHandler, onTtsResume");
        speakStatus = 2;
    }
    
    function onTtsPause() {
        console.log("speakHandler, onTtsPause");
        speakStatus = 1;
    }
    
    /** 播报按钮点击回调*/
    function onPlayButtonClick() {
        console.log("speakHandler, onPlayButtonClick");
        if (speakStatus == 0) {
            if (speechText) {
                //开始播报
                exec("SynthesizeComponents", "ttsSpeak", [speechText]);
            }
        } else if (speakStatus == 1) {
            exec("SynthesizeComponents", "ttsResume", []);
        } else if (speakStatus == 2) {
            exec("SynthesizeComponents", "ttsStop", []);
        }
    }
    
    /**点击home键的回调*/
    function onActivityStop() {
        console.log("speakHandler, onActivityStop");
        exec("SynthesizeComponents", "ttsStop", []);
    }
    
    function onPageDestroy() {
        console.log("speakHandler, onPageDestroy");
        exec("SynthesizeComponents", "ttsStop", []);
    }
    
    window.onPlayButtonClick = onPlayButtonClick;
    window.onTtsPause = onTtsPause;
    window.onTtsResume = onTtsResume;
    window.onTtsInterrupt = onTtsInterrupt;
    window.onTtsPlayComplete = onTtsPlayComplete;
    window.onTtsPlayBegin = onTtsPlayBegin;
    window.onActivityStop = onActivityStop;
    window.onPageDestroy = onPageDestroy;
    
    //export
    var speakHandler = {};
    speakHandler.showSpeakButton = showSpeakButton;
    speakHandler.setSpeechText = setSpeechText;
    speakHandler.speak = speak;
    return speakHandler;
});