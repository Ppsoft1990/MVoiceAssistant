.class public final Lo/an;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lo/an;->a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lo/an;->a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/an;->a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lo/an;->a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->f(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "INPUT_PHONENUMBER"

    iget-object v2, p0, Lo/an;->a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->f(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "FLAG_NEED_LOGIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lo/an;->a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    const/16 v2, 0x33

    invoke-virtual {v1, v0, v2}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
