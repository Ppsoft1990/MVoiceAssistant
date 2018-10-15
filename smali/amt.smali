.class public Lamt;
.super Ljava/lang/Object;
.source "BookBizParser.java"


# direct methods
.method public static a(Lorg/json/JSONObject;)Lamo$a;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 292
    if-eqz p0, :cond_0

    .line 293
    const-string/jumbo v5, "bookmarkid"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "bookMarkId":Ljava/lang/String;
    const-string/jumbo v5, "chapterid"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "chapterId":Ljava/lang/String;
    const-string/jumbo v5, "position"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 296
    .local v4, "position":I
    const-string/jumbo v5, "addtime"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "addTime":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v5}, Lamt;->a([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    new-instance v1, Lamo$a;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v5, v4}, Lamo$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 299
    .local v1, "bookMark":Lamo$a;
    invoke-virtual {v1, v0}, Lamo$a;->b(Ljava/lang/String;)V

    .line 303
    .end local v0    # "addTime":Ljava/lang/String;
    .end local v1    # "bookMark":Lamo$a;
    .end local v2    # "bookMarkId":Ljava/lang/String;
    .end local v3    # "chapterId":Ljava/lang/String;
    .end local v4    # "position":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .locals 17
    .param p0, "detail"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string/jumbo v14, "BookBizParser"

    const-string/jumbo v15, "parseChapterInfo "

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 37
    const/4 v1, 0x0

    .line 92
    :goto_0
    return-object v1

    .line 41
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v6, "detailObj":Lorg/json/JSONObject;
    const-string/jumbo v14, "chapterinfo"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 44
    .local v3, "chapterInfo":Lorg/json/JSONObject;
    if-eqz v3, :cond_5

    .line 45
    const-string/jumbo v14, "chapterid"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "chapterId":Ljava/lang/String;
    const-string/jumbo v14, "chaptername"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "chapterName":Ljava/lang/String;
    const-string/jumbo v14, "type"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 48
    .local v13, "type":I
    const-string/jumbo v14, "ordernum"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 49
    .local v10, "orderNum":I
    const-string/jumbo v14, "detailurl"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "detailUrl":Ljava/lang/String;
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v15, 0x2

    aput-object v7, v14, v15

    invoke-static {v14}, Lamt;->a([Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 53
    const-string/jumbo v14, "BookBizParser"

    const-string/jumbo v15, "parseChapterInfo  checkParamRight fail"

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v1, 0x0

    goto :goto_0

    .line 57
    :cond_1
    const-string/jumbo v14, "streamlist"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 58
    .local v12, "streamList":Lorg/json/JSONArray;
    invoke-static {v12}, Lamt;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 61
    .local v5, "chapterStreams":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/ChapterStream;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-gtz v14, :cond_2

    .line 62
    const-string/jumbo v14, "BookBizParser"

    const-string/jumbo v15, "parseChapterInfo  chapterStreams size error"

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v1, 0x0

    goto :goto_0

    .line 67
    :cond_2
    new-instance v1, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    invoke-direct {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;-><init>()V

    .line 68
    .local v1, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->l(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->m(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, v13}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a(I)V

    .line 71
    invoke-virtual {v1, v10}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b(I)V

    .line 72
    invoke-virtual {v1, v7}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a(Ljava/util/List;)V

    .line 74
    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->f()V

    .line 77
    const-string/jumbo v14, "nextchapter"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 78
    .local v9, "nextChapter":Lorg/json/JSONObject;
    if-eqz v9, :cond_3

    .line 79
    invoke-static {v9}, Lamt;->d(Lorg/json/JSONObject;)Lcom/iflytek/viafly/listenbook/entity/Chapter;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a(Lcom/iflytek/viafly/listenbook/entity/Chapter;)V

    .line 81
    :cond_3
    const-string/jumbo v14, "prevchapter"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 82
    .local v11, "prevChapter":Lorg/json/JSONObject;
    if-eqz v11, :cond_4

    .line 83
    invoke-static {v11}, Lamt;->d(Lorg/json/JSONObject;)Lcom/iflytek/viafly/listenbook/entity/Chapter;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b(Lcom/iflytek/viafly/listenbook/entity/Chapter;)V

    .line 86
    :cond_4
    const-string/jumbo v14, "BookBizParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "parseChapterInfo  get chapterAudio "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 89
    .end local v1    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .end local v2    # "chapterId":Ljava/lang/String;
    .end local v3    # "chapterInfo":Lorg/json/JSONObject;
    .end local v4    # "chapterName":Ljava/lang/String;
    .end local v5    # "chapterStreams":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/ChapterStream;>;"
    .end local v6    # "detailObj":Lorg/json/JSONObject;
    .end local v7    # "detailUrl":Ljava/lang/String;
    .end local v9    # "nextChapter":Lorg/json/JSONObject;
    .end local v10    # "orderNum":I
    .end local v11    # "prevChapter":Lorg/json/JSONObject;
    .end local v12    # "streamList":Lorg/json/JSONArray;
    .end local v13    # "type":I
    :catch_0
    move-exception v8

    .line 90
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "BookBizParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static a(Lamm;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Lamm;

    .prologue
    .line 491
    if-nez p0, :cond_0

    .line 492
    const-string/jumbo v2, ""

    .line 512
    :goto_0
    return-object v2

    .line 495
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 496
    .local v0, "bookInfo":Lorg/json/JSONObject;
    const-string/jumbo v2, "contentid"

    invoke-virtual {p0}, Lamm;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    const-string/jumbo v2, "contentname"

    invoke-virtual {p0}, Lamm;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    const-string/jumbo v2, "authorid"

    invoke-virtual {p0}, Lamm;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    const-string/jumbo v2, "speaker"

    invoke-virtual {p0}, Lamm;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    const-string/jumbo v2, "desc"

    invoke-virtual {p0}, Lamm;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    const-string/jumbo v2, "biglogo"

    invoke-virtual {p0}, Lamm;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    const-string/jumbo v2, "smalllogo"

    invoke-virtual {p0}, Lamm;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    const-string/jumbo v2, "chargemode"

    invoke-virtual {p0}, Lamm;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    const-string/jumbo v2, "chargedesc"

    invoke-virtual {p0}, Lamm;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string/jumbo v2, "isserial"

    invoke-virtual {p0}, Lamm;->j()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 506
    const-string/jumbo v2, "totalchaptercount"

    invoke-virtual {p0}, Lamm;->k()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 507
    const-string/jumbo v2, "candownload"

    invoke-virtual {p0}, Lamm;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string/jumbo v2, "isautobuy"

    invoke-virtual {p0}, Lamm;->l()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 509
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 510
    .end local v0    # "bookInfo":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 511
    .local v1, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "BookBizParser"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    const-string/jumbo v2, ""

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamo$a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "bookMarks":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    const/4 v4, 0x0

    .line 469
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 470
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 471
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamo$a;

    .line 472
    .local v1, "bookMark":Lamo$a;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 474
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "bookmarkid"

    invoke-virtual {v1}, Lamo$a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string/jumbo v6, "chapterid"

    invoke-virtual {v1}, Lamo$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    const-string/jumbo v6, "chaptername"

    invoke-virtual {v1}, Lamo$a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    const-string/jumbo v6, "position"

    invoke-virtual {v1}, Lamo$a;->d()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    const-string/jumbo v6, "addtime"

    invoke-virtual {v1}, Lamo$a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v2

    .line 481
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "BookBizParser"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 484
    .end local v1    # "bookMark":Lamo$a;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "object":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 487
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_1
    return-object v4
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 9
    .param p0, "streamList"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/ChapterStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "chapterStreams":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/ChapterStream;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 105
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 106
    .local v5, "stream":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 107
    const-string/jumbo v7, "coderate"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "codeRate":Ljava/lang/String;
    const-string/jumbo v7, "url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "url":Ljava/lang/String;
    const-string/jumbo v7, "size"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 112
    .local v4, "size":I
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v7}, Lamt;->a([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 104
    .end local v2    # "codeRate":Ljava/lang/String;
    .end local v4    # "size":I
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .restart local v2    # "codeRate":Ljava/lang/String;
    .restart local v4    # "size":I
    .restart local v6    # "url":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;

    invoke-direct {v0, v2, v6, v4}, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    .local v0, "chapterStream":Lcom/iflytek/viafly/listenbook/entity/ChapterStream;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    .end local v0    # "chapterStream":Lcom/iflytek/viafly/listenbook/entity/ChapterStream;
    .end local v1    # "chapterStreams":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/ChapterStream;>;"
    .end local v2    # "codeRate":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "size":I
    .end local v5    # "stream":Lorg/json/JSONObject;
    .end local v6    # "url":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method public static varargs a([Ljava/lang/String;)Z
    .locals 5
    .param p0, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 390
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v1

    .line 394
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, p0, v2

    .line 395
    .local v0, "param":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 399
    .end local v0    # "param":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static b(Lorg/json/JSONObject;)Lamm;
    .locals 20
    .param p0, "contentJson"    # Lorg/json/JSONObject;

    .prologue
    .line 330
    const-string/jumbo v17, "BookBizParser"

    const-string/jumbo v18, "parseContentInfo"

    invoke-static/range {v17 .. v18}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-nez p0, :cond_0

    .line 332
    const/4 v5, 0x0

    .line 380
    :goto_0
    return-object v5

    .line 336
    :cond_0
    const-string/jumbo v17, "contentid"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 337
    .local v11, "contentId":Ljava/lang/String;
    const-string/jumbo v17, "contentname"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 339
    .local v12, "contentName":Ljava/lang/String;
    const-string/jumbo v17, "biglogo"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "bigLogo":Ljava/lang/String;
    const-string/jumbo v17, "smalllogo"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 341
    .local v15, "smallLogo":Ljava/lang/String;
    const-string/jumbo v17, "chargemode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 343
    .local v10, "chargeMode":Ljava/lang/String;
    const-string/jumbo v17, "totalchaptercount"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    .line 345
    .local v16, "totalchaptercount":I
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    const/16 v18, 0x1

    aput-object v12, v17, v18

    const/16 v18, 0x2

    aput-object v10, v17, v18

    const/16 v18, 0x3

    aput-object v4, v17, v18

    const/16 v18, 0x4

    aput-object v15, v17, v18

    invoke-static/range {v17 .. v17}, Lamt;->a([Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    if-gtz v16, :cond_2

    .line 347
    :cond_1
    const-string/jumbo v17, "BookBizParser"

    const-string/jumbo v18, "parseContentInfo checkParamRight fail or count < 0"

    invoke-static/range {v17 .. v18}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v5, 0x0

    goto :goto_0

    .line 351
    :cond_2
    const-string/jumbo v17, "authorid"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "authorId":Ljava/lang/String;
    const-string/jumbo v17, "speaker"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "authorName":Ljava/lang/String;
    const-string/jumbo v17, "desc"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 355
    .local v14, "longDesc":Ljava/lang/String;
    const-string/jumbo v17, "chargedesc"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 356
    .local v9, "chargeDesc":Ljava/lang/String;
    const-string/jumbo v17, "isserial"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 357
    .local v13, "isSerial":Z
    const-string/jumbo v17, "candownload"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 359
    .local v6, "canDownload":Ljava/lang/String;
    new-instance v5, Lamm;

    invoke-direct {v5}, Lamm;-><init>()V

    .line 360
    .local v5, "bookInfo":Lamm;
    invoke-virtual {v5, v11}, Lamm;->a(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v5, v12}, Lamm;->b(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v5, v2}, Lamm;->c(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v5, v3}, Lamm;->d(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v5, v15}, Lamm;->g(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v5, v4}, Lamm;->f(Ljava/lang/String;)V

    .line 366
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lamm;->a(I)V

    .line 367
    invoke-virtual {v5, v10}, Lamm;->h(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v5, v14}, Lamm;->e(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v5, v9}, Lamm;->i(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v5, v13}, Lamm;->a(Z)V

    .line 371
    invoke-virtual {v5, v6}, Lamm;->j(Ljava/lang/String;)V

    .line 373
    const-string/jumbo v17, "chapterlist"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 374
    .local v7, "chapterList":Lorg/json/JSONArray;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_3

    .line 375
    invoke-static {v7}, Lamt;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v8

    .line 376
    .local v8, "chapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    invoke-virtual {v5, v8}, Lamm;->a(Ljava/util/List;)V

    .line 379
    .end local v8    # "chapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    :cond_3
    const-string/jumbo v17, "BookBizParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "parseContentInfo bookInfo "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    .locals 43
    .param p0, "detail"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string/jumbo v40, "BookBizParser"

    const-string/jumbo v41, "parseChargeInfo "

    invoke-static/range {v40 .. v41}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 128
    const/4 v10, 0x0

    .line 244
    :goto_0
    return-object v10

    .line 132
    :cond_0
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    .local v14, "detailObj":Lorg/json/JSONObject;
    const-string/jumbo v40, "productinfo"

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v30

    .line 136
    .local v30, "productInfo":Lorg/json/JSONObject;
    const-string/jumbo v40, "usertickets"

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v38

    .line 138
    .local v38, "userTickets":Lorg/json/JSONObject;
    const-string/jumbo v40, "packagedetails"

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 139
    .local v23, "packagedetails":Lorg/json/JSONArray;
    new-instance v10, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-direct {v10}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;-><init>()V

    .line 141
    .local v10, "chargeInfo":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    if-eqz v23, :cond_4

    .line 142
    const/16 v40, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 143
    .local v21, "packageObject":Lorg/json/JSONObject;
    if-eqz v21, :cond_4

    .line 144
    const-string/jumbo v40, "packagename"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 145
    .local v24, "packagename":Ljava/lang/String;
    const-string/jumbo v40, "packageprice"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 146
    .local v25, "packageprice":Ljava/lang/String;
    const-string/jumbo v40, "priceunit"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 147
    .local v28, "priceunit":Ljava/lang/String;
    const-string/jumbo v40, "orderurl"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 148
    .local v19, "orderurl":Ljava/lang/String;
    const-string/jumbo v40, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 149
    .local v35, "type":Ljava/lang/String;
    const-string/jumbo v40, "packagedesc"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 150
    .local v22, "packagedesc":Ljava/lang/String;
    const-string/jumbo v40, "packagerule"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 152
    .local v26, "packagerule":Ljava/lang/String;
    const/16 v40, 0x4

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v24, v40, v41

    const/16 v41, 0x1

    aput-object v25, v40, v41

    const/16 v41, 0x2

    aput-object v19, v40, v41

    const/16 v41, 0x3

    aput-object v35, v40, v41

    invoke-static/range {v40 .. v40}, Lamt;->a([Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 154
    const-string/jumbo v40, "0"

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_2

    :cond_1
    const-string/jumbo v40, "1"

    .line 155
    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 156
    :cond_2
    new-instance v20, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

    invoke-direct/range {v20 .. v20}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;-><init>()V

    .line 157
    .local v20, "packageDetail":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->d(Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->f(Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->a(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->b(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->c(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->e(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->g(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 241
    .end local v10    # "chargeInfo":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    .end local v14    # "detailObj":Lorg/json/JSONObject;
    .end local v19    # "orderurl":Ljava/lang/String;
    .end local v20    # "packageDetail":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;
    .end local v21    # "packageObject":Lorg/json/JSONObject;
    .end local v22    # "packagedesc":Ljava/lang/String;
    .end local v23    # "packagedetails":Lorg/json/JSONArray;
    .end local v24    # "packagename":Ljava/lang/String;
    .end local v25    # "packageprice":Ljava/lang/String;
    .end local v26    # "packagerule":Ljava/lang/String;
    .end local v28    # "priceunit":Ljava/lang/String;
    .end local v30    # "productInfo":Lorg/json/JSONObject;
    .end local v35    # "type":Ljava/lang/String;
    .end local v38    # "userTickets":Lorg/json/JSONObject;
    :catch_0
    move-exception v17

    .line 242
    .local v17, "e":Ljava/lang/Exception;
    const-string/jumbo v40, "BookBizParser"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "error "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 171
    .restart local v10    # "chargeInfo":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    .restart local v14    # "detailObj":Lorg/json/JSONObject;
    .restart local v23    # "packagedetails":Lorg/json/JSONArray;
    .restart local v30    # "productInfo":Lorg/json/JSONObject;
    .restart local v38    # "userTickets":Lorg/json/JSONObject;
    :cond_4
    if-eqz v30, :cond_3

    if-eqz v38, :cond_3

    .line 172
    :try_start_1
    const-string/jumbo v40, "productid"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 173
    .local v31, "productid":Ljava/lang/String;
    const-string/jumbo v40, "vipprice"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 174
    .local v39, "vipPrice":Ljava/lang/String;
    const-string/jumbo v40, "price"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 175
    .local v27, "price":Ljava/lang/String;
    const-string/jumbo v40, "contentid"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 176
    .local v13, "contentId":Ljava/lang/String;
    const-string/jumbo v40, "chapterid"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, "chapterId":Ljava/lang/String;
    const-string/jumbo v40, "chaptername"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 179
    .local v9, "chaptername":Ljava/lang/String;
    const/16 v40, 0x5

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v31, v40, v41

    const/16 v41, 0x1

    aput-object v39, v40, v41

    const/16 v41, 0x2

    aput-object v27, v40, v41

    const/16 v41, 0x3

    aput-object v13, v40, v41

    const/16 v41, 0x4

    aput-object v7, v40, v41

    invoke-static/range {v40 .. v40}, Lamt;->a([Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_5

    .line 181
    const-string/jumbo v40, "BookBizParser"

    const-string/jumbo v41, "parseChargeInfo productid or feedescription is null, or price < 0 "

    invoke-static/range {v40 .. v41}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 185
    :cond_5
    const-string/jumbo v40, "totalcoupon"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 186
    .local v34, "totalCoupon":Ljava/lang/String;
    const-string/jumbo v40, "iscouponenough"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 187
    .local v18, "isCouponEnough":Z
    const-string/jumbo v40, "chargebutton"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 188
    .local v11, "chargebutton":Lorg/json/JSONObject;
    const-string/jumbo v40, "text"

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 189
    .local v33, "text":Ljava/lang/String;
    const-string/jumbo v40, "url"

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 192
    .local v36, "url":Ljava/lang/String;
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v33, v40, v41

    const/16 v41, 0x1

    aput-object v36, v40, v41

    invoke-static/range {v40 .. v40}, Lamt;->a([Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_6

    .line 193
    const-string/jumbo v40, "BookBizParser"

    const-string/jumbo v41, "parseChargeInfo text or url is null"

    invoke-static/range {v40 .. v41}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 197
    :cond_6
    new-instance v29, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    invoke-direct/range {v29 .. v29}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;-><init>()V

    .line 198
    .local v29, "product":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;
    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->c(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->b(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->d(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->e(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->f(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->a(Ljava/lang/String;)V

    .line 205
    new-instance v37, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    invoke-direct/range {v37 .. v37}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;-><init>()V

    .line 206
    .local v37, "userTicket":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;
    move-object/from16 v0, v37

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->a(Z)V

    .line 207
    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->a(Ljava/lang/String;)V

    .line 208
    new-instance v40, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;)V

    .line 211
    const-string/jumbo v40, "audition"

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 212
    .local v4, "auditionInfo":Lorg/json/JSONObject;
    if-eqz v4, :cond_7

    .line 213
    const-string/jumbo v40, "url"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "auditionUrl":Ljava/lang/String;
    const-string/jumbo v40, "coderate"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 215
    .local v12, "coderate":Ljava/lang/String;
    const-string/jumbo v40, "chaptername"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "chapterName":Ljava/lang/String;
    const-string/jumbo v40, "detailurl"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 217
    .local v15, "detailUrl":Ljava/lang/String;
    const-string/jumbo v40, "size"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v32

    .line 218
    .local v32, "size":I
    const-string/jumbo v40, "duration"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    .line 219
    .local v16, "duration":I
    const-string/jumbo v40, "auditionreduration"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 220
    .local v6, "auditionreduration":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 221
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 222
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_7

    if-lez v6, :cond_7

    if-lez v16, :cond_7

    .line 224
    new-instance v3, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    invoke-direct {v3}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;-><init>()V

    .line 225
    .local v3, "audition":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;
    invoke-virtual {v3, v6}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->b(I)V

    .line 226
    invoke-virtual {v3, v12}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->b(Ljava/lang/String;)V

    .line 227
    move/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->a(I)V

    .line 228
    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->a(Ljava/lang/String;)V

    .line 229
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->c(I)V

    .line 230
    invoke-virtual {v3, v8}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->c(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v3, v15}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->d(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v10, v3}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;)V

    .line 236
    .end local v3    # "audition":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;
    .end local v5    # "auditionUrl":Ljava/lang/String;
    .end local v6    # "auditionreduration":I
    .end local v8    # "chapterName":Ljava/lang/String;
    .end local v12    # "coderate":Ljava/lang/String;
    .end local v15    # "detailUrl":Ljava/lang/String;
    .end local v16    # "duration":I
    .end local v32    # "size":I
    :cond_7
    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;)V

    .line 237
    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;)V

    .line 238
    const-string/jumbo v40, "BookBizParser"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "parseChargeInfo get chargeInfo "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .param p0, "chapterListJson"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 248
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v2, "chapterList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 253
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 254
    .local v1, "chapterJSON":Lorg/json/JSONObject;
    invoke-static {v1}, Lamt;->d(Lorg/json/JSONObject;)Lcom/iflytek/viafly/listenbook/entity/Chapter;

    move-result-object v0

    .line 255
    .local v0, "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    .end local v1    # "chapterJSON":Lorg/json/JSONObject;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 262
    .end local v2    # "chapterList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    .end local v3    # "i":I
    :goto_1
    return-object v2

    .restart local v2    # "chapterList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    .restart local v3    # "i":I
    :cond_2
    move-object v2, v4

    .line 259
    goto :goto_1

    .end local v2    # "chapterList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    .end local v3    # "i":I
    :cond_3
    move-object v2, v4

    .line 262
    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Lamm;
    .locals 6
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 517
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 539
    :goto_0
    return-object v2

    .line 521
    :cond_0
    :try_start_0
    new-instance v2, Lamm;

    invoke-direct {v2}, Lamm;-><init>()V

    .line 522
    .local v2, "info":Lamm;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, "bookJson":Lorg/json/JSONObject;
    const-string/jumbo v4, "contentid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lamm;->a(Ljava/lang/String;)V

    .line 524
    const-string/jumbo v4, "contentname"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lamm;->b(Ljava/lang/String;)V

    .line 525
    const-string/jumbo v4, "authorid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lamm;->c(Ljava/lang/String;)V

    .line 526
    const-string/jumbo v4, "speaker"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lamm;->d(Ljava/lang/String;)V

    .line 527
    const-string/jumbo v4, "desc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lamm;->e(Ljava/lang/String;)V

    .line 528
    const-string/jumbo v4, "biglogo"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lamm;->f(Ljava/lang/String;)V

    .line 529
    const-string/jumbo v4, "smalllogo"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lamm;->g(Ljava/lang/String;)V

    .line 530
    const-string/jumbo v4, "chargemode"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lamm;->h(Ljava/lang/String;)V

    .line 531
    const-string/jumbo v4, "chargedesc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lamm;->i(Ljava/lang/String;)V

    .line 532
    const-string/jumbo v4, "isserial"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lamm;->a(Z)V

    .line 533
    const-string/jumbo v4, "totalchaptercount"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lamm;->a(I)V

    .line 534
    const-string/jumbo v4, "candownload"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lamm;->j(Ljava/lang/String;)V

    .line 535
    const-string/jumbo v4, "isautobuy"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lamm;->b(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 537
    .end local v0    # "bookJson":Lorg/json/JSONObject;
    .end local v2    # "info":Lamm;
    :catch_0
    move-exception v1

    .line 538
    .local v1, "ex":Lorg/json/JSONException;
    const-string/jumbo v4, "BookBizParser"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 539
    goto/16 :goto_0
.end method

.method public static c(Lorg/json/JSONObject;)Lamo;
    .locals 13
    .param p0, "contentJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 425
    const-string/jumbo v10, "BookBizParser"

    const-string/jumbo v11, "parseBookMarkInfo"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-nez p0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-object v0

    .line 431
    :cond_1
    const-string/jumbo v10, "contentid"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, "contentId":Ljava/lang/String;
    const-string/jumbo v10, "contentname"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 433
    .local v5, "contentName":Ljava/lang/String;
    const-string/jumbo v10, "detailurl"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 434
    .local v7, "detailUrl":Ljava/lang/String;
    const-string/jumbo v10, "cid"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "cid":Ljava/lang/String;
    const-string/jumbo v10, "reader"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 436
    .local v9, "reader":Ljava/lang/String;
    const-string/jumbo v10, "desc"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 437
    .local v6, "desc":Ljava/lang/String;
    const-string/jumbo v10, "coverpic"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 438
    .local v8, "img":Ljava/lang/String;
    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v11, 0x3

    aput-object v3, v10, v11

    const/4 v11, 0x4

    aput-object v9, v10, v11

    const/4 v11, 0x5

    aput-object v6, v10, v11

    const/4 v11, 0x6

    aput-object v8, v10, v11

    invoke-static {v10}, Lamt;->a([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 439
    const-string/jumbo v10, "BookBizParser"

    const-string/jumbo v11, "parseContentInfo checkParamRight fail"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    :cond_2
    const-string/jumbo v10, "bookmarks"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 444
    .local v1, "bookMarkList":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 448
    invoke-static {v1}, Lamt;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 450
    .local v2, "bookMarks":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 454
    new-instance v0, Lamo;

    invoke-direct {v0}, Lamo;-><init>()V

    .line 455
    .local v0, "bookMarkInfo":Lamo;
    invoke-virtual {v0, v4}, Lamo;->a(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0, v5}, Lamo;->b(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, v2}, Lamo;->a(Ljava/util/List;)V

    .line 458
    invoke-virtual {v0, v7}, Lamo;->d(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, v3}, Lamo;->c(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, v9}, Lamo;->e(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0, v6}, Lamo;->g(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, v8}, Lamo;->f(Ljava/lang/String;)V

    .line 463
    const-string/jumbo v10, "BookBizParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parseContentInfo bookInfo "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static c(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 12
    .param p0, "bookMarksJson"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lamo$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 266
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 268
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v4, "bookMarkList":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v7, v10, :cond_1

    .line 271
    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 272
    .local v3, "bookMarkJson":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 273
    const-string/jumbo v10, "bookmarkid"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "bookMarkId":Ljava/lang/String;
    const-string/jumbo v10, "chapterid"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "chapterId":Ljava/lang/String;
    const-string/jumbo v10, "chaptername"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, "chapterName":Ljava/lang/String;
    const-string/jumbo v10, "position"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 277
    .local v8, "position":I
    const-string/jumbo v10, "addtime"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "addTime":Ljava/lang/String;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-static {v10}, Lamt;->a([Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 279
    new-instance v1, Lamo$a;

    invoke-direct {v1, v2, v5, v6, v8}, Lamo$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    .local v1, "bookMark":Lamo$a;
    invoke-virtual {v1, v0}, Lamo$a;->b(Ljava/lang/String;)V

    .line 281
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v0    # "addTime":Ljava/lang/String;
    .end local v1    # "bookMark":Lamo$a;
    .end local v2    # "bookMarkId":Ljava/lang/String;
    .end local v5    # "chapterId":Ljava/lang/String;
    .end local v6    # "chapterName":Ljava/lang/String;
    .end local v8    # "position":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 285
    .end local v3    # "bookMarkJson":Lorg/json/JSONObject;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 288
    .end local v4    # "bookMarkList":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    .end local v7    # "i":I
    :goto_1
    return-object v4

    .restart local v4    # "bookMarkList":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    .restart local v7    # "i":I
    :cond_2
    move-object v4, v9

    .line 285
    goto :goto_1

    .end local v4    # "bookMarkList":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    .end local v7    # "i":I
    :cond_3
    move-object v4, v9

    .line 288
    goto :goto_1
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/iflytek/viafly/listenbook/entity/Chapter;
    .locals 7
    .param p0, "chapterJson"    # Lorg/json/JSONObject;

    .prologue
    .line 313
    const-string/jumbo v0, "BookBizParser"

    const-string/jumbo v6, "parseChapter "

    invoke-static {v0, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-eqz p0, :cond_0

    .line 315
    const-string/jumbo v0, "chapterid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "chapterId":Ljava/lang/String;
    const-string/jumbo v0, "chaptername"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "chapterName":Ljava/lang/String;
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 318
    .local v3, "type":I
    const-string/jumbo v0, "ordernum"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 319
    .local v4, "orderNum":I
    const-string/jumbo v0, "chaptersize"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "chapterSize":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v0, v6

    const/4 v6, 0x1

    aput-object v2, v0, v6

    invoke-static {v0}, Lamt;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string/jumbo v0, "BookBizParser"

    const-string/jumbo v6, "parseChapter suc"

    invoke-static {v0, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/Chapter;

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/listenbook/entity/Chapter;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 326
    .end local v1    # "chapterId":Ljava/lang/String;
    .end local v2    # "chapterName":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v4    # "orderNum":I
    .end local v5    # "chapterSize":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .param p0, "infoArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 403
    const-string/jumbo v5, "BookBizParser"

    const-string/jumbo v6, "parseBookMarkInfo"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2

    :cond_0
    move-object v2, v4

    .line 420
    :cond_1
    :goto_0
    return-object v2

    .line 408
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 411
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 412
    .local v3, "object":Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    .line 413
    invoke-static {v3}, Lamt;->c(Lorg/json/JSONObject;)Lamo;

    move-result-object v0

    .line 414
    .local v0, "bookMarkInfo":Lamo;
    if-eqz v0, :cond_3

    .line 415
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v0    # "bookMarkInfo":Lamo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 420
    .end local v3    # "object":Lorg/json/JSONObject;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    move-object v2, v4

    goto :goto_0
.end method
