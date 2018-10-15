.class public final Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;
.super Landroid/os/Handler;
.source "UpgradeUserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v0, "UpgradeUserActivity"

    const-string/jumbo v1, "is null or finish"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->c()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->a(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;ILjava/lang/String;)V

    :cond_3
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->f(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->f(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/common/BoolCallBack;->callback(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UpgradeUserActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->c()V

    new-instance v1, Lo/gz;

    invoke-direct {v1, v0}, Lo/gz;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->a(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;Lo/gz;)Lo/gz;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->h(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Lo/gz;

    move-result-object v1

    new-instance v2, Lo/ep;

    invoke-direct {v2, v0}, Lo/ep;-><init>(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)V

    iput-object v2, v1, Lo/gz;->a:Lcom/cmcc/migusso/sdk/common/ICallBack;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->h(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Lo/gz;

    move-result-object v1

    invoke-virtual {v1}, Lo/gz;->show()V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->f(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->f(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/common/BoolCallBack;->callback(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->a(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Z

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->c()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_4

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget-boolean v1, v1, Lo/fv;->d:Z

    if-nez v1, :cond_5

    :cond_4
    new-instance v1, Lo/gj;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->a(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;Lo/gj;)Lo/gj;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->h(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Lo/gz;

    move-result-object v1

    invoke-virtual {v1}, Lo/gz;->show()V

    :cond_5
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->finish()V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->a(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Z

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->c()V

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
