define(function() {
    function showMovieView(jsonResult) {
        var dataType = jsonResult.queryType;
        var data = jsonResult.data;
        var resultView = null;
        switch(dataType) {
            case "broadQuery":
                resultView = createMoviePanel(data);
                break;
                ;
            case "specificQuery":
                resultView = createSpecificMovieView(data);
                break;
        }
    
        require(["./common/speakHandler.js"], function(speakHandler) {
            console.log("require speakHandler");
            speakHandler.showSpeakButton();
            var speakText = null;
            if (jsonResult.tip) {
                speakText = jsonResult.tip;
            } else if (jsonResult.speech) {
                speakText = jsonResult.speech;
            }
            speakHandler.setSpeechText(speakText);
            if (!jsonResult.isTextSearchResult) {
                speakHandler.speak();
            }
        }); 
        return resultView;

    }

    //////////////////////////////
    //////////////////////////////
    //////////////////////////////
    var currentContentItems;
    var released_content_items, berelease_content_items;
    var serverUrl;

    var broad_query_view_container;
    var broad_query_view_bottom;
    var middleContent;

    // 页面显示标记
    var movie_items_content_show_flag = "movie_items_show_flag";
    // 页面隐藏标记
    var movie_items_content_hidden_flag = "movie_items_hidden_flag";

    // 正在上映
    var releasedType = "released";
    // 即将上映
    var beReleaseType = "berelease";
    var movie_item_class_name = "css_moive_item_div";
    // 电影海报
    var film_poster_class_name = "css_film_poster_img";
    // 电影名称
    var movie_name_class_name = "css_movie_name_label";
    var movie_name_comming_class_name = "css_movie_name_comming_label";
    // 上映时间
    var movie_release_date_class_name = "css_movie_release_date_label";
    var movie_release_date_comming_class_name = "css_movie_release_date_comming_label";
    // 电影星级
    var movie_stars_class_name = "css_movie_stars_div";
    // 电影评分
    var movie_grade_class_name = "css_movie_grade_label";
    var showSide = releasedType;

    function createMoviePanel(data) {
        var recentMovieView = createMovieBroadQueryView();

        recentMovieView.refresh();
        pullLoadMoreHelper.createLoadMoreDiv(middleContent, function() {
            if (isNetWorkAvailable()) {
                request(currentContentItems);
            } else {
                pullLoadMoreHelper.stopRefresh();
                showToast("网络未打开，请检查网络设置");
            }
        });
        broad_query_view_container.loadSuccess(data);
        return recentMovieView;
    }

    function createMovieBroadQueryView() {
        broad_query_view_container = document.createElement("div");
        broad_query_view_container.className = "css_broad_query_view_container_div";

        /* 上部分 */
        var broad_query_view_top = document.createElement("div");
        broad_query_view_top.className = "css_broad_query_view_div";
        var top_menus = createTopMenus();
        broad_query_view_top.appendChild(top_menus);

        /* 中部分 包括 正在上映和 即将上映两部分 */
        broad_query_view_bottom = document.createElement("div");
        broad_query_view_bottom.className = "css_broad_query_view_bottom_div";

        // 正在上映
        var broad_query_released = document.createElement("div");
        broad_query_released.className = movie_items_content_hidden_flag;
        broad_query_released.id = movie_items_content_show_flag;

        var released_content_container = document.createElement("div");
        released_content_container.id = "id_released_content_container";

        // 首次显示正在上映
        released_content_items = document.createElement("div");
        released_content_items.className = "css_movie_items_div";
        released_content_items.type = releasedType;
        released_content_items.currentServerPage = 0;
        released_content_container.appendChild(released_content_items);
        broad_query_released.appendChild(released_content_container);

        // 即将上映
        var broad_query_berelease = document.createElement("div");
        broad_query_berelease.className = movie_items_content_hidden_flag;

        var berelease_content_container = document.createElement("div");
        berelease_content_container.id = "id_berelease_content_container";

        berelease_content_items = document.createElement("div");
        berelease_content_items.className = "css_movie_items_div";
        berelease_content_items.type = beReleaseType;
        berelease_content_items.currentServerPage = 0;
        berelease_content_container.appendChild(berelease_content_items);
        broad_query_berelease.appendChild(berelease_content_container);

        // 电影数据主体内容
        middleContent = document.createElement("div");
        middleContent.className = "css_movie_middle_content_div";
        middleContent.appendChild(broad_query_released);
        middleContent.appendChild(broad_query_berelease);

        broad_query_view_bottom.appendChild(middleContent);

        var itemTouch = {
            touchStart : function(mElement) {
                mElement.style.backgroundColor = "#e5e5e5";
            },
            touchMoveEnd : function(mElement) {
                mElement.style.backgroundColor = "";
            }
        };
        setViewListener(released_content_items, itemTouch, movie_item_class_name, true, function(target) {
            // window.open(target.filmUrl);
            exec("UIComponents", 'openBrowser', ["", target.filmUrl]);
        });

        setViewListener(berelease_content_items, itemTouch, movie_item_class_name, true, function(target) {
            // window.open(target.filmUrl);
            exec("UIComponents", 'openBrowser', ["", target.filmUrl]);
        });

        broad_query_view_container.appendChild(broad_query_view_top);
        broad_query_view_container.appendChild(broad_query_view_bottom);

        broad_query_view_container.refresh = function() {
            top_menus.drawBg(showSide);
        };

        middleContent.init = function(data) {
            console.log("data = " + data);
            serverUrl = data.server_url;
            if (data.nowplaying) {
                createContentItems(released_content_items, releasedType, data);
            }
            if (data.coming) {
                createContentItems(berelease_content_items, beReleaseType, data);
            }
            this.style.display = "block";
        };

        broad_query_view_container.loadSuccess = function(data) {
            middleContent.init(data);
        };
        
        document.body.appendChild(broad_query_view_container);

        return broad_query_view_container;
    }

    /**
     *创建TAB按钮
     */
    function createTopMenus() {
        var menus = document.createElement("ul");
        var menu_left = document.createElement("li");
        var menu_left_content = document.createElement("div");
        menu_left_content.className = "css_menu_content_div css_menu_content_div_line";
        var menu_left_label = document.createElement("div");
        menu_left_label.innerHTML = "正在热映";
        menu_left_label.setAttribute("onclick", "");
        menu_left_content.appendChild(menu_left_label);
        menu_left.appendChild(menu_left_content);

        menu_left.drawNormal = function() {
            menu_left_label.className = "css_menu_left_label_div";
        };
        menu_left.drawSelected = function() {
            showSide = releasedType;
            menu_left_label.className = "css_menu_left_label_div_sel";
            currentContentItems = released_content_items;
        };

        var menu_right = document.createElement("li");
        var menu_right_content = document.createElement("div");
        menu_right_content.className = "css_menu_content_div";
        var menu_right_label = document.createElement("div");
        menu_right_label.innerHTML = "即将上映";
        menu_right_label.setAttribute("onclick", "");
        menu_right_content.appendChild(menu_right_label);
        menu_right.appendChild(menu_right_content);

        menu_right.drawNormal = function() {
            menu_right_label.className = "css_menu_right_label_div";
        };
        menu_right.drawSelected = function() {
            showSide = beReleaseType;
            menu_right_label.className = "css_menu_right_label_div_sel";
            currentContentItems = berelease_content_items;
        };

        // 添加事件处理
        menu_left.addEventListener("touchend", function() {
            handleTouchEvent(this, movie_items_content_hidden_flag);
        }, false);
        menu_right.addEventListener("touchend", function() {
            handleTouchEvent(this, movie_items_content_hidden_flag);
        }, false);
        // 组装menus
        menus.appendChild(menu_left);
        menus.appendChild(menu_right);

        menus.drawBg = function(selectSide) {
            if (selectSide == releasedType) {
                menu_left.drawSelected();
                menu_right.drawNormal();
            } else {
                menu_left.drawNormal();
                menu_right.drawSelected();
            }
        };

        return menus;
    }

    /**
     *创建内容条目
     */
    function createContentItems(moviesContainer, pageType, data) {
        var movies = null;
        var currentServerPage = null;
        var totalServerPages = null;
        if (pageType == releasedType) {
            movies = data.nowplaying.movies;
            currentServerPage = data.nowplaying.currentServerPage;
            totalServerPages = data.nowplaying.totalServerPages;
        } else if (pageType == beReleaseType) {
            movies = data.coming.movies;
            currentServerPage = data.coming.currentServerPage;
            totalServerPages = data.coming.totalServerPages;
        }
        if (!movies) {
            console.log("无电影数据");
            return;
        }

        moviesContainer.type = pageType;
        moviesContainer.currentServerPage = parseInt(currentServerPage);
        moviesContainer.totalServerPages = parseInt(totalServerPages);
        
        // 设置数据源ID
        if (!moviesContainer.dataSourceId && data.dataSourceId) {
            moviesContainer.dataSourceId = data.dataSourceId;
        }
        // 设置数据源name
        if (!moviesContainer.dataSourceName && data.dataSourceName) {
            moviesContainer.dataSourceName = data.dataSourceName;
        }

        for (var i = 0; i < movies.length; i++) {
            var movieItem = document.createElement("div");
            movieItem.className = movie_item_class_name;
            var itemContent = document.createElement("div");

            // 电影明细左部分
            var movieItemLeft = document.createElement("div");
            movieItemLeft.className = "css_movie_item_left_div";
            var filmPoster = document.createElement("img");
            filmPoster.className = film_poster_class_name;
            filmPoster.addEventListener("error", function() {
                this.src = cover_default;
            }, false);
            movieItemLeft.appendChild(filmPoster);

            // 电影明细中部分
            var movieItemMiddle = document.createElement("div");
            movieItemMiddle.className = "css_movie_item_middle_div";
            var movieNamePackage = document.createElement("div");
            var movieName = document.createElement("label");
            movieName.className = movie_name_class_name;
            movieNamePackage.appendChild(movieName);

            var movieReleaseDatePackage = document.createElement("div");
            movieReleaseDatePackage.className = "css_movie_release_date_package_div";
            var movieReleaseDate = document.createElement("label");
            movieReleaseDate.className = movie_release_date_class_name;
            movieReleaseDatePackage.appendChild(movieReleaseDate);
            movieItemMiddle.appendChild(movieNamePackage);
            movieItemMiddle.appendChild(movieReleaseDatePackage);

            if (pageType == releasedType) {
                var movieStarsAndGrade = document.createElement("div");
                movieStarsAndGrade.className = "css_movie_stars_and_grade_div";
                var movieStars = document.createElement("div");
                movieStars.className = movie_stars_class_name;
                var movieGrade = document.createElement("label");
                movieGrade.className = movie_grade_class_name;
                movieStarsAndGrade.appendChild(movieStars);
                movieStarsAndGrade.appendChild(movieGrade);
                movieItemMiddle.appendChild(movieStarsAndGrade);
            } else if (pageType == beReleaseType) {
                movieName.className = movie_name_comming_class_name;
                movieReleaseDatePackage.className = "css_movie_release_date_comming_package_div";
            }

            // 电影明细右部分
            var movieItemRight = document.createElement("div");
            movieItemRight.className = "css_movie_item_right_div";
            linkImg = document.createElement("img");
            linkImg.className = "css_link_img";
            linkImg.src = ic_list_arrow_left;
            movieItemRight.appendChild(linkImg);

            itemContent.appendChild(movieItemLeft);
            itemContent.appendChild(movieItemMiddle);
            itemContent.appendChild(movieItemRight);

            movieItem.appendChild(itemContent);
            initItemView(movieItem, movies[i], pageType);

            moviesContainer.appendChild(movieItem);
        }

        checkServerPage();
    }

    /**
     * 设置指定页面内容
     */
    function initItemView(itemView, movieValue, pageType) {
        if (itemView && movieValue) {
            itemView.style.display = "inline-block";
            itemView.getElementsByClassName(film_poster_class_name)[0].src = movieValue.filmPoster;
            itemView.filmUrl = movieValue.detailUrl;
            itemView.getElementsByClassName(movie_release_date_class_name)[0].innerText = "上映时间：" + movieValue.releaseDate;
            if (pageType == beReleaseType) {
                itemView.getElementsByClassName(movie_name_comming_class_name)[0].innerText = movieValue.name;

            } else if (pageType == releasedType) {
                itemView.getElementsByClassName(movie_name_class_name)[0].innerText = movieValue.name;
                var movieItemStars = createStars(movieValue.level);
                itemView.getElementsByClassName(movie_stars_class_name)[0].innerHTML = movieItemStars.innerHTML;
                itemView.getElementsByClassName(movie_grade_class_name)[0].innerText = movieValue.grade;
            }
        }
    }

    /**
     * 处理Touchstart事件
     */
    function handleTouchEvent(obj, contentTag) {
        if (obj.className == "css_menu_selected_tag") {
            return;
        }
        document.body.scrollTop = 0;
        var arrayLi = obj.parentNode.getElementsByTagName("li");
        var arrayDiv = document.getElementsByClassName(contentTag);
        var arrayLen = arrayLi.length;
        for (var i = 0; i < arrayLen; i++) {
            if (arrayLi[i] == obj) {
                arrayLi[i].drawSelected();
                arrayLi[i].className = "css_menu_selected_tag";
                arrayDiv[i].id = movie_items_content_show_flag;
            } else {
                arrayLi[i].drawNormal();
                arrayDiv[i].id = "";
                arrayLi[i].className = "";
            }
        }
        
        // 根据当前页面是否在加载，设置加载动画
        if (currentContentItems.isRequesting) {
            pullLoadMoreHelper.startRefresh();
        } else {
            pullLoadMoreHelper.stopRefresh();
        }
        checkServerPage();
    }

    /**
     * 验证当前页面是否已经请求所有数据
     */
    function checkServerPage() {
        if (currentContentItems.currentServerPage < currentContentItems.totalServerPages) {
            pullLoadMoreHelper.recoverRefreshDiv();
        } else {
            pullLoadMoreHelper.hideRefreshDiv();
        }
    }

    
    /**
     * 创建电影星级
     */
    function createStars(level) {
        var stars = document.createElement("div");
        stars.className = "css_stars_div";
        for (var i = 1; i <= 5; i++) {
            var starImg = document.createElement("img");
            starImg.src = (i <= level) ? star_full : (i <= parseFloat(level) + 0.5) ? star_half : star_empty;
            stars.appendChild(starImg);
        }
        return stars;
    }

    /**
     * 给指定页面添加对应事件
     * @param {Object} view
     * @param {Object} touchEvent
     * @param {Object} targetClassName
     * @param {Object} isParent
     * @param {Object} callback
     */
    function setViewListener(view, touchObj, targetClassName, isParent, callback) {
        if (!isParent) {
            console.log("NOVEL_SUB_TOP --> setListener for child node");
            view = getChildByClass(view, targetClassName);
        }
        if (view && callback && touchObj && targetClassName) {
            var targetElement = null;
            view.addEventListener("touchstart", function() {
                if (event.target) {
                    targetElement = getParentOfClass(targetClassName, event.target);
                }

                if (targetElement) {
                    moveOverCheck.start(event);
                    touchObj.touchStart(targetElement);
                }

            }, false);
            view.addEventListener("touchmove", function() {
                if (targetElement) {
                    touchObj.touchMoveEnd(targetElement);
                    if (moveOverCheck.check(event)) {
                        targetElement = null;
                    }
                }
            }, false);
            view.addEventListener("touchend", function() {
                if (targetElement) {
                    touchObj.touchMoveEnd(targetElement);
                    callback(targetElement);
                }
                targetElement = null;
            }, false);
        }
    }

    /**
     * 获取第一个指定className的子节点
     */
    function getChildByClass(parentView, childClass) {
        if (parentView && childClass) {
            var firstChildNode = parentView.getElementsByClassName(childClass)[0];
            return firstChildNode;
        }
        return null;
    }

    /**
     * 分类请求
     */
    function request(contentView) {
        if (contentView.isRequesting) {
            console.log("当前正在请求" + contentView.type + "类型数据");
            return;
        }
        if (contentView.currentServerPage < contentView.totalServerPages) {
            sendTextRequest(contentView);
        }
    }

    /** 获取正在上映电影 */
    var PLAYING_MOVIE = "video_nowplaying";
    /** 获取即将上映电影 */
    var COMING_MOVIE = "video_coming";

    function createXMLStr(contentView) {
        var head = '<?xml version="1.0" encoding="utf-8"?>';
        var requestDocument = document.implementation.createDocument("http://www.w3.org/1999/xhtml", "request", null);
        var request = requestDocument.documentElement;
        //cmd
        var cmd = document.createElement("cmd");
        if (contentView.type == beReleaseType) {
            cmd.textContent = COMING_MOVIE;
            // 请求即将上映
        } else if (contentView.type == releasedType) {
            cmd.textContent = PLAYING_MOVIE;
            // 请求正在上映
        }
        request.appendChild(cmd);
        //base
        var base = getBaseInfo();
        request.appendChild(base);
        //param
        var param = document.createElement("param");
        //data_source
        var dataSource = document.createElement("data_source");
        param.appendChild(dataSource);
        // id
        if (contentView.dataSourceId) {
            var dataSourceId = document.createElement("id");
            dataSourceId.textContent = contentView.dataSourceId;
            dataSource.appendChild(dataSourceId);
        }
        // name
        if (contentView.dataSourceName) {
            var dataSourceName = document.createElement("name");
            dataSourceName.textContent = contentView.dataSourceName;
            dataSource.appendChild(dataSourceName);
        }
        // pageIndex
        var pageIndexElement = document.createElement("page_index");
        pageIndexElement.textContent = contentView.currentServerPage + 1;
        param.appendChild(pageIndexElement); 

        
        request.appendChild(param);
        var xs = new XMLSerializer();
        requestDocumentStr = xs.serializeToString(requestDocument);
        var xmlStr = head + requestDocumentStr;
        console.log('createXMLStr end, xmlStr is ' + xmlStr);
        return xmlStr;
    }


    /**
     * 二次请求，请求更多的电影数据
     * @param contentView
     */
    function sendTextRequest(contentView) {
        var xmlHttp = new XMLHttpRequest();
        //超时检测定时器
        var timer;
        //超时处理
        function connectionFail() {
            console.warn('connection is timeout');
            if (xmlHttp) {
                xmlHttp.abort();
            }
            stopRefresh(contentView);
            contentView.isRequesting = false;
        }

        xmlHttp.onreadystatechange = function() {
            contentView.isRequesting = false;
            if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                if (timer) {
                    //清除定时器
                    clearTimeout(timer);
                }
                // 从服务器的response获得数据
                var xmlDocument = xmlHttp.responseXML;
                // 转化成string，便于输出log
                var resStr = new XMLSerializer().serializeToString(xmlDocument);
                console.log('http response is ' + resStr);
                //直接传入doc对象，便于解析处理
                var filterResult = {};
                require(['./cinemasvideo/movieHandler.js'], function(recognizeFilter) {
                    recognizeFilter.filterBusinessResult(filterResult, xmlDocument);
                    console.log('filter business result end, filterResult is ' + JSON.stringify(filterResult));
                    if (filterResult && filterResult.data) {
                        var playing = filterResult.data.nowplaying;
                        var coming = filterResult.data.coming;
                        if (playing || coming) {
                            broad_query_view_container.loadSuccess(filterResult.data);
                        } 
                    } 
                    stopRefresh(contentView);
                });
            } else if (xmlHttp.readyState == 4) {
                if (timer) {
                    //清除定时器
                    clearTimeout(timer);
                }
                stopRefresh(contentView);
            }
        };

        var url = null;
        if (serverUrl) {
            console.log("serverUrl = " + serverUrl);
            url = serverUrl;
        } else {
            url = getServerUrl();
        }
        if (contentView.type == releasedType) {
            url = url + "5001";
            // 请求正在上映
        } else if (contentView.type == beReleaseType) {
            url = url + "5002";
            // 请求即将上映
        } else {
            console.log("请求类型未知：" + contentView.type);
            return;
        }
        console.log("request url is " + url);

        var xml = createXMLStr(contentView);
        xmlHttp.open("POST", url, true);
        xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
        if (xmlHttp.overrideMimeType) {//设置MiME类别
            xmlHttp.overrideMimeType("text/xml");
        }

        xmlHttp.send(xml);
        contentView.isRequesting = true;

        //开启超时检测
        timer = setTimeout(connectionFail, 20000);
    }

    /**
     * 请求失败
     * @param {Object} contentView
     */
    function stopRefresh(contentView) {
        if (contentView.type == currentContentItems.type) {
            pullLoadMoreHelper.stopRefresh();
        }
    }

    //////////////////////////////
    //////////////////////////////
    //////////////////////////////

    ///////////////////////////具体查询页面开始///////////////////////////

    /**
     * 创建具体查询界面
     * @param {Object} data
     */
    function createSpecificMovieView(data) {
        var outDiv = document.createElement("div");
        outDiv.className = 'box_content_white';

        var specific_query_view_container = document.createElement("div");

        var topPart = document.createElement("div");
        topPart.className = "css_top_part_div";

        // 电影主要信息 包括：海报、星级、主演、导演
        var movieMainInfo = document.createElement("div");
        movieMainInfo.className = "css_movie_main_info_div";
        var mainInfoLeft = document.createElement("div");
        mainInfoLeft.className = "css_main_info_left_div";
        var filmPoster = document.createElement("img");
        filmPoster.className = "css_specific_film_poster_img";
        filmPoster.src = data.filmPoster;
        filmPoster.addEventListener("error", function() {
            this.src = cover_default;
        }, false);
        mainInfoLeft.appendChild(filmPoster);

        var mainInfoRight = document.createElement("div");
        mainInfoRight.className = "css_main_info_right_div";
        var movieName = document.createElement("div");
        movieName.className = "css_specific_movie_name_div";
        movieName.innerText = data.name;
        movieName.id = data.detailUrl;
        var movieStarAndGrade = document.createElement("div");
        movieStarAndGrade.className = "css_movie_star_grade_div";
        var stars = createStars(data.level);
        stars.className = "css_movie_stars_div";
        var grade = document.createElement("label");
        grade.className = "css_movie_grade_label";
        grade.innerText = data.grade;
        movieStarAndGrade.appendChild(stars);
        movieStarAndGrade.appendChild(grade);

        var movieDirector = document.createElement("label");
        movieDirector.className = "css_movie_director_label";
        movieDirector.innerText = "导演：" + data.director;

        var movieActors = document.createElement("div");
        movieActors.className = "css_movie_actors_div";

        var actorsLabel = document.createElement("label");
        actorsLabel.className = "css_actors_label";
        actorsLabel.innerText = "主演：";
        var actorsList = document.createElement("div");
        actorsList.className = "css_actors_list_div";
        actorsList.innerHTML = setActorList(data.actors);
        var mainInfoLinkImg = createLinkImg();
        mainInfoLinkImg.className = "css_main_info_link_img";

        movieActors.appendChild(actorsLabel);
        movieActors.appendChild(actorsList);
        movieActors.appendChild(mainInfoLinkImg);

        mainInfoRight.appendChild(movieName);
        mainInfoRight.appendChild(movieStarAndGrade);
        mainInfoRight.appendChild(movieDirector);
        mainInfoRight.appendChild(movieActors);

        movieMainInfo.appendChild(mainInfoLeft);
        movieMainInfo.appendChild(mainInfoRight);

        // 电影简介
        var movieInfoWithBaseline = document.createElement("div");
        var movieInfo = document.createElement("div");
        movieInfo.className = "css_movie_info_div";
        movieInfo.innerText = "简介：" + data.info;

        movieInfoWithBaseline.appendChild(movieInfo);

        topPart.appendChild(movieMainInfo);
        topPart.appendChild(movieInfoWithBaseline);

        topPart.detailUrl = data.detailUrl;

        topPart.drawTouchedBg = function() {
            topPart.style.backgroundColor = "#e5e5e5";
        };

        topPart.clearTouchBg = function() {
            console.log("clearTouchBg...");
            topPart.style.backgroundColor = "";
        };

        topPart.execTargetOperation = function() {
            // window.location.href = topPart.detailUrl;
            exec("UIComponents", 'openBrowser', ["", topPart.detailUrl]);
        };

        // 短评
        var movieShotCommentWithBaseline = document.createElement("div");
        movieShotCommentWithBaseline.className = "css_movie_shot_comment_with_baseline_div";
        var movieShotComment = document.createElement("div");
        movieShotComment.className = "css_movie_comment_div";
        var shotCommentLabel = document.createElement("label");
        shotCommentLabel.className = "css_shot_comment_label";
        var shotComment = parseInt(data.shotComment);
        shotCommentLabel.innerText = "豆瓣短评（全部" + shotComment + "条）";
        if (shotComment != 0) {
            var shotCommentLinkImg = createLinkImg();
            shotCommentLinkImg.className = "css_comment_link_img";
            shotCommentLinkImg.id = data.shotCommentUrl;
            movieShotComment.appendChild(shotCommentLinkImg);
        } else {
            shotCommentLabel.style.color = "#bbbbbb";
        }

        movieShotComment.appendChild(shotCommentLabel);
        movieShotCommentWithBaseline.appendChild(movieShotComment);
        movieShotCommentWithBaseline.shotCommentUrl = data.shotCommentUrl;

        movieShotCommentWithBaseline.drawTouchedBg = function() {
            movieShotCommentWithBaseline.style.backgroundColor = "#e5e5e5";
        };

        movieShotCommentWithBaseline.clearTouchBg = function() {
            movieShotCommentWithBaseline.style.backgroundColor = "";
        };

        movieShotCommentWithBaseline.execTargetOperation = function() {
            // window.location.href = this.shotCommentUrl;
            exec("UIComponents", 'openBrowser', ["", this.shotCommentUrl]);
        };

        // 影评
        var movieContentWithoutBaseline = document.createElement("div");
        movieContentWithoutBaseline.className = "css_movie_content_without_baseline_div";

        var movieComment = document.createElement("div");
        movieComment.className = "css_movie_comment_div";
        var moiveComment = parseInt(data.comment);
        var commentLabel = document.createElement("label");
        commentLabel.innerText = "豆瓣影评（全部" + moiveComment + "条）";
        if (moiveComment != 0) {
            var commentLinkImg = createLinkImg();
            commentLinkImg.className = "css_comment_link_img";
            commentLinkImg.id = data.commentUrl;
            movieComment.appendChild(commentLinkImg);
        } else {
            commentLabel.style.color = "#bbbbbb";
        }
        movieComment.appendChild(commentLabel);
        movieContentWithoutBaseline.appendChild(movieComment);

        movieContentWithoutBaseline.commentUrl = data.commentUrl;
        movieContentWithoutBaseline.drawTouchedBg = function() {
            movieContentWithoutBaseline.style.backgroundColor = "#e5e5e5";
        };

        movieContentWithoutBaseline.clearTouchBg = function() {
            movieContentWithoutBaseline.style.backgroundColor = "";
        };

        movieContentWithoutBaseline.execTargetOperation = function() {
            // window.location.href = this.commentUrl;
            exec("UIComponents", 'openBrowser', ["", this.commentUrl]);
        };

        ////////组装
        specific_query_view_container.appendChild(topPart);
        specific_query_view_container.appendChild(movieShotCommentWithBaseline);
        specific_query_view_container.appendChild(movieContentWithoutBaseline);

        var oTouchTarget = null;
        specific_query_view_container.addEventListener("touchstart", function() {
            event.stopPropagation();
            // 上部分
            oTouchTarget = getParentOfClass("css_top_part_div", event.target);
            if (!oTouchTarget) {
                // 中部分
                oTouchTarget = getParentOfClass("css_movie_shot_comment_with_baseline_div", event.target);
                if (!oTouchTarget) {
                    // 下部分
                    oTouchTarget = getParentOfClass("css_movie_content_without_baseline_div", event.target);
                }
            }
            if (oTouchTarget) {
                moveOverCheck.start(event);
                oTouchTarget.drawTouchedBg();
            }
        });

        specific_query_view_container.addEventListener("touchmove", function() {
            event.stopPropagation();
            if (oTouchTarget) {
                oTouchTarget.clearTouchBg();
                if (moveOverCheck.check(event)) {
                    oTouchTarget = null;
                }
            }
        });

        specific_query_view_container.addEventListener("touchend", function() {
            event.stopPropagation();
            if (oTouchTarget) {
                oTouchTarget.clearTouchBg();
                oTouchTarget.execTargetOperation();
                oTouchTarget = null;
            }
        });

        outDiv.appendChild(specific_query_view_container);

        //添加外壳
        document.body.appendChild(outDiv);

        return outDiv;

    }

    /**
     * 设置演员列表，如果多于三个只保留三个
     */
    function setActorList(actorsStr) {
        var actorArray = actorsStr.split(",,");
        var length = actorArray.length;
        length = length > 3 ? 3 : length;
        var htmlStr = "";
        for (var i = 0; i < length; i++) {
            htmlStr += (i != length - 1 ? actorArray[i] + "<br>" : actorArray[i]);
        }
        return htmlStr;
    }

    /**
     * 生成链接引导小图标
     */
    function createLinkImg() {
        var linkImg = document.createElement("img");
        linkImg.src = ic_list_arrow_left;
        return linkImg;
    }

    ///////////////////////////具体查询页面结束///////////////////////////

    return showMovieView;
}); 