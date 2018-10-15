.class public final Lxw;
.super Ljava/lang/Object;
.source "OperationResultFactory.java"


# direct methods
.method static a(ILjava/lang/String;)Lcom/iflytek/yd/business/OperationInfo;
    .locals 1
    .param p0, "type"    # I
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    sparse-switch p0, :sswitch_data_0

    .line 116
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 61
    :sswitch_0
    invoke-static {p1}, Lxw;->k(Ljava/lang/String;)Lyi;

    move-result-object v0

    goto :goto_0

    .line 63
    :sswitch_1
    invoke-static {p1}, Lxw;->p(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_2
    invoke-static {p1}, Lxw;->l(Ljava/lang/String;)Lye;

    move-result-object v0

    goto :goto_0

    .line 68
    :sswitch_3
    invoke-static {p1}, Lxw;->b(Ljava/lang/String;)Lyj;

    move-result-object v0

    goto :goto_0

    .line 70
    :sswitch_4
    invoke-static {p1}, Lxw;->c(Ljava/lang/String;)Lcom/iflytek/yd/business/OperationInfo;

    move-result-object v0

    goto :goto_0

    .line 77
    :sswitch_5
    invoke-static {p1}, Lxw;->m(Ljava/lang/String;)Lcom/iflytek/yd/business/BasicInfo;

    move-result-object v0

    goto :goto_0

    .line 83
    :sswitch_6
    invoke-static {p1}, Lxw;->o(Ljava/lang/String;)Lxy;

    move-result-object v0

    goto :goto_0

    .line 85
    :sswitch_7
    invoke-static {p1}, Lxw;->n(Ljava/lang/String;)Lyc;

    move-result-object v0

    goto :goto_0

    .line 87
    :sswitch_8
    invoke-static {p1}, Lxw;->j(Ljava/lang/String;)Lyg;

    move-result-object v0

    goto :goto_0

    .line 91
    :sswitch_9
    invoke-static {p1}, Lxw;->g(Ljava/lang/String;)Lyd;

    move-result-object v0

    goto :goto_0

    .line 97
    :sswitch_a
    invoke-static {p1}, Lxw;->e(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/entities/NoticeInfo;

    move-result-object v0

    goto :goto_0

    .line 99
    :sswitch_b
    invoke-static {p1}, Lxw;->d(Ljava/lang/String;)Lyk;

    move-result-object v0

    goto :goto_0

    .line 103
    :sswitch_c
    invoke-static {p1}, Lxw;->a(Ljava/lang/String;)Lcom/iflytek/yd/business/OperationInfo;

    move-result-object v0

    goto :goto_0

    .line 105
    :sswitch_d
    invoke-static {p1}, Lxw;->h(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    move-result-object v0

    goto :goto_0

    .line 107
    :sswitch_e
    invoke-static {p1}, Lxw;->i(Ljava/lang/String;)Lyb;

    move-result-object v0

    goto :goto_0

    .line 109
    :sswitch_f
    invoke-static {p1}, Lxw;->t(Ljava/lang/String;)Lvv;

    move-result-object v0

    goto :goto_0

    .line 111
    :sswitch_10
    invoke-static {p1}, Lxw;->u(Ljava/lang/String;)Lyf;

    move-result-object v0

    goto :goto_0

    .line 113
    :sswitch_11
    invoke-static {p1}, Lxw;->v(Ljava/lang/String;)Lya;

    move-result-object v0

    goto :goto_0

    .line 59
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_1
        0x5 -> :sswitch_5
        0x7 -> :sswitch_5
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x12 -> :sswitch_8
        0x16 -> :sswitch_5
        0x17 -> :sswitch_9
        0x19 -> :sswitch_b
        0x1b -> :sswitch_3
        0x1c -> :sswitch_a
        0x1e -> :sswitch_9
        0x1f -> :sswitch_c
        0x20 -> :sswitch_9
        0x22 -> :sswitch_d
        0x23 -> :sswitch_e
        0x24 -> :sswitch_3
        0x29 -> :sswitch_10
        0x2a -> :sswitch_11
        0x4c -> :sswitch_4
        0x64 -> :sswitch_f
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/iflytek/yd/business/OperationInfo;
    .locals 4
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 256
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-object v0

    .line 259
    :cond_1
    invoke-static {p0}, Lxw;->r(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 260
    .local v1, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 264
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    .local v2, "sStatus":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    new-instance v0, Lxz;

    invoke-direct {v0}, Lxz;-><init>()V

    .line 270
    .local v0, "adapterInfo":Lxz;
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lxz;->a(Ljava/lang/String;)V

    .line 271
    const-string/jumbo v3, "desc"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lxz;->f(Ljava/lang/String;)V

    .line 272
    const-string/jumbo v3, "descinfo"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lxz;->c(Ljava/lang/String;)V

    .line 273
    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lxz;->d(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, v2}, Lxz;->b(Ljava/lang/String;)V

    .line 275
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lxz;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 737
    .local p1, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 739
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 740
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 742
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 743
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 744
    .local v4, "lstSubElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 746
    :cond_0
    const/4 v7, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v7, v6, :cond_1

    .line 747
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 749
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 752
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 753
    .local v5, "sKey":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, v4}, Lxw;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V

    goto :goto_2

    .line 739
    .end local v4    # "lstSubElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    .end local v5    # "sKey":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 757
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    .end local v3    # "j":I
    :cond_4
    return-void
.end method

.method public static b(Ljava/lang/String;)Lyj;
    .locals 4
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 512
    invoke-static {p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 513
    .local v1, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-object v0

    .line 516
    :cond_1
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 517
    .local v2, "sStatus":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 520
    new-instance v0, Lyj;

    invoke-direct {v0}, Lyj;-><init>()V

    .line 521
    .local v0, "info":Lyj;
    invoke-virtual {v0, v2}, Lyj;->b(Ljava/lang/String;)V

    .line 522
    const-string/jumbo v3, "descinfo"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lyj;->a(Ljava/lang/String;)V

    .line 523
    const-string/jumbo v3, "tokenid"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lyj;->c(Ljava/lang/String;)V

    .line 524
    const-string/jumbo v3, "day"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lyj;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p1, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 787
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 788
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 790
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 791
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 792
    .local v4, "lstSubElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 794
    :cond_0
    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v6, v5, :cond_1

    .line 795
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 797
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 800
    :cond_2
    const-string/jumbo v5, ""

    invoke-static {v5, p1, v4}, Lxw;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V

    goto :goto_2

    .line 787
    .end local v4    # "lstSubElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 805
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    .end local v3    # "j":I
    :cond_4
    return-void
.end method

.method private static c(Ljava/lang/String;)Lcom/iflytek/yd/business/OperationInfo;
    .locals 4
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 120
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-object v1

    .line 123
    :cond_1
    invoke-static {p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 124
    .local v0, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 128
    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, "sStatus":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    new-instance v1, Lyl;

    invoke-direct {v1}, Lyl;-><init>()V

    .line 134
    .local v1, "mdInfo":Lyl;
    const-string/jumbo v3, "000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lyl;->setSuccessful(Z)V

    .line 135
    const-string/jumbo v3, "150001"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lyl;->a(Z)V

    .line 136
    const-string/jumbo v3, "descinfo"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lyl;->setDesc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Lyk;
    .locals 5
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 147
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-object v1

    .line 150
    :cond_1
    invoke-static {p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 151
    .local v2, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 155
    const-string/jumbo v4, "status"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 156
    .local v3, "sStatus":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    new-instance v1, Lyk;

    invoke-direct {v1}, Lyk;-><init>()V

    .line 161
    .local v1, "logInfo":Lyk;
    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Lyk;->setSuccessful(Z)V

    .line 163
    const-string/jumbo v4, "descinfo"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lyk;->setDesc(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v4, "forbidtime"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    .local v0, "forbidTime":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lyk;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    .end local v0    # "forbidTime":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/entities/NoticeInfo;
    .locals 10
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 175
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-object v4

    .line 178
    :cond_1
    invoke-static {p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 179
    .local v3, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 183
    const-string/jumbo v6, "status"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 184
    .local v5, "sStatus":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 187
    new-instance v4, Lcom/iflytek/viafly/blc/operation/entities/NoticeInfo;

    invoke-direct {v4}, Lcom/iflytek/viafly/blc/operation/entities/NoticeInfo;-><init>()V

    .line 188
    .local v4, "result_info":Lcom/iflytek/viafly/blc/operation/entities/NoticeInfo;
    const-string/jumbo v6, "success"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v4, v6}, Lcom/iflytek/viafly/blc/operation/entities/NoticeInfo;->setSuccessful(Z)V

    .line 189
    const-string/jumbo v6, "descinfo"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/iflytek/viafly/blc/operation/entities/NoticeInfo;->setDesc(Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "i":I
    :goto_2
    new-instance v2, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    invoke-direct {v2}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;-><init>()V

    .line 192
    .local v2, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "typeid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setTypeId(Ljava/lang/String;)V

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "actionid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setActionId(Ljava/lang/String;)V

    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "msgid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setMsgId(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v7, "showid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "showid"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "prompt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setContent(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v7, "openurl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "openurl"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v7, "downurl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "downurl"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v7, "extend"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "extend"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "starttime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lxw;->f(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setStartTime(J)V

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "endtime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lxw;->f(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setEndTime(J)V

    .line 204
    const-string/jumbo v7, "searchtext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "searchtext"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v7, "picurl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "picurl"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v7, "btcontent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "btcontent"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v7, "isread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "isread"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;I)V

    .line 210
    const-string/jumbo v7, "dstarttime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "dstarttime"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v7, "dendtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "dendtime"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v7, "tdtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "tdtime"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setTitle(Ljava/lang/String;)V

    .line 214
    const-string/jumbo v7, "noticebartitle"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "noticebartitle"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v7, "audiolength"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "audiolength"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "dcount"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "displayTime":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 219
    invoke-static {v0}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setDisplayCount(I)V

    .line 222
    :cond_2
    const-string/jumbo v7, "focus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "focus"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v7, "subfocus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "subfocus"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v7, "reminder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "reminder"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v7, "cron"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "cron"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string/jumbo v7, "switch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "switch"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v7, v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;I)V

    .line 229
    invoke-virtual {v2}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 230
    const-string/jumbo v6, "OperationResultFactory"

    const-string/jumbo v7, "---->> read request notices end!"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 188
    .end local v0    # "displayTime":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 233
    .restart local v0    # "displayTime":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v8, v1

    add-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setReceiveTime(J)V

    .line 234
    invoke-virtual {v4, v2}, Lcom/iflytek/viafly/blc/operation/entities/NoticeInfo;->addNoticeItem(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method private static f(Ljava/lang/String;)J
    .locals 5
    .param p0, "datetimeRawtext"    # Ljava/lang/String;

    .prologue
    .line 242
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "mDateFormat":Ljava/text/SimpleDateFormat;
    const-wide/16 v2, 0x0

    .line 244
    .local v2, "result":J
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 246
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 252
    :cond_0
    :goto_0
    return-wide v2

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Lyd;
    .locals 4
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 306
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-object v1

    .line 309
    :cond_1
    invoke-static {p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 310
    .local v0, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 314
    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 315
    .local v2, "sStatus":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    new-instance v1, Lyd;

    invoke-direct {v1}, Lyd;-><init>()V

    .line 320
    .local v1, "result_info":Lyd;
    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Lyd;->setSuccessful(Z)V

    .line 321
    const-string/jumbo v3, "descinfo"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lyd;->setDesc(Ljava/lang/String;)V

    .line 322
    const-string/jumbo v3, "linkurl"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lyd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static h(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    .locals 16
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    .line 328
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_1

    .line 329
    :cond_0
    const/4 v9, 0x0

    .line 408
    :goto_0
    return-object v9

    .line 333
    :cond_1
    :try_start_0
    new-instance v9, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    invoke-direct {v9}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;-><init>()V

    .line 334
    .local v9, "netPluginInfo":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v10, "netPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    invoke-static/range {p0 .. p0}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v2

    .line 337
    .local v2, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v12

    .line 339
    .local v12, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v14, "status"

    invoke-virtual {v12, v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 340
    .local v13, "statusElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v13, :cond_2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 341
    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "success"

    .line 342
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x1

    .line 341
    :goto_1
    invoke-virtual {v9, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->setSuccessful(Z)V

    .line 344
    :cond_2
    const-string/jumbo v14, "descinfo"

    invoke-virtual {v12, v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 345
    .local v1, "descElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 346
    const/4 v14, 0x0

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->setDesc(Ljava/lang/String;)V

    .line 348
    :cond_3
    const-string/jumbo v14, "count"

    invoke-virtual {v12, v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 349
    .local v0, "countElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_4

    .line 350
    const/4 v14, 0x0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->setCount(I)V

    .line 353
    :cond_4
    const-string/jumbo v14, "downloadtime"

    invoke-virtual {v12, v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 354
    .local v3, "downtimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 355
    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->setDownloadTime(Ljava/lang/String;)V

    .line 358
    :cond_5
    const-string/jumbo v14, "plugin"

    invoke-virtual {v12, v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 359
    .local v11, "pluginElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v11, :cond_c

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_c

    .line 360
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 361
    .local v5, "element":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v8, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    invoke-direct {v8}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;-><init>()V

    .line 362
    .local v8, "netPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 363
    .local v7, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 364
    .local v6, "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    const-string/jumbo v14, ""

    invoke-static {v14, v7, v6}, Lxw;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V

    .line 365
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 366
    const-string/jumbo v14, "id"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setId(Ljava/lang/String;)V

    .line 367
    const-string/jumbo v14, "author"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setAuthor(Ljava/lang/String;)V

    .line 368
    const-string/jumbo v14, "desc"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setDesc(Ljava/lang/String;)V

    .line 369
    const-string/jumbo v14, "linkurl"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setLinkUrl(Ljava/lang/String;)V

    .line 370
    const-string/jumbo v14, "downcount"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 371
    const-string/jumbo v14, "downcount"

    .line 372
    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 371
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setDownloadCount(I)V

    .line 374
    :cond_7
    const-string/jumbo v14, "imgurl"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setImageUrl(Ljava/lang/String;)V

    .line 375
    const-string/jumbo v14, "name"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setName(Ljava/lang/String;)V

    .line 376
    const-string/jumbo v14, "resid"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setPluginId(Ljava/lang/String;)V

    .line 377
    const-string/jumbo v14, "preurl"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setPreUrl(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v14, "score"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setScore(Ljava/lang/String;)V

    .line 379
    const-string/jumbo v14, "type"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 380
    const-string/jumbo v14, "type"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setType(I)V

    .line 384
    :cond_8
    const-string/jumbo v14, "kind"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 385
    const-string/jumbo v14, "gp_apk"

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setKind(Ljava/lang/String;)V

    .line 388
    :cond_9
    const-string/jumbo v14, "androidlv"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 389
    const-string/jumbo v14, "androidlv"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setAndroidLv(I)V

    .line 393
    :goto_3
    const-string/jumbo v14, "sharetext "

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setShareText(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v14, "size"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setSize(Ljava/lang/String;)V

    .line 395
    const-string/jumbo v14, "version"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setVersion(Ljava/lang/String;)V

    .line 396
    const-string/jumbo v14, "pkgname"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setPkgName(Ljava/lang/String;)V

    .line 397
    const-string/jumbo v14, "autodownload"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setAutoDownload(Ljava/lang/String;)V

    .line 398
    const-string/jumbo v14, "autoinstall"

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setAutoInstall(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 406
    .end local v0    # "countElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v1    # "descElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v2    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v3    # "downtimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "element":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v6    # "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    .end local v7    # "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "netPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .end local v9    # "netPluginInfo":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    .end local v10    # "netPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    .end local v11    # "pluginElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v12    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v13    # "statusElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :catch_0
    move-exception v4

    .line 407
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "OperationResultFactory"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 342
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .restart local v9    # "netPluginInfo":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    .restart local v10    # "netPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    .restart local v12    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v13    # "statusElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 391
    .restart local v0    # "countElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v1    # "descElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v3    # "downtimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v5    # "element":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v6    # "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    .restart local v7    # "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "netPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .restart local v11    # "pluginElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_b
    const/4 v14, 0x0

    :try_start_1
    invoke-virtual {v8, v14}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->setAndroidLv(I)V

    goto :goto_3

    .line 403
    .end local v5    # "element":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v6    # "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    .end local v7    # "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "netPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    :cond_c
    invoke-virtual {v9, v10}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->setNetPlugins(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static i(Ljava/lang/String;)Lyb;
    .locals 15
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 413
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 414
    const/4 v1, 0x0

    .line 455
    :cond_0
    :goto_0
    return-object v1

    .line 417
    :cond_1
    new-instance v1, Lyb;

    invoke-direct {v1}, Lyb;-><init>()V

    .line 420
    .local v1, "clientConfigInfo":Lyb;
    :try_start_0
    invoke-static {p0}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v5

    .line 421
    .local v5, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    .line 423
    .local v10, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v12, "status"

    invoke-virtual {v10, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 424
    .local v11, "statusElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 425
    const-string/jumbo v14, "000000"

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v1, v12}, Lyb;->setSuccessful(Z)V

    .line 427
    :cond_2
    const-string/jumbo v12, "descinfo"

    invoke-virtual {v10, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 428
    .local v4, "descElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v11, :cond_3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 429
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lyb;->setDesc(Ljava/lang/String;)V

    .line 431
    :cond_3
    const-string/jumbo v12, "configlist"

    invoke-virtual {v10, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 432
    .local v2, "configlistElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/4 v0, 0x0

    .line 433
    .local v0, "adaptElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 434
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v13, "config"

    invoke-virtual {v12, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 437
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 439
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 440
    .local v7, "element":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 441
    .local v9, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v7}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v8

    .line 442
    .local v8, "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    const-string/jumbo v13, ""

    invoke-static {v13, v9, v8}, Lxw;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V

    .line 443
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 444
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 451
    .end local v0    # "adaptElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v2    # "configlistElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "descElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v7    # "element":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v8    # "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    .end local v9    # "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v11    # "statusElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :catch_0
    move-exception v6

    .line 452
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "OperationResultFactory"

    const-string/jumbo v13, ""

    invoke-static {v12, v13, v6}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .restart local v10    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v11    # "statusElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_6
    move v12, v13

    .line 425
    goto/16 :goto_1

    .line 448
    .restart local v0    # "adaptElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v2    # "configlistElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4    # "descElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_7
    :try_start_1
    invoke-virtual {v1, v3}, Lyb;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static j(Ljava/lang/String;)Lyg;
    .locals 16
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    .line 459
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    .line 460
    :cond_0
    const/4 v7, 0x0

    .line 503
    :cond_1
    :goto_0
    return-object v7

    .line 462
    :cond_2
    invoke-static/range {p0 .. p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 463
    .local v10, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v10, :cond_3

    .line 464
    const/4 v7, 0x0

    goto :goto_0

    .line 467
    :cond_3
    const-string/jumbo v14, "status"

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 468
    .local v12, "sStatus":Ljava/lang/String;
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_5

    .line 469
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 472
    :cond_5
    new-instance v7, Lyg;

    invoke-direct {v7}, Lyg;-><init>()V

    .line 473
    .local v7, "info":Lyg;
    const-string/jumbo v14, "success"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v7, v14}, Lyg;->setSuccessful(Z)V

    .line 474
    const-string/jumbo v14, "descinfo"

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7, v14}, Lyg;->setDesc(Ljava/lang/String;)V

    .line 475
    const-string/jumbo v14, "count"

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Lyg;->a(I)V

    .line 476
    const/4 v3, 0x0

    .line 477
    .local v3, "i":I
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skin"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "id"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 478
    .local v5, "idStr":Ljava/lang/String;
    if-nez v5, :cond_a

    const/4 v4, 0x0

    .line 479
    .local v4, "id":I
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skin"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "filename"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 480
    .local v2, "fileName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skin"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "name"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 481
    .local v11, "name":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skin"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "author"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 482
    .local v0, "author":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skin"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "desc"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 483
    .local v1, "desc":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skin"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "imglinkurl"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 484
    .local v6, "imgLinkUrl":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skin"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "linkurl"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 485
    .local v9, "linkUrl":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skin"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "version"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 487
    .local v13, "version":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_8

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_8

    :cond_7
    if-eqz v11, :cond_1

    .line 488
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_1

    .line 491
    :cond_8
    new-instance v8, Lyh;

    invoke-direct {v8}, Lyh;-><init>()V

    .line 492
    .local v8, "item":Lyh;
    invoke-virtual {v8, v0}, Lyh;->b(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v8, v1}, Lyh;->c(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v8, v2}, Lyh;->f(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v8, v4}, Lyh;->a(I)V

    .line 496
    invoke-virtual {v8, v6}, Lyh;->d(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v8, v11}, Lyh;->a(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v8, v9}, Lyh;->e(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v8, v13}, Lyh;->g(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v7, v8}, Lyg;->a(Lyh;)V

    .line 476
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 473
    .end local v0    # "author":Ljava/lang/String;
    .end local v1    # "desc":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "id":I
    .end local v5    # "idStr":Ljava/lang/String;
    .end local v6    # "imgLinkUrl":Ljava/lang/String;
    .end local v8    # "item":Lyh;
    .end local v9    # "linkUrl":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "version":Ljava/lang/String;
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 478
    .restart local v3    # "i":I
    .restart local v5    # "idStr":Ljava/lang/String;
    :cond_a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3
.end method

.method private static k(Ljava/lang/String;)Lyi;
    .locals 6
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 535
    invoke-static {p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 536
    .local v1, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    move-object v2, v5

    .line 575
    :goto_0
    return-object v2

    .line 540
    :cond_0
    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 541
    .local v3, "sStatus":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v2, v5

    .line 542
    goto :goto_0

    .line 545
    :cond_2
    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 547
    .local v0, "bStatus":Z
    :goto_1
    if-nez v0, :cond_4

    move-object v2, v5

    .line 548
    goto :goto_0

    .line 545
    .end local v0    # "bStatus":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 551
    .restart local v0    # "bStatus":Z
    :cond_4
    new-instance v2, Lyi;

    invoke-direct {v2}, Lyi;-><init>()V

    .line 553
    .local v2, "runCfg":Lyi;
    const-string/jumbo v4, "userinfo"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lyi;->c(Ljava/lang/String;)V

    .line 555
    const-string/jumbo v4, "adstitle"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lyi;->d(Ljava/lang/String;)V

    .line 556
    const-string/jumbo v4, "adscontent"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lyi;->e(Ljava/lang/String;)V

    .line 557
    const-string/jumbo v4, "sysmsg"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lyi;->i(Ljava/lang/String;)V

    .line 558
    const-string/jumbo v4, "sid"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lyi;->a(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v2}, Lyi;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lyi;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 560
    invoke-virtual {v2, v5}, Lyi;->a(Ljava/lang/String;)V

    .line 562
    :cond_5
    const-string/jumbo v4, "uid"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lyi;->b(Ljava/lang/String;)V

    .line 564
    const-string/jumbo v4, "needupdate"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lxw;->s(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v4

    invoke-virtual {v2, v4}, Lyi;->a(Lcom/iflytek/viafly/blc/operation/entities/UpdateType;)V

    .line 565
    sget-object v4, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    invoke-virtual {v2}, Lyi;->b()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v5

    if-eq v4, v5, :cond_6

    .line 566
    const-string/jumbo v4, "updateinfo"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lyi;->f(Ljava/lang/String;)V

    .line 567
    const-string/jumbo v4, "updateversion"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lyi;->g(Ljava/lang/String;)V

    .line 568
    const-string/jumbo v4, "downloadurl"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lyi;->h(Ljava/lang/String;)V

    .line 569
    const-string/jumbo v4, "updatedetail"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lyi;->j(Ljava/lang/String;)V

    .line 573
    :cond_6
    const-string/jumbo v4, "grayctrl"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lyi;->k(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static l(Ljava/lang/String;)Lye;
    .locals 6
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 585
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-object v1

    .line 588
    :cond_1
    invoke-static {p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 589
    .local v2, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 593
    const-string/jumbo v5, "status"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 594
    .local v3, "sStatus":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 598
    const-string/jumbo v5, "success"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 600
    .local v0, "bStatus":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 603
    new-instance v1, Lye;

    invoke-direct {v1}, Lye;-><init>()V

    .line 605
    .local v1, "loginResult":Lye;
    invoke-virtual {v1, v4}, Lye;->setSuccessful(Z)V

    .line 607
    const-string/jumbo v4, "descinfo"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lye;->setDesc(Ljava/lang/String;)V

    .line 608
    const-string/jumbo v4, "sid"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lye;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 598
    .end local v0    # "bStatus":Z
    .end local v1    # "loginResult":Lye;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static m(Ljava/lang/String;)Lcom/iflytek/yd/business/BasicInfo;
    .locals 4
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 614
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-object v1

    .line 617
    :cond_1
    invoke-static {p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 618
    .local v0, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 622
    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 623
    .local v2, "sStatus":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 627
    new-instance v1, Lcom/iflytek/yd/business/BasicInfo;

    invoke-direct {v1}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    .line 628
    .local v1, "registerResult":Lcom/iflytek/yd/business/BasicInfo;
    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Lcom/iflytek/yd/business/BasicInfo;->setSuccessful(Z)V

    .line 629
    const-string/jumbo v3, "descinfo"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/iflytek/yd/business/BasicInfo;->setDesc(Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static n(Ljava/lang/String;)Lyc;
    .locals 6
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 636
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-object v0

    .line 640
    :cond_1
    const-string/jumbo v3, "OperationResultFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCustomizeInfo result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 643
    .local v1, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 647
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 648
    .local v2, "sStatus":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    new-instance v0, Lyc;

    invoke-direct {v0}, Lyc;-><init>()V

    .line 653
    .local v0, "info":Lyc;
    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Lyc;->setSuccessful(Z)V

    .line 654
    const-string/jumbo v3, "descinfo"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lyc;->setDesc(Ljava/lang/String;)V

    .line 655
    const-string/jumbo v3, "time"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lyc;->a(Ljava/lang/String;)V

    .line 656
    const-string/jumbo v3, "downfromname"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lyc;->b(Ljava/lang/String;)V

    .line 657
    const-string/jumbo v3, "toptitle"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lyc;->c(Ljava/lang/String;)V

    .line 658
    const-string/jumbo v3, "downfromdesc"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lyc;->e(Ljava/lang/String;)V

    .line 659
    const-string/jumbo v3, "logourl"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lyc;->d(Ljava/lang/String;)V

    .line 660
    const-string/jumbo v3, "hrefText"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lyc;->f(Ljava/lang/String;)V

    .line 661
    const-string/jumbo v3, "linkurl"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lyc;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 653
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static o(Ljava/lang/String;)Lxy;
    .locals 6
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 666
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-object v0

    .line 670
    :cond_1
    const-string/jumbo v3, "OperationResultFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAboutInfo result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-static {p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 673
    .local v1, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 677
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 678
    .local v2, "sStatus":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 682
    new-instance v0, Lxy;

    invoke-direct {v0}, Lxy;-><init>()V

    .line 683
    .local v0, "info":Lxy;
    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Lxy;->setSuccessful(Z)V

    .line 684
    const-string/jumbo v3, "descinfo"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lxy;->setDesc(Ljava/lang/String;)V

    .line 685
    const-string/jumbo v3, "time"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lxy;->a(Ljava/lang/String;)V

    .line 686
    const-string/jumbo v3, "abouttitle"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lxy;->b(Ljava/lang/String;)V

    .line 687
    const-string/jumbo v3, "linkurl"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lxy;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static p(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .locals 4
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    .line 693
    invoke-static {p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 694
    .local v0, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 695
    const/4 v1, 0x0

    .line 709
    :cond_0
    :goto_0
    return-object v1

    .line 698
    :cond_1
    new-instance v1, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-direct {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;-><init>()V

    .line 700
    .local v1, "versionResult":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    const-string/jumbo v2, "needupdate"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lxw;->s(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateType(Lcom/iflytek/viafly/blc/operation/entities/UpdateType;)V

    .line 701
    sget-object v2, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 702
    const-string/jumbo v2, "updateinfo"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateInfo(Ljava/lang/String;)V

    .line 703
    const-string/jumbo v2, "updateversion"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateVersion(Ljava/lang/String;)V

    .line 704
    const-string/jumbo v2, "downloadurl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 705
    const-string/jumbo v2, "updatedetail"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateDetail(Ljava/lang/String;)V

    .line 706
    const-string/jumbo v2, "showid"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateShowId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static q(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p0, "sResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 714
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v3, v5

    .line 731
    :goto_0
    return-object v3

    .line 717
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 720
    .local v3, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v0

    .line 722
    .local v0, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v0}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    .line 724
    .local v4, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v4}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 726
    .local v2, "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    const-string/jumbo v6, ""

    invoke-static {v6, v3, v2}, Lxw;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 727
    .end local v0    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v2    # "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    .end local v4    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    :catch_0
    move-exception v1

    .line 728
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v3, v5

    .line 729
    goto :goto_0
.end method

.method private static r(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p0, "sResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 761
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v3, v5

    .line 778
    :goto_0
    return-object v3

    .line 764
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 767
    .local v3, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v0

    .line 769
    .local v0, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v0}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    .line 771
    .local v4, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v4}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 773
    .local v2, "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    const-string/jumbo v6, ""

    invoke-static {v6, v3, v2}, Lxw;->b(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 774
    .end local v0    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v2    # "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    .end local v4    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    :catch_0
    move-exception v1

    .line 775
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v3, v5

    .line 776
    goto :goto_0
.end method

.method private static s(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    .locals 2
    .param p0, "neddUpdate"    # Ljava/lang/String;

    .prologue
    .line 815
    if-nez p0, :cond_0

    .line 816
    sget-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .line 825
    .local v0, "updateType":Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    :goto_0
    return-object v0

    .line 817
    .end local v0    # "updateType":Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    :cond_0
    const-string/jumbo v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    sget-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Recommend:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .restart local v0    # "updateType":Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    goto :goto_0

    .line 819
    .end local v0    # "updateType":Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    :cond_1
    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 820
    sget-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .restart local v0    # "updateType":Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    goto :goto_0

    .line 822
    .end local v0    # "updateType":Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    :cond_2
    sget-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .restart local v0    # "updateType":Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    goto :goto_0
.end method

.method private static t(Ljava/lang/String;)Lvv;
    .locals 15
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 835
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 836
    const/4 v5, 0x0

    .line 871
    :cond_0
    :goto_0
    return-object v5

    .line 839
    :cond_1
    new-instance v5, Lvv;

    invoke-direct {v5}, Lvv;-><init>()V

    .line 842
    .local v5, "resp":Lvv;
    :try_start_0
    invoke-static {p0}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v1

    .line 843
    .local v1, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v1}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v6

    .line 845
    .local v6, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v12, "status"

    invoke-virtual {v6, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 846
    .local v8, "statusElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 847
    const-string/jumbo v14, "000000"

    const/4 v12, 0x0

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v5, v12}, Lvv;->setSuccessful(Z)V

    .line 849
    :cond_2
    const-string/jumbo v12, "descinfo"

    invoke-virtual {v6, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 850
    .local v0, "descElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 851
    const/4 v12, 0x0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lvv;->setDesc(Ljava/lang/String;)V

    .line 853
    :cond_3
    const-string/jumbo v12, "userinfo"

    invoke-virtual {v6, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 854
    .local v11, "userInfoElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 855
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 856
    .local v4, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 857
    .local v3, "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    new-instance v10, Lvw;

    invoke-direct {v10}, Lvw;-><init>()V

    .line 858
    .local v10, "userInfo":Lvw;
    const-string/jumbo v12, ""

    invoke-static {v12, v4, v3}, Lxw;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V

    .line 860
    const-string/jumbo v12, "sid"

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 861
    .local v7, "sid":Ljava/lang/String;
    const-string/jumbo v12, "uid"

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 862
    .local v9, "uid":Ljava/lang/String;
    invoke-virtual {v10, v7}, Lvw;->b(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v10, v9}, Lvw;->a(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v5, v10}, Lvv;->a(Lvw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 867
    .end local v0    # "descElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v1    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v3    # "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    .end local v4    # "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v7    # "sid":Ljava/lang/String;
    .end local v8    # "statusElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v9    # "uid":Ljava/lang/String;
    .end local v10    # "userInfo":Lvw;
    .end local v11    # "userInfoElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :catch_0
    move-exception v2

    .line 868
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "OperationResultFactory"

    const-string/jumbo v13, ""

    invoke-static {v12, v13, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .restart local v6    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v8    # "statusElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_4
    move v12, v13

    .line 847
    goto :goto_1
.end method

.method private static u(Ljava/lang/String;)Lyf;
    .locals 10
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 880
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 910
    :cond_0
    return-object v2

    .line 883
    :cond_1
    invoke-static {p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 884
    .local v1, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 888
    const-string/jumbo v8, "status"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 889
    .local v4, "status":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 892
    new-instance v2, Lyf;

    invoke-direct {v2}, Lyf;-><init>()V

    .line 894
    .local v2, "netSpecificVoiceInfo":Lyf;
    const-string/jumbo v8, "success"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "000000"

    .line 895
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const/4 v8, 0x1

    .line 894
    :goto_0
    invoke-virtual {v2, v8}, Lyf;->setSuccessful(Z)V

    .line 896
    const-string/jumbo v8, "descinfo"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lyf;->setDesc(Ljava/lang/String;)V

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "i":I
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "res"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 900
    .local v7, "tmp_name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "res"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "desc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 901
    .local v5, "tmp_desc":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "res"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "linkurl"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 902
    .local v6, "tmp_linkurl":Ljava/lang/String;
    invoke-static {v7}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 903
    invoke-static {v6}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 906
    new-instance v3, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-direct {v3, v5, v7, v6}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .local v3, "specificVoice":Lcom/iflytek/viafly/dial/specific/SpecificVoice;
    invoke-virtual {v2, v3}, Lyf;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoice;)V

    .line 898
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 895
    .end local v0    # "i":I
    .end local v3    # "specificVoice":Lcom/iflytek/viafly/dial/specific/SpecificVoice;
    .end local v5    # "tmp_desc":Ljava/lang/String;
    .end local v6    # "tmp_linkurl":Ljava/lang/String;
    .end local v7    # "tmp_name":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private static v(Ljava/lang/String;)Lya;
    .locals 13
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 920
    const-string/jumbo v9, "OperationResultFactory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getCardsResInfo result is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    move-object v1, v10

    .line 961
    :goto_0
    return-object v1

    .line 928
    :cond_1
    invoke-static {p0}, Lxw;->q(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 929
    .local v4, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_2

    move-object v1, v10

    .line 930
    goto :goto_0

    .line 933
    :cond_2
    const-string/jumbo v9, "status"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 934
    .local v6, "status":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    move-object v1, v10

    .line 935
    goto :goto_0

    .line 937
    :cond_4
    new-instance v1, Lya;

    invoke-direct {v1}, Lya;-><init>()V

    .line 939
    .local v1, "cardsResInfo":Lya;
    const-string/jumbo v9, "success"

    .line 940
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string/jumbo v9, "000000"

    .line 941
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_5
    const/4 v9, 0x1

    .line 940
    :goto_1
    invoke-virtual {v1, v9}, Lya;->setSuccessful(Z)V

    .line 942
    const-string/jumbo v9, "descinfo"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Lya;->setDesc(Ljava/lang/String;)V

    .line 944
    const-string/jumbo v9, "res0name"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 945
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v9, "res0desc"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 946
    .local v0, "cardsDesc":Ljava/lang/String;
    const-string/jumbo v9, "res0version"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 947
    .local v7, "verStr":Ljava/lang/String;
    const/4 v8, 0x0

    .line 948
    .local v8, "version":I
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 949
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 951
    :cond_6
    const-string/jumbo v9, "res0linkurl"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 953
    .local v3, "linkurl":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lya;->a(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v1, v0}, Lya;->c(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v1, v8}, Lya;->a(I)V

    .line 956
    invoke-virtual {v1, v3}, Lya;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 959
    .end local v0    # "cardsDesc":Ljava/lang/String;
    .end local v1    # "cardsResInfo":Lya;
    .end local v3    # "linkurl":Ljava/lang/String;
    .end local v4    # "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "status":Ljava/lang/String;
    .end local v7    # "verStr":Ljava/lang/String;
    .end local v8    # "version":I
    :catch_0
    move-exception v2

    .line 960
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "OperationResultFactory"

    const-string/jumbo v11, "getCardsResInfo error"

    invoke-static {v9, v11, v2}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v10

    .line 961
    goto/16 :goto_0

    .line 941
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cardsResInfo":Lya;
    .restart local v4    # "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "status":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    goto :goto_1
.end method
