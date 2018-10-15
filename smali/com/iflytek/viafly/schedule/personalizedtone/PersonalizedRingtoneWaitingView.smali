.class public Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneWaitingView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "PersonalizedRingtoneWaitingView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    const/4 v5, -0x1

    const/4 v10, -0x2

    .line 19
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0, v11}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneWaitingView;->setOrientation(I)V

    .line 22
    new-instance v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    .local v3, "root":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 24
    .local v2, "paramRoot":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v3, v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneWaitingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v5

    const-string/jumbo v6, "178"

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v5

    const-string/jumbo v6, "20"

    const-string/jumbo v7, "16"

    const-string/jumbo v8, "20"

    const-string/jumbo v9, "16"

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, v11}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 29
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 31
    new-instance v0, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, "imgViewWaiting":Lcom/iflytek/base/skin/customView/XImageView;
    const-string/jumbo v5, "image.ic_mainpage_loading_1"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v5, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 33
    invoke-virtual {v3, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 34
    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v5

    const-string/jumbo v6, "46"

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinWidth(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v5

    const-string/jumbo v6, "46"

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneWaitingView;->a(Lcom/iflytek/base/skin/customView/XImageView;)V

    .line 38
    new-instance v4, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v4, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 39
    .local v4, "textView":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v5, "\u6b63\u5728\u52a0\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v1, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v4, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v5

    const-string/jumbo v6, "24"

    sget-object v7, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 43
    const-string/jumbo v5, "style_refresh_tip"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 44
    return-void
.end method

.method private a(Lcom/iflytek/base/skin/customView/XImageView;)V
    .locals 8
    .param p1, "imgViewWaiting"    # Lcom/iflytek/base/skin/customView/XImageView;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 47
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 48
    .local v7, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 51
    .local v0, "rotateAnimation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 52
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 54
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 55
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 56
    invoke-virtual {p1, v7}, Lcom/iflytek/base/skin/customView/XImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    return-void
.end method
