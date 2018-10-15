.class public Lcom/iflytek/viafly/ui/view/banner/BannerBizHelper;
.super Lvx;
.source "BannerBizHelper.java"


# static fields
.field private static final BANNER_ADSLOT:Ljava/lang/String; = "P001"

.field private static final TAG:Ljava/lang/String; = "BannerADDataBizHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 28
    const-string/jumbo v0, "http://yd.voicecloud.cn/lx-interface-ossp/getadsinfo?c=getadinfo"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/banner/BannerBizHelper;->setNeedGZip(Z)V

    .line 30
    return-void
.end method


# virtual methods
.method public requestBannerADData(Ljava/lang/String;)J
    .locals 6
    .param p1, "adSlot"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string/jumbo v3, "BannerADDataBizHelper"

    const-string/jumbo v4, "requestBannerADData"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v2, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, "appContext":Landroid/content/Context;
    const-string/jumbo v3, "adslot"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v3, "useragent"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string/jumbo v3, "slotwidth"

    invoke-static {v0}, Lhl;->d(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v3, "slotheight"

    const-wide v4, 0x4060e00000000000L    # 135.0

    invoke-static {v0, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "appContext":Landroid/content/Context;
    :goto_0
    const-string/jumbo v3, "getadinfo"

    const/16 v4, 0x51

    const-string/jumbo v5, "2.0"

    invoke-virtual {p0, v3, v4, v2, v5}, Lcom/iflytek/viafly/ui/view/banner/BannerBizHelper;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "ex":Lorg/json/JSONException;
    const-string/jumbo v3, "BannerADDataBizHelper"

    const-string/jumbo v4, "add json exception"

    invoke-static {v3, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
