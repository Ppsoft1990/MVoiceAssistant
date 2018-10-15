.class final Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;
.super Landroid/os/Handler;
.source "SetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
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

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v1, "is null or finish"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->d(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->e(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->c()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "settedPwd"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->setResult(ILandroid/content/Intent;)V

    new-instance v1, Lo/gc;

    const-string/jumbo v2, "\u5bc6\u7801\u8bbe\u7f6e\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lo/gc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;Lo/gc;)Lo/gc;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->f(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lo/gc;

    move-result-object v0

    invoke-virtual {v0}, Lo/gc;->show()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->c()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->c()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->setResult(I)V

    new-instance v1, Lo/gj;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;Lo/gj;)Lo/gj;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->g(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->c()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    new-instance v1, Lo/gj;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;Lo/gj;)Lo/gj;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->g(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->c()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "settedPwd"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->setResult(ILandroid/content/Intent;)V

    new-instance v1, Lo/gc;

    const-string/jumbo v2, "\u5bc6\u7801\u8bbe\u7f6e\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lo/gc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;Lo/gc;)Lo/gc;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->f(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lo/gc;

    move-result-object v0

    invoke-virtual {v0}, Lo/gc;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
