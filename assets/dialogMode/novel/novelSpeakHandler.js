define(function() {
    /**
     * 标志播报的状态
     * 0: 停止中
     * 1: 暂停中
     * 2: 播报中
     */
    var speakStatus=0;
    
    var mFilterResult;
    
    function speak(filterResult) {
        mFilterResult = filterResult;
        //tts播报
        if (!filterResult.isTextSearchResult) {
            var ttsSwitcher = exec("SystemComponents", "isSpeechDialogMode", []);
            var isOpen = getResultMessage(ttsSwitcher);
            if (isOpen) {
                exec("SynthesizeComponents", "ttsSpeak", [filterResult.tip]);
            }
        }
    }
    
    function onTtsPlayBegin() {
        console.log("novelSpeakHandler, onTtsPlayBegin");
        speakStatus = 2;
    }
    
    function onTtsPlayComplete(errorCode) {
        console.log("novelSpeakHandler, onTtsPlayComplete");
        speakStatus = 0;
    }
    
    function onTtsInterrupt() {
        console.log("stockListView, onTtsInterrupt");
        speakStatus = 0;
    }
    
    function onTtsResume() {
        console.log("novelSpeakHandler, onTtsResume");
        speakStatus = 2;
    }
    
    function onTtsPause() {
        console.log("novelSpeakHandler, onTtsPause");
        speakStatus = 1;
    }
    
    /** 播报按钮点击回调*/
    function onPlayButtonClick() {
        console.log("novelSpeakHandler, onPlayButtonClick");
        if (speakStatus == 0) {
            //开始播报
            exec("SynthesizeComponents", "ttsSpeak", [mFilterResult.tip]);
        } else if (speakStatus == 1) {
            exec("SynthesizeComponents", "ttsResume", []);
        } else if (speakStatus == 2) {
            exec("SynthesizeComponents", "ttsStop", []);
        }
    }
    
    /**点击home键的回调*/
    function onActivityStop() {
        console.log("novelSpeakHandler, onActivityStop");
        exec("SynthesizeComponents", "ttsStop", []);
    }
    
    window.onPlayButtonClick = onPlayButtonClick;
    window.onTtsPause = onTtsPause;
    window.onTtsResume = onTtsResume;
    window.onTtsInterrupt = onTtsInterrupt;
    window.onTtsPlayComplete = onTtsPlayComplete;
    window.onTtsPlayBegin = onTtsPlayBegin;
    window.onActivityStop = onActivityStop;
    
    //export
    var novelSpeakHandler = {};
    novelSpeakHandler.speak = speak;
    return novelSpeakHandler;
});