.class final Lo/gy;
.super Ljava/lang/Object;
.source "UpgradeRemindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lo/gw;


# direct methods
.method constructor <init>(Lo/gw;)V
    .locals 0

    iput-object p1, p0, Lo/gy;->a:Lo/gw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lo/gy;->a:Lo/gw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gy;->a:Lo/gw;

    invoke-virtual {v0}, Lo/gw;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gy;->a:Lo/gw;

    invoke-virtual {v0}, Lo/gw;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lo/gy;->a:Lo/gw;

    invoke-static {v1}, Lo/gw;->a(Lo/gw;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/gy;->a:Lo/gw;

    invoke-static {v1}, Lo/gw;->b(Lo/gw;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lo/gy;->a:Lo/gw;

    invoke-static {v2}, Lo/gw;->c(Lo/gw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/gy;->a:Lo/gw;

    invoke-static {v1}, Lo/gw;->b(Lo/gw;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lo/gy;->a:Lo/gw;

    invoke-static {v1}, Lo/gw;->a(Lo/gw;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lo/gy;->a:Lo/gw;

    invoke-static {v1}, Lo/gw;->a(Lo/gw;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lo/gy;->a:Lo/gw;

    invoke-static {v1}, Lo/gw;->b(Lo/gw;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lo/gy;->a:Lo/gw;

    invoke-static {v2}, Lo/gw;->c(Lo/gw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "nickName"

    iget-object v2, p0, Lo/gy;->a:Lo/gw;

    invoke-static {v2}, Lo/gw;->d(Lo/gw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "upgradeType"

    iget-object v2, p0, Lo/gy;->a:Lo/gw;

    invoke-static {v2}, Lo/gw;->a(Lo/gw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/gy;->a:Lo/gw;

    invoke-static {v1}, Lo/gw;->b(Lo/gw;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
