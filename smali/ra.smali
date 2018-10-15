.class public Lra;
.super Lvx;
.source "MicDiscoverTabBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 23
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/traffdisp/do?c=1030"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 20
    const-string/jumbo v0, "MicDiscoverTabBizHelper"

    iput-object v0, p0, Lra;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lra;->setNeedGZip(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 33
    const-string/jumbo v0, "1030"

    const/16 v1, 0x63

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "3.0"

    invoke-virtual {p0, v0, v1, v2, v3}, Lra;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
