.class public final Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;
.super Landroid/os/Handler;
.source "ThirdBindPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "activity is null or finish"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->c()V

    new-instance v1, Lo/fx;

    const-string/jumbo v2, "\u7ed1\u5b9a\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lo/fx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Lo/fx;)Lo/fx;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->p(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lo/fx;

    move-result-object v1

    new-instance v2, Lo/eh;

    invoke-direct {v2, v0}, Lo/eh;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    iput-object v2, v1, Lo/fx;->a:Lcom/cmcc/migusso/sdk/common/ICallBack;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->p(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lo/fx;

    move-result-object v0

    invoke-virtual {v0}, Lo/fx;->show()V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    const-string/jumbo v2, "%d\u79d2\u540e\u91cd\u65b0\u83b7\u53d6"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->d(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->k(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->j(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->j(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_3
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->e(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;I)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    const-string/jumbo v2, " \u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v1, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->c(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;ILjava/lang/String;)V

    :cond_4
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->c(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->l(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->m(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    goto/16 :goto_0

    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "newbindphone"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->n(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->c()V

    new-instance v1, Lo/fx;

    const-string/jumbo v2, "\u7ed1\u5b9a\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lo/fx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Lo/fx;)Lo/fx;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->p(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lo/fx;

    move-result-object v1

    new-instance v2, Lo/ef;

    invoke-direct {v2, v0}, Lo/ef;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    iput-object v2, v1, Lo/fx;->a:Lcom/cmcc/migusso/sdk/common/ICallBack;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->p(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lo/fx;

    move-result-object v0

    invoke-virtual {v0}, Lo/fx;->show()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->c()V

    iget v1, p1, Landroid/os/Message;->arg1:I

    const v2, 0x19366

    if-ne v2, v1, :cond_6

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/gj;

    new-instance v3, Lo/eg;

    invoke-direct {v3, v0, v1}, Lo/eg;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Ljava/lang/String;)V

    invoke-direct {v2, v0, v1, v3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    invoke-static {v0, v2}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Lo/gj;)Lo/gj;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->s(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->c()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/gj;

    new-instance v3, Lo/ei;

    invoke-direct {v3, v0}, Lo/ei;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    invoke-direct {v2, v0, v1, v3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    invoke-static {v0, v2}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Lo/gj;)Lo/gj;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->s(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
