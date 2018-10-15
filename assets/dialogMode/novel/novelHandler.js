/**
 * Created by xfchen2 on 14-6-16.
 */
define(function(){
    var FilterName = {
        status: "status",
        error_code: "error_code",
        desc: "desc",
        object:"object",
        tip:"tip",
        name:"name",
        id:"id",
        category:"category",
        data_source:"data_source",
        page_index:"page_index",
        page_total:"page_total",
        record_count: "record_count",
        server_url:"server_url",
        author:"author",
        popularity:"popularity",
        novel_list:"novel_list",
        novel:"novel",
        bookid:"bookid",
        summary:"summary",
        detail_url:"detail_url",
        read_url:"read_url",
        cover_pic:"cover_pic"
    };
    
    const KEY_STORY_MODE = "com.iflytek.cmccIFLY_NOVEL_SETTING";
    
    function filterBusinessResult(filterResult, xmlDoc){
        console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);
        
        var statusElements = xmlDoc.getElementsByTagName(FilterName.status);
        if (statusElements && statusElements.length > 0) {
            if (statusElements[0].firstChild) {
                filterResult.status = setTextValue(statusElements[0].firstChild.nodeValue, "");
            }
        }
        
        if(filterResult.status == "success") {
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

                var nameElements = objectElement.getElementsByTagName(FilterName.name);
                if (nameElements && nameElements.length > 0) {
                    for(var i = 0; i < nameElements.length; i++) {
                        if (nameElements[i].parentNode == objectElement) {
                            if (nameElements[i].firstChild) {
                                filterResult.name = setTextValue(nameElements[i].firstChild.nodeValue, "--");
                            }
                        }
                    }
                }

                var pageIndexElements = objectElement.getElementsByTagName(FilterName.page_index);
                if (pageIndexElements && pageIndexElements.length > 0) {
                    if (pageIndexElements[0].firstChild) {
                        filterResult.pageIndex = setTextValue(pageIndexElements[0].firstChild.nodeValue, "");
                    }
                }

                var pageTotalElements = objectElement.getElementsByTagName(FilterName.page_total);
                if (pageTotalElements && pageTotalElements.length > 0) {
                    if (pageTotalElements[0].firstChild) {
                        filterResult.pageTotal = setTextValue(pageTotalElements[0].firstChild.nodeValue, "");
                    }
                }

                var recordCountElements = objectElement.getElementsByTagName(FilterName.record_count);
                if (recordCountElements && recordCountElements.length > 0) {
                    if (recordCountElements[0].firstChild) {
                        filterResult.recordCount = setTextValue(recordCountElements[0].firstChild.nodeValue, "");
                    }
                }

                var serverUrlElements = objectElement.getElementsByTagName(FilterName.server_url);
                if (serverUrlElements && serverUrlElements.length > 0) {
                    if (serverUrlElements[0].firstChild) {
                        filterResult.serverUrl = setTextValue(serverUrlElements[0].firstChild.nodeValue, "");
                    }
                }

                var authorElements = objectElement.getElementsByTagName(FilterName.author);
                if (authorElements && authorElements.length > 0) {
                    for(var i = 0; i < authorElements.length; i++) {
                        if (authorElements[i].parentNode == objectElement) {
                            if (authorElements[i].firstChild) {
                                filterResult.author = setTextValue(authorElements[i].firstChild.nodeValue, "--");
                            }
                        }
                    }
                }

                var categoryElements = objectElement.getElementsByTagName(FilterName.category);
                if (categoryElements && categoryElements.length > 0) {
                    if (categoryElements[0].firstChild) {
                        filterResult.category = setTextValue(categoryElements[0].firstChild.nodeValue, "");
                    }
                }

                var popularityElements = objectElement.getElementsByTagName(FilterName.popularity);
                if (popularityElements && popularityElements.length > 0) {
                    if (popularityElements[0].firstChild) {
                        filterResult.popularity = setTextValue(popularityElements[0].firstChild.nodeValue, "");
                    }
                }

                var novelListElements = objectElement.getElementsByTagName(FilterName.novel_list);
                if (novelListElements && novelListElements.length > 0) {
                    var novelListElement = novelListElements[0];

                    var novelList = new Array();
                    var novelElements = novelListElement.getElementsByTagName(FilterName.novel);
                    for (var i = 0; i < novelElements.length; i++) {
                        var novelElement = novelElements[i];
                        var novelOne = new Object();

                        var novelNameElements = novelElement.getElementsByTagName(FilterName.name);
                        if (novelNameElements && novelNameElements.length > 0) {
                            if (novelNameElements[0].firstChild) {
                                novelOne.name = setTextValue(novelNameElements[0].firstChild.nodeValue, "--");
                            } else {
                                novelOne.name = "--";
                            }
                        }

                        var bookidElements = novelElement.getElementsByTagName(FilterName.bookid);
                        if (bookidElements && bookidElements.length > 0) {
                            if (bookidElements[0].firstChild) {
                                novelOne.nid = setTextValue(bookidElements[0].firstChild.nodeValue, "");
                            }
                        }

                        var novelAuthorElements = novelElement.getElementsByTagName(FilterName.author);
                        if (novelAuthorElements && novelAuthorElements.length > 0) {
                            if (novelAuthorElements[0].firstChild) {
                                novelOne.author = setTextValue(novelAuthorElements[0].firstChild.nodeValue, "--");
                            } else {
                                novelOne.author = "--";
                            }
                        }

                        var summaryElements = novelElement.getElementsByTagName(FilterName.summary);
                        if (summaryElements && summaryElements.length > 0) {
                            if (summaryElements[0].firstChild) {
                                novelOne.brief = setTextValue(summaryElements[0].firstChild.nodeValue, "--");
                            } else {
                                novelOne.brief = "--";
                            }
                        }

                        var detailUrlElements = novelElement.getElementsByTagName(FilterName.detail_url);
                        if (detailUrlElements && detailUrlElements.length > 0) {
                            if (detailUrlElements[0].firstChild) {
                                novelOne.briefUrl = setTextValue(detailUrlElements[0].firstChild.nodeValue, "");
                            }
                        }

                        var readUrlElements = novelElement.getElementsByTagName(FilterName.read_url);
                        if (readUrlElements && readUrlElements.length > 0) {
                            if (readUrlElements[0].firstChild) {
                                novelOne.readUrl = setTextValue(readUrlElements[0].firstChild.nodeValue, "");
                            }

                        }

                        var coverUrlElements = novelElement.getElementsByTagName(FilterName.cover_pic);
                        if (coverUrlElements && coverUrlElements.length > 0) {
                            if (coverUrlElements[0].firstChild) {
                                novelOne.coverUrl = setTextValue(coverUrlElements[0].firstChild.nodeValue, "");
                            }
                        }

                        novelList.push(novelOne);
                    }
                    filterResult.novels = novelList;
                }
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
    
    /** 是否打开了故事模式(使用宏主播播小说)*/
    function isStoryMode() {
        var result = exec("SystemComponents", "getSetting", [KEY_STORY_MODE, 1]);
        console.log("isStoryMode, result is " + result);
        var resultObj = eval('(' + result + ')');
        if(resultObj.message.value) {
            return resultObj.message.value;
        } else {
            return false;
        }
    }
    
    function onSuccess(filterResult, xmlDoc){
        console.log("novelHandler onSuccess");
        filterBusinessResult(filterResult, xmlDoc);
        
        setTimeout(function() {
            addWebE("NovelListView", filterResult);
        }, 150);
    }
    
    //export
    var novelRecognizeFilter = {};
    novelRecognizeFilter.filterBusinessResult = filterBusinessResult;
    novelRecognizeFilter.onSuccess = onSuccess;
    return novelRecognizeFilter;
});