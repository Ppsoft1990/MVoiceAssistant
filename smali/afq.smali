.class public Lafq;
.super Lcom/iflytek/yd/speech/RecognizeFilter;
.source "MusicResultFilter.java"


# instance fields
.field private a:Lafn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lafq;->a:Lafn;

    return-void
.end method

.method private a(Lcom/iflytek/yd/util/xml/XmlElement;Lafn;)Lafn;
    .locals 26
    .param p1, "objElement"    # Lcom/iflytek/yd/util/xml/XmlElement;
    .param p2, "result"    # Lafn;

    .prologue
    .line 52
    const-string/jumbo v24, "data_source"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 53
    .local v8, "dataElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v25, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, "dataSourceId":Ljava/lang/String;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v25, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, "dataSourceName":Ljava/lang/String;
    const-string/jumbo v24, "more_url"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 56
    .local v14, "moreUrl":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 57
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lafn;->a(Ljava/lang/String;)V

    .line 59
    :cond_0
    const-string/jumbo v24, "singer"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 60
    .local v18, "singer":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 61
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lafn;->b(Ljava/lang/String;)V

    .line 63
    :cond_1
    const-string/jumbo v24, "song"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 64
    .local v19, "song":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 65
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lafn;->c(Ljava/lang/String;)V

    .line 67
    :cond_2
    const-string/jumbo v24, "subject_list"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 68
    .local v21, "subListElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/4 v5, 0x0

    .line 69
    .local v5, "cacheId":Ljava/lang/String;
    if-eqz v21, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_3

    .line 70
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v25, "subject"

    invoke-virtual/range {v24 .. v25}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 71
    .local v23, "subjectElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v25, "page_index"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 72
    .local v15, "pageIndex":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lafn;->d(Ljava/lang/String;)V

    .line 73
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v25, "page_total"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 74
    .local v16, "pageTotal":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lafn;->e(Ljava/lang/String;)V

    .line 75
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v25, "cache_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_3

    .line 77
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 78
    .local v22, "subjectElement":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v20, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-direct/range {v20 .. v20}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;-><init>()V

    .line 79
    .local v20, "songItem":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c(I)V

    .line 80
    const-string/jumbo v25, "content_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "contentId":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->l(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v25, "content_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, "contentType":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->e(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v25, "singer"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 85
    .local v12, "itemSinger":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v25, "song"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 87
    .local v13, "itemSong":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->m(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v25, "album"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "album":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v25, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v11, "duration":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v25, "album_cover"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "albumCover":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->f(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v25, "share_url"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 95
    .local v17, "shareUrl":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->h(Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->i(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Lafn;->a()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 101
    .end local v3    # "album":Ljava/lang/String;
    .end local v4    # "albumCover":Ljava/lang/String;
    .end local v6    # "contentId":Ljava/lang/String;
    .end local v7    # "contentType":Ljava/lang/String;
    .end local v11    # "duration":Ljava/lang/String;
    .end local v12    # "itemSinger":Ljava/lang/String;
    .end local v13    # "itemSong":Ljava/lang/String;
    .end local v15    # "pageIndex":Ljava/lang/String;
    .end local v16    # "pageTotal":Ljava/lang/String;
    .end local v17    # "shareUrl":Ljava/lang/String;
    .end local v20    # "songItem":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .end local v22    # "subjectElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "subjectElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lafn;->g(Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lafn;->h(Ljava/lang/String;)V

    .line 103
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 104
    const-string/jumbo v24, "cache_id"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lafq;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lafn;->f(Ljava/lang/String;)V

    .line 107
    return-object p2
.end method


# virtual methods
.method public filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;
    .locals 8
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    const-string/jumbo v6, "RecognizeFilter"

    const-string/jumbo v7, "recognize result is null"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v6, 0x0

    .line 48
    :goto_0
    return-object v6

    .line 31
    :cond_0
    new-instance v6, Lafn;

    invoke-direct {v6}, Lafn;-><init>()V

    iput-object v6, p0, Lafq;->a:Lafn;

    .line 33
    :try_start_0
    iget-object v6, p0, Lafq;->a:Lafn;

    invoke-virtual {p0, v6, p1}, Lafq;->filterCommonResult(Lcom/iflytek/yd/speech/FilterResult;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 35
    invoke-virtual {p0, p1}, Lafq;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v5

    .line 36
    .local v5, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    .line 37
    .local v4, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {p0, v4}, Lafq;->getResultElements(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v3

    .line 38
    .local v3, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v3}, Lafq;->getObjElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 39
    .local v2, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 41
    .local v1, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    iget-object v7, p0, Lafq;->a:Lafn;

    invoke-direct {p0, v1, v7}, Lafq;->a(Lcom/iflytek/yd/util/xml/XmlElement;Lafn;)Lafn;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 44
    .end local v1    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v2    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v5    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "RecognizeFilter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v6, p0, Lafq;->a:Lafn;

    goto :goto_0
.end method
