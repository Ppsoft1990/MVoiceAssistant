.class public Labt;
.super Lvz;
.source "PhoneTypeParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvz",
        "<",
        "Labq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lvz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Labq;
    .locals 10
    .param p1, "xmlResult"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 24
    new-instance v2, Labq;

    invoke-direct {v2}, Labq;-><init>()V

    .line 26
    .local v2, "numTypeResult":Labq;
    invoke-static {v2, p1}, Labt;->a(Lwa;Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v1

    .line 30
    .local v1, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v1}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    .line 32
    .local v5, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v5, :cond_1

    .line 33
    const-string/jumbo v7, "result"

    invoke-virtual {v5, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 34
    .local v4, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 36
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v8, "object"

    invoke-virtual {v7, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 37
    .local v3, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 38
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {p0, v7}, Labt;->e(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "dateInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v2, v0}, Labq;->a(Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {p0, v7}, Labt;->f(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v6

    .line 43
    .local v6, "typeItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    invoke-virtual {v2, v6}, Labq;->a(Ljava/util/List;)V

    .line 50
    .end local v0    # "dateInfo":Ljava/lang/String;
    .end local v3    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v6    # "typeItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    :cond_1
    return-object v2
.end method

.method protected e(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;
    .locals 3
    .param p1, "parentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "info":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 56
    const-string/jumbo v2, "updateTime"

    invoke-virtual {p1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, "dateInfoElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 58
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 62
    .end local v0    # "dateInfoElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    return-object v1
.end method

.method protected f(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;
    .locals 7
    .param p1, "parentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v3, "phoneNumTypeItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    if-eqz p1, :cond_2

    .line 68
    const-string/jumbo v5, "updateTime"

    invoke-virtual {p1, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 69
    .local v4, "updateElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 70
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    .line 72
    :cond_0
    const-string/jumbo v5, "caller_info"

    invoke-virtual {p1, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "numTypeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v1, :cond_3

    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 75
    .local v0, "numTypeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {p0, v0}, Labt;->g(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    move-result-object v2

    .line 76
    .local v2, "numTypeItem":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    if-eqz v2, :cond_1

    .line 77
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    .end local v0    # "numTypeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v1    # "numTypeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v2    # "numTypeItem":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    .end local v4    # "updateElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_2
    const/4 v3, 0x0

    .end local v3    # "phoneNumTypeItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    :cond_3
    return-object v3
.end method

.method protected g(Lcom/iflytek/yd/util/xml/XmlElement;)Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    .locals 16
    .param p1, "typeParentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 87
    new-instance v10, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    invoke-direct {v10}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;-><init>()V

    .line 88
    .local v10, "typeItem":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    if-eqz p1, :cond_8

    .line 89
    const-string/jumbo v13, "caller"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 90
    .local v12, "typeNumElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 91
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "num":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 93
    invoke-virtual {v10, v7}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->setNum(Ljava/lang/String;)V

    .line 97
    .end local v7    # "num":Ljava/lang/String;
    :cond_0
    const-string/jumbo v13, "area"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 98
    .local v8, "typeAreaElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 99
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "area":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 106
    .end local v1    # "area":Ljava/lang/String;
    :cond_1
    const-string/jumbo v13, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 107
    .local v11, "typeNameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 108
    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 110
    invoke-virtual {v10, v6}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->setName(Ljava/lang/String;)V

    .line 114
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v13, "classify"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 115
    .local v9, "typeClassifyElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 116
    const-string/jumbo v2, ""

    .line 117
    .local v2, "classify":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 118
    .local v3, "classifyElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v13, "classify_name"

    invoke-virtual {v3, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 119
    .local v4, "clssifyNameElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 120
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4

    .line 121
    const-string/jumbo v2, ""

    goto :goto_0

    .line 123
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "#"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    const-string/jumbo v13, "mark_times"

    invoke-virtual {v3, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 126
    .local v5, "markCountElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 127
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/4 v13, 0x0

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "@"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 135
    .end local v3    # "classifyElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v4    # "clssifyNameElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "markCountElement":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_6
    const-string/jumbo v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 136
    const/4 v2, 0x0

    .line 138
    :cond_7
    invoke-virtual {v10, v2}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->setClassify(Ljava/lang/String;)V

    .line 142
    .end local v2    # "classify":Ljava/lang/String;
    .end local v8    # "typeAreaElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v9    # "typeClassifyElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v11    # "typeNameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v12    # "typeNumElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_8
    return-object v10
.end method
