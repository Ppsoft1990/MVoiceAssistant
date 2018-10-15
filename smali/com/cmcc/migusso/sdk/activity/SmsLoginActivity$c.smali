.class public final Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;
.super Landroid/os/Handler;
.source "SmsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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

.field private synthetic b:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->b:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "SmsLoginActivity"

    const-string/jumbo v1, "is null or finish"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->p(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->q(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->r(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SmsLoginActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->f(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    const-string/jumbo v2, "%d\u79d2\u540e\u91cd\u65b0\u83b7\u53d6"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->d(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->o(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->f(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_3
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->e(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;I)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->f(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    const-string/jumbo v2, " \u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v1, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->f(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;ILjava/lang/String;)V

    :cond_4
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->f(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;ILjava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c()V

    goto/16 :goto_0

    :cond_6
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->setResult(I)V

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->finish()V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->i(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->t(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "\u8bed\u97f3\u9a8c\u8bc1(%ds)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->s(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->u(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->t(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->b:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    const-string/jumbo v1, "\u8bf7\u6ce8\u610f\u63a5\u542c\u8bed\u97f3\u9a8c\u8bc1\u7535\u8bdd"

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->e(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->b(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;I)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->t(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "\u8bed\u97f3\u9a8c\u8bc1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->t(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;ILjava/lang/String;)V

    :cond_7
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->t(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method
