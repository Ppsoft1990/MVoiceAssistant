.class public Labm;
.super Lvz;
.source "BlessContentChangeParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvz",
        "<",
        "Labn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lvz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Labn;
    .locals 14
    .param p1, "xmlResult"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 18
    new-instance v0, Labn;

    invoke-direct {v0}, Labn;-><init>()V

    .line 19
    .local v0, "blessContentChangeResult":Labn;
    invoke-static {v0, p1}, Labm;->a(Lwa;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v3

    .line 23
    .local v3, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    if-eqz v3, :cond_3

    .line 24
    invoke-virtual {v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    .line 25
    .local v8, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v8, :cond_3

    .line 26
    const-string/jumbo v10, "result"

    invoke-virtual {v8, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 27
    .local v7, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 29
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-static {v10}, Labm;->c(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, "focus":Ljava/lang/String;
    const-string/jumbo v10, "BlessContentChangeParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "filter(), focus="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "object"

    invoke-virtual {v10, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 32
    .local v6, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 34
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "sms"

    invoke-virtual {v10, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 35
    .local v9, "smsElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_3

    .line 36
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "id"

    invoke-virtual {p0, v10, v11}, Labm;->a(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "bless_id":Ljava/lang/String;
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "content"

    invoke-virtual {p0, v10, v11}, Labm;->a(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "bless_content":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 39
    const-string/jumbo v10, "BlessContentChangeParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "filter(), bless_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v0, v2}, Labn;->b(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v10, "BlessContentChangeParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "filter(), bless_content="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v0, v1}, Labn;->c(Ljava/lang/String;)V

    .line 35
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0, v2}, Labn;->b(Ljava/lang/String;)V

    .line 45
    if-eqz v2, :cond_1

    .line 46
    :goto_2
    if-eqz v1, :cond_2

    .line 47
    :goto_3
    invoke-virtual {v0, v1}, Labn;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 45
    :cond_1
    const-string/jumbo v2, "-1"

    goto :goto_2

    .line 46
    :cond_2
    const-string/jumbo v1, "null"

    goto :goto_3

    .line 56
    .end local v1    # "bless_content":Ljava/lang/String;
    .end local v2    # "bless_id":Ljava/lang/String;
    .end local v4    # "focus":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v7    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v8    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v9    # "smsElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_3
    return-object v0
.end method
