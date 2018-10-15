/**
 * Created by xfchen2 on 14-6-17.
 */
define(function(){
    const TYPE_LOCAL = 0;
    const TYPE_ONLINE = 1;
    
    var FilterName = {
        id: "id",
        name: "name",
        status: "status",
        error_code: "error_code",
        desc: "desc",
        object:"object",
        tip:"tip",
        data_source:"data_source",
        singer:"singer",
        song:"song",
        category:"category",
        server_url:"server_url",
        subject_list:"subject_list",
        
        page_index:"page_index",
        page_total:"page_total",
        record_count: "record_count",
        cache_id:"cache_id",
        subject:"subject",
        
        content_id:"content_id",
        content_type:"content_type",
        album:"album",
        duration:"duration"
    };
    
    var MusicType = {
        LOCAL_TYPE: 0,
        NET_TYPE: 1,
        RECOMMEND_TYPE: 2
    };
    
    var MusicBusinessComponent = "MusicBusinessComponent";
    
    //解析语音搜索业务结果
    function filterBusinessResult(filterResult, xmlDoc){
        console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);
        
        var objectElements = xmlDoc.getElementsByTagName(FilterName.object);
        if (objectElements && objectElements.length > 0) {
            var objectElement = objectElements[0];

            var data_sourceElements = objectElement.getElementsByTagName(FilterName.data_source);
            if (data_sourceElements && data_sourceElements.length > 0) {
                var data_sourceElement = data_sourceElements[0];

                var data_sourceIdElements = data_sourceElement.getElementsByTagName(FilterName.id);
                if (data_sourceIdElements && data_sourceIdElements.length > 0) {
                    if (data_sourceIdElements[0].firstChild) {
                        filterResult.dataSrcId = setTextValue(data_sourceIdElements[0].firstChild.nodeValue, "");
                    }
                }

                var data_sourceNameElements = data_sourceElement.getElementsByTagName(FilterName.name);
                if (data_sourceNameElements && data_sourceNameElements.length > 0) {
                    if (data_sourceNameElements[0].firstChild) {
                        filterResult.dataSrcName = setTextValue(data_sourceNameElements[0].firstChild.nodeValue, "");
                    }
                }
            }

            var songElements = objectElement.getElementsByTagName(FilterName.song);
            if (songElements && songElements.length > 0) {
                if (songElements[0].firstChild && songElements[0].parentNode == objectElement) {
                    filterResult.song = setTextValue(songElements[0].firstChild.nodeValue, "");
                }
            }

            var singerElements = objectElement.getElementsByTagName(FilterName.singer);
            if (singerElements && singerElements.length > 0) {
                if (singerElements[0].firstChild && singerElements[0].parentNode == objectElement) {
                    filterResult.singer = setTextValue(singerElements[0].firstChild.nodeValue, "");
                }
            }

            var serverUrlElements = objectElement.getElementsByTagName(FilterName.server_url);
            if (serverUrlElements && serverUrlElements.length > 0) {
                if (serverUrlElements[0].firstChild) {
                    filterResult.serverUrl = setTextValue(serverUrlElements[0].firstChild.nodeValue, "");
                }
            }

            filterResult.musicSearchResult = filterSubList(objectElement);
        }
    }
    
    function filterSubList(objectElement) {
        var musicSearchResult = new Object();
        var songList = new Array();
        musicSearchResult.songList = songList;
        var subListElements = objectElement.getElementsByTagName(FilterName.subject_list);
        if(subListElements && subListElements.length > 0) {
            var subListElement = subListElements[0];
            
            var pageIndexElements = subListElement.getElementsByTagName(FilterName.page_index);
            if(pageIndexElements && pageIndexElements.length > 0) {
                if(pageIndexElements[0].firstChild) {
                    musicSearchResult.pageIndex = setTextValue(pageIndexElements[0].firstChild.nodeValue, "");
                }
            }
            
            var pageTotalElements = subListElement.getElementsByTagName(FilterName.page_total);
            if(pageTotalElements && pageTotalElements.length > 0) {
                if(pageTotalElements[0].firstChild) {
                    musicSearchResult.pageTotal = setTextValue(pageTotalElements[0].firstChild.nodeValue, "");
                }
            }
            
            var cacheIdElements = subListElement.getElementsByTagName(FilterName.cache_id);
            if(cacheIdElements && cacheIdElements.length > 0) {
                if(cacheIdElements[0].firstChild) {
                    musicSearchResult.cacheId = setTextValue(cacheIdElements[0].firstChild.nodeValue, "");
                }
            }
            
            var subjectElements = subListElement.getElementsByTagName(FilterName.subject);
            if(subjectElements) {
                for (var i = 0; i < subjectElements.length; i++) {
                    var subjectElement = subjectElements[i];
                    var songItem = new Object();
                    songItem.networkType = MusicType.NET_TYPE;

                    var contentIdElements = subjectElement.getElementsByTagName(FilterName.content_id);
                    if (contentIdElements && contentIdElements.length > 0) {
                        if(contentIdElements[0].firstChild) {
                            songItem.musicId = setTextValue(contentIdElements[0].firstChild.nodeValue, "");
                        }
                    }
                    
                    var contentTypeElements = subjectElement.getElementsByTagName(FilterName.content_type);
                    if (contentTypeElements && contentTypeElements.length > 0) {
                        if(contentTypeElements[0].firstChild) {
                            songItem.contentType = setTextValue(contentTypeElements[0].firstChild.nodeValue, "");
                        }
                    }
                    
                    var singerElements = subjectElement.getElementsByTagName(FilterName.singer);
                    if (singerElements && singerElements.length > 0) {
                        if(singerElements[0].firstChild) {
                            songItem.musicSinger = setTextValue(singerElements[0].firstChild.nodeValue, "未知歌手");
                        }
                    }
                    
                    var songElements = subjectElement.getElementsByTagName(FilterName.song);
                    if (songElements && songElements.length > 0) {
                        if(songElements[0].firstChild) {
                            songItem.musicName = setTextValue(songElements[0].firstChild.nodeValue, "未知歌曲");
                        }
                    }
                    
                    var albumElements = subjectElement.getElementsByTagName(FilterName.album);
                    if (albumElements && albumElements.length > 0) {
                        if(albumElements[0].firstChild) {
                            songItem.album = setTextValue(albumElements[0].firstChild.nodeValue, "未知专辑");
                        }
                    }
                    
                    var durationElements = subjectElement.getElementsByTagName(FilterName.duration);
                    if (durationElements && durationElements.length > 0) {
                        if(durationElements[0].firstChild) {
                            songItem.duration = setTextValue(durationElements[0].firstChild.nodeValue, "--");
                        }
                    }
                    
                    songItem.playUrl = "";
                    
                    songItem.type = TYPE_ONLINE;
                    
                    songList.push(songItem);
                }
            }
            
        }
        
        return musicSearchResult;
    }
    
    //解析更多音乐搜索结果
    function filterMoreMusicResult(filterResult, xmlDoc) {
        console.log('filterMoreMusicResult begin, xmlDoc is ' + xmlDoc);
        
        var statusElements = xmlDoc.getElementsByTagName(FilterName.status);
        if (statusElements && statusElements.length > 0) {
            if (statusElements[0].firstChild) {
                filterResult.status = setTextValue(statusElements[0].firstChild.nodeValue, "");
            }
        }
        
        if (filterResult.status == "success") {
            var objectElements = xmlDoc.getElementsByTagName(FilterName.object);
            if (objectElements && objectElements.length > 0) {
                var objectElement = objectElements[0];

                var data_sourceElements = objectElement.getElementsByTagName(FilterName.data_source);
                if (data_sourceElements && data_sourceElements.length > 0) {
                    var data_sourceElement = data_sourceElements[0];

                    var data_sourceIdElements = data_sourceElement.getElementsByTagName(FilterName.id);
                    if (data_sourceIdElements && data_sourceIdElements.length > 0) {
                        if (data_sourceIdElements[0].firstChild) {
                            filterResult.dataSrcId = setTextValue(data_sourceIdElements[0].firstChild.nodeValue, "");
                        }
                    }

                    var data_sourceNameElements = data_sourceElement.getElementsByTagName(FilterName.name);
                    if (data_sourceNameElements && data_sourceNameElements.length > 0) {
                        if (data_sourceNameElements[0].firstChild) {
                            filterResult.dataSrcName = setTextValue(data_sourceNameElements[0].firstChild.nodeValue, "");
                        }
                    }
                }

                var cacheIdElements = objectElement.getElementsByTagName(FilterName.cache_id);
                if (cacheIdElements && cacheIdElements.length > 0) {
                    if (cacheIdElements[0].firstChild) {
                        filterResult.cacheId = setTextValue(cacheIdElements[0].firstChild.nodeValue, "");
                    }
                }

                var serverUrlElements = objectElement.getElementsByTagName(FilterName.server_url);
                if (serverUrlElements && serverUrlElements.length > 0) {
                    if (serverUrlElements[0].firstChild) {
                        filterResult.serverUrl = setTextValue(serverUrlElements[0].firstChild.nodeValue, "");
                    }
                }

                filterResult.musicSearchResult = filterSubList(objectElement);
            }
        } else {
            var descElements = xmlDoc.getElementsByTagName(FilterName.desc);
            if (descElements && descElements.length > 0) {
                if (descElements[0].firstChild) {
                    filterResult.desc = setTextValue(descElements[0].firstChild.nodeValue, "");
                }
            }
        }

    }
    
    function setTextValue(text, defaultText) {
        if(null != text) {
            return text;
        } else {
            return defaultText;
        }
    }
    
    /** 搜索本地音乐*/
    function searchLocalMusic(singerName, songName) {
        if(!singerName) {
            singerName = "";
        }
        if(!songName) {
            songName = "";
        }
        var result = exec(MusicBusinessComponent, "searchLocalMusic", [singerName, songName]);
        console.log("searchLocalMusic, result is " + result);
        var musicItems = eval("("+result+")").message;
        if(null != musicItems) {
            return musicItems;
        } else {
            return new Array();
        }
    }
    
    function onSuccess(filterResult, xmlDoc){
        console.log("musicHandler onSuccess");
        filterBusinessResult(filterResult, xmlDoc);
        //delayedAddAnswerView(filterResult.tip, filterResult.focus, 100);
        
        var obj = new Object();
        obj.musicWebItems = filterResult.musicSearchResult.songList;
        obj.musicLocalItems = searchLocalMusic(filterResult.singer, filterResult.song);
        obj.dataSourceName = filterResult.dataSrcName;
        obj.dataSourceId = filterResult.dataSrcId;
        obj.cacheId = filterResult.musicSearchResult.cacheId;
        obj.pageIndex = filterResult.musicSearchResult.pageIndex;
        obj.pageTotal = filterResult.musicSearchResult.pageTotal;
        obj.serverUrl = filterResult.serverUrl;
        setTimeout(function() {
            addWebE("MusicListView", obj);
        }, 150);
    }
    
    //export
    var musicRecognizeFilter = {};
    musicRecognizeFilter.filterBusinessResult = filterBusinessResult;
    musicRecognizeFilter.filterMoreMusicResult = filterMoreMusicResult;
    musicRecognizeFilter.onSuccess = onSuccess;
    return musicRecognizeFilter;
    
});