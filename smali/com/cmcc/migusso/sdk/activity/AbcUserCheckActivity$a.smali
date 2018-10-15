.class final Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;
.super Landroid/os/Handler;
.source "AbcUserCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "AbcUserCheckActivity"

    const-string/jumbo v1, "is null or finished"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->c()V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v2, "ABC_ACCOUNT"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->d(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "TARGET_PHONE"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->e(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "upgradeType"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->f(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "nickName"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->g(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "0"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "NEEDSETPWD"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    new-instance v1, Lo/gj;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;Lo/gj;)Lo/gj;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->c(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "NEEDSETPWD"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
