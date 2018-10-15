.class public final Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;
.super Landroid/os/Handler;
.source "FindPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string/jumbo v0, "FindPasswordActivity"

    const-string/jumbo v1, "is null or finish..."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->h(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    const-string/jumbo v2, "%d\u79d2\u540e\u91cd\u65b0\u83b7\u53d6"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->f(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->l(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->h(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FindPasswordActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->m(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Ljava/util/Timer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->m(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_3
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;I)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->h(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v3

    const-string/jumbo v4, " \u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v3, v4}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;Z)Z

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->e(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->h(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;ILjava/lang/String;)V

    :cond_5
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->e(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->h(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;ILjava/lang/String;)V

    :cond_6
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->n(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->n(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/common/BoolCallBack;->callback(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->n(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->n(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/cmcc/migusso/sdk/common/BoolCallBack;->callback(Z)V

    :cond_7
    iget-boolean v1, v0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a:Z

    if-eqz v1, :cond_8

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->o(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)V

    goto/16 :goto_0

    :cond_8
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->setResult(I)V

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->finish()V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->b(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Z

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c()V

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->finish()V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->b(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Z

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->setResult(I)V

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
