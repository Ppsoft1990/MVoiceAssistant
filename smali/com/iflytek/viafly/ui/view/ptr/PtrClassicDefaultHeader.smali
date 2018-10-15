.class public Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;
.super Landroid/widget/FrameLayout;
.source "PtrClassicDefaultHeader.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;


# instance fields
.field private mRefreshing:Landroid/widget/ImageView;

.field private mRotateView:Landroid/widget/ImageView;

.field protected mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->initViews(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->initViews(Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->initViews(Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private createAnimation()Landroid/view/animation/Animation;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 312
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 313
    .local v0, "mAnimation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 314
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 315
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 316
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 317
    return-object v0
.end method

.method private crossRotateLineFromBottomUnderTouch(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
    .locals 3
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRotateView:Landroid/widget/ImageView;

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method private crossRotateLineFromTopUnderTouch(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRotateView:Landroid/widget/ImageView;

    const v1, 0x7f020185

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f0c007d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 271
    return-void
.end method

.method private hideRotateView()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRotateView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    return-void
.end method

.method private resetView()V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->hideRotateView()V

    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRefreshing:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRefreshing:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    return-void
.end method


# virtual methods
.method protected initViews(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030021

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "header":Landroid/view/View;
    const v1, 0x7f0b01a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRotateView:Landroid/widget/ImageView;

    .line 59
    const v1, 0x7f0b01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mTitleTextView:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0b01a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRefreshing:Landroid/widget/ImageView;

    .line 63
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->resetView()V

    .line 64
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 72
    return-void
.end method

.method public onUIPositionChange(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;ZBLcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;)V
    .locals 4
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
    .param p2, "isUnderTouch"    # Z
    .param p3, "status"    # B
    .param p4, "ptrIndicator"    # Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    .prologue
    const/4 v3, 0x2

    .line 242
    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getOffsetToRefresh()I

    move-result v2

    .line 243
    .local v2, "mOffsetToRefresh":I
    invoke-virtual {p4}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v0

    .line 244
    .local v0, "currentPos":I
    invoke-virtual {p4}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getLastPosY()I

    move-result v1

    .line 246
    .local v1, "lastPos":I
    if-ge v0, v2, :cond_1

    if-lt v1, v2, :cond_1

    .line 247
    if-eqz p2, :cond_0

    if-ne p3, v3, :cond_0

    .line 248
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->crossRotateLineFromBottomUnderTouch(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    if-le v0, v2, :cond_0

    if-gt v1, v2, :cond_0

    .line 255
    if-eqz p2, :cond_0

    if-ne p3, v3, :cond_0

    .line 256
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->crossRotateLineFromTopUnderTouch(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    goto :goto_0
.end method

.method public onUIRefreshBegin(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
    .locals 3
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->hideRotateView()V

    .line 156
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRefreshing:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRefreshing:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 158
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRefreshing:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    return-void
.end method

.method public onUIRefreshComplete(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;Z)V
    .locals 3
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
    .param p2, "isHeader"    # Z

    .prologue
    .line 168
    if-nez p2, :cond_0

    .line 184
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->hideRotateView()V

    .line 172
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRefreshing:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRefreshing:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onUIRefreshPrepare(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
    .locals 3
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRefreshing:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRefreshing:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRotateView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mRotateView:Landroid/widget/ImageView;

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public onUIReset(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;->resetView()V

    .line 131
    return-void
.end method
