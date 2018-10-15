.class public Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/WarnConfigRequest;
.super Lvx;
.source "WarnConfigRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WarnConfigRequest"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;
    .param p3, "isManual"    # Z

    .prologue
    .line 23
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/traffdisp/do?c=1022"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/WarnConfigRequest;->setNeedGZip(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public requestStrategy()J
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .local v0, "paramObject":Lorg/json/JSONObject;
    const-string/jumbo v1, "1022"

    const/16 v2, 0x49

    const-string/jumbo v3, "1"

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/WarnConfigRequest;->sendRequest(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v2

    return-wide v2
.end method
