.class public Laom;
.super Lvx;
.source "UpLoadDeviceInfoBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 27
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/contentservice/do?c=1011"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 24
    const-string/jumbo v0, "UpLoadDeviceInfoBizHelper"

    iput-object v0, p0, Laom;->a:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laom;->setNeedGZip(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()J
    .locals 7

    .prologue
    .line 32
    const-string/jumbo v4, "UpLoadDeviceInfoBizHelper"

    const-string/jumbo v5, "sendRequest() "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v3, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    .line 36
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lhl;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "channelID":Ljava/lang/String;
    const-string/jumbo v4, "width"

    invoke-static {v0}, Lhl;->d(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v4, "height"

    invoke-static {v0}, Lhl;->e(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    const-string/jumbo v4, "useragent"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v4, "osversion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lhl;->k()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v4, "idfa"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string/jumbo v4, "miguchannel"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "channelID":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "1011"

    const/16 v5, 0x71

    const-string/jumbo v6, "1.0"

    invoke-virtual {p0, v4, v5, v3, v6}, Laom;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .local v2, "ex":Lorg/json/JSONException;
    const-string/jumbo v4, "UpLoadDeviceInfoBizHelper"

    const-string/jumbo v5, "add json exception"

    invoke-static {v4, v5, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
