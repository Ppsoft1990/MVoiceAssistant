/**
 * 音乐视图
 * 
 * @author ppfeng
 * @author modified by xfchen2 on 2014-1-20
 */
define(function() {
    var musicLocalIdPrefix = "music_local_";
    var musicWebIdPrefix = "music_web_";
    var currentShowMenuItem; //当前显示菜单组件的列表项，用于只显示一个菜单组件
    var musicSearchItems = null;  //音乐数组
    var musicListView;  //音乐列表
    var pageIndex = 1;  //音乐结果的当前页码
    var pageTotal = 1;  //音乐结果总页数 
    var serverUrl; //音乐业务的地址
    var MusicBusinessComponent = "MusicBusinessComponent";
    var isRequestMoreMusic = false;
    
    //注册浏览器事件监听
    exec("LxBrowserComponents", "isEventCallBackForJS", [true]);
    
    /*
     * 创建音乐列表项，本地音乐
     */
    function createMusicItemLocal(id, musicname, singer, type) {
        var itemDiv = document.createElement("div");
        itemDiv.local = true;   //标记为本地音乐
    
        itemDiv.id =  musicLocalIdPrefix + id;
        itemDiv.className = "css_music_item_div";
        itemDiv.style.borderTop = "1px solid #e0e0e0";
        itemDiv.play = false;
        
        //正在播放当前歌曲的标志
        var playingFlagContainer = document.createElement("div");
        playingFlagContainer.className = "css_music_playing_flag_container";
        playingFlagContainer.style.display = "none";
        
        //歌曲信息模块
        var musicInformationContainer = document.createElement("div");
        musicInformationContainer.className = "css_music_information_container";
        
        //歌曲名称
        var musicNameContainer = document.createElement("div");
        musicNameContainer.className = "css_music_name_container";
        var musicNameLabel = document.createElement("label");
        musicNameLabel.className = "css_music_name_label";
        musicNameLabel.innerText = musicname;
        var musicPlayAnim = createMusicPlayAnimView();
        musicNameContainer.appendChild(musicNameLabel);
        // musicNameContainer.appendChild(musicPlayAnim);
        itemDiv.appendChild(musicPlayAnim);

        //歌曲来源和歌手
        var musicSingerContainer = document.createElement("div");
        musicSingerContainer.className = "css_music_singer_container";
        //歌手
        var singerDiv = document.createElement("div");
        singerDiv.className = "css_music_singer_div";
        singerDiv.innerText = singer;
        //歌曲来源
        var sourceDiv = document.createElement("div");
        sourceDiv.className = "css_music_source_div";
        sourceDiv.innerText = "本地音乐";
        
        //播放时间进度
        var  playTime = document.createElement("div");
        playTime.className = "css_music_play_time";
        playTime.innerHTML = "00:00/00:00";
        playTime.style.display = "none";
        
        musicSingerContainer.appendChild(singerDiv);
        musicSingerContainer.appendChild(sourceDiv);
        musicSingerContainer.appendChild(playTime);
        
        musicInformationContainer.appendChild(musicNameContainer);
        musicInformationContainer.appendChild(musicSingerContainer);
        
        //播放进度条
        var music_progress_module = document.createElement("div");
        music_progress_module.className = "css_music_progress_module";
        music_progress_module.style.display = "none";
        
        var progress_bar_bg = document.createElement("div");
        progress_bar_bg.className = "css_music_progress_bar_bg";
        
        var progress_buffer_bg = document.createElement("div");
        progress_buffer_bg.className = "css_progress_buffer_bg";
        
        var progress_play_bg = document.createElement("div");
        progress_play_bg.className = "css_progress_play_bg";

        music_progress_module.appendChild(progress_bar_bg);
        music_progress_module.appendChild(progress_buffer_bg);
        music_progress_module.appendChild(progress_play_bg);

        //播放按钮
        var playBtn = document.createElement("div");
        playBtn.className = "css_music_menu_btn";

        //播放按钮
        var menuBtnImg = document.createElement("img");
        menuBtnImg.src = ic_music_paly_nor;
        menuBtnImg.className = "css_music_menu_btn_img";
        playBtn.appendChild(menuBtnImg);
        itemDiv.appendChild(playBtn);
        
        itemDiv.appendChild(musicInformationContainer);
        itemDiv.appendChild(music_progress_module);
        
        itemDiv.startPlayAnimation = function() {
            console.log("itemDiv.startAnimation");
            playBtn.style.display="none";
            musicPlayAnim.startAnim();
        };
        itemDiv.stopPlayAnimation = function() {
            console.log("itemDiv.stopAnimation");
            musicPlayAnim.stopAnim();
            playBtn.style.display="block";
        };

        itemDiv.addEventListener("touchstart", function(){
            moveOverCheck.start(event);
            var targetEle = event.target;
            if (isChild(targetEle, itemDiv)) {
                if (targetEle == playBtn || targetEle == menuBtnImg) {
                    menuBtnImg.src = ic_music_paly_sel;
                } else {
                    itemDiv.style.backgroundColor = "#e5e5e5";
                }
            }
        },false);
        itemDiv.addEventListener("touchmove", function(){
            var targetEle = event.target;
            if (moveOverCheck.check(event)) {
                if (isChild(targetEle, itemDiv)) {
                    if (targetEle == playBtn || targetEle == menuBtnImg) {
                        menuBtnImg.src = ic_music_paly_nor;
                    } else {
                        itemDiv.style.backgroundColor = "";
                    }
                }
            }
        },false);
        itemDiv.addEventListener("touchend", function(){
            menuBtnImg.src = ic_music_paly_nor;
            this.style.backgroundColor = "";
            var targetEle = event.target;
            if (!moveOverCheck.isMoveOver()) {
                if (isChild(targetEle, itemDiv)) {
                    if (!this.play) {
                        var songItem = musicSearchItems[this.index];
                        if (songItem) {
                            exec("RecognizeComponents", "cancelRecognize", []);
                            exec(MusicBusinessComponent, 'playSong', [songItem.musicId, songItem.contentType, songItem.type, songItem.playUrl, this.index, serverUrl]);
                        }
                    } else {
                        exec(MusicBusinessComponent, 'stopSong', []);
                        this.play = false;
                    }
                }
            }
        },false);

        return itemDiv;
    }
    
    /*
     * 创建音乐列表项
     */
    function createMusicItemWeb(id, musicname, singer, type) {
        var itemDiv = document.createElement("div");
    
        itemDiv.id = musicWebIdPrefix + id;
        itemDiv.className = "css_music_item_div";
        itemDiv.style.borderTop = "1px solid #e0e0e0";

        //正在播放当前歌曲的标志
        var playingFlagContainer = document.createElement("div");
        playingFlagContainer.className = "css_music_playing_flag_container";
        playingFlagContainer.style.display = "none";

        //歌曲信息模块
        var musicInformationContainer = document.createElement("div");
        musicInformationContainer.className = "css_music_information_container";

        //歌曲名称
        var musicNameContainer = document.createElement("div");
        musicNameContainer.className = "css_music_name_container";
        var musicNameLabel = document.createElement("label");
        musicNameLabel.className = "css_music_name_label";
        musicNameLabel.innerText = musicname;
        var musicPlayAnim = createMusicPlayAnimView();
        musicNameContainer.appendChild(musicNameLabel);
        // musicNameContainer.appendChild(musicPlayAnim);
        itemDiv.appendChild(musicPlayAnim);

        //请求提示文字
        var requestText = document.createElement("div");
        requestText.className = "css_music_request_text";
        requestText.innerText = "正在缓冲";
        requestText.style.display = "none";
        musicNameContainer.appendChild(requestText);

        //歌曲来源和歌手
        var musicSingerContainer = document.createElement("div");
        musicSingerContainer.className = "css_music_singer_container";
        //歌手
        var singerDiv = document.createElement("div");
        singerDiv.className = "css_music_singer_div";
        singerDiv.innerText = singer;
        //歌曲来源
        var sourceDiv = document.createElement("div");
        sourceDiv.className = "css_music_source_div";
        sourceDiv.innerText = "网络音乐";

        //播放时间进度
        var  playTime = document.createElement("div");
        playTime.className = "css_music_play_time";
        playTime.innerHTML = "00:00/00:00";
        playTime.style.display = "none";

        musicSingerContainer.appendChild(singerDiv);
        musicSingerContainer.appendChild(sourceDiv);
        musicSingerContainer.appendChild(playTime);

        musicInformationContainer.appendChild(musicNameContainer);
        musicInformationContainer.appendChild(musicSingerContainer);

        //播放进度条
        var music_progress_module = document.createElement("div");
        music_progress_module.className = "css_music_progress_module";
        music_progress_module.style.display = "none";

        var progress_bar_bg = document.createElement("div");
        progress_bar_bg.className = "css_music_progress_bar_bg";

        var progress_buffer_bg = document.createElement("div");
        progress_buffer_bg.className = "css_progress_buffer_bg";

        var progress_play_bg = document.createElement("div");
        progress_play_bg.className = "css_progress_play_bg";

        music_progress_module.appendChild(progress_bar_bg);
        music_progress_module.appendChild(progress_buffer_bg);
        music_progress_module.appendChild(progress_play_bg);

        //播放按钮
        var playBtn = document.createElement("div");
        playBtn.className = "css_music_menu_btn";

        //播放按钮
        var menuBtnImg = document.createElement("img");
        menuBtnImg.src = ic_music_paly_nor;
        menuBtnImg.className = "css_music_menu_btn_img";
        playBtn.appendChild(menuBtnImg);
        itemDiv.appendChild(playBtn);

        itemDiv.appendChild(musicInformationContainer);
        itemDiv.appendChild(music_progress_module);
        itemDiv.play = false;

        itemDiv.startRequestAnimation = function() {
            console.log("itemDiv.startAnimation");
            requestText.style.display = "table-cell";
        };
        itemDiv.stopRequestAnimation = function() {
            console.log("itemDiv.stopAnimation");
            requestText.style.display = "none";
        };
        itemDiv.startPlayAnimation = function() {
            console.log("itemDiv.startAnimation");
            playBtn.style.display="none";
            musicPlayAnim.startAnim();
        };
        itemDiv.stopPlayAnimation = function() {
            console.log("itemDiv.stopAnimation");
            musicPlayAnim.stopAnim();
            playBtn.style.display="block";
        };
        // itemDiv.hideMenu = function() {
        //     itemBottomDiv.style.display = "none";
        //     menuBtnImg.src = music_dot_fold_normal;
        // };

        itemDiv.addEventListener("touchstart", function(){
            moveOverCheck.start(event);
            var targetEle = event.target;
            if (isChild(targetEle, itemDiv)) {
                if (targetEle == playBtn || targetEle == menuBtnImg) {
                    menuBtnImg.src = ic_music_paly_sel;
                } else {
                    itemDiv.style.backgroundColor = "#e5e5e5";
                }
            }
        },false);
        itemDiv.addEventListener("touchmove", function(){
            var targetEle = event.target;
            if (moveOverCheck.check(event)) {
                if (isChild(targetEle, itemDiv)) {
                    if (targetEle == playBtn || targetEle == menuBtnImg) {
                        menuBtnImg.src = ic_music_paly_nor;
                    } else {
                        itemDiv.style.backgroundColor = "";
                    }
                }
            }
        },false);

        itemDiv.addEventListener("touchend", function(){
            menuBtnImg.src = ic_music_paly_nor;
            this.style.backgroundColor = "";
            var targetEle = event.target;
            if (!moveOverCheck.isMoveOver()) {
                if (isChild(targetEle, itemDiv)) {
                    if (!this.play) {
                        var songItem = musicSearchItems[this.index];
                        if (songItem) {
                            exec("RecognizeComponents", "cancelRecognize", []);
                            exec(MusicBusinessComponent, 'playSong', [songItem.musicId, songItem.contentType, songItem.type, songItem.playUrl, this.index, serverUrl]);
                        }
                    } else {
                        exec(MusicBusinessComponent, 'stopSong', []);
                        this.play = false;
                    }
                }
            }
        },false);

        return itemDiv;
    }

    //创建请求播放地址时的动画
    var requestAnimationId = null;
    
    /**
     * 创建音乐主界面
     * @param musicInfo 音乐信息
     */
    function createMusicView(musicInfo) {
        console.log("createMusicView is started");
    
        //初始化一些变量
        taskHandler = musicInfo.taskHandler;
        var musicLocalItems = musicInfo.musicLocalItems;
        var musicWebItems = musicInfo.musicWebItems;
        musicSearchItems = musicLocalItems.concat(musicWebItems); //合并本地搜索结果和网络搜索结果
        if (musicInfo.pageTotal) {
            pageTotal = parseInt(musicInfo.pageTotal);
        }
        if (musicInfo.pageIndex) {
            pageIndex = parseInt(musicInfo.pageIndex);
        }
        serverUrl = musicInfo.serverUrl;
        
        // 音乐列表
        var outDiv = document.createElement("div");
        
        var dialog_music_inner_div = document.createElement("div");
        dialog_music_inner_div.style.backgroundColor = "white";
        dialog_music_inner_div.style.overflow = "hidden";
    
        // 创建主界面音乐列表项
        musicListView = document.createElement("div");
        for (var i = 0; i < musicSearchItems.length; i++) {
            console.log("musicSearchItems.length is " + musicSearchItems.length);
            var item;
            if (musicSearchItems[i].type == 0) {
                item = createMusicItemLocal(musicSearchItems[i].musicId, musicSearchItems[i].musicName, musicSearchItems[i].musicSinger, musicSearchItems[i].type);
            } else {
                item = createMusicItemWeb(musicSearchItems[i].musicId, musicSearchItems[i].musicName, musicSearchItems[i].musicSinger, musicSearchItems[i].type);
            }
            item.index = i;
            musicListView.appendChild(item);
        }
        
        dialog_music_inner_div.appendChild(musicListView);
        
        outDiv.appendChild(dialog_music_inner_div);
    
        document.body.appendChild(outDiv); //使用新框架代码
        
        pullLoadMoreHelper.createLoadMoreDiv(dialog_music_inner_div, function(){
            console.log("musicListView slip load more");
            if(pageIndex < pageTotal) {
                if(!isRequestMoreMusic) {
                    requestMoreMusic(musicInfo);
                }
            } else {
                exec('UIComponents', 'showToast', ["已经是最后一页", 0]);
                console.log("no more music available");
                pullLoadMoreHelper.stopRefresh();
                pullLoadMoreHelper.disablePullLoadMore();
            }
        });
        if(pageIndex == pageTotal) {
            pullLoadMoreHelper.disablePullLoadMore();
        }
        
        //自动播放第一首歌
        if(null != musicSearchItems[0]) {
            var songItem = musicSearchItems[0];
            if(songItem) {
                exec("RecognizeComponents", "cancelRecognize", []);
                exec(MusicBusinessComponent, 'playFirstSong', [songItem.musicId, songItem.contentType, songItem.type, songItem.playUrl, 0, serverUrl]);
            }
        }
        
        return outDiv;
    }
    
    /**
     *  发送更多音乐请求 
     */
    function requestMoreMusic(musicInfo){
        console.log("requestMoreMusic, pageIndex is " + pageIndex + ", pageTotal is " + pageTotal);
        var moreMusicParam = new Object();
        moreMusicParam.pageIndex = parseInt(pageIndex) + 1;
        moreMusicParam.cacheId = musicInfo.cacheId;
        moreMusicParam.dataSourceId = musicInfo.dataSourceId;
        moreMusicParam.dataSourceName = musicInfo.dataSourceName;
        require(["./music/musicRequestHelper.js"], function(musicRequestHelper) {
            isRequestMoreMusic = true;
            musicRequestHelper.requestMoreMusic(moreMusicParam, function(xmlDocument) {
                isRequestMoreMusic = false;
                if(null != xmlDocument) {
                    require(["./music/musicHandler.js"], function(musicRecognizeFilter) {
                        var result = new Object();
                        musicRecognizeFilter.filterMoreMusicResult(result, xmlDocument);
                        
                        if (result.status == "success") {
                            addMoreMusic(result);
                            //更新音乐页码
                            if (result.pageIndex) {
                                pageIndex = parseInt(result.pageIndex);
                            } else {
                                pageIndex++;
                            }
                            if (result.pageTotal) {
                                pageTotal = parseInt(result.pageTotal);
                            }
                        } else {
                            console.log("requestMoreMusic, errorCode is not 000000");
                            exec('UIComponents', 'showToast', [result.desc, 0]);
                        }
                        
                        //停止加载动画
                        pullLoadMoreHelper.stopRefresh();
                    }); 
                } else {
                    console.log("xmlDocument is null");
                    //停止加载动画
                    pullLoadMoreHelper.stopRefresh();
                    exec('UIComponents', 'showToast', ["网络连接超时，请稍后重试", 0]);
                }
                
            });
        }); 
    }
    
    /**
     *  添加更多音乐到音乐列表
     */
    function addMoreMusic(result) {
        var musicWebItems = result.musicSearchResult.songList;
        console.log("addMoreMusic, size is " + musicWebItems.length);
        var count = musicSearchItems.length;
        musicSearchItems = musicSearchItems.concat(musicWebItems);  //更新音乐数组
        for (var j = 0; j < musicWebItems.length; j++) {
            var item = createMusicItemWeb(musicWebItems[j].musicId, musicWebItems[j].musicName, musicWebItems[j].musicSinger, musicWebItems[j].type);
            item.index = count;
            count++;
            if(musicListView) {
                musicListView.appendChild(item);
            }
        }
    }
    
    /**
     * 获取歌曲播放动画 
     */
    function createMusicPlayAnimView() {
        var animView = document.createElement("div");
        animView.className = "css_anim_view";
        var histogramA = getHistogramView();
        histogramA.style.right = 0;
        var histogramB = getHistogramView();
        histogramB.style.right = (5*scale) + "px";
        var histogramC = getHistogramView();
        histogramC.style.right = (5*scale)*2 + "px";
        var histogramD = getHistogramView();
        histogramD.style.right = (5*scale)*3 + "px";
        
        animView.appendChild(histogramA);
        animView.appendChild(histogramB);
        animView.appendChild(histogramC);
        animView.appendChild(histogramD);
        
        animView.startAnim = function() {
            animView.timer = setInterval(animView.animation, 250); 
        };
        animView.animation = function() {
            animView.style.display = "inline-block";
            histogramA.showRandHeight();
            histogramB.showRandHeight();
            histogramC.showRandHeight();
            histogramD.showRandHeight();
        };
        
        animView.stopAnim = function() {
            animView.style.display = "none";
            clearInterval(animView.timer);
        };
        
        return animView;
    }
    
    /**
     * 获取一条动画柱状图 
     */
    function getHistogramView() {
        var histogramView = document.createElement("div");
        histogramView.className = "css_histogram_view";
        histogramView.showRandHeight = function() {
            histogramView.style.height = getRandomHeight(2, 18) + "px";
        };
        
        return histogramView;
    }
    
    /**
     * 获取随机数
     */
    function getRandomHeight(Min, Max) {
        var Range = Max - Min;
        var Rand = Math.random();
        return (Min + Math.round(Rand * Range)) * scale;
    }
    
    //获取播放进度条
    function getPlayProgressBar(musicItem) {
        var progressbarList = musicItem.getElementsByClassName("css_progress_play_bg");
        if (progressbarList.length > 0) {
            return progressbarList[0];
        }
        return null;
    }
    
    //获取缓冲进度条
    function getBufferProgressBar(musicItem) {
        var bufferprogressbarList = musicItem.getElementsByClassName("css_progress_buffer_bg");
        if (bufferprogressbarList.length > 0) {
            return bufferprogressbarList[0];
        }
        return null;
    }
    
    //获取播放时间显示
    function getPlayTime(musicItem) {
        var playTimeList = musicItem.getElementsByClassName("css_music_play_time");
        if (playTimeList.length > 0) {
            return playTimeList[0];
        }
        return null;
    }

    //获取播放按钮
    function getPlayImg(musicItem) {
        var playImgList = musicItem.getElementsByClassName("css_music_menu_btn");
        if (playImgList.length > 0) {
            return playImgList[0];
        }
        return null;
    }
    
    //获取歌曲名
    function getSongName(musicItem) {
        var songNameList = musicItem.getElementsByClassName("css_music_name_label");
        if (songNameList.length > 0) {
            return songNameList[0];
        }
        return null;
    }
    
    //获取歌手名
    function getSinger(musicItem) {
        var singerList = musicItem.getElementsByClassName("css_music_singer_div");
        if (singerList.length > 0) {
            return singerList[0];
        }
        return null;
    }
    
    //获取歌曲来源
    function getSongSource(musicItem) {
        var songSourceList = musicItem.getElementsByClassName("css_music_source_div");
        if (songSourceList.length > 0) {
            return songSourceList[0];
        }
        return null;
    }
    
    /**
     * java回调，更新音乐播放状态。不同的状态，界面会做相应的响应。
     * 
     * @param music_state
     *            音乐状态，字符串类型
     */
    function updateMusicState(paramsStr) {
        console.log("updateMusicState, paramsStr is " + paramsStr);
        var params = JSON.parse(paramsStr);
        var music_state = params.state;
        var index = params.index;
        var musicItem = musicListView.children[index];
        if(null != musicItem) {
            // 点击某首歌曲，该歌曲进入READY状态，该歌曲所在列项显示播放标志，播放界面显示歌曲名和歌手名。
            if (music_state == "READY" || music_state == "ERROR") {
                musicItem.play = false;
                //变化文字颜色
                var songName = getSongName(musicItem);
                if (null != songName) {
                    songName.style.color = "#52595e";
                }
                var singer = getSinger(musicItem);
                if (null != singer) {
                    singer.style.color = "#757a7e";
                }
                var songSource = getSongSource(musicItem);
                if (null != songSource) {
                    songSource.style.color = "#757a7e";
                }
                //播放进度
                var playprogressbar = getPlayProgressBar(musicItem);
                if (null != playprogressbar) {
                    playprogressbar.style.width = "0px";
                    playprogressbar.parentNode.style.display = "none";
                }
                //缓冲进度
                var bufferprogressbar = getBufferProgressBar(musicItem);
                if (null != bufferprogressbar) {
                    bufferprogressbar.style.width = "0px";
                }
                //播放时间
                var playTime = getPlayTime(musicItem);
                if (null != playTime) {
                    playTime.innerHTML = "00:00/00:00";
                    playTime.style.display = "none";
                }
                //本地歌曲，令缓冲进度为100%
                if (musicItem.local) {
                    updateMusicBuffer(index, 100);
                }
                // var playImg = getPlayImg(musicItem);
                // if (null != playImg) {
                //     playImg.style.display = "block";
                // }
                //停止请求动画和播放动画
                musicItem.stopPlayAnimation();
                if (!musicItem.local) {
                    musicItem.stopRequestAnimation();
                }
            } else if (music_state == "REQUESTING") {
                musicItem.play = true;
                //变化文字颜色
                var songName = getSongName(musicItem);
                if (null != songName) {
                    songName.style.color = "#4798d7";
                }
                // var singer = getSinger(musicItem);
                // if (null != singer) {
                //     singer.style.color = "#66abe0";
                // }
                // var songSource = getSongSource(musicItem);
                // if (null != songSource) {
                //     songSource.style.color = "#66abe0";
                // }
                //显示请求动画
                if (requestAnimationId == null && !musicItem.local) {
                    musicItem.startRequestAnimation();
                }
                //显示播放时间
                var playTime = getPlayTime(musicItem);
                if (null != playTime) {
                    playTime.style.display = "inline-block";
                }
            } else if (music_state == "PLAYING") {
                musicItem.play = true;
                //显示进度条
                var playprogressbar = getPlayProgressBar(musicItem);
                if (null != playprogressbar) {
                    playprogressbar.parentNode.style.display = "block";
                }
                //显示播放时间
                var playTime = getPlayTime(musicItem);
                if (null != playTime) {
                    playTime.style.display = "inline-block";
                }
                //开始播放动画
                // var playImg = getPlayImg(musicItem);
                // if (null != playImg) {
                //     playImg.style.display = "none";
                // }
                musicItem.startPlayAnimation();
                //停止请求动画
                if (!musicItem.local) {
                    musicItem.stopRequestAnimation();
                }
            } else if (music_state == "PAUSED") {
                //当前版本不会进入暂停状态
            }
        }
    }
    
    /**
     * java回调，更新歌曲已播放时长和总时长。
     * 
     * @param currentTime
     *            音乐当前播放时间长度，单位为毫秒
     * @param currentDuration
     *            音乐总时长，单位为毫秒
     * 
     */
    function updateMusicShow(paramsStr) {
        console.log('updateMusicShow, paramsStr is ' + paramsStr);
        var params = JSON.parse(paramsStr);
        var currentTime = params.currentTime;
        var currentDuration = params.currentDuration;
        var index = params.index;
        playIndex = index;
        var musicItem = musicListView.children[index];
        if(null != musicItem) {
            var mCurrentTime = parseInt(currentTime / 1000);
            var mCurrentDuration = parseInt(currentDuration / 1000);
            var playTime = getPlayTime(musicItem);
            if (null != playTime) {
                playTime.innerHTML = convertTimeFormat(mCurrentTime) + "/" + convertTimeFormat(mCurrentDuration);
            }
            var mPercent = mCurrentTime / mCurrentDuration * 100;
            console.log('------------------>mPercent:' + mPercent);
            var playprogressbar = getPlayProgressBar(musicItem);
            if (null != playprogressbar) {
                playprogressbar.style.width = mPercent + "%";
            }
        }
    }
    
    /**
     * java回调，更新缓冲进度。
     * 
     * @param bufferPercent
     *            当前音乐缓冲进度，为整型
     * 
     */
    function updateMusicBuffer(paramsStr) {
        console.log('updateMusicBuffer, paramsStr is ' + paramsStr);
        var params = JSON.parse(paramsStr);
        var bufferPercent = params.percent;
        var index = params.index;
        var musicItem = musicListView.children[index];
        if (null != musicItem) {
            var bufferprogressbar = getBufferProgressBar(musicItem);
            if (null != bufferprogressbar) {
                bufferprogressbar.style.width = bufferPercent + "%";
            }
        }
    }
    
    /**
     * 时间格式转换。返回结果result是歌曲时间，显示样式为，例如03:37。
     * 
     * @param oldtime
     *            时间，整型，单位为秒
     */
    function convertTimeFormat(oldtime) {
        var colonbefore = parseInt(oldtime / 60);
        var colonnext = parseInt(oldtime) % 60;
        if (colonbefore >= 10 && colonnext >= 10) {
            result = "" + colonbefore + ":" + colonnext;
        } else if (colonbefore < 10 && colonnext >= 10) {
            result = "0" + colonbefore + ":" + colonnext;
        } else if (colonbefore >= 10 && colonnext < 10) {
            result = colonbefore + ":0" + colonnext;
        } else
            result = "0" + colonbefore + ":0" + colonnext;
        return result;
    }
    
    /**
     * 播放下一首歌 
 * @param {Object} paramsStr
     */
    function playNextSong(paramsStr) {
        console.log('playNextSong, paramsStr is ' + paramsStr);
        var params = JSON.parse(paramsStr);
        var index = params.index;
        var songItem = musicSearchItems[index + 1];
        if(songItem) {
            exec("RecognizeComponents", "cancelRecognize", []);
            exec(MusicBusinessComponent, 'playSong', [songItem.musicId, songItem.contentType, songItem.type, songItem.playUrl, index + 1, serverUrl]);
        }
    }
    
    function onActivityDestroy() {
        console.log("onActivityDestroy");
        exec(MusicBusinessComponent, 'onActivityDestroy', []);
    }
    
    // 将需要java回调的函数暴露到全局对象musicListView中，方便外部java文件调用
    window.musicListView = window.musicListView || {};
    window.musicListView.updateMusicBuffer = updateMusicBuffer;
    window.musicListView.updateMusicShow = updateMusicShow;
    window.musicListView.updateMusicState= updateMusicState;
    window.musicListView.playNextSong = playNextSong;
    window.onActivityDestroy = onActivityDestroy;
    
    return createMusicView;
});