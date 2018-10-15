.class public Lagx;
.super Laht;
.source "HomeCmccAuthenHelper.java"


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 28
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lagx;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v2, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_HOME_START:Lcom/iflytek/common/cmccauth/log/AuthScene;

    new-instance v3, Lagx$1;

    invoke-direct {v3, p0}, Lagx$1;-><init>(Lagx;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V

    .line 79
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lagx;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v2, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_RENEW_TOKEN:Lcom/iflytek/common/cmccauth/log/AuthScene;

    new-instance v3, Lagx$2;

    invoke-direct {v3, p0}, Lagx$2;-><init>(Lagx;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V

    .line 99
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    invoke-super {p0, p1}, Laht;->a(Landroid/os/Message;)V

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 114
    :cond_0
    return-void
.end method

.method public b(Z)Z
    .locals 3
    .param p1, "isFirst"    # Z

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccVERSION_CODE"

    invoke-virtual {v1, v2}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    .line 35
    .local v0, "oldVersionCode":I
    if-nez v0, :cond_1

    .line 36
    invoke-direct {p0}, Lagx;->h()V

    .line 42
    .end local v0    # "oldVersionCode":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v1

    return v1

    .line 38
    .restart local v0    # "oldVersionCode":I
    :cond_1
    invoke-direct {p0}, Lagx;->j()V

    goto :goto_0
.end method
