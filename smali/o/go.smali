.class public final Lo/go;
.super Landroid/app/Dialog;
.source "SsoProgressDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private f:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/go;->a:Landroid/content/Context;

    const-string/jumbo v0, "\u5904\u7406\u4e2d"

    iput-object v0, p0, Lo/go;->e:Ljava/lang/String;

    invoke-direct {p0}, Lo/go;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/go;->d:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/go;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/go;->e:Ljava/lang/String;

    invoke-direct {p0}, Lo/go;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/go;->d:Landroid/view/View;

    return-void
.end method

.method private a()Landroid/view/View;
    .locals 9

    const/4 v8, -0x1

    const/high16 v5, 0x41d00000    # 26.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    iget-object v0, p0, Lo/go;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lo/go;->a:Landroid/content/Context;

    const-string/jumbo v2, "sso_toast"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lo/go;->a:Landroid/content/Context;

    const-string/jumbo v1, "sso_toast_msg_tv"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/go;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lo/go;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lo/go;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lo/go;->a:Landroid/content/Context;

    const-string/jumbo v1, "sso_toast_iv"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/go;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lo/go;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lo/go;->a:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lo/go;->a:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lo/go;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lo/go;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/go;->a:Landroid/content/Context;

    const-string/jumbo v2, "sso_loading"

    invoke-static {v1, v2}, Lcom/cmcc/migusso/ssoutil/ResUtil;->getDrawableFromAsserts(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lo/go;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lo/go;->f:Landroid/view/animation/Animation;

    iget-object v0, p0, Lo/go;->f:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lo/go;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lo/go;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lo/go;->f:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lo/go;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v0, p0, Lo/go;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/go;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lo/go;->a:Landroid/content/Context;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/ResUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setMinimumWidth(I)V

    return-object v7
.end method


# virtual methods
.method public final dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/go;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lo/go;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lo/go;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v3}, Lo/go;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v3}, Lo/go;->setCancelable(Z)V

    iget-object v0, p0, Lo/go;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lo/go;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v0, p0, Lo/go;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/go;->f:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/go;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/go;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
