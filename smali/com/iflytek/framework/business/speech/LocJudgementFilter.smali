.class final Lcom/iflytek/framework/business/speech/LocJudgementFilter;
.super Lcom/iflytek/yd/speech/RecognizeFilter;
.source "LocJudgementFilter.java"


# static fields
.field private static final ERROR_CODE_NEED_RELOCATE:Ljava/lang/String; = "000007"

.field private static final INFER:Ljava/lang/String; = "infer"

.field private static final TAG:Ljava/lang/String; = "Business_LocJudgementFilter"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

    return-void
.end method

.method private filterLocJudgement(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;
    .locals 2
    .param p1, "objElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 95
    const-string/jumbo v1, "loc_judgement"

    invoke-virtual {p1, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "locJudgementElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;
    .locals 1
    .param p1, "arg0"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isLocJudgement(Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 9
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v7, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/business/speech/LocJudgementFilter;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v5

    .line 70
    .local v5, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    .line 72
    .local v4, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {p0, v4}, Lcom/iflytek/framework/business/speech/LocJudgementFilter;->getResultElements(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v3

    .line 73
    .local v3, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v3}, Lcom/iflytek/framework/business/speech/LocJudgementFilter;->getObjElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 75
    .local v2, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 76
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-direct {p0, v6}, Lcom/iflytek/framework/business/speech/LocJudgementFilter;->filterLocJudgement(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "locJudgement":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "infer"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    const/4 v6, 0x1

    .line 85
    .end local v1    # "locJudgement":Ljava/lang/String;
    .end local v2    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v5    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :goto_0
    return v6

    .restart local v2    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v3    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v4    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v5    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_0
    move v6, v7

    .line 82
    goto :goto_0

    .line 83
    .end local v2    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v5    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Business_LocJudgementFilter"

    const-string/jumbo v8, ""

    invoke-static {v6, v8, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 85
    goto :goto_0
.end method

.method protected isNeedLocate(Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 9
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v5, 0x0

    .line 36
    if-nez p1, :cond_1

    .line 37
    const-string/jumbo v6, "Business_LocJudgementFilter"

    const-string/jumbo v7, "judgeLocate asrResult is null"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    :goto_0
    return v5

    .line 42
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/business/speech/LocJudgementFilter;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v4

    .line 43
    .local v4, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v4}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    .line 44
    .local v3, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v2, "errorCodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Lcom/iflytek/framework/business/speech/LocJudgementFilter;->filterErrorCodeResult(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v2

    .line 46
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 47
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    .local v1, "errorCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "000007"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    const-string/jumbo v6, "Business_LocJudgementFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "judgeLocate errorcode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const/4 v5, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "errorCodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v4    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Business_LocJudgementFilter"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
