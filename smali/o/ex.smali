.class public final Lo/ex;
.super Ljava/lang/Object;
.source "UserManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ex;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lo/ex;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->m(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "1"

    iget-object v1, p0, Lo/ex;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->m(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lo/ex;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->j(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/ex;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lo/ex;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const/16 v2, 0x66

    invoke-virtual {v1, v0, v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/ex;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->m(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lo/ex;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->m(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lo/ex;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->j(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/ex;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lo/ex;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
