.class public Lzx;
.super Lcom/iflytek/yd/speech/RecognizeFilter;
.source "TelephoneRecognizeFilter.java"


# instance fields
.field private a:Laau;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;
    .locals 18
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 23
    const-string/jumbo v14, "RecognizeFilter"

    const-string/jumbo v15, "recognize result is null"

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v14, 0x0

    .line 77
    :goto_0
    return-object v14

    .line 27
    :cond_0
    new-instance v14, Laau;

    invoke-direct {v14}, Laau;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lzx;->a:Laau;

    .line 30
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lzx;->a:Laau;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lzx;->filterCommonResult(Lcom/iflytek/yd/speech/FilterResult;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 32
    invoke-virtual/range {p0 .. p1}, Lzx;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v13

    .line 33
    .local v13, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v13}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    .line 34
    .local v10, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lzx;->getResultElements(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v9

    .line 35
    .local v9, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lzx;->getObjElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 37
    .local v8, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v5, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v6, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_9

    .line 40
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 41
    .local v7, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v14, "name"

    invoke-virtual {v7, v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 42
    .local v4, "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lzx;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 43
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lzx;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    :cond_1
    const-string/jumbo v14, "code"

    invoke-virtual {v7, v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 46
    .local v2, "codeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzx;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 47
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzx;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_2
    const-string/jumbo v14, "sim_card"

    invoke-virtual {v7, v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 50
    .local v11, "simcardElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v11, :cond_8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_8

    .line 51
    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 52
    .local v12, "strSimCard":Ljava/lang/String;
    const-string/jumbo v14, "\u53611"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string/jumbo v14, "\u5361\u4e00"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 53
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lzx;->a:Laau;

    sget-object v16, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Laau;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 57
    :cond_4
    :goto_2
    const-string/jumbo v14, "RecognizeFilter"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "MethodName: filterRecognizeResult data: [ simCard:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " info: filte sim info"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 73
    .end local v2    # "codeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v8    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v9    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v10    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v11    # "simcardElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v12    # "strSimCard":Ljava/lang/String;
    .end local v13    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :catch_0
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "RecognizeFilter"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lzx;->a:Laau;

    goto/16 :goto_0

    .line 54
    .restart local v2    # "codeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v4    # "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v5    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v8    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v9    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v10    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v11    # "simcardElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v12    # "strSimCard":Ljava/lang/String;
    .restart local v13    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_6
    :try_start_1
    const-string/jumbo v14, "\u53612"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string/jumbo v14, "\u5361\u4e8c"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 55
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lzx;->a:Laau;

    sget-object v16, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Laau;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_2

    .line 61
    .end local v12    # "strSimCard":Ljava/lang/String;
    :cond_8
    const-string/jumbo v14, "RecognizeFilter"

    const-string/jumbo v16, "MethodName: filterRecognizeResult info: not sim info"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 67
    .end local v2    # "codeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v7    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v11    # "simcardElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_a

    .line 68
    move-object/from16 v0, p0

    iget-object v14, v0, Lzx;->a:Laau;

    invoke-virtual {v14, v5}, Laau;->a(Ljava/util/List;)V

    .line 70
    :cond_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 71
    move-object/from16 v0, p0

    iget-object v14, v0, Lzx;->a:Laau;

    invoke-virtual {v14, v6}, Laau;->b(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
