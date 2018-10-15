.class public final Lo/ev;
.super Ljava/lang/Object;
.source "UserManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ev;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lo/ev;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->j(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "nickName"

    iget-object v2, p0, Lo/ev;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->k(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/ev;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lo/ev;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const/16 v2, 0x61

    invoke-virtual {v1, v0, v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
