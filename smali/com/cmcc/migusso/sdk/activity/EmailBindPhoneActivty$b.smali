.class public final Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;
.super Landroid/os/Handler;
.source "EmailBindPhoneActivty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;
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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    if-nez v0, :cond_1

    const-string/jumbo v0, "EmailBindPhoneActivty"

    const-string/jumbo v1, "is null or finished"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c()V

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->d(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    const-string/jumbo v2, "%d\u79d2\u540e\u91cd\u65b0\u83b7\u53d6"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->g(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->d(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmailBindPhoneActivty"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->h(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->h(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_2
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;I)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->d(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    const-string/jumbo v2, " \u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v1, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->d(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5~"

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lo/gj;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lo/gj;)Lo/gj;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->i(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lo/gj;

    move-result-object v1

    invoke-virtual {v1}, Lo/gj;->show()V

    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->d(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->j(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "newbindphone"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->k(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c()V

    new-instance v1, Lo/fx;

    const-string/jumbo v2, "\u7ed1\u5b9a\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lo/fx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lo/fx;)Lo/fx;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->l(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lo/fx;

    move-result-object v1

    new-instance v2, Lo/bb;

    invoke-direct {v2, v0}, Lo/bb;-><init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V

    iput-object v2, v1, Lo/fx;->a:Lcom/cmcc/migusso/sdk/common/ICallBack;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->l(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lo/fx;

    move-result-object v0

    invoke-virtual {v0}, Lo/fx;->show()V

    goto/16 :goto_0

    :cond_5
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->m(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->setResult(I)V

    new-instance v1, Lo/gj;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lo/gj;)Lo/gj;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->i(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto/16 :goto_0

    :pswitch_6
    new-instance v1, Lo/gj;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lo/gj;)Lo/gj;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->i(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/gj;

    new-instance v3, Lo/bc;

    invoke-direct {v3, v0}, Lo/bc;-><init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V

    invoke-direct {v2, v0, v1, v3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    invoke-static {v0, v2}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lo/gj;)Lo/gj;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->i(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c()V

    new-instance v1, Lo/fx;

    const-string/jumbo v2, "\u7ed1\u5b9a\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lo/fx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lo/fx;)Lo/fx;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->l(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lo/fx;

    move-result-object v1

    new-instance v2, Lo/bd;

    invoke-direct {v2, v0}, Lo/bd;-><init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V

    iput-object v2, v1, Lo/fx;->a:Lcom/cmcc/migusso/sdk/common/ICallBack;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->l(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lo/fx;

    move-result-object v0

    invoke-virtual {v0}, Lo/fx;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
