.class public Ltx;
.super Lvx;
.source "BannerADDataBizHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverUrl"    # Ljava/lang/String;
    .param p3, "listener"    # Lyn;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltx;->setNeedGZip(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()J
    .locals 8

    .prologue
    .line 32
    const-string/jumbo v3, "BannerADDataBizHelper"

    const-string/jumbo v4, "requestBannerADData"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v2, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    .line 36
    .local v0, "appContext":Landroid/content/Context;
    const-string/jumbo v3, "adslot"

    const-string/jumbo v4, "P001"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string/jumbo v3, "useragent"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v3, "slotwidth"

    invoke-static {v0}, Lhl;->d(Landroid/content/Context;)I

    move-result v4

    const-wide/high16 v6, 0x403c000000000000L    # 28.0

    invoke-static {v0, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    const-string/jumbo v3, "slotheight"

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v0, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "appContext":Landroid/content/Context;
    :goto_0
    const-string/jumbo v3, "getadinfo"

    const/16 v4, 0x51

    const-string/jumbo v5, "2.0"

    invoke-virtual {p0, v3, v4, v2, v5}, Ltx;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "ex":Lorg/json/JSONException;
    const-string/jumbo v3, "BannerADDataBizHelper"

    const-string/jumbo v4, "add json exception"

    invoke-static {v3, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
