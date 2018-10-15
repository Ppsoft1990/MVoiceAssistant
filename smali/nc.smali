.class public Lnc;
.super Ljava/lang/Object;
.source "AuthenticationBroadcast.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lnc;->a:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.BROADCAST_AUTH_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_ERROR_CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    if-nez p1, :cond_0

    .line 38
    sget-object p1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 40
    :cond_0
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_SIMCARD"

    invoke-virtual {p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lnc;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 18
    if-nez p3, :cond_0

    .line 30
    :goto_0
    return-void

    .line 21
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.BROADCAST_AUTH_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_RESULT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 24
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    if-nez p1, :cond_1

    .line 26
    sget-object p1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 28
    :cond_1
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_SIMCARD"

    invoke-virtual {p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    iget-object v1, p0, Lnc;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
