.class public abstract Lvz;
.super Ljava/lang/Object;
.source "BusinessParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvz$b;,
        Lvz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lwa;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    .local p0, "this":Lvz;, "Lvz<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final a(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;
    .locals 5
    .param p0, "parentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    const/4 v4, 0x0

    .line 114
    if-eqz p0, :cond_0

    .line 115
    const-string/jumbo v2, "action"

    invoke-virtual {p0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "actionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 117
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v3, "operation"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, "operationElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 119
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 123
    .end local v0    # "actionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v1    # "operationElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final a(Lwa;Ljava/lang/String;)V
    .locals 9
    .param p0, "emptyResult"    # Lwa;
    .param p1, "xmlResult"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 28
    invoke-static {p1}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v1

    .line 29
    .local v1, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v1}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    .line 31
    .local v4, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v4, :cond_1

    .line 33
    invoke-static {v4}, Lvz;->b(Lcom/iflytek/yd/util/xml/XmlElement;)Lvz$b;

    move-result-object v5

    .line 34
    .local v5, "status":Lvz$b;
    if-eqz v5, :cond_0

    .line 35
    iget-object v6, v5, Lvz$b;->a:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lwa;->setStatus(Ljava/lang/String;)V

    .line 36
    iget-object v6, v5, Lvz$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lwa;->setErrorCode(Ljava/lang/String;)V

    .line 37
    iget-object v6, v5, Lvz$b;->c:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lwa;->setDesc(Ljava/lang/String;)V

    .line 38
    iget-object v6, v5, Lvz$b;->d:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lwa;->setAuthAction(Ljava/lang/String;)V

    .line 40
    :cond_0
    const-string/jumbo v6, "result"

    invoke-virtual {v4, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 41
    .local v3, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 43
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-static {v6}, Lvz;->c(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lwa;->setFocus(Ljava/lang/String;)V

    .line 45
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-static {v6}, Lvz;->a(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lwa;->setOperation(Ljava/lang/String;)V

    .line 46
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v7, "object"

    invoke-virtual {v6, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 47
    .local v2, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 49
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-static {v6}, Lvz;->d(Lcom/iflytek/yd/util/xml/XmlElement;)Lvz$a;

    move-result-object v0

    .line 50
    .local v0, "dataSource":Lvz$a;
    if-eqz v0, :cond_1

    .line 51
    iget-object v6, v0, Lvz$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lwa;->setDataSrcId(Ljava/lang/String;)V

    .line 52
    iget-object v6, v0, Lvz$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lwa;->setDataSrcName(Ljava/lang/String;)V

    .line 58
    .end local v0    # "dataSource":Lvz$a;
    .end local v2    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v5    # "status":Lvz$b;
    :cond_1
    return-void
.end method

.method protected static final b(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;
    .locals 2
    .param p0, "xmlResult"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v0

    .line 83
    .local v0, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final b(Lcom/iflytek/yd/util/xml/XmlElement;)Lvz$b;
    .locals 7
    .param p0, "parentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    const/4 v6, 0x0

    .line 131
    if-eqz p0, :cond_4

    .line 132
    new-instance v3, Lvz$b;

    invoke-direct {v3}, Lvz$b;-><init>()V

    .line 133
    .local v3, "resultStatus":Lvz$b;
    const-string/jumbo v5, "status"

    invoke-virtual {p0, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 134
    .local v4, "statusElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v5, "error_code"

    invoke-virtual {p0, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 135
    .local v2, "errorCodeElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v5, "desc"

    invoke-virtual {p0, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "descElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v5, "auth_action"

    invoke-virtual {p0, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, "authActionElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 138
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lvz$b;->a:Ljava/lang/String;

    .line 140
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 141
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lvz$b;->b:Ljava/lang/String;

    .line 143
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 144
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lvz$b;->c:Ljava/lang/String;

    .line 146
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 147
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lvz$b;->d:Ljava/lang/String;

    .line 151
    .end local v0    # "authActionElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v1    # "descElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v2    # "errorCodeElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "resultStatus":Lvz$b;
    .end local v4    # "statusElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_3
    :goto_0
    return-object v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static final b(Lwa;Ljava/lang/String;)V
    .locals 4
    .param p0, "emptyResult"    # Lwa;
    .param p1, "jsonResult"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "doc":Lorg/json/JSONObject;
    if-eqz p0, :cond_0

    .line 70
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lwa;->setStatus(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lwa;->setErrorCode(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v2, "desc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lwa;->setDesc(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v2, "authAction"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lwa;->setAuthAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "doc":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BusinessParser"

    const-string/jumbo v3, "filterJsonCommon() failed"

    invoke-static {v2, v3, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static final c(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;
    .locals 3
    .param p0, "xmlResult"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Lvz;->b(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    .line 91
    .local v1, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v1, :cond_0

    .line 92
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 94
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 97
    .end local v0    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static final c(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;
    .locals 2
    .param p0, "parentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 158
    if-eqz p0, :cond_0

    .line 159
    const-string/jumbo v1, "focus"

    invoke-virtual {p0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 160
    .local v0, "focusElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 161
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 164
    .end local v0    # "focusElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final d(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "xmlResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lvz;->c(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    .line 102
    .local v0, "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v1, "object"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final d(Lcom/iflytek/yd/util/xml/XmlElement;)Lvz$a;
    .locals 7
    .param p0, "parentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    const/4 v6, 0x0

    .line 185
    if-eqz p0, :cond_2

    .line 186
    const-string/jumbo v4, "data_source"

    invoke-virtual {p0, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 187
    .local v1, "dataSourceElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 188
    new-instance v0, Lvz$a;

    invoke-direct {v0}, Lvz$a;-><init>()V

    .line 189
    .local v0, "dataSource":Lvz$a;
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v5, "id"

    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 190
    .local v2, "idElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 191
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v4}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvz$a;->a:Ljava/lang/String;

    .line 193
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 194
    .local v3, "nameElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 195
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v4}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvz$a;->b:Ljava/lang/String;

    .line 200
    .end local v0    # "dataSource":Lvz$a;
    .end local v1    # "dataSourceElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v2    # "idElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "nameElementList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 204
    .local p0, "this":Lvz;, "Lvz<TT;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 205
    invoke-virtual {p1, p2}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "subElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 207
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 210
    .end local v0    # "subElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
