.class public Lcom/iflytek/base/skin/customView/XProgressView;
.super Landroid/widget/LinearLayout;
.source "XProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;,
        Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;
    }
.end annotation


# static fields
.field public static final MODE_HAS_ANIMATION:I = 0x1

.field public static final MODE_NO_ANIMATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "XProgressView"


# instance fields
.field private mDefaultHeight:I

.field private mDivider:F

.field private mEndAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

.field private mFinishAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mFinishDuration:J

.field private mProgressAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

.field private mProgressAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressDuration:J

.field private mProgressView:Landroid/widget/ImageView;

.field private mState:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/base/skin/customView/XProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mDivider:F

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mDefaultHeight:I

    .line 34
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 35
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mFinishAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 36
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressDuration:J

    .line 37
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mFinishDuration:J

    .line 39
    sget-object v0, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->idle:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mState:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    .line 49
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XProgressView;->initUI(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/base/skin/customView/XProgressView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XProgressView;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/XProgressView;->resetProgressView()V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/base/skin/customView/XProgressView;Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XProgressView;
    .param p1, "x1"    # Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XProgressView;->setState(Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;)Z

    move-result v0

    return v0
.end method

.method private initUI(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    .line 53
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mDefaultHeight:I

    invoke-direct {v2, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v2, "paramRoot":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/iflytek/base/skin/customView/XProgressView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/iflytek/base/skin/customView/XProgressView;->setOrientation(I)V

    .line 57
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressView:Landroid/widget/ImageView;

    .line 58
    iget-object v4, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v1, "paramProgress":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v1}, Lcom/iflytek/base/skin/customView/XProgressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v4

    const-string/jumbo v5, "image.progress_bar_bg"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/XProgressView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v4

    const-string/jumbo v5, "image.second_progress_bar_bg"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 65
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Lcom/iflytek/base/skin/customView/XProgressView;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method

.method private resetProgressView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 199
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->cancel()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mEndAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mEndAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 203
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mEndAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->cancel()V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 206
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/XProgressView;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    return-void
.end method

.method private setState(Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;)Z
    .locals 6
    .param p1, "state"    # Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 221
    const-string/jumbo v3, "XProgressView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "---->setState() | mState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mState:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " newState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "isLegal":Z
    sget-object v3, Lcom/iflytek/base/skin/customView/XProgressView$2;->$SwitchMap$com$iflytek$base$skin$customView$XProgressView$ProgressState:[I

    iget-object v4, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mState:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 238
    :goto_0
    if-eqz v0, :cond_0

    .line 239
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mState:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    .line 241
    :cond_0
    return v0

    .line 225
    :pswitch_0
    sget-object v3, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->waiting:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    if-eq v3, p1, :cond_1

    sget-object v3, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->idle:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    if-ne v3, p1, :cond_2

    :cond_1
    move v0, v2

    .line 227
    :goto_1
    goto :goto_0

    :cond_2
    move v0, v1

    .line 225
    goto :goto_1

    .line 229
    :pswitch_1
    sget-object v3, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->finishing:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    if-eq v3, p1, :cond_3

    sget-object v3, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->idle:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    if-ne v3, p1, :cond_4

    :cond_3
    move v0, v2

    .line 231
    :goto_2
    goto :goto_0

    :cond_4
    move v0, v1

    .line 229
    goto :goto_2

    .line 233
    :pswitch_2
    sget-object v3, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->idle:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    if-ne v3, p1, :cond_5

    move v0, v2

    .line 234
    :goto_3
    goto :goto_0

    :cond_5
    move v0, v1

    .line 233
    goto :goto_3

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clearAnimation()V
    .locals 3

    .prologue
    .line 212
    const-string/jumbo v0, "XProgressView"

    const-string/jumbo v1, "clearAnimation()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v0, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->idle:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    invoke-direct {p0, v0}, Lcom/iflytek/base/skin/customView/XProgressView;->setState(Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const-string/jumbo v0, "XProgressView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearAnimation() state not right | mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mState:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/XProgressView;->resetProgressView()V

    goto :goto_0
.end method

.method public endAnimation(Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;Z)V
    .locals 9
    .param p1, "listener"    # Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;
    .param p2, "isImmediateFinish"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 146
    const-string/jumbo v0, "XProgressView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "endAnimation() isImmediateFinish= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eqz p2, :cond_1

    .line 149
    const-string/jumbo v0, "XProgressView"

    const-string/jumbo v1, "endAnimation() immediate finish animation"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XProgressView;->clearAnimation()V

    .line 151
    if-eqz p1, :cond_0

    .line 152
    invoke-interface {p1, v4}, Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    sget-object v0, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->finishing:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    invoke-direct {p0, v0}, Lcom/iflytek/base/skin/customView/XProgressView;->setState(Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    const-string/jumbo v0, "XProgressView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endAnimation() state not right | mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mState:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v0, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->idle:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mState:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 160
    invoke-interface {p1, v4}, Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/XProgressView;->resetProgressView()V

    .line 166
    new-instance v0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->getEvaluatedProgressFactorX()F

    move-result v1

    move v3, v2

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mEndAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    .line 167
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mEndAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    iget-wide v2, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mFinishDuration:J

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->setDuration(J)V

    .line 168
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mEndAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    new-instance v1, Lcom/iflytek/base/skin/customView/XProgressView$1;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/base/skin/customView/XProgressView$1;-><init>(Lcom/iflytek/base/skin/customView/XProgressView;Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 190
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mEndAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mFinishAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 191
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mEndAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    invoke-virtual {v0, v5}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->setFillAfter(Z)V

    .line 192
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mEndAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 193
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mEndAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->start()V

    goto :goto_0
.end method

.method public setDivider(F)V
    .locals 3
    .param p1, "divider"    # F

    .prologue
    .line 71
    const-string/jumbo v0, "XProgressView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDivider() divider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mDivider:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iput p1, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mDivider:F

    goto :goto_0
.end method

.method public setFinishAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 87
    const-string/jumbo v0, "XProgressView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFinishAnimationInterpolator() interpolator= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mFinishAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public setFinishDuration(J)V
    .locals 3
    .param p1, "finishDuration"    # J

    .prologue
    .line 120
    const-string/jumbo v0, "XProgressView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFinishDuration() finishDuration= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-wide p1, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mFinishDuration:J

    .line 122
    return-void
.end method

.method public setHeight(I)V
    .locals 5
    .param p1, "height"    # I

    .prologue
    .line 102
    const-string/jumbo v2, "XProgressView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHeight() height= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lazk;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mDefaultHeight:I

    .line 104
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mDefaultHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 105
    .local v1, "paramRoot":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/iflytek/base/skin/customView/XProgressView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 107
    .local v0, "paramProgress":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mDefaultHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 108
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XProgressView;->invalidate()V

    .line 111
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XProgressView;->forceLayout()V

    .line 112
    return-void
.end method

.method public setProgressAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 79
    const-string/jumbo v0, "XProgressView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProgressAnimationInterpolator() interpolator= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "progressDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 95
    const-string/jumbo v0, "XProgressView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProgressDrawable() progressDrawable= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method

.method public setProgressDuration(J)V
    .locals 3
    .param p1, "progressDuration"    # J

    .prologue
    .line 115
    const-string/jumbo v0, "XProgressView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProgressDuration() progressDuration= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-wide p1, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressDuration:J

    .line 117
    return-void
.end method

.method public startAnimation()V
    .locals 9

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 128
    const-string/jumbo v0, "XProgressView"

    const-string/jumbo v2, "startAnimation()"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v0, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->waiting:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    invoke-direct {p0, v0}, Lcom/iflytek/base/skin/customView/XProgressView;->setState(Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const-string/jumbo v0, "XProgressView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnimation() state not right | mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mState:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/XProgressView;->resetProgressView()V

    .line 135
    new-instance v0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    iget v2, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mDivider:F

    move v4, v3

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    .line 136
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    iget-wide v2, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressDuration:J

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->setDuration(J)V

    .line 137
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 138
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    invoke-virtual {v0, v5}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->setFillAfter(Z)V

    .line 139
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 141
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView;->mProgressAnimation:Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->start()V

    goto :goto_0
.end method
