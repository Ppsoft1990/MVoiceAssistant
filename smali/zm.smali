.class public Lzm;
.super Lvx;
.source "BizCallfeesAndFlowHelper.java"


# instance fields
.field private a:Lwd;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwd;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lwd;
    .param p3, "isManual"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lvx;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzm;->b:Z

    .line 26
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/traffdisp/do?c=1018"

    invoke-virtual {p0, v0}, Lzm;->setServerUrl(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzm;->setNeedGZip(Z)V

    .line 28
    iput-object p2, p0, Lzm;->a:Lwd;

    .line 29
    iput-boolean p3, p0, Lzm;->b:Z

    .line 30
    new-instance v0, Lzm$1;

    invoke-direct {v0, p0}, Lzm$1;-><init>(Lzm;)V

    invoke-virtual {p0, v0}, Lzm;->setOperationListener(Lyn;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lzm;)Lwd;
    .locals 1
    .param p0, "x0"    # Lzm;

    .prologue
    .line 19
    iget-object v0, p0, Lzm;->a:Lwd;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v0, "paramObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "1018"

    const/16 v3, 0x49

    iget-boolean v1, p0, Lzm;->b:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "0"

    :goto_0
    invoke-virtual {p0, v2, v3, v1, v0}, Lzm;->sendRequest(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v2

    return-wide v2

    :cond_0
    const-string/jumbo v1, "1"

    goto :goto_0
.end method
