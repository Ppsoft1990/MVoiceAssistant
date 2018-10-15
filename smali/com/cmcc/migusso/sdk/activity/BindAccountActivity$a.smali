.class public final Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;
.super Landroid/os/Handler;
.source "BindAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;
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

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "is null or finish"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c()V

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->A(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->B(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->C(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->D(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->f(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Query UserInfo Error "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resultCode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultString \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lo/gj;

    new-instance v3, Lo/s;

    invoke-direct {v3, v0}, Lo/s;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V

    invoke-direct {v2, v0, v1, v3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    invoke-virtual {v2}, Lo/gj;->show()V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v2, "WECHAT"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->g(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->h(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->i(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->j(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->k(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/cmcc/util/SimpleToast;

    const-string/jumbo v2, "\u5fae\u4fe1\u7ed1\u5b9a\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lcom/cmcc/util/SimpleToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz v1, :cond_1

    const-string/jumbo v0, "icon_bind_success"

    invoke-virtual {v1, v0}, Lcom/cmcc/util/SimpleToast;->setToastIcon(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmcc/util/SimpleToast;->show()V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v2, "QQ"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->g(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->l(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->m(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->n(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->o(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/cmcc/util/SimpleToast;

    const-string/jumbo v2, "QQ\u7ed1\u5b9a\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lcom/cmcc/util/SimpleToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "WEIBO"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->g(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->p(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->q(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->r(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->s(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/cmcc/util/SimpleToast;

    const-string/jumbo v2, "\u5fae\u535a\u7ed1\u5b9a\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lcom/cmcc/util/SimpleToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "ALIPAY"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->g(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->t(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->u(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->v(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->w(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/cmcc/util/SimpleToast;

    const-string/jumbo v2, "\u652f\u4ed8\u5b9d\u7ed1\u5b9a\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lcom/cmcc/util/SimpleToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    const-string/jumbo v1, "Bind account Error "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resultCode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultString \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lo/gj;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    invoke-virtual {v2}, Lo/gj;->show()V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v2, "WECHAT"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->g(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->h(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->i(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->j(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    new-instance v1, Lcom/cmcc/util/SimpleToast;

    const-string/jumbo v2, "\u5fae\u4fe1\u89e3\u7ed1\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lcom/cmcc/util/SimpleToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    :goto_2
    if-eqz v1, :cond_d

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->x(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v0, "icon_bind_success"

    invoke-virtual {v1, v0}, Lcom/cmcc/util/SimpleToast;->setToastIcon(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmcc/util/SimpleToast;->show()V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "QQ"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->g(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->l(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->m(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->n(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    new-instance v1, Lcom/cmcc/util/SimpleToast;

    const-string/jumbo v2, "QQ\u89e3\u7ed1\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lcom/cmcc/util/SimpleToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string/jumbo v2, "WEIBO"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->g(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->p(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->q(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->r(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    new-instance v1, Lcom/cmcc/util/SimpleToast;

    const-string/jumbo v2, "\u5fae\u535a\u89e3\u7ed1\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lcom/cmcc/util/SimpleToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string/jumbo v2, "ALIPAY"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->g(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->t(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->u(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->v(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    new-instance v1, Lcom/cmcc/util/SimpleToast;

    const-string/jumbo v2, "\u652f\u4ed8\u5b9d\u89e3\u7ed1\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lcom/cmcc/util/SimpleToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->x(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lo/gj;

    const-string/jumbo v2, "\u60a8\u5df2\u89e3\u7ed1%s\u8d26\u53f7\uff0c\u8bf7\u66f4\u6362\u5176\u4ed6\u65b9\u5f0f\u91cd\u65b0\u767b\u5f55"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->y(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo/t;

    invoke-direct {v3, v0}, Lo/t;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V

    invoke-direct {v1, v0, v2, v3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    new-instance v0, Lo/u;

    invoke-direct {v0}, Lo/u;-><init>()V

    invoke-virtual {v1, v0}, Lo/gj;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v1}, Lo/gj;->show()V

    goto/16 :goto_0

    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_e

    const-string/jumbo v1, "UnBind account Error "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resultCode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultString \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lo/gj;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    invoke-virtual {v2}, Lo/gj;->show()V

    goto/16 :goto_0

    :sswitch_7
    const/16 v1, 0x22

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_11

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_10

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "alipay_system_oauth_token_response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "access_token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v3, "ALIPAY"

    invoke-static {v0, v3}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_f

    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c()V

    const-string/jumbo v1, "\u6388\u6743\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x0

    :try_start_4
    invoke-static {v0, v3, v2, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_10
    :try_start_5
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c()V

    const-string/jumbo v1, "\u6388\u6743\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c()V

    const-string/jumbo v1, "\u6388\u6743\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_12

    const-string/jumbo v1, "Bind phone Error "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resultCode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultString \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lo/gj;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    invoke-virtual {v2}, Lo/gj;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_8
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x20 -> :sswitch_7
    .end sparse-switch
.end method
