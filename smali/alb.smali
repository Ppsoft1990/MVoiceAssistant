.class public Lalb;
.super Lvx;
.source "ListenWellBizHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 22
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/traffdisp/do?c=1037"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .local v0, "paramElement":Lorg/json/JSONObject;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lalb;->setNeedGZip(Z)V

    .line 31
    const-string/jumbo v1, "1037"

    const/16 v2, 0x68

    invoke-virtual {p0, v1, v2, v0}, Lalb;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;)J

    move-result-wide v2

    return-wide v2
.end method
