.class public Lafl;
.super Lcom/iflytek/yd/speech/RecognizeFilter;
.source "ListenResultFilter.java"


# instance fields
.field private a:Lafi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lafl;->a:Lafi;

    return-void
.end method

.method private a(Lcom/iflytek/yd/util/xml/XmlElement;Lafi;)Lafi;
    .locals 20
    .param p1, "objElement"    # Lcom/iflytek/yd/util/xml/XmlElement;
    .param p2, "result"    # Lafi;

    .prologue
    .line 53
    :try_start_0
    const-string/jumbo v18, "targetinfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 54
    .local v16, "searchElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v19, "content"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lafl;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 55
    .local v17, "searchName":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 56
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lafi;->a(Ljava/lang/String;)V

    .line 58
    :cond_0
    const-string/jumbo v18, "contentinfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 59
    .local v5, "contentElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v14, "listenFilterItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_2

    .line 61
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v19, "detailurl"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lafl;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "detailurl":Ljava/lang/String;
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v19, "reader"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lafl;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 63
    .local v15, "reader":Ljava/lang/String;
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v19, "contentname"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lafl;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "contentname":Ljava/lang/String;
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v19, "contentid"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lafl;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "contentid":Ljava/lang/String;
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v19, "coverpic"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lafl;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "coverpic":Ljava/lang/String;
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v19, "description"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lafl;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 67
    .local v9, "desc":Ljava/lang/String;
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v19, "chapterinfo"

    invoke-virtual/range {v18 .. v19}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 68
    .local v3, "chapterElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v19, "chapterid"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lafl;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "chapterid":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 70
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 71
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 72
    new-instance v13, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-direct {v13}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;-><init>()V

    .line 73
    .local v13, "listenFilterItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    invoke-virtual {v13, v4}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v13, v6}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v13, v7}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v13, v8}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v13, v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->g(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v13, v15}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->f(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v13, v10}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->i(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v13    # "listenFilterItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 83
    .end local v3    # "chapterElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "chapterid":Ljava/lang/String;
    .end local v6    # "contentid":Ljava/lang/String;
    .end local v7    # "contentname":Ljava/lang/String;
    .end local v8    # "coverpic":Ljava/lang/String;
    .end local v9    # "desc":Ljava/lang/String;
    .end local v10    # "detailurl":Ljava/lang/String;
    .end local v15    # "reader":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lafi;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v5    # "contentElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v12    # "i":I
    .end local v14    # "listenFilterItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    .end local v16    # "searchElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v17    # "searchName":Ljava/lang/String;
    :goto_1
    return-object p2

    .line 84
    :catch_0
    move-exception v11

    .line 85
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "RecognizeFilter"

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v11}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
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
    new-instance v6, Lafi;

    invoke-direct {v6}, Lafi;-><init>()V

    iput-object v6, p0, Lafl;->a:Lafi;

    .line 33
    :try_start_0
    iget-object v6, p0, Lafl;->a:Lafi;

    invoke-virtual {p0, v6, p1}, Lafl;->filterCommonResult(Lcom/iflytek/yd/speech/FilterResult;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 35
    invoke-virtual {p0, p1}, Lafl;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v5

    .line 36
    .local v5, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    .line 37
    .local v4, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {p0, v4}, Lafl;->getResultElements(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v3

    .line 38
    .local v3, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v3}, Lafl;->getObjElements(Ljava/util/List;)Ljava/util/List;

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
    iget-object v7, p0, Lafl;->a:Lafi;

    invoke-direct {p0, v1, v7}, Lafl;->a(Lcom/iflytek/yd/util/xml/XmlElement;Lafi;)Lafi;
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
    iget-object v6, p0, Lafl;->a:Lafi;

    goto :goto_0
.end method
