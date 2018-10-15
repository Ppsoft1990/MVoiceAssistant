.class public final Lo/dp;
.super Ljava/lang/Object;
.source "SmsLoginActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/BoolCallBack;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lo/dp;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/dp;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lo/dp;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->w(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/dp;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    const/16 v2, 0x36

    invoke-virtual {v1, v0, v2}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/dp;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->setResult(I)V

    iget-object v0, p0, Lo/dp;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->finish()V

    goto :goto_0
.end method
