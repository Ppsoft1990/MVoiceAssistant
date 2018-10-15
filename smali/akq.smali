.class public Lakq;
.super Lvx;
.source "ListenBookRecommendBizHelper.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 35
    const-string/jumbo v0, "http://yd.voicecloud.cn/lx-interface-ossp/getadsinfo?c=getadinfo"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 36
    iput-object p1, p0, Lakq;->a:Landroid/content/Context;

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lakq;->setNeedGZip(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    .prologue
    .line 40
    const-string/jumbo v2, "requestListenBookRecommendData"

    const-string/jumbo v3, "requestListenBookRecommendData"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "adslot"

    const-string/jumbo v3, "M001"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string/jumbo v2, "slotwidth"

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x144

    invoke-static {v3, v4}, Lazk;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string/jumbo v2, "slotheight"

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x86

    invoke-static {v3, v4}, Lazk;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v2, "ppi"

    iget-object v3, p0, Lakq;->a:Landroid/content/Context;

    invoke-static {v3}, Lhl;->l(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    const-string/jumbo v2, "getadinfo"

    const/16 v3, 0x61

    const-string/jumbo v4, "2.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Lakq;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "requestListenBookRecommendData"

    const-string/jumbo v3, "add json exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
