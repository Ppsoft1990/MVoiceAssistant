.class public Lcom/iflytek/viafly/ui/view/ScanImageView;
.super Landroid/widget/ImageView;
.source "ScanImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;
    }
.end annotation


# instance fields
.field private mDownAnimation:Landroid/view/animation/TranslateAnimation;

.field private mInitialTop:I

.field private mStop:Z

.field private mUpAnimation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mInitialTop:I

    .line 56
    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mStop:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mInitialTop:I

    .line 56
    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mStop:Z

    .line 28
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ScanImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v2, 0x405b000000000000L    # 108.0

    invoke-static {v0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mInitialTop:I

    .line 29
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mInitialTop:I

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/ScanImageView;->setTop(I)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/view/ScanImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/ScanImageView;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mStop:Z

    return v0
.end method


# virtual methods
.method public startScan()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x9c4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 35
    const v2, 0x7f02017b

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/view/ScanImageView;->setBackgroundResource(I)V

    .line 36
    iput-boolean v7, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mStop:Z

    .line 37
    iget v2, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mInitialTop:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ScanImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/high16 v4, 0x4047000000000000L    # 46.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    add-int v1, v2, v3

    .line 39
    .local v1, "startY":I
    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/ui/view/ScanImageView;->setVisibility(I)V

    .line 40
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ScanImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->g(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ScanImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide v4, 0x4051800000000000L    # 70.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    sub-int v0, v2, v3

    .line 41
    .local v0, "endY":I
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mDownAnimation:Landroid/view/animation/TranslateAnimation;

    if-nez v2, :cond_0

    .line 42
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mDownAnimation:Landroid/view/animation/TranslateAnimation;

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mDownAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 45
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mDownAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v8}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 46
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mUpAnimation:Landroid/view/animation/TranslateAnimation;

    if-nez v2, :cond_1

    .line 47
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mUpAnimation:Landroid/view/animation/TranslateAnimation;

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mUpAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 50
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mUpAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v8}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 51
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mUpAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v3, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v8, v4}, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;-><init>(Lcom/iflytek/viafly/ui/view/ScanImageView;ILandroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 52
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mDownAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v3, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mUpAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, p0, v7, v4}, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;-><init>(Lcom/iflytek/viafly/ui/view/ScanImageView;ILandroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 53
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mDownAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/view/ScanImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 54
    return-void
.end method

.method public stopScan()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView;->mStop:Z

    .line 59
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ScanImageView;->clearAnimation()V

    .line 60
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/ScanImageView;->setVisibility(I)V

    .line 61
    return-void
.end method
