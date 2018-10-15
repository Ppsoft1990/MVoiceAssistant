/**
 * author bjwu
 */
define(function() {
    var DataType = {
        nowplaying : "nowplaying", // 正在上映
        coming : "coming", // 即将上映
        detail : "detail",  // 具体电影信息
    };

    var FilterName = {
        object : "object",
        id : "id",
        name : "name",
        data_source : "data_source",
        server_url : "server_url",
        url : "url",

        // 电影公用信息
        subject_list : "subject_list",
        datatype : "datatype",
        page_index : "page_index",
        page_total : "page_total",
        record_count : "record_count",
        subject : "subject",
        title : "title",
        original_title : "original_title",
        stars : "stars",
        average : "average",
        pubdate : "pubdate",
        pic_url : "pic_url",
        detail_url : "detail_url",

        // 具体电影字段
        summary : "summary",
        comments_count : "comments_count",
        reviews_count : "reviews_count",
        actors : "actors",
        actor : "actor",
        directors : "directors",
        director : "director",
        comments_url : "comments_url",
        reviews_count : "reviews_count",
        reviews_url : "reviews_url",
    };

    function filterBusinessResult(filterResult, xmlDoc) {
        console.log('filterBusinessResult begin, xmlDoc is ' + xmlDoc);

        filterResult.data = {};
        var urlElements = xmlDoc.getElementsByTagName(FilterName.url);
        if (validateElements(urlElements)) {
            filterResult.data.url = urlElements[0].firstChild.nodeValue;
        }
        
        var subject_listElements = xmlDoc.getElementsByTagName(FilterName.subject_list);
        if (!validateElements(subject_listElements)) {
            console.log("no list data");
            return;
        }

        var data_sources = xmlDoc.getElementsByTagName(FilterName.data_source);
        if (validateElements(data_sources)) {
            var data_sourceElement = data_sources[0];

            var data_sourceIdElements = data_sourceElement.getElementsByTagName(FilterName.id);
            if (data_sourceIdElements && data_sourceIdElements.length > 0) {
                filterResult.data.dataSourceId = data_sourceIdElements[0].firstChild.nodeValue;
            }

            var data_sourceNameElements = data_sourceElement.getElementsByTagName(FilterName.name);
            if (data_sourceNameElements && data_sourceNameElements.length > 0) {
                filterResult.data.dataSourceName = data_sourceNameElements[0].firstChild.nodeValue;
            }
        }
        
        var server_urlElements = xmlDoc.getElementsByTagName(FilterName.server_url);
        if (validateElements(server_urlElements)) {
            filterResult.data.server_url = server_urlElements[0].firstChild.nodeValue;
        }
        
        for (var i = 0; i < subject_listElements.length; i++) {
            filterSubjectListData(subject_listElements[i], filterResult);
        }
    }

    /**
     * 注： 在添加数据源字段
     */
    function filterSubjectListData(subjectList, filterResult) {
        var datatype = subjectList.getAttribute(FilterName.datatype);
        if (!datatype) {
            console.log("未知数据类型，请检查");
            return;
        }

        if (datatype == DataType.nowplaying) {
            filterResult.queryType = "broadQuery";
            
            var nowplaying = {};
            nowplaying.type = "released";
            filterCommonElement(subjectList, nowplaying);
            filterSubjectItems(subjectList, nowplaying);
            
            filterResult.data.nowplaying = nowplaying;
            
        } else if (datatype == DataType.coming) {
            filterResult.queryType = "broadQuery";
            
            var coming = {};
            coming.type = "berelease";
            filterCommonElement(subjectList, coming);
            filterSubjectItems(subjectList, coming);
            
            filterResult.data.coming = coming;
            
        } else if (datatype == DataType.detail) {
            filterResult.queryType = "specificQuery";
            var subjects = subjectList.getElementsByTagName(FilterName.subject);
            if (subjects && subjects.length > 0) {
                filterResult.data = filterSubjectItem(subjects[0]);
                filterMovieDetail(subjects[0], filterResult.data);
            }
        }

    }
    
    /**
     * 解析subjectList中的电影条目 
     */
    function filterSubjectItems(subjectList, object) {
        var subjects = subjectList.getElementsByTagName(FilterName.subject);
        if (!validateElements(subjects)) {
            console.log("无电影条目需要解析，请检查");
            return;
        }

        var movies = new Array();
        for (var i = 0; i < subjects.length; i++) {
            var movie = filterSubjectItem(subjects[i]);
            if (movie) {
                movies.push(movie);
            }
        }
        object.movies = movies;
    }
    
    /**
     * 解析具体查询电影字段 
     */
    function filterMovieDetail(subject, data) {
        var directorss = subject.getElementsByTagName(FilterName.directors);
        if (validateElements(directorss)) {
            var directors = directorss[0].getElementsByTagName(FilterName.director);
            if (validateElements(directors)) {
                var names = directors[0].getElementsByTagName(FilterName.name);
                if (validateElements(names)) {
                    data.director = names[0].firstChild.nodeValue;
                }
            }
        }
        
        var actorss = subject.getElementsByTagName(FilterName.actors);
        if (validateElements(actorss)) {
            var actor = "";
            var actors = actorss[0].getElementsByTagName(FilterName.actor);
            if (validateElements(actors)) {
                for (var i = 0; i < actors.length; i++) {
                    var names = actors[i].getElementsByTagName(FilterName.name);
                    if (validateElements(names)) {
                        var name = names[0].firstChild.nodeValue;
                        actor = (i != actors.length - 1) ? actor + name
                            + ",," : actor + name;
                    }
                }
            }
            data.actors = actor;
        }
        
        var summarys = subject.getElementsByTagName(FilterName.summary);
        if (validateElements(summarys)) {
           var summary = summarys[0].firstChild.nodeValue;
           if (summary && summary.length > 68) {
                summary = summary.substring(0, 67) + "SUMARYREPLACEMENT";
                summary = summary.replace("SUMARYREPLACEMENT", "...");
            }
            data.info = summary;
        } else {
            data.info = "";
        }
        
        var comments_counts = subject.getElementsByTagName(FilterName.comments_count);
        if (validateElements(comments_counts)) {
            data.shotComment = comments_counts[0].firstChild.nodeValue;
        } else {
            data.shotComment = "0";
        }
        
        var comments_urls = subject.getElementsByTagName(FilterName.comments_url);
        if (validateElements(comments_urls)) {
            data.shotCommentUrl = comments_urls[0].firstChild.nodeValue;
        } else {
            data.shotCommentUrl = "http://movie.douban.com";
        }
        
        var reviews_counts = subject.getElementsByTagName(FilterName.reviews_count);
        if (validateElements(reviews_counts)) {
            data.comment = reviews_counts[0].firstChild.nodeValue;
        } else {
            data.comment = "0";
        }
        
        var reviews_urls = subject.getElementsByTagName(FilterName.reviews_url);
        if (validateElements(reviews_urls)) {
            data.commentUrl = reviews_urls[0].firstChild.nodeValue;
        } else {
            data.commentUrl = "http://movie.douban.com";
        }
    }
    
    /**
     * 解析一条电影信息 
     */
    function filterSubjectItem(subject) {
        var movie = {};
        
        var titles = subject.getElementsByTagName(FilterName.title);
        if (validateElements(titles)) {
            movie.name = titles[0].firstChild.nodeValue;
        } else {
            movie.name = "--";
        }
        
        var releaseDates = subject.getElementsByTagName(FilterName.pubdate);
        if (validateElements(releaseDates)) {
            movie.releaseDate = releaseDates[0].firstChild.nodeValue;
        } else {
            movie.releaseDate = "--";
        }
        
        var levels = subject.getElementsByTagName(FilterName.stars);
        if (validateElements(levels)) {
            movie.level = getStarLevel(levels[0].firstChild.nodeValue);
        } else {
            movie.level = 0;
        }
        
        var grades = subject.getElementsByTagName(FilterName.average);
        if (validateElements(grades)) {
            movie.grade = grades[0].firstChild.nodeValue;
        } else {
            movie.grade = "0";
        }
        
        var filmPosters = subject.getElementsByTagName(FilterName.pic_url);
        if (validateElements(filmPosters)) {
            movie.filmPoster = filmPosters[0].firstChild.nodeValue;
        } else {
            movie.filmPoster = "--";
        }
        
        var detailUrls = subject.getElementsByTagName(FilterName.detail_url);
        if (validateElements(detailUrls)) {
            movie.detailUrl = detailUrls[0].firstChild.nodeValue;
        } else {
            movie.detailUrl = "http://movie.douban.com";
        }
        
        return movie;
    }

    /**
     * 解析电影公有字段
     */
    function filterCommonElement(subjectList, filterResult) {
        var page_indexs = subjectList.getElementsByTagName(FilterName.page_index);
        if (validateElements(page_indexs)) {
            filterResult.currentServerPage = validateValue(page_indexs[0].firstChild.nodeValue, "0");
        }

        var page_totals = subjectList.getElementsByTagName(FilterName.page_total);
        if (validateElements(page_totals)) {
            filterResult.totalServerPages = validateValue(page_totals[0].firstChild.nodeValue, "0");
        }

        // 是否需要除以4
        var record_counts = subjectList.getElementsByTagName(FilterName.record_count);
        if (validateElements(record_counts)) {
            var count = validateValue(record_counts[0].firstChild.nodeValue, 0);
            filterResult.totalPage = count / 4;
        }
    }

    /**
     * 验证元素数据是否合法
     * @param {Object} elementList
     */
    function validateElements(elementList) {
        if (elementList && elementList.length > 0 && elementList[0].firstChild) {
            return true;
        }

        return false;
    }

    /**
     * 验证数据的合法性
     * @param {Object} targetValue
     * @param {Object} defaultValue
     */
    function validateValue(targetValue, defaultValue) {
        if (targetValue) {
            return targetValue;
        }

        return defaultValue;
    }

    function getStarLevel(score) {
        if (!score) {
            return 0;
        }
        try {
            var scoreFloat = parseFloat(score);
            if (scoreFloat >= 0 && scoreFloat <= 100) {
                // 将分数（0~100）转化为星级（0~5），并小数点保留1位
                var resultFloat = Math.round(scoreFloat/20*10)/10;
                return resultFloat;
            }
        } catch (e) {
            console.log(e.message);
        }
        return 0;
    }
    
    function onSuccess(filterResult, xmlDoc) {
        console.log("JSON.stringify(filterResult) = " + JSON.stringify(filterResult));
        filterBusinessResult(filterResult, xmlDoc);
        // startTtsSpeak(filterResult.tip);
        // if(!filterResult.data || !filterResult.data.url) {
            // console.log("param is null");
            // return;
        // }
        setTimeout(function() {
            if(filterResult.data && filterResult.data.url) {
                var webObj = {};
                webObj.mTextSearchMode = filterResult.isTextSearchResult;
                webObj.mSpeechText = filterResult.speech;
                webObj.mRawText = filterResult.rawtext;
                webObj.mUrl = filterResult.data.url;
                webObj.mIsVoiceResult = true;

                exec("UIComponents", "addAnswerMessage", [filterResult.tip, false]);
                exec("UIComponents", "addCommonResultMessage", [filterResult.rawtext, filterResult.data.url]);

                exec("WidgetMMPContainerComponents", "addWebViewForLocation", [webObj]);


                console.log("vcinema show URL for movie");
            } else {
                addWebE("WidgetVCinemaView", filterResult);
                console.log("vcinema show data for movie");
            }
        }, 150);
    }

    //export
    var movieRecognizeFilter = {};
    movieRecognizeFilter.filterBusinessResult = filterBusinessResult;
    movieRecognizeFilter.onSuccess = onSuccess;
    return movieRecognizeFilter;

});
