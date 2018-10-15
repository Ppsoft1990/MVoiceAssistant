.class public Laaa;
.super Ljava/lang/Object;
.source "PhoneMarkTypeParserUtil.java"


# direct methods
.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laac;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Laac;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 63
    new-instance v1, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v10, "caller_list"

    invoke-direct {v1, v10}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "callerList":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laac;

    .line 66
    .local v7, "markedType":Laac;
    new-instance v5, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "mark_info"

    invoke-direct {v5, v11}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 67
    .local v5, "markInfo":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v1, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 68
    new-instance v0, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "caller"

    invoke-direct {v0, v11}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "callerElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v7}, Laac;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v5, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 72
    new-instance v6, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "mark_time"

    invoke-direct {v6, v11}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 73
    .local v6, "markTimeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v7}, Laac;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 76
    new-instance v2, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "classify_name"

    invoke-direct {v2, v11}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, "classifyName":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v7}, Laac;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v5, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 80
    new-instance v4, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "is_mark"

    invoke-direct {v4, v11}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 81
    .local v4, "isAddMark":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v7}, Laac;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v5, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    goto :goto_0

    .line 84
    .end local v0    # "callerElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v2    # "classifyName":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v4    # "isAddMark":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v5    # "markInfo":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v6    # "markTimeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v7    # "markedType":Laac;
    :cond_0
    new-instance v3, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v3}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 85
    .local v3, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v10, "request"

    invoke-virtual {v3, v10}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    .line 86
    .local v9, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v9, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 87
    invoke-static {v3}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 90
    .end local v1    # "callerList":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v3    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v9    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    :goto_1
    return-object v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Laac;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Laac;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 28
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 29
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Laac;>;>;"
    new-instance v1, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "caller_list"

    invoke-direct {v1, v11}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, "callerList":Lcom/iflytek/yd/util/xml/XmlElement;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 32
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 33
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Laac;>;"
    new-instance v7, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "mark_info"

    invoke-direct {v7, v11}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 34
    .local v7, "markInfo":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v1, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 35
    new-instance v0, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "caller"

    invoke-direct {v0, v11}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "callerElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laac;

    invoke-virtual {v11}, Laac;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v7, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 39
    new-instance v8, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "mark_time"

    invoke-direct {v8, v11}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 40
    .local v8, "markTimeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laac;

    invoke-virtual {v11}, Laac;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v7, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 43
    new-instance v2, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "classify_name"

    invoke-direct {v2, v11}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, "classifyName":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laac;

    invoke-virtual {v11}, Laac;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v7, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 47
    new-instance v5, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "is_mark"

    invoke-direct {v5, v11}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 48
    .local v5, "isAddMark":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laac;

    invoke-virtual {v11}, Laac;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v7, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    goto :goto_0

    .line 51
    .end local v0    # "callerElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v2    # "classifyName":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Laac;>;"
    .end local v5    # "isAddMark":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v7    # "markInfo":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v8    # "markTimeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    new-instance v3, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v3}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 52
    .local v3, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v11, "PACK"

    invoke-virtual {v3, v11}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    .line 53
    .local v10, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v10, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 54
    invoke-static {v3}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v9

    .line 57
    .end local v1    # "callerList":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v3    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Laac;>;>;"
    .end local v10    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    :goto_1
    return-object v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 17
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Laac;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    if-nez p0, :cond_1

    .line 96
    const/4 v10, 0x0

    .line 141
    :cond_0
    return-object v10

    .line 98
    :cond_1
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 99
    .local v10, "markedHashMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Laac;>;"
    invoke-static/range {p0 .. p0}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v3

    .line 100
    .local v3, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v14

    .line 102
    .local v14, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v15, "caller_list"

    invoke-virtual {v14, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 104
    const/4 v15, 0x0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v16, "mark_info"

    invoke-virtual/range {v15 .. v16}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 105
    .local v6, "markInfo":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 107
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 108
    .local v4, "markElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const/4 v13, 0x0

    .line 109
    .local v13, "number":Ljava/lang/String;
    const/4 v8, 0x0

    .line 110
    .local v8, "markTime":Ljava/lang/String;
    const/4 v2, 0x0

    .line 111
    .local v2, "classifyString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 112
    .local v7, "markString":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 113
    const-string/jumbo v15, "caller"

    invoke-virtual {v4, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 114
    .local v12, "numElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 115
    const/4 v15, 0x0

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 118
    :cond_2
    const-string/jumbo v15, "mark_time"

    invoke-virtual {v4, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 119
    .local v9, "markTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 120
    const/4 v15, 0x0

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 123
    :cond_3
    const-string/jumbo v15, "classify_name"

    invoke-virtual {v4, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, "classifyElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_4

    .line 125
    const/4 v15, 0x0

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 128
    :cond_4
    const-string/jumbo v15, "is_mark"

    invoke-virtual {v4, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 129
    .local v5, "markElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_5

    .line 130
    const/4 v15, 0x0

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 134
    .end local v1    # "classifyElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "markElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v9    # "markTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v12    # "numElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_5
    new-instance v11, Laac;

    invoke-direct {v11, v13, v7, v2, v8}, Laac;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v11, "markedType":Laac;
    invoke-virtual {v10, v13, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 17
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Laac;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    if-nez p0, :cond_1

    .line 147
    const/4 v10, 0x0

    .line 192
    :cond_0
    return-object v10

    .line 149
    :cond_1
    new-instance v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 150
    .local v10, "markedArray":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Laac;>;"
    invoke-static/range {p0 .. p0}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v3

    .line 151
    .local v3, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v14

    .line 153
    .local v14, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v15, "caller_list"

    invoke-virtual {v14, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 155
    const/4 v15, 0x0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v16, "mark_info"

    invoke-virtual/range {v15 .. v16}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 156
    .local v6, "markInfo":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 158
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 159
    .local v4, "markElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const/4 v13, 0x0

    .line 160
    .local v13, "number":Ljava/lang/String;
    const/4 v8, 0x0

    .line 161
    .local v8, "markTime":Ljava/lang/String;
    const/4 v2, 0x0

    .line 162
    .local v2, "classifyString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 163
    .local v7, "markString":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 164
    const-string/jumbo v15, "caller"

    invoke-virtual {v4, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 165
    .local v12, "numElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 166
    const/4 v15, 0x0

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 169
    :cond_2
    const-string/jumbo v15, "mark_time"

    invoke-virtual {v4, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 170
    .local v9, "markTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 171
    const/4 v15, 0x0

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 174
    :cond_3
    const-string/jumbo v15, "classify_name"

    invoke-virtual {v4, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 175
    .local v1, "classifyElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_4

    .line 176
    const/4 v15, 0x0

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 179
    :cond_4
    const-string/jumbo v15, "is_mark"

    invoke-virtual {v4, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 180
    .local v5, "markElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_5

    .line 181
    const/4 v15, 0x0

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 185
    .end local v1    # "classifyElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "markElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v9    # "markTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v12    # "numElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_5
    new-instance v11, Laac;

    invoke-direct {v11, v13, v7, v2, v8}, Laac;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .local v11, "markedType":Laac;
    invoke-virtual {v10, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
