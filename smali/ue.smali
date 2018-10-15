.class public Lue;
.super Lcom/iflytek/yd/speech/RecognizeFilter;
.source "AppRecognizeFilter.java"


# instance fields
.field private a:Lud;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lue;->a:Lud;

    return-void
.end method


# virtual methods
.method public filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;
    .locals 12
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    const-string/jumbo v10, "RecognizeFilter"

    const-string/jumbo v11, "recognize result is null"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v10, 0x0

    .line 62
    :goto_0
    return-object v10

    .line 30
    :cond_0
    new-instance v10, Lud;

    invoke-direct {v10}, Lud;-><init>()V

    iput-object v10, p0, Lue;->a:Lud;

    .line 32
    :try_start_0
    iget-object v10, p0, Lue;->a:Lud;

    invoke-virtual {p0, v10, p1}, Lue;->filterCommonResult(Lcom/iflytek/yd/speech/FilterResult;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 34
    invoke-virtual {p0, p1}, Lue;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v9

    .line 35
    .local v9, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v6

    .line 36
    .local v6, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {p0, v6}, Lue;->getResultElements(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v5

    .line 37
    .local v5, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v5}, Lue;->getObjElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 39
    .local v4, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v2, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v8, "searchUrlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 42
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 43
    .local v3, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v11, "name"

    invoke-virtual {v3, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 44
    .local v1, "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v1}, Lue;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 46
    const-string/jumbo v11, "search_url"

    .line 47
    invoke-virtual {v3, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 48
    .local v7, "searchElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v7}, Lue;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 49
    goto :goto_1

    .line 51
    .end local v1    # "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v7    # "searchElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_1
    iget-object v10, p0, Lue;->a:Lud;

    const-string/jumbo v11, "app"

    invoke-virtual {v10, v11}, Lud;->setFocus(Ljava/lang/String;)V

    .line 52
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 53
    iget-object v11, p0, Lue;->a:Lud;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Lud;->a(Ljava/lang/String;)V

    .line 55
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 56
    iget-object v11, p0, Lue;->a:Lud;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Lud;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v2    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v6    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v8    # "searchUrlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_3
    :goto_2
    iget-object v10, p0, Lue;->a:Lud;

    goto/16 :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "RecognizeFilter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
