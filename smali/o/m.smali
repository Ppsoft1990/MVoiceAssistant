.class public final Lo/m;
.super Ljava/lang/Object;
.source "BindAccountActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/BoolCallBack;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lo/m;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/m;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lo/m;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "msisdn"

    iget-object v2, p0, Lo/m;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lo/m;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "openIDType"

    iget-object v2, p0, Lo/m;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->d(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/m;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    const/16 v2, 0x63

    invoke-virtual {v1, v0, v2}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
