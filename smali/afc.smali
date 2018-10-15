.class public Lafc;
.super Lcom/iflytek/yd/speech/RecognizeFilter;
.source "DialogResultFilter.java"


# instance fields
.field private a:Lafb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lafc;->a:Lafb;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "parentElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/4 v0, 0x0

    .line 170
    .local v0, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 172
    .local v1, "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "browser_title"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 176
    .end local v1    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    return-object v0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "parentElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 188
    .local v1, "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "page_title"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 192
    .end local v1    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;
    .locals 42
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    const-string/jumbo v39, "RecognizeFilter"

    const-string/jumbo v40, "recognize result is null"

    invoke-static/range {v39 .. v40}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/16 v39, 0x0

    .line 160
    :goto_0
    return-object v39

    .line 30
    :cond_0
    new-instance v39, Lafb;

    invoke-direct/range {v39 .. v39}, Lafb;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lafc;->a:Lafb;

    .line 32
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lafc;->a:Lafb;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lafc;->filterCommonResult(Lcom/iflytek/yd/speech/FilterResult;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 34
    invoke-virtual/range {p0 .. p1}, Lafc;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v38

    .line 35
    .local v38, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual/range {v38 .. v38}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v33

    .line 36
    .local v33, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lafc;->getResultElements(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v32

    .line 37
    .local v32, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lafc;->getObjElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    .line 38
    .local v18, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v11, Lafe;

    invoke-direct {v11}, Lafe;-><init>()V

    .line 39
    .local v11, "browserTitle":Lafe;
    new-instance v23, Lafe;

    invoke-direct/range {v23 .. v23}, Lafe;-><init>()V

    .line 41
    .local v23, "pageTitle":Lafe;
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v31, "questionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v4, "answerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v5, "audioList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v35, "topicList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v29, "picUrlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v27, "pageUrlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v15, "moreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v8, "browserMainTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v10, "browserSubTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v20, "pageMainTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v22, "pageSubTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v37, "urlTextList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_3

    .line 55
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_1
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_3

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 56
    .local v17, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v40, "question"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v30

    .line 57
    .local v30, "questionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lafc;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v31

    .line 59
    const-string/jumbo v40, "answer"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 60
    .local v3, "answerElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lafc;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 62
    const-string/jumbo v40, "topic"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v34

    .line 63
    .local v34, "topicElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lafc;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v35

    .line 65
    const-string/jumbo v40, "audio_url"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 66
    .local v6, "audioUrlElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lafc;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 68
    const-string/jumbo v40, "pic_url"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v28

    .line 69
    .local v28, "picUrlElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lafc;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    .line 71
    const-string/jumbo v40, "page_url"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 72
    .local v26, "pageUrlElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lafc;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v27

    .line 74
    const-string/jumbo v40, "url_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v36

    .line 75
    .local v36, "urlTextElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lafc;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v37

    .line 77
    const-string/jumbo v40, "more_url"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 78
    .local v16, "moreUrlElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lafc;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lafc;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 82
    .local v13, "browserTitleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v13, :cond_2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v40

    if-lez v40, :cond_2

    .line 83
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :goto_1
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_2

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 84
    .local v12, "browserTitleElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v41, "main_title"

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 85
    .local v7, "browserMainTitleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lafc;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 87
    const-string/jumbo v41, "sub_title"

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 88
    .local v9, "browserSubTitleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lafc;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 89
    goto :goto_1

    .line 93
    .end local v7    # "browserMainTitleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v9    # "browserSubTitleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v12    # "browserTitleElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lafc;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v25

    .line 94
    .local v25, "pageTitleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v25, :cond_1

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v40

    if-lez v40, :cond_1

    .line 95
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :goto_2
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_1

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 96
    .local v24, "pageTitleElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v41, "main_title"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 97
    .local v19, "pageMainTitleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lafc;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    .line 99
    const-string/jumbo v41, "sub_title"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 100
    .local v21, "pageSubTitleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lafc;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    .line 101
    goto :goto_2

    .line 106
    .end local v3    # "answerElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v6    # "audioUrlElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v13    # "browserTitleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v16    # "moreUrlElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v17    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v19    # "pageMainTitleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v21    # "pageSubTitleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v24    # "pageTitleElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "pageTitleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v26    # "pageUrlElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v28    # "picUrlElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v30    # "questionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v34    # "topicElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v36    # "urlTextElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_3
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_4

    .line 107
    const-string/jumbo v40, "RecognizeFilter"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "------------->>question:"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const/16 v39, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lafc;->a:Lafb;

    move-object/from16 v40, v0

    const/16 v39, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lafb;->a(Ljava/lang/String;)V

    .line 110
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_5

    .line 111
    const-string/jumbo v40, "RecognizeFilter"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "------------->>answer:"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lafc;->a:Lafb;

    move-object/from16 v40, v0

    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lafb;->a(Ljava/lang/String;)V

    .line 114
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_6

    .line 116
    const-string/jumbo v40, "RecognizeFilter"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "------------->>audioUrl:"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lafc;->a:Lafb;

    move-object/from16 v40, v0

    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lafb;->c(Ljava/lang/String;)V

    .line 119
    :cond_6
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_7

    .line 121
    const-string/jumbo v40, "RecognizeFilter"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "------------->>picUrl:"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lafc;->a:Lafb;

    move-object/from16 v40, v0

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lafb;->d(Ljava/lang/String;)V

    .line 124
    :cond_7
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_8

    .line 126
    const-string/jumbo v40, "RecognizeFilter"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "------------->>pageUrl:"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const/16 v39, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lafc;->a:Lafb;

    move-object/from16 v40, v0

    const/16 v39, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lafb;->e(Ljava/lang/String;)V

    .line 129
    :cond_8
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_9

    .line 131
    const-string/jumbo v40, "RecognizeFilter"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "------------->>urlText:"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lafc;->a:Lafb;

    move-object/from16 v40, v0

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lafb;->f(Ljava/lang/String;)V

    .line 134
    :cond_9
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_a

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lafc;->a:Lafb;

    move-object/from16 v40, v0

    const/16 v39, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lafb;->b(Ljava/lang/String;)V

    .line 137
    :cond_a
    if-eqz v15, :cond_b

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_b

    .line 138
    const-string/jumbo v40, "RecognizeFilter"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "------------->>moreUrl:"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lafc;->a:Lafb;

    move-object/from16 v40, v0

    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lafb;->g(Ljava/lang/String;)V

    .line 141
    :cond_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_c

    .line 142
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Lafe;->a(Ljava/lang/String;)V

    .line 144
    :cond_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_d

    .line 145
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Lafe;->b(Ljava/lang/String;)V

    .line 147
    :cond_d
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_e

    .line 148
    const/16 v39, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lafe;->a(Ljava/lang/String;)V

    .line 150
    :cond_e
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_f

    .line 151
    const/16 v39, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lafe;->b(Ljava/lang/String;)V

    .line 154
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lafc;->a:Lafb;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Lafb;->a(Lafe;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lafc;->a:Lafb;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lafb;->b(Lafe;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v4    # "answerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "audioList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "browserMainTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "browserSubTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "browserTitle":Lafe;
    .end local v15    # "moreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v20    # "pageMainTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "pageSubTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "pageTitle":Lafe;
    .end local v27    # "pageUrlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "picUrlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "questionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v33    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v35    # "topicList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "urlTextList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v38    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lafc;->a:Lafb;

    move-object/from16 v39, v0

    goto/16 :goto_0

    .line 156
    :catch_0
    move-exception v14

    .line 157
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v39, "RecognizeFilter"

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
