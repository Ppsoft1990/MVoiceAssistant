.class public Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoRequest;
.super Lvx;
.source "TrafficInfoRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficInfoRequest"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;
    .param p3, "isManual"    # Z

    .prologue
    .line 24
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/traffdisp/do?c=1018"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoRequest;->setNeedGZip(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public requestTrafficData()J
    .locals 5

    .prologue
    .line 32
    const-string/jumbo v2, "TrafficInfoRequest"

    const-string/jumbo v3, "requestTrafficData "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "requesttype"

    const-string/jumbo v3, "2"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string/jumbo v2, "source"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoRequest;->setNeedGZip(Z)V

    .line 41
    const-string/jumbo v2, "1018"

    const/16 v3, 0x49

    const-string/jumbo v4, "1"

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoRequest;->sendRequest(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v2

    return-wide v2

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "TrafficInfoRequest"

    const-string/jumbo v3, "add json exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
