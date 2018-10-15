define(function() {
    /**
     * 标志播报的状态
     * 0: 停止中
     * 1: 暂停中
     * 2: 播报中
     */
    var speakStatus=0;
    
    var mStockInfo;
    
    function speak(stockInfo) {
        mStockInfo = stockInfo;
        if (!stockInfo.isTextSearchResult) {
            var ttsSwitcher = exec("SystemComponents", "isSpeechDialogMode", []);
            var isOpen = getResultMessage(ttsSwitcher);
            if (isOpen) {
                //开始播报
                if (stockInfo.speech && stockInfo.speech != "") {
                    exec("SynthesizeComponents", "ttsSpeak", [stockInfo.speech]);
                } else {
                    exec("SynthesizeComponents", "ttsSpeak", [stockInfo.tip]);
                }
            }
        }
    }
    
    function onTtsPlayBegin() {
        console.log("stockListView, onTtsPlayBegin");
        speakStatus = 2;
    }
    
    function onTtsPlayComplete(errorCode) {
        console.log("stockListView, onTtsPlayComplete");
        speakStatus = 0;
    }
    
    function onTtsInterrupt() {
        console.log("stockListView, onTtsInterrupt");
        speakStatus = 0;
    }
    
    function onTtsResume() {
        console.log("stockListView, onTtsResume");
        speakStatus = 2;
    }
    
    function onTtsPause() {
        console.log("stockListView, onTtsPause");
        speakStatus = 1;
    }
    
    /** 播报按钮点击回调*/
    function onPlayButtonClick() {
        console.log("stockListView, onPlayButtonClick");
        if (speakStatus == 0) {
            //开始播报
            if (mStockInfo.speech && mStockInfo.speech != "") {
                exec("SynthesizeComponents", "ttsSpeak", [mStockInfo.speech]);
            } else {
                exec("SynthesizeComponents", "ttsSpeak", [mStockInfo.tip]);
            }
        } else if (speakStatus == 1) {
            exec("SynthesizeComponents", "ttsResume", []);
        } else if (speakStatus == 2) {
            exec("SynthesizeComponents", "ttsStop", []);
        }
    }
    
    /**点击home键的回调*/
    function onActivityPause() {
        console.log("stockListView, onActivityPause");
        exec("SynthesizeComponents", "ttsStop", []);
    }
    
    window.onPlayButtonClick = onPlayButtonClick;
    window.onTtsPause = onTtsPause;
    window.onTtsResume = onTtsResume;
    window.onTtsInterrupt = onTtsInterrupt;
    window.onTtsPlayComplete = onTtsPlayComplete;
    window.onTtsPlayBegin = onTtsPlayBegin;
    window.onActivityPause = onActivityPause;
    
    //export
    var stockSpeakHandler = {};
    stockSpeakHandler.speak = speak;
    return stockSpeakHandler;
});