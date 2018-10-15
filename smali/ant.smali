.class public Lant;
.super Lvx;
.source "BookTokenBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 26
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/contentservice/do?c=1001"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 23
    const-string/jumbo v0, "BookTokenBizHelper"

    iput-object v0, p0, Lant;->a:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lant;->setNeedGZip(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "ttoken"    # Ljava/lang/String;
    .param p2, "sToken"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    const-string/jumbo v2, "ttoken"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    const-string/jumbo v2, "1001"

    const/16 v3, 0x6d

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Lant;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    :goto_1
    return-wide v2

    .line 36
    :cond_0
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    const-string/jumbo v2, "stoken"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "BookTokenBizHelper"

    const-string/jumbo v3, "add json exception"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 39
    .end local v0    # "ex":Lorg/json/JSONException;
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method
