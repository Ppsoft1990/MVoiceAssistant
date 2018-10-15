.class public final Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;
.super Landroid/os/Handler;
.source "AbcUpgradeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "AbcUpgradeActivity"

    const-string/jumbo v1, "is null or finished"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->c()V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    const-string/jumbo v2, "%d\u79d2\u540e\u91cd\u65b0\u83b7\u53d6"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->b(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->c(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->d(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->d(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->e(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Ljava/util/Timer;

    :cond_3
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->f(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;I)I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    const-string/jumbo v2, " \u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v1, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    const v2, 0x19456

    if-ne v1, v2, :cond_4

    new-instance v1, Lo/gl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/gl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Lo/gl;)Lo/gl;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->g(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lo/gl;

    move-result-object v0

    invoke-virtual {v0}, Lo/gl;->show()V

    goto :goto_0

    :cond_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    const v2, 0x19457

    if-ne v1, v2, :cond_5

    new-instance v1, Lo/gl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/gl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Lo/gl;)Lo/gl;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->g(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lo/gl;

    move-result-object v0

    invoke-virtual {v0}, Lo/gl;->show()V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    new-instance v1, Lo/gj;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Lo/gj;)Lo/gj;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->h(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_6

    new-instance v1, Lo/gu;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/gu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/gu;->show()V

    :goto_1
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->i(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->i(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/cmcc/migusso/sdk/common/BoolCallBack;->callback(Z)V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lo/gu;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/gu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/gu;->show()V

    goto :goto_1

    :pswitch_4
    new-instance v1, Lo/gz;

    invoke-direct {v1, v0}, Lo/gz;-><init>(Landroid/content/Context;)V

    new-instance v2, Lo/c;

    invoke-direct {v2, v0}, Lo/c;-><init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)V

    iput-object v2, v1, Lo/gz;->a:Lcom/cmcc/migusso/sdk/common/ICallBack;

    invoke-virtual {v1}, Lo/gz;->show()V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->i(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->i(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/cmcc/migusso/sdk/common/BoolCallBack;->callback(Z)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_7

    new-instance v1, Lo/gj;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Lo/gj;)Lo/gj;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->h(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lo/gj;

    move-result-object v1

    invoke-virtual {v1}, Lo/gj;->show()V

    :cond_7
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->finish()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->finish()V

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
