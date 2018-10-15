.class public Laoa;
.super Ljava/lang/Object;
.source "MiguAuthBroadcast.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Laoa;->a:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.BROADCAST_MIGU_AUTH_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_ERROR_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Laoa;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public a(ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 19
    if-nez p2, :cond_0

    .line 27
    :goto_0
    return-void

    .line 22
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 23
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.BROADCAST_MIGU_AUTH_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 25
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    iget-object v1, p0, Laoa;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
