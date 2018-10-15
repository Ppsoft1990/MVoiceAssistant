.class public final Lo/ew;
.super Ljava/lang/Object;
.source "UserManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ew;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lo/ew;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->l(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lo/ew;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->j(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "bindType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "FLAG_NEED_LOGIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lo/ew;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lo/ew;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const/16 v2, 0x62

    invoke-virtual {v1, v0, v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/ew;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->l(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lo/ew;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->j(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/ew;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "msisdn"

    iget-object v2, p0, Lo/ew;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->l(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/ew;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const/16 v2, 0x63

    invoke-virtual {v1, v0, v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
