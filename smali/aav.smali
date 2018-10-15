.class public Laav;
.super Lcom/iflytek/yd/speech/RecognizeFilter;
.source "ContactRecognizeFilter.java"


# instance fields
.field private a:Laau;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

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
    .line 81
    .local p1, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/4 v0, 0x0

    .line 82
    .local v0, "receiverElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 84
    .local v1, "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "receiver"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 89
    .end local v1    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;
    .locals 17
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    const-string/jumbo v15, "RecognizeFilter"

    const-string/jumbo v16, "recognize result is null"

    invoke-static/range {v15 .. v16}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v15, 0x0

    .line 72
    :goto_0
    return-object v15

    .line 25
    :cond_0
    new-instance v15, Laau;

    invoke-direct {v15}, Laau;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Laav;->a:Laau;

    .line 28
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Laav;->a:Laau;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Laav;->filterCommonResult(Lcom/iflytek/yd/speech/FilterResult;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v2, "channelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v11, "receiverList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Laav;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v14

    .line 34
    .local v14, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v14}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v13

    .line 35
    .local v13, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Laav;->getResultElements(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v12

    .line 36
    .local v12, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Laav;->getObjElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 37
    .local v9, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Laav;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 38
    .local v10, "receiverElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Laav;->filterChannelResult(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 39
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Laav;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v6, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v7, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_4

    .line 44
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 45
    .local v8, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 46
    .local v5, "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Laav;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_2

    .line 47
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Laav;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_2
    const-string/jumbo v16, "code"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 50
    .local v3, "codeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Laav;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 51
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Laav;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    .end local v2    # "channelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "codeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v6    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v9    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v10    # "receiverElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v11    # "receiverList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v13    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v14    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :catch_0
    move-exception v4

    .line 69
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "RecognizeFilter"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Laav;->a:Laau;

    goto/16 :goto_0

    .line 55
    .restart local v2    # "channelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v10    # "receiverElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v11    # "receiverList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v13    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v14    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_5

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Laav;->a:Laau;

    move-object/from16 v16, v0

    const/4 v15, 0x0

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Laau;->setChannel(Ljava/lang/String;)V

    .line 58
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_6

    .line 59
    move-object/from16 v0, p0

    iget-object v15, v0, Laav;->a:Laau;

    invoke-virtual {v15, v6}, Laau;->a(Ljava/util/List;)V

    .line 61
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_7

    .line 62
    move-object/from16 v0, p0

    iget-object v15, v0, Laav;->a:Laau;

    invoke-virtual {v15, v7}, Laau;->b(Ljava/util/List;)V

    .line 64
    :cond_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Laav;->a:Laau;

    move-object/from16 v16, v0

    const/4 v15, 0x0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Laau;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
