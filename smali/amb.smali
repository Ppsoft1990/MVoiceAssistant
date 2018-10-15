.class public Lamb;
.super Lvx;
.source "TextEventCardBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 31
    const-string/jumbo v0, "http://yd.voicecloud.cn/lx-interface-ossp/getadsinfo?c=getadinfo"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 27
    const-string/jumbo v0, "TextEventCardBizHelper"

    iput-object v0, p0, Lamb;->a:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lamb;->setNeedGZip(Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public a()J
    .locals 6

    .prologue
    .line 36
    const-string/jumbo v3, "TextEventCardBizHelper"

    const-string/jumbo v4, "sendRequest() "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v2, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, "appContext":Landroid/content/Context;
    const-string/jumbo v3, "adslot"

    const-string/jumbo v4, "T001"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v3, "slotwidth"

    invoke-static {v0}, Lhl;->d(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    const-string/jumbo v3, "slotheight"

    const-wide v4, 0x4060e00000000000L    # 135.0

    invoke-static {v0, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "appContext":Landroid/content/Context;
    :goto_0
    const-string/jumbo v3, "getadinfo"

    const/16 v4, 0x51

    const-string/jumbo v5, "2.0"

    invoke-virtual {p0, v3, v4, v2, v5}, Lamb;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "ex":Lorg/json/JSONException;
    const-string/jumbo v3, "TextEventCardBizHelper"

    const-string/jumbo v4, "add json exception"

    invoke-static {v3, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
