.class public Laoo;
.super Lcom/iflytek/yd/speech/RecognizeFilter;
.source "MessageRecognizeFilter.java"


# instance fields
.field private a:Laau;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    .line 132
    .local p1, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 135
    .local v2, "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "content"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, "contentElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v0}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 140
    .end local v0    # "contentElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v2    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    return-object v1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    .line 144
    .local p1, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, "contentTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 147
    .local v2, "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "content_type"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 148
    .local v0, "contentElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v0}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 152
    .end local v0    # "contentElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v2    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    return-object v1
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    .line 156
    .local p1, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v1, "contentFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 159
    .local v2, "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "smart_content_from"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 160
    .local v0, "contentElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v0}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 164
    .end local v0    # "contentElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v2    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    return-object v1
.end method

.method private d(Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    .line 167
    .local p1, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, "contentIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 170
    .local v2, "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "smart_type_id"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "contentElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v0}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 175
    .end local v0    # "contentElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v2    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    return-object v1
.end method

.method private e(Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    .line 178
    .local p1, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "blessIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 180
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 181
    .local v2, "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "smart_bless_id"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 182
    .local v1, "contentElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v1}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 186
    .end local v1    # "contentElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v2    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;
    .locals 26
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 23
    if-nez p1, :cond_0

    .line 24
    const-string/jumbo v22, "RecognizeFilter"

    const-string/jumbo v23, "recognize result is null"

    invoke-static/range {v22 .. v23}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/16 v22, 0x0

    .line 128
    :goto_0
    return-object v22

    .line 27
    :cond_0
    new-instance v22, Laau;

    invoke-direct/range {v22 .. v22}, Laau;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Laoo;->a:Laau;

    .line 30
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Laoo;->filterCommonResult(Lcom/iflytek/yd/speech/FilterResult;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 32
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v7, "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v8, "contentTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Laoo;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v21

    .line 36
    .local v21, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual/range {v21 .. v21}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v18

    .line 37
    .local v18, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Laoo;->getResultElements(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v17

    .line 38
    .local v17, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Laoo;->getObjElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 40
    .local v16, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Laoo;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 41
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Laoo;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 43
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Laoo;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 44
    .local v5, "contentFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Laoo;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 45
    .local v6, "contentIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Laoo;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 47
    .local v3, "blessIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v11, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v14, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v13, "nameTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v16, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_e

    .line 52
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_1

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Laau;->a(Z)V

    .line 55
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 56
    .local v15, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 57
    .local v10, "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_2

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Laau;->b()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 59
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_2
    :goto_2
    const-string/jumbo v22, "name_type"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 65
    .local v12, "nameTypeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_3

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Laau;->b()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 67
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_3
    :goto_3
    const-string/jumbo v22, "code"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 73
    .local v4, "codeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_4

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Laau;->b()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 75
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_4
    :goto_4
    const-string/jumbo v22, "sim_card"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 82
    .local v19, "simcardElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v19, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_d

    .line 83
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 84
    .local v20, "strSimCard":Ljava/lang/String;
    const-string/jumbo v22, "\u53611"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string/jumbo v22, "\u5361\u4e00"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 85
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v22, v0

    sget-object v24, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laau;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 89
    :cond_6
    :goto_5
    const-string/jumbo v22, "RecognizeFilter"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "MethodName: filterRecognizeResult data: [ simCard:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " info: filte sim info"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 124
    .end local v3    # "blessIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "codeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "contentFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "contentIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "contentTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v11    # "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "nameTypeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v13    # "nameTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v16    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v17    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v18    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v19    # "simcardElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v20    # "strSimCard":Ljava/lang/String;
    .end local v21    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :catch_0
    move-exception v9

    .line 125
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v22, "RecognizeFilter"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v22, v0

    goto/16 :goto_0

    .line 61
    .restart local v3    # "blessIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "contentFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "contentIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "contentTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v11    # "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "nameTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v16    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v17    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v18    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v21    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 69
    .restart local v12    # "nameTypeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 77
    .restart local v4    # "codeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Laoo;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 86
    .restart local v19    # "simcardElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v20    # "strSimCard":Ljava/lang/String;
    :cond_b
    const-string/jumbo v22, "\u53612"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    const-string/jumbo v22, "\u5361\u4e8c"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 87
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v22, v0

    sget-object v24, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laau;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto/16 :goto_5

    .line 93
    .end local v20    # "strSimCard":Ljava/lang/String;
    :cond_d
    const-string/jumbo v22, "RecognizeFilter"

    const-string/jumbo v24, "MethodName: filterRecognizeResult info: not sim info"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 98
    .end local v4    # "codeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v10    # "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v12    # "nameTypeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v15    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v19    # "simcardElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_f

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Laau;->a(Ljava/util/List;)V

    .line 101
    :cond_f
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_10

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Laau;->b(Ljava/util/List;)V

    .line 104
    :cond_10
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_11

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Laau;->a(Ljava/lang/String;)V

    .line 107
    :cond_11
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_12

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Laau;->c(Ljava/lang/String;)V

    .line 111
    :cond_12
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_13

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Laau;->d(Ljava/lang/String;)V

    .line 114
    :cond_13
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_14

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Laau;->e(Ljava/lang/String;)V

    .line 117
    :cond_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_15

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Laau;->f(Ljava/lang/String;)V

    .line 121
    :cond_15
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_7

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Laoo;->a:Laau;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Laau;->c(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method
