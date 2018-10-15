.class public Laym;
.super Lvx;
.source "TranslateReportErrorBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 30
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=1125"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 27
    const-string/jumbo v0, "ReportErrorBizHelper"

    iput-object v0, p0, Laym;->a:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laym;->setNeedGZip(Z)V

    .line 32
    return-void
.end method

.method private a(Lcom/iflytek/viafly/translate/TranslateMode;)Ljava/lang/String;
    .locals 1
    .param p1, "translateMode"    # Lcom/iflytek/viafly/translate/TranslateMode;

    .prologue
    .line 69
    if-eqz p1, :cond_5

    .line 70
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    if-ne p1, v0, :cond_0

    .line 71
    const-string/jumbo v0, "en-us"

    .line 85
    :goto_0
    return-object v0

    .line 72
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->JpToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    if-ne p1, v0, :cond_1

    .line 73
    const-string/jumbo v0, "ja-jp"

    goto :goto_0

    .line 74
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->KrToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    if-ne p1, v0, :cond_2

    .line 75
    const-string/jumbo v0, "ko-kr"

    goto :goto_0

    .line 76
    :cond_2
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->FrToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    if-ne p1, v0, :cond_3

    .line 77
    const-string/jumbo v0, "fr-fr"

    goto :goto_0

    .line 78
    :cond_3
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->EsToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    if-ne p1, v0, :cond_4

    .line 79
    const-string/jumbo v0, "es-es"

    goto :goto_0

    .line 81
    :cond_4
    const-string/jumbo v0, "zh-cn"

    goto :goto_0

    .line 85
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 11
    .param p1, "translateResultItem"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "nickName"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string/jumbo v8, "ReportErrorBizHelper"

    const-string/jumbo v9, "sendRequest() "

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .local v1, "paramElement":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v6, "translateElement":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslateMode()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v7

    .line 40
    .local v7, "translateMode":Lcom/iflytek/viafly/translate/TranslateMode;
    invoke-direct {p0, v7}, Laym;->a(Lcom/iflytek/viafly/translate/TranslateMode;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "sourceLang":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslatedLang()Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "targetLang":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "sourceText":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "targetText":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 46
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 49
    :try_start_0
    const-string/jumbo v8, "source_lang"

    invoke-virtual {v6, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string/jumbo v8, "target_lang"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string/jumbo v8, "source_text"

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v8, "target_text"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string/jumbo v8, "error_type"

    invoke-virtual {v6, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v8, "user_transtext"

    invoke-virtual {v6, v8, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string/jumbo v8, "user_nickname"

    invoke-virtual {v6, v8, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v8, "translate"

    invoke-virtual {v1, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v8, "ReportErrorBizHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendRequest: paramElement "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v2    # "sourceLang":Ljava/lang/String;
    .end local v3    # "sourceText":Ljava/lang/String;
    .end local v4    # "targetLang":Ljava/lang/String;
    .end local v5    # "targetText":Ljava/lang/String;
    .end local v7    # "translateMode":Lcom/iflytek/viafly/translate/TranslateMode;
    :cond_0
    :goto_0
    const-string/jumbo v8, "1125"

    const/16 v9, 0x65

    const-string/jumbo v10, "3.0"

    invoke-virtual {p0, v8, v9, v1, v10}, Laym;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    return-wide v8

    .line 59
    .restart local v2    # "sourceLang":Ljava/lang/String;
    .restart local v3    # "sourceText":Ljava/lang/String;
    .restart local v4    # "targetLang":Ljava/lang/String;
    .restart local v5    # "targetText":Ljava/lang/String;
    .restart local v7    # "translateMode":Lcom/iflytek/viafly/translate/TranslateMode;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v8, "ReportErrorBizHelper"

    const-string/jumbo v9, "add json exception"

    invoke-static {v8, v9, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
