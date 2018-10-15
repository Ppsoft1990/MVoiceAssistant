.class public Labr;
.super Lvz;
.source "PhoneTypeDBUParser.java"


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
    .line 20
    invoke-direct {p0}, Lvz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Labq;
    .locals 12
    .param p1, "xmlResult"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 27
    new-instance v3, Labq;

    invoke-direct {v3}, Labq;-><init>()V

    .line 29
    .local v3, "numTypeResult":Labq;
    invoke-static {v3, p1}, Labr;->a(Lwa;Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v2

    .line 33
    .local v2, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v6

    .line 35
    .local v6, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v6, :cond_1

    .line 36
    const-string/jumbo v9, "result"

    invoke-virtual {v6, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 37
    .local v5, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 39
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v10, "object"

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 40
    .local v4, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 41
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {p0, v9}, Labr;->e(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "dateInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v3, v0}, Labq;->a(Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {p0, v9}, Labr;->g(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;

    move-result-object v7

    .line 46
    .local v7, "updateType":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 47
    invoke-virtual {v3, v7}, Labq;->b(Ljava/lang/String;)V

    .line 52
    :goto_0
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {p0, v9}, Labr;->h(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "dateUrl":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 54
    invoke-virtual {v3, v1}, Labq;->c(Ljava/lang/String;)V

    .line 59
    :goto_1
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {p0, v9}, Labr;->f(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "updateVersion":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 61
    invoke-virtual {v3, v8}, Labq;->d(Ljava/lang/String;)V

    .line 71
    .end local v0    # "dateInfo":Ljava/lang/String;
    .end local v1    # "dateUrl":Ljava/lang/String;
    .end local v4    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v6    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v7    # "updateType":Ljava/lang/String;
    .end local v8    # "updateVersion":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v3

    .line 49
    .restart local v0    # "dateInfo":Ljava/lang/String;
    .restart local v4    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v5    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v6    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v7    # "updateType":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "PhoneTypeParser"

    const-string/jumbo v10, "filter(), updateType is wrong"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    .restart local v1    # "dateUrl":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "PhoneTypeParser"

    const-string/jumbo v10, "filter(), dateUrl is null"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 63
    .restart local v8    # "updateVersion":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "PhoneTypeParser"

    const-string/jumbo v10, "filter(), updateVerson is null"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected e(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;
    .locals 3
    .param p1, "parentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "info":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 94
    const-string/jumbo v2, "updateTime"

    invoke-virtual {p1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "dateInfoElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 96
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 100
    .end local v0    # "dateInfoElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    return-object v1
.end method

.method protected f(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;
    .locals 3
    .param p1, "parentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "info":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 106
    const-string/jumbo v2, "updateVersion"

    invoke-virtual {p1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 107
    .local v0, "dateInfoElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 108
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 112
    .end local v0    # "dateInfoElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    return-object v1
.end method

.method protected g(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;
    .locals 3
    .param p1, "parentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "info":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 118
    const-string/jumbo v2, "updateType"

    invoke-virtual {p1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "dateInfoElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 120
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 124
    .end local v0    # "dateInfoElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    return-object v1
.end method

.method protected h(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;
    .locals 3
    .param p1, "parentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "info":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 130
    const-string/jumbo v2, "updateUrl"

    invoke-virtual {p1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "dateInfoElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 132
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 136
    .end local v0    # "dateInfoElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    return-object v1
.end method
