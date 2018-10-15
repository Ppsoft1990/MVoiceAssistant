.class public Lua;
.super Lvx;
.source "SplashADDataBizHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverUrl"    # Ljava/lang/String;
    .param p3, "listener"    # Lyn;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lua;->setNeedGZip(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public a()J
    .locals 6

    .prologue
    .line 31
    const-string/jumbo v3, "BannerDataBizHelper"

    const-string/jumbo v4, "requestSplashADData"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v2, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    .line 35
    .local v0, "appContext":Landroid/content/Context;
    const-string/jumbo v3, "adslot"

    const-string/jumbo v4, "P110"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string/jumbo v3, "useragent"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string/jumbo v3, "slotwidth"

    invoke-static {v0}, Lhl;->d(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v3, "slotheight"

    invoke-static {v0}, Lhl;->e(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "appContext":Landroid/content/Context;
    :goto_0
    const-string/jumbo v3, "getadinfo"

    const/16 v4, 0x50

    const-string/jumbo v5, "2.0"

    invoke-virtual {p0, v3, v4, v2, v5}, Lua;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "ex":Lorg/json/JSONException;
    const-string/jumbo v3, "BannerDataBizHelper"

    const-string/jumbo v4, "add json exception"

    invoke-static {v3, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
