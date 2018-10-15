.class public Laqn;
.super Lvz;
.source "NewsBizDetailParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvz",
        "<",
        "Laqo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lvz;-><init>()V

    return-void
.end method

.method protected static e(Lcom/iflytek/yd/util/xml/XmlElement;)Laqr;
    .locals 11
    .param p0, "parentElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    const/4 v10, 0x0

    .line 37
    new-instance v7, Laqr;

    invoke-direct {v7}, Laqr;-><init>()V

    .line 38
    .local v7, "sohuNewsDetailItem":Laqr;
    if-eqz p0, :cond_3

    .line 39
    const-string/jumbo v9, "item"

    .line 40
    invoke-virtual {p0, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 41
    .local v4, "newsItemElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 42
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 43
    .local v3, "newsItem":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v3, :cond_3

    .line 44
    const-string/jumbo v9, "title"

    invoke-virtual {v3, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 45
    .local v8, "titleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 46
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "newsTitle":Ljava/lang/String;
    invoke-virtual {v7, v5}, Laqr;->a(Ljava/lang/String;)V

    .line 49
    .end local v5    # "newsTitle":Ljava/lang/String;
    :cond_0
    const-string/jumbo v9, "content"

    invoke-virtual {v3, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, "cotentElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 51
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "newsContent":Ljava/lang/String;
    invoke-virtual {v7, v2}, Laqr;->b(Ljava/lang/String;)V

    .line 54
    .end local v2    # "newsContent":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "html_content"

    invoke-virtual {v3, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 55
    .local v1, "html_contentElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 56
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "news_html_content":Ljava/lang/String;
    invoke-virtual {v7, v6}, Laqr;->c(Ljava/lang/String;)V

    .line 63
    .end local v0    # "cotentElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v1    # "html_contentElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "newsItem":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v4    # "newsItemElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v6    # "news_html_content":Ljava/lang/String;
    .end local v7    # "sohuNewsDetailItem":Laqr;
    .end local v8    # "titleElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_2
    :goto_0
    return-object v7

    .restart local v7    # "sohuNewsDetailItem":Laqr;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Laqo;
    .locals 7
    .param p1, "xmlResult"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 19
    new-instance v0, Laqo;

    invoke-direct {v0}, Laqo;-><init>()V

    .line 20
    .local v0, "newsBizDetailResult":Laqo;
    invoke-static {v0, p1}, Laqn;->a(Lwa;Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Laqn;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 22
    .local v1, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 24
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v5, "news"

    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 27
    .local v2, "parentElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 26
    invoke-static {v4}, Laqn;->e(Lcom/iflytek/yd/util/xml/XmlElement;)Laqr;

    move-result-object v3

    .line 28
    .local v3, "sohuNewsDetailItem":Laqr;
    invoke-virtual {v0, v3}, Laqo;->a(Laqr;)V

    .line 30
    .end local v2    # "parentElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "sohuNewsDetailItem":Laqr;
    :cond_0
    return-object v0
.end method
