.class public final Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;
.super Landroid/os/Handler;
.source "VerifyOldPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;
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

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "VerifyOldPhoneActivity"

    const-string/jumbo v1, "is null or finish"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->c()V

    if-nez p1, :cond_3

    const-string/jumbo v0, "VerifyOldPhoneActivity"

    const-string/jumbo v1, "msg is null or finish"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VerifyOldPhoneActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->d(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    const-string/jumbo v2, "%d\u79d2\u540e\u91cd\u65b0\u83b7\u53d6"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->c(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->e(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->d(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->f(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->f(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_4
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->g(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;I)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->d(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    const-string/jumbo v2, " \u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v1, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->d(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;ILjava/lang/String;)V

    :cond_5
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->d(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v2, "bindType"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "userName"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->h(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "FLAG_NEED_LOGIN"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "openIDType"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->i(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
