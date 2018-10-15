.class public Lcom/cmcc/util/SimpleToast;
.super Ljava/lang/Object;
.source "SimpleToast.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Toast;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cmcc/util/SimpleToast;->b:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/cmcc/util/SimpleToast;->initView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/util/SimpleToast;->a:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/cmcc/util/SimpleToast;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->d:Landroid/widget/Toast;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->d:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public initView(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/util/SimpleToast;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_toast"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_toast_msg_tv"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/util/SimpleToast;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_toast_iv"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcc/util/SimpleToast;->e:Landroid/widget/ImageView;

    return-object v1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setToastIcon(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmcc/util/SimpleToast;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/cmcc/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/cmcc/util/SimpleToast;->b:Landroid/content/Context;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->d:Landroid/widget/Toast;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/cmcc/util/SimpleToast;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/util/SimpleToast;->d:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->d:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->d:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->d:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/cmcc/util/SimpleToast;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/cmcc/util/SimpleToast;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public show(II)V
    .locals 2

    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/cmcc/util/SimpleToast;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x30

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v1, p0, Lcom/cmcc/util/SimpleToast;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public show(J)V
    .locals 7

    invoke-virtual {p0}, Lcom/cmcc/util/SimpleToast;->show()V

    new-instance v0, Lauthcommon/bv;

    const-wide/16 v2, 0x7d0

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lauthcommon/bv;-><init>(Lcom/cmcc/util/SimpleToast;J)V

    invoke-virtual {v0}, Lauthcommon/bv;->start()Landroid/os/CountDownTimer;

    return-void
.end method
