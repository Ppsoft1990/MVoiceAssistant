.class public Laxq;
.super Lcom/iflytek/yd/speech/RecognizeFilter;
.source "TranslationRecognizeFilter.java"


# instance fields
.field private a:Lcom/iflytek/viafly/translate/TranslationFilterResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "translatedElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, "targetLangList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "targetLang":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 94
    .local v3, "translatedElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v3, :cond_0

    .line 95
    const-string/jumbo v5, "lang"

    invoke-virtual {v3, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v0

    .line 96
    .local v0, "attributeLang":Lcom/iflytek/yd/util/xml/XmlAttribute;
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string/jumbo v5, "RecognizeFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "targetLang="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    if-eqz v1, :cond_0

    .line 101
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    .end local v0    # "attributeLang":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v1    # "targetLang":Ljava/lang/String;
    .end local v3    # "translatedElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;
    .locals 20
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    const-string/jumbo v18, "RecognizeFilter"

    const-string/jumbo v19, "recognize result is null"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/16 v18, 0x0

    .line 81
    :goto_0
    return-object v18

    .line 30
    :cond_0
    new-instance v18, Lcom/iflytek/viafly/translate/TranslationFilterResult;

    invoke-direct/range {v18 .. v18}, Lcom/iflytek/viafly/translate/TranslationFilterResult;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Laxq;->a:Lcom/iflytek/viafly/translate/TranslationFilterResult;

    .line 33
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Laxq;->a:Lcom/iflytek/viafly/translate/TranslationFilterResult;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Laxq;->filterCommonResult(Lcom/iflytek/yd/speech/FilterResult;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 35
    invoke-virtual/range {p0 .. p1}, Laxq;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v17

    .line 36
    .local v17, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    .line 37
    .local v9, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Laxq;->getResultElements(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v8

    .line 38
    .local v8, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Laxq;->getObjElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 40
    .local v5, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v11, "sourceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v14, "targetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v7, "originalList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v16, "translatedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v13, "targetLangList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_1

    .line 48
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 49
    .local v4, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v19, "source"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 50
    .local v10, "sourceElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Laxq;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 52
    const-string/jumbo v19, "target"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 53
    .local v12, "targetElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Laxq;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 55
    const-string/jumbo v19, "original"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 56
    .local v6, "originalElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Laxq;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 58
    const-string/jumbo v19, "translated"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 59
    .local v15, "translatedElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Laxq;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 60
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Laxq;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 61
    goto :goto_1

    .line 63
    .end local v4    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v6    # "originalElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v10    # "sourceElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v12    # "targetElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v15    # "translatedElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_2

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Laxq;->a:Lcom/iflytek/viafly/translate/TranslationFilterResult;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->setSource(Ljava/lang/String;)V

    .line 66
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_3

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Laxq;->a:Lcom/iflytek/viafly/translate/TranslationFilterResult;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->setTarget(Ljava/lang/String;)V

    .line 69
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_4

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Laxq;->a:Lcom/iflytek/viafly/translate/TranslationFilterResult;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->setOriginal(Ljava/lang/String;)V

    .line 72
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_5

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Laxq;->a:Lcom/iflytek/viafly/translate/TranslationFilterResult;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->setTranslated(Ljava/lang/String;)V

    .line 75
    :cond_5
    if-eqz v13, :cond_6

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_6

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Laxq;->a:Lcom/iflytek/viafly/translate/TranslationFilterResult;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->setTargetLg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v5    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v7    # "originalList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v9    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v11    # "sourceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "targetLangList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "targetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "translatedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Laxq;->a:Lcom/iflytek/viafly/translate/TranslationFilterResult;

    move-object/from16 v18, v0

    goto/16 :goto_0

    .line 78
    :catch_0
    move-exception v3

    .line 79
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
