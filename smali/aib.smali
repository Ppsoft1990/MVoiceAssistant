.class public Laib;
.super Lvx;
.source "HomeCardInfoBizHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 23
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/contentservice/do?c=2001"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 20
    const-string/jumbo v0, "HomeCardInfoBizHelper"

    iput-object v0, p0, Laib;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laib;->setNeedGZip(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)J
    .locals 3
    .param p1, "paramElement"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    const-string/jumbo v0, "2001"

    const/16 v1, 0x79

    const-string/jumbo v2, "3.0"

    invoke-virtual {p0, v0, v1, p1, v2}, Laib;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
