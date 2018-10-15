.class public final Lo/bp;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/BoolCallBack;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lo/bp;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/bp;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lo/bp;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->v(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "FLAG_NEED_LOGIN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lo/bp;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    const/16 v2, 0x36

    invoke-virtual {v1, v0, v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/bp;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->finish()V

    goto :goto_0
.end method
