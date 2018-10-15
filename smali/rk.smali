.class public Lrk;
.super Lvx;
.source "SpeechEnhanceRequestHelper.java"


# instance fields
.field private a:Lqv$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqv$a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lrk;-><init>(Landroid/content/Context;Lqv$a;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lqv$a;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lqv$a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "commandWordResponseListener":Lqv$a;, "Lqv$a<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/traffdisp/do?c=1020"

    new-instance v1, Lrk$1;

    invoke-direct {v1, p2}, Lrk$1;-><init>(Lqv$a;)V

    invoke-direct {p0, p1, v0, v1}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 60
    iput-object p2, p0, Lrk;->a:Lqv$a;

    .line 61
    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;Lqv$a;)V
    .locals 0
    .param p0, "x0"    # Lorg/json/JSONObject;
    .param p1, "x1"    # Lqv$a;

    .prologue
    .line 22
    invoke-static {p0, p1}, Lrk;->b(Lorg/json/JSONObject;Lqv$a;)V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;Lqv$a;)V
    .locals 8
    .param p0, "res"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lqv$a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "commandWordResponseListener":Lqv$a;, "Lqv$a<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 81
    if-nez p0, :cond_1

    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-interface {p1}, Lqv$a;->a()V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string/jumbo v5, "result"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 89
    .local v1, "contentResult":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1}, Lqv$a;->a()V

    goto :goto_0

    .line 95
    :cond_2
    const-string/jumbo v5, "id"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v5, "content"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "content":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 98
    :cond_3
    const-string/jumbo v5, "SpeechEnhanceRequestHelper"

    const-string/jumbo v6, "id or content is empty"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-interface {p1}, Lqv$a;->a()V

    goto :goto_0

    .line 105
    :cond_4
    const-string/jumbo v5, "wordings"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 106
    .local v4, "words":Lorg/json/JSONArray;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_6

    .line 107
    :cond_5
    const-string/jumbo v5, "SpeechEnhanceRequestHelper"

    const-string/jumbo v6, "case length less than 3"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-interface {p1}, Lqv$a;->a()V

    goto :goto_0

    .line 133
    :cond_6
    :try_start_0
    const-string/jumbo v5, "self_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 134
    const-string/jumbo v5, "self_show_tip"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 137
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_SPEECH_ENHANCE_CACHE_DATA"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lqv$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "SpeechEnhanceRequestHelper"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 68
    const-string/jumbo v1, "SpeechEnhanceRequestHelper"

    const-string/jumbo v2, "sendRequest() is called"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lrk;->a:Lqv$a;

    if-eqz v1, :cond_0

    .line 70
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SPEECH_ENHANCE_CACHE_DATA"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "cacheString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lrk;->a:Lqv$a;

    invoke-interface {v1, v0}, Lqv$a;->a(Ljava/lang/Object;)V

    .line 75
    .end local v0    # "cacheString":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lrk;->setNeedGZip(Z)V

    .line 76
    const-string/jumbo v1, "1020"

    const/16 v2, 0x4d

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Lrk;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;)J

    move-result-wide v2

    return-wide v2
.end method
