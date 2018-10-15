.class public Lcom/iflytek/base/skin/customView/PullListView;
.super Landroid/widget/ListView;
.source "PullListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;,
        Lcom/iflytek/base/skin/customView/PullListView$OnXScrollListener;
    }
.end annotation


# static fields
.field private static final OFFSET_RADIO:F = 1.8f

.field private static final PULL_LOAD_MORE_DELTA:I = 0x32

.field private static final SCROLLBACK_FOOTER:I = 0x1

.field private static final SCROLLBACK_HEADER:I = 0x0

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mEnablePullLoad:Z

.field private mEnablePullRefresh:Z

.field private mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

.field private mHeaderTimeView:Landroid/widget/TextView;

.field private mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

.field private mHeaderViewContent:Landroid/widget/RelativeLayout;

.field private mHeaderViewHeight:I

.field private mIsFooterReady:Z

.field private mLastY:F

.field private mListViewListener:Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;

.field private mPullLoading:Z

.field private mPullRefreshing:Z

.field private mScrollBack:I

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mTotalItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mLastY:F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mEnablePullRefresh:Z

    .line 45
    iput-boolean v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullRefreshing:Z

    .line 51
    iput-boolean v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mIsFooterReady:Z

    .line 73
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/PullListView;->initWithContext(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mLastY:F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mEnablePullRefresh:Z

    .line 45
    iput-boolean v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullRefreshing:Z

    .line 51
    iput-boolean v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mIsFooterReady:Z

    .line 78
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/PullListView;->initWithContext(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mLastY:F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mEnablePullRefresh:Z

    .line 45
    iput-boolean v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullRefreshing:Z

    .line 51
    iput-boolean v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mIsFooterReady:Z

    .line 83
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/PullListView;->initWithContext(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method static synthetic access$002(Lcom/iflytek/base/skin/customView/PullListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/PullListView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderViewHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/iflytek/base/skin/customView/PullListView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/PullListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private initWithContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScroller:Landroid/widget/Scroller;

    .line 90
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 93
    new-instance v0, Lcom/iflytek/base/skin/customView/XListViewHeader;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    .line 94
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    const v1, 0x7f0b085d

    .line 95
    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    .line 96
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    const v1, 0x7f0b0860

    .line 97
    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderTimeView:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/PullListView;->addHeaderView(Landroid/view/View;)V

    .line 101
    new-instance v0, Lcom/iflytek/base/skin/customView/XListViewFooter;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    .line 104
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/iflytek/base/skin/customView/PullListView$1;

    invoke-direct {v1, p0}, Lcom/iflytek/base/skin/customView/PullListView$1;-><init>(Lcom/iflytek/base/skin/customView/PullListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 113
    return-void
.end method

.method private invokeOnScrolling()V
    .locals 2

    .prologue
    .line 195
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v1, v1, Lcom/iflytek/base/skin/customView/PullListView$OnXScrollListener;

    if-eqz v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    check-cast v0, Lcom/iflytek/base/skin/customView/PullListView$OnXScrollListener;

    .line 197
    .local v0, "l":Lcom/iflytek/base/skin/customView/PullListView$OnXScrollListener;
    invoke-interface {v0, p0}, Lcom/iflytek/base/skin/customView/PullListView$OnXScrollListener;->onXScrolling(Landroid/view/View;)V

    .line 199
    .end local v0    # "l":Lcom/iflytek/base/skin/customView/PullListView$OnXScrollListener;
    :cond_0
    return-void
.end method

.method private resetFooterHeight()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListViewFooter;->getBottomMargin()I

    move-result v2

    .line 256
    .local v2, "bottomMargin":I
    if-lez v2, :cond_0

    .line 257
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScrollBack:I

    .line 258
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScroller:Landroid/widget/Scroller;

    neg-int v4, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 260
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/PullListView;->invalidate()V

    .line 262
    :cond_0
    return-void
.end method

.method private resetHeaderHeight()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListViewHeader;->getVisiableHeight()I

    move-result v2

    .line 219
    .local v2, "height":I
    if-nez v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullRefreshing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderViewHeight:I

    if-le v2, v0, :cond_0

    .line 225
    :cond_2
    const/4 v6, 0x0

    .line 227
    .local v6, "finalHeight":I
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullRefreshing:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderViewHeight:I

    if-le v2, v0, :cond_3

    .line 228
    iget v6, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderViewHeight:I

    .line 230
    :cond_3
    iput v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScrollBack:I

    .line 231
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScroller:Landroid/widget/Scroller;

    sub-int v4, v6, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 234
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/PullListView;->invalidate()V

    goto :goto_0
.end method

.method private updateFooterHeight(F)V
    .locals 3
    .param p1, "delta"    # F

    .prologue
    .line 240
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XListViewFooter;->getBottomMargin()I

    move-result v1

    float-to-int v2, p1

    add-int v0, v1, v2

    .line 241
    .local v0, "height":I
    iget-boolean v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mEnablePullLoad:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullLoading:Z

    if-nez v1, :cond_0

    .line 242
    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XListViewFooter;->setState(I)V

    .line 249
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XListViewFooter;->setBottomMargin(I)V

    .line 252
    return-void

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XListViewFooter;->setState(I)V

    goto :goto_0
.end method

.method private updateHeaderHeight(F)V
    .locals 4
    .param p1, "delta"    # F

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    float-to-int v1, p1

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    .line 203
    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XListViewHeader;->getVisiableHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 202
    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListViewHeader;->setVisiableHeight(I)V

    .line 204
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mEnablePullRefresh:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullRefreshing:Z

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderViewHeight:I

    if-le v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListViewHeader;->setState(I)V

    .line 211
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/iflytek/base/skin/customView/PullListView;->setSelection(I)V

    .line 212
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XListViewHeader;->setState(I)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScrollBack:I

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListViewHeader;->setVisiableHeight(I)V

    .line 336
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/PullListView;->postInvalidate()V

    .line 337
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/PullListView;->invokeOnScrolling()V

    .line 339
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    .line 340
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListViewFooter;->setBottomMargin(I)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 358
    iput p4, p0, Lcom/iflytek/base/skin/customView/PullListView;->mTotalItemCount:I

    .line 359
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 363
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 352
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const v4, 0x3fe66666    # 1.8f

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 280
    iget v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mLastY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mLastY:F

    .line 284
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 303
    :pswitch_0
    iput v2, p0, Lcom/iflytek/base/skin/customView/PullListView;->mLastY:F

    .line 304
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/PullListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_6

    .line 306
    iget-boolean v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mEnablePullRefresh:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    .line 307
    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XListViewHeader;->getVisiableHeight()I

    move-result v1

    iget v2, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderViewHeight:I

    if-le v1, v2, :cond_1

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullRefreshing:Z

    .line 309
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XListViewHeader;->setState(I)V

    .line 310
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mListViewListener:Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mListViewListener:Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;

    invoke-interface {v1}, Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;->onRefresh()V

    .line 314
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/PullListView;->resetHeaderHeight()V

    .line 325
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 286
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mLastY:F

    goto :goto_0

    .line 289
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/iflytek/base/skin/customView/PullListView;->mLastY:F

    sub-float v0, v1, v2

    .line 290
    .local v0, "deltaY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mLastY:F

    .line 291
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/PullListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    .line 292
    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XListViewHeader;->getVisiableHeight()I

    move-result v1

    if-gtz v1, :cond_3

    cmpl-float v1, v0, v3

    if-lez v1, :cond_4

    .line 294
    :cond_3
    div-float v1, v0, v4

    invoke-direct {p0, v1}, Lcom/iflytek/base/skin/customView/PullListView;->updateHeaderHeight(F)V

    .line 295
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/PullListView;->invokeOnScrolling()V

    goto :goto_0

    .line 296
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/PullListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/iflytek/base/skin/customView/PullListView;->mTotalItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    .line 297
    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XListViewFooter;->getBottomMargin()I

    move-result v1

    if-gtz v1, :cond_5

    cmpg-float v1, v0, v3

    if-gez v1, :cond_2

    .line 299
    :cond_5
    neg-float v1, v0

    div-float/2addr v1, v4

    invoke-direct {p0, v1}, Lcom/iflytek/base/skin/customView/PullListView;->updateFooterHeight(F)V

    goto :goto_0

    .line 315
    .end local v0    # "deltaY":F
    :cond_6
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/PullListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/iflytek/base/skin/customView/PullListView;->mTotalItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 317
    iget-boolean v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mEnablePullLoad:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    .line 318
    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XListViewFooter;->getBottomMargin()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_7

    .line 319
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/PullListView;->startLoadMore()V

    .line 321
    :cond_7
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/PullListView;->resetFooterHeight()V

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/iflytek/base/skin/customView/PullListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mIsFooterReady:Z

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mIsFooterReady:Z

    .line 120
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/PullListView;->addFooterView(Landroid/view/View;)V

    .line 122
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 345
    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mEnablePullLoad:Z

    .line 146
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mEnablePullLoad:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListViewFooter;->hide()V

    .line 148
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    :goto_0
    return-void

    .line 150
    :cond_0
    iput-boolean v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullLoading:Z

    .line 151
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListViewFooter;->show()V

    .line 152
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListViewFooter;->setState(I)V

    .line 154
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    new-instance v1, Lcom/iflytek/base/skin/customView/PullListView$2;

    invoke-direct {v1, p0}, Lcom/iflytek/base/skin/customView/PullListView$2;-><init>(Lcom/iflytek/base/skin/customView/PullListView;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setPullRefreshEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mEnablePullRefresh:Z

    .line 132
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mEnablePullRefresh:Z

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XListViewHeader;->setState(I)V

    .line 274
    return-void
.end method

.method public setXListViewListener(Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;)V
    .locals 0
    .param p1, "l"    # Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mListViewListener:Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;

    .line 367
    return-void
.end method

.method public startLoadMore()V
    .locals 2

    .prologue
    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullLoading:Z

    .line 266
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListViewFooter;->setState(I)V

    .line 267
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mListViewListener:Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mListViewListener:Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;

    invoke-interface {v0}, Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;->onLoadMore()V

    .line 270
    :cond_0
    return-void
.end method

.method public startRefresh()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 387
    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/PullListView;->setPullRefreshEnable(Z)V

    .line 388
    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullRefreshing:Z

    .line 389
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XListViewHeader;->setState(I)V

    .line 390
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v2, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(I)V

    .line 391
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/iflytek/base/skin/customView/PullListView;->updateHeaderHeight(F)V

    .line 392
    iput v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScrollBack:I

    .line 393
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScroller:Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v5, 0x190

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 395
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/PullListView;->invalidate()V

    .line 396
    return-void
.end method

.method public stopLoadMore()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullLoading:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 180
    iput-boolean v2, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullLoading:Z

    .line 181
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mFooterView:Lcom/iflytek/base/skin/customView/XListViewFooter;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XListViewFooter;->setState(I)V

    .line 183
    :cond_0
    return-void
.end method

.method public stopRefresh()V
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullRefreshing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullRefreshing:Z

    .line 169
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/PullListView;->resetHeaderHeight()V

    .line 171
    :cond_0
    return-void
.end method

.method public stopSelfRefresh()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListViewHeader;->getVisiableHeight()I

    move-result v2

    .line 402
    .local v2, "height":I
    iput v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScrollBack:I

    .line 403
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mScroller:Landroid/widget/Scroller;

    neg-int v4, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 406
    iput-boolean v1, p0, Lcom/iflytek/base/skin/customView/PullListView;->mPullRefreshing:Z

    .line 407
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/PullListView;->mHeaderView:Lcom/iflytek/base/skin/customView/XListViewHeader;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XListViewHeader;->setState(I)V

    .line 408
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/PullListView;->invalidate()V

    .line 409
    return-void
.end method
