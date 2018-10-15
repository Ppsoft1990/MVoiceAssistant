.class public Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
.super Landroid/view/ViewGroup;
.source "PtrFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;,
        Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$LayoutParams;,
        Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static FLAG_AUTO_REFRESH_AT_ONCE:B = 0x0t

.field private static FLAG_AUTO_REFRESH_BUT_LATER:B = 0x0t

.field private static FLAG_ENABLE_NEXT_PTR_AT_ONCE:B = 0x0t

.field private static FLAG_PIN_CONTENT:B = 0x0t

.field private static ID:I = 0x0

.field private static MASK_AUTO_REFRESH:B = 0x0t

.field public static final PTR_STATUS_COMPLETE:B = 0x4t

.field public static final PTR_STATUS_INIT:B = 0x1t

.field public static final PTR_STATUS_LOADING:B = 0x3t

.field public static final PTR_STATUS_PREPARE:B = 0x2t


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private mContainerId:I

.field protected mContent:Landroid/view/View;

.field private mDisableWhenHorizontalMove:Z

.field private mDurationToBackFooter:I

.field private mDurationToBackHeader:I

.field private mDurationToCloseFooter:I

.field private mDurationToCloseHeader:I

.field private mFlag:I

.field private mFooterHeight:I

.field private mFooterId:I

.field private mFooterView:Landroid/view/View;

.field private mForceBackWhenComplete:Z

.field private mHasSendCancelEvent:Z

.field private mHeaderHeight:I

.field private mHeaderId:I

.field private mHeaderView:Landroid/view/View;

.field private mKeepHeaderWhenRefresh:Z

.field private mLastMoveEvent:Landroid/view/MotionEvent;

.field private mLoadingMinTime:I

.field private mLoadingStartTime:J

.field private mMode:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

.field private mPagingTouchSlop:I

.field private mPerformRefreshCompleteDelay:Ljava/lang/Runnable;

.field private mPreventForHorizontal:Z

.field private mPtrHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;

.field private mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

.field private mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

.field private mPullToRefresh:Z

.field private mRefreshCompleteHook:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHook;

.field private mScrollChecker:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

.field private mStatus:B

.field private random:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    .line 34
    sput v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->ID:I

    .line 37
    sput-byte v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_AT_ONCE:B

    .line 38
    const/4 v0, 0x2

    sput-byte v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_BUT_LATER:B

    .line 39
    const/4 v0, 0x4

    sput-byte v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->FLAG_ENABLE_NEXT_PTR_AT_ONCE:B

    .line 40
    const/16 v0, 0x8

    sput-byte v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->FLAG_PIN_CONTENT:B

    .line 41
    const/4 v0, 0x3

    sput-byte v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->MASK_AUTO_REFRESH:B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-byte v7, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ptr-frame-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->ID:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    .line 44
    iput v6, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderId:I

    .line 45
    iput v6, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContainerId:I

    .line 46
    iput v6, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterId:I

    .line 48
    sget-object v3, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->BOTH:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mMode:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    .line 51
    const/16 v3, 0xc8

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToBackHeader:I

    .line 52
    const/16 v3, 0xc8

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToBackFooter:I

    .line 54
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    .line 55
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseFooter:I

    .line 57
    iput-boolean v7, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    .line 58
    iput-boolean v6, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPullToRefresh:Z

    .line 59
    iput-boolean v6, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mForceBackWhenComplete:Z

    .line 62
    invoke-static {}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->create()Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    .line 71
    iput-boolean v6, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDisableWhenHorizontalMove:Z

    .line 72
    iput v6, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    .line 75
    iput-boolean v6, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    .line 83
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mLoadingMinTime:I

    .line 84
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mLoadingStartTime:J

    .line 86
    iput-boolean v6, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHasSendCancelEvent:Z

    .line 87
    new-instance v3, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$1;-><init>(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPerformRefreshCompleteDelay:Ljava/lang/Runnable;

    .line 105
    new-instance v3, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-direct {v3}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;-><init>()V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    .line 107
    sget-object v3, Lcom/iflytek/cmcc/R$styleable;->PtrFrameLayout:[I

    invoke-virtual {p1, p2, v3, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "arr":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 109
    iget v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderId:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderId:I

    .line 110
    iget v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContainerId:I

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContainerId:I

    .line 111
    const/4 v3, 0x2

    iget v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterId:I

    .line 113
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getResistanceHeader()F

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setResistanceHeader(F)V

    .line 114
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getResistanceFooter()F

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setResistanceFooter(F)V

    .line 115
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getResistanceHeader()F

    move-result v4

    invoke-virtual {v0, v9, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setResistanceHeader(F)V

    .line 116
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getResistanceFooter()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setResistanceFooter(F)V

    .line 118
    iget v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    invoke-virtual {v0, v10, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToBackHeader:I

    .line 119
    iget v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    invoke-virtual {v0, v10, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToBackFooter:I

    .line 120
    const/16 v3, 0x8

    iget v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToBackHeader:I

    .line 121
    const/16 v3, 0x9

    iget v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToBackFooter:I

    .line 123
    const/16 v3, 0xa

    iget v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    .line 124
    const/16 v3, 0xa

    iget v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseFooter:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseFooter:I

    .line 125
    const/16 v3, 0xb

    iget v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    .line 126
    const/16 v3, 0xc

    iget v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseFooter:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseFooter:I

    .line 128
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getRatioOfHeaderToHeightRefresh()F

    move-result v2

    .line 129
    .local v2, "ratio":F
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 130
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setRatioOfHeaderHeightToRefresh(F)V

    .line 132
    const/16 v3, 0xe

    iget-boolean v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    .line 134
    const/16 v3, 0xd

    iget-boolean v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPullToRefresh:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPullToRefresh:Z

    .line 136
    const/16 v3, 0xf

    invoke-virtual {v0, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getModeFromIndex(I)Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mMode:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    .end local v2    # "ratio":F
    :cond_0
    new-instance v3, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;-><init>(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mScrollChecker:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    .line 143
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 144
    .local v1, "conf":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPagingTouchSlop:I

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->performRefreshComplete()V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->notifyUIRefreshComplete(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
    .param p1, "x1"    # F

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->moveHeaderPos(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
    .param p1, "x1"    # F

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->moveFooterPos(F)V

    return-void
.end method

.method private clearFlag()V
    .locals 2

    .prologue
    .line 919
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->MASK_AUTO_REFRESH:B

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    .line 920
    return-void
.end method

.method private getModeFromIndex(I)Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_0

    .line 158
    sget-object v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->BOTH:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    :goto_0
    return-object v0

    .line 150
    :pswitch_0
    sget-object v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->NONE:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    goto :goto_0

    .line 152
    :pswitch_1
    sget-object v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->REFRESH:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    goto :goto_0

    .line 154
    :pswitch_2
    sget-object v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->LOAD_MORE:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    goto :goto_0

    .line 156
    :pswitch_3
    sget-object v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->BOTH:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRandom()I
    .locals 2

    .prologue
    .line 1393
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->random:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1394
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->random:I

    .line 1398
    :goto_0
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->random:I

    return v0

    .line 1396
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->random:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->random:I

    goto :goto_0
.end method

.method private layoutChildren()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 354
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v11}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 355
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v11}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v5

    .line 356
    .local v5, "offsetHeaderY":I
    const/4 v4, 0x0

    .line 361
    .local v4, "offsetFooterY":I
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v6

    .line 362
    .local v6, "paddingLeft":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v7

    .line 363
    .local v7, "paddingTop":I
    const/4 v1, 0x0

    .line 365
    .local v1, "contentBottom":I
    sget-boolean v11, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 369
    :cond_0
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eqz v11, :cond_1

    .line 370
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 371
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v2, v6, v11

    .line 372
    .local v2, "left":I
    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v7

    add-int/2addr v11, v5

    iget v12, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderHeight:I

    sub-int v9, v11, v12

    .line 373
    .local v9, "top":I
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int v8, v2, v11

    .line 374
    .local v8, "right":I
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int v0, v9, v11

    .line 375
    .local v0, "bottom":I
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v11, v2, v9, v8, v0}, Landroid/view/View;->layout(IIII)V

    .line 376
    sget-boolean v11, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v11, :cond_1

    .line 380
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "right":I
    .end local v9    # "top":I
    :cond_1
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-eqz v11, :cond_4

    .line 381
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 386
    .restart local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v11}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 387
    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v2, v6, v11

    .line 388
    .restart local v2    # "left":I
    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v7

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->isPinContent()Z

    move-result v12

    if-eqz v12, :cond_2

    move v5, v10

    .end local v5    # "offsetHeaderY":I
    :cond_2
    add-int v9, v11, v5

    .line 389
    .restart local v9    # "top":I
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int v8, v2, v11

    .line 390
    .restart local v8    # "right":I
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int v0, v9, v11

    .line 397
    .restart local v0    # "bottom":I
    :goto_1
    move v1, v0

    .line 398
    sget-boolean v11, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v11, :cond_3

    .line 401
    :cond_3
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v11, v2, v9, v8, v0}, Landroid/view/View;->layout(IIII)V

    .line 403
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "right":I
    .end local v9    # "top":I
    :cond_4
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    if-eqz v11, :cond_5

    .line 404
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 405
    .restart local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v2, v6, v11

    .line 406
    .restart local v2    # "left":I
    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v7

    add-int/2addr v11, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->isPinContent()Z

    move-result v12

    if-eqz v12, :cond_9

    .end local v4    # "offsetFooterY":I
    :goto_2
    sub-int v9, v11, v4

    .line 407
    .restart local v9    # "top":I
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int v8, v2, v10

    .line 408
    .restart local v8    # "right":I
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int v0, v9, v10

    .line 409
    .restart local v0    # "bottom":I
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    invoke-virtual {v10, v2, v9, v8, v0}, Landroid/view/View;->layout(IIII)V

    .line 410
    sget-boolean v10, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v10, :cond_5

    .line 414
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "right":I
    .end local v9    # "top":I
    :cond_5
    return-void

    .line 358
    .end local v1    # "contentBottom":I
    .end local v6    # "paddingLeft":I
    .end local v7    # "paddingTop":I
    :cond_6
    const/4 v5, 0x0

    .line 359
    .restart local v5    # "offsetHeaderY":I
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v11}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v4

    .restart local v4    # "offsetFooterY":I
    goto/16 :goto_0

    .line 392
    .restart local v1    # "contentBottom":I
    .restart local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v6    # "paddingLeft":I
    .restart local v7    # "paddingTop":I
    :cond_7
    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v2, v6, v11

    .line 393
    .restart local v2    # "left":I
    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v12, v7, v11

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->isPinContent()Z

    move-result v11

    if-eqz v11, :cond_8

    move v11, v10

    :goto_3
    sub-int v9, v12, v11

    .line 394
    .restart local v9    # "top":I
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int v8, v2, v11

    .line 395
    .restart local v8    # "right":I
    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int v0, v9, v11

    .restart local v0    # "bottom":I
    goto :goto_1

    .end local v0    # "bottom":I
    .end local v8    # "right":I
    .end local v9    # "top":I
    :cond_8
    move v11, v4

    .line 393
    goto :goto_3

    .end local v5    # "offsetHeaderY":I
    :cond_9
    move v4, v10

    .line 406
    goto :goto_2
.end method

.method private measureContentView(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 338
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 337
    invoke-static {p2, v3, v4}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 340
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 339
    invoke-static {p3, v3, v4}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 342
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 343
    return-void
.end method

.method private moveFooterPos(F)V
    .locals 2
    .param p1, "deltaY"    # F

    .prologue
    .line 540
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setIsHeader(Z)V

    .line 542
    neg-float v0, p1

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->movePos(F)V

    .line 543
    return-void
.end method

.method private moveHeaderPos(F)V
    .locals 2
    .param p1, "deltaY"    # F

    .prologue
    .line 547
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setIsHeader(Z)V

    .line 548
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->movePos(F)V

    .line 549
    return-void
.end method

.method private movePos(F)V
    .locals 6
    .param p1, "deltaY"    # F

    .prologue
    .line 559
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isInStartPosition()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v3

    float-to-int v4, p1

    add-int v2, v3, v4

    .line 569
    .local v2, "to":I
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->willOverTop(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    sget-boolean v3, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 573
    :cond_1
    const/4 v2, 0x0

    .line 577
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->willOverBottom(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 578
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getRandom()I

    move-result v1

    .line 579
    .local v1, "random":I
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getOffsetToPull()I

    move-result v3

    sub-int v2, v3, v1

    .line 580
    const-string/jumbo v3, "PtrFrameLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "limit to pull "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v1    # "random":I
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setCurrentPos(I)V

    .line 584
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getLastPosY()I

    move-result v3

    sub-int v0, v2, v3

    .line 585
    .local v0, "change":I
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v3

    if-eqz v3, :cond_4

    .end local v0    # "change":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->updatePos(I)V

    goto :goto_0

    .restart local v0    # "change":I
    :cond_4
    neg-int v0, v0

    goto :goto_1
.end method

.method private notifyUIRefreshComplete(Z)V
    .locals 2
    .param p1, "ignoreHook"    # Z

    .prologue
    .line 890
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHook;

    if-eqz v0, :cond_1

    .line 891
    sget-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHook;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHook;->takeOver()V

    .line 907
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 899
    sget-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 902
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->onUIRefreshComplete(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;Z)V

    .line 904
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->onUIRefreshComplete()V

    .line 905
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->tryScrollBackToTopAfterComplete()V

    .line 906
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->tryToNotifyReset()Z

    goto :goto_0
.end method

.method private onPositionChange(ZBLcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;)V
    .locals 0
    .param p1, "isUnderTouch"    # Z
    .param p2, "mStatus"    # B
    .param p3, "mPtrIndicator"    # Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    .prologue
    .line 663
    return-void
.end method

.method private onRelease(Z)V
    .locals 3
    .param p1, "stayForLoading"    # Z

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->tryToPerformRefresh()Z

    .line 678
    iget-byte v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 680
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isOverOffsetToKeepHeaderWhileLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 683
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mScrollChecker:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getOffsetToKeepHeaderWhileLoading()I

    move-result v1

    iget v2, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToBackHeader:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->tryToScrollTo(II)V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mScrollChecker:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getOffsetToKeepHeaderWhileLoading()I

    move-result v1

    iget v2, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToBackFooter:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->tryToScrollTo(II)V

    goto :goto_0

    .line 692
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->tryScrollBackToTopWhileLoading()V

    goto :goto_0

    .line 695
    :cond_3
    iget-byte v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 696
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->notifyUIRefreshComplete(Z)V

    goto :goto_0

    .line 698
    :cond_4
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->tryScrollBackToTopAbortRefresh()V

    goto :goto_0
.end method

.method private performAutoRefreshButLater()Z
    .locals 2

    .prologue
    .line 959
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->MASK_AUTO_REFRESH:B

    and-int/2addr v0, v1

    sget-byte v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_BUT_LATER:B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performRefresh()V
    .locals 2

    .prologue
    .line 772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mLoadingStartTime:J

    .line 773
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->onUIRefreshBegin(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    .line 775
    sget-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;

    invoke-interface {v0, p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;->onRefreshBegin(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    .line 788
    :cond_1
    :goto_0
    return-void

    .line 783
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;

    instance-of v0, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrHandler2;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;

    check-cast v0, Lcom/iflytek/viafly/ui/view/ptr/PtrHandler2;

    invoke-interface {v0, p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrHandler2;->onLoadMoreBegin(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    goto :goto_0
.end method

.method private performRefreshComplete()V
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    .line 869
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mScrollChecker:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->access$300(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    sget-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->notifyUIRefreshComplete(Z)V

    goto :goto_0
.end method

.method private sendCancelEvent()V
    .locals 10

    .prologue
    .line 1246
    sget-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mLastMoveEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    .line 1257
    :goto_0
    return-void

    .line 1254
    :cond_1
    iget-object v9, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mLastMoveEvent:Landroid/view/MotionEvent;

    .line 1255
    .local v9, "last":Landroid/view/MotionEvent;
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1256
    .local v8, "e":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method private sendDownEvent()V
    .locals 10

    .prologue
    .line 1260
    sget-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1263
    :cond_0
    iget-object v9, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mLastMoveEvent:Landroid/view/MotionEvent;

    .line 1264
    .local v9, "last":Landroid/view/MotionEvent;
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1265
    .local v8, "e":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    .line 1266
    return-void
.end method

.method private tryScrollBackToTop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 727
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isUnderTouch()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 728
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mScrollChecker:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->tryToScrollTo(II)V

    .line 735
    :cond_0
    :goto_1
    return-void

    .line 728
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseFooter:I

    goto :goto_0

    .line 732
    :cond_2
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mForceBackWhenComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v0

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 733
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mScrollChecker:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseFooter:I

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->tryToScrollTo(II)V

    goto :goto_1
.end method

.method private tryScrollBackToTopAbortRefresh()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->tryScrollBackToTop()V

    .line 756
    return-void
.end method

.method private tryScrollBackToTopAfterComplete()V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->tryScrollBackToTop()V

    .line 749
    return-void
.end method

.method private tryScrollBackToTopWhileLoading()V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->tryScrollBackToTop()V

    .line 742
    return-void
.end method

.method private tryToNotifyReset()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 794
    iget-byte v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isInStartPosition()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 795
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    invoke-virtual {v1, p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->onUIReset(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    .line 797
    sget-boolean v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 801
    :cond_1
    iput-byte v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    .line 802
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->clearFlag()V

    .line 805
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryToPerformRefresh()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 759
    iget-byte v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 768
    :cond_0
    :goto_0
    return v2

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isOverOffsetToKeepHeaderWhileLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isOverOffsetToRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    :cond_3
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    .line 766
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->performRefresh()V

    goto :goto_0
.end method

.method private updatePos(I)V
    .locals 4
    .param p1, "change"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 589
    if-nez p1, :cond_0

    .line 659
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isUnderTouch()Z

    move-result v0

    .line 598
    .local v0, "isUnderTouch":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHasSendCancelEvent:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasMovedAfterPressedDown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    iput-boolean v2, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHasSendCancelEvent:Z

    .line 600
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->sendCancelEvent()V

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasJustLeftStartPosition()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-byte v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    if-eq v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    .line 605
    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->goDownCrossFinishPosition()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-byte v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->isEnabledNextPtrAtOnce()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 607
    :cond_3
    iput-byte v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    .line 608
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    invoke-virtual {v1, p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->onUIRefreshPrepare(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    .line 609
    sget-boolean v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 615
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasJustBackToStartPosition()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 616
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->tryToNotifyReset()Z

    .line 619
    if-eqz v0, :cond_5

    .line 620
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->sendDownEvent()V

    .line 625
    :cond_5
    iget-byte v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    if-ne v1, v3, :cond_7

    .line 627
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPullToRefresh:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    .line 628
    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->crossRefreshLineFromTopToBottom()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 629
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->tryToPerformRefresh()Z

    .line 632
    :cond_6
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->performAutoRefreshButLater()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasJustReachedHeaderHeightFromTopToBottom()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 633
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->tryToPerformRefresh()Z

    .line 637
    :cond_7
    sget-boolean v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 642
    :cond_8
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 643
    const-string/jumbo v1, "PTRLAYOUT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "header "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 645
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 650
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->isPinContent()Z

    move-result v1

    if-nez v1, :cond_9

    .line 651
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 653
    :cond_9
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->invalidate()V

    .line 655
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 656
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    iget-byte v2, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->onUIPositionChange(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;ZBLcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;)V

    .line 658
    :cond_a
    iget-byte v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->onPositionChange(ZBLcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;)V

    goto/16 :goto_0

    .line 647
    :cond_b
    const-string/jumbo v1, "PTRLAYOUT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bottom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1
.end method


# virtual methods
.method public addPtrUIHandler(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;)V
    .locals 1
    .param p1, "ptrUIHandler"    # Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->addHandler(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;)V

    .line 1035
    return-void
.end method

.method public autoLoadMore()V
    .locals 2

    .prologue
    .line 923
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->autoRefresh(ZZ)V

    .line 924
    return-void
.end method

.method public autoLoadMore(Z)V
    .locals 1
    .param p1, "atOnce"    # Z

    .prologue
    .line 927
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->autoRefresh(ZZ)V

    .line 928
    return-void
.end method

.method public autoRefresh()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 910
    invoke-virtual {p0, v0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->autoRefresh(ZZ)V

    .line 911
    return-void
.end method

.method public autoRefresh(Z)V
    .locals 1
    .param p1, "atOnce"    # Z

    .prologue
    .line 914
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->autoRefresh(ZZ)V

    .line 915
    return-void
.end method

.method public autoRefresh(ZZ)V
    .locals 3
    .param p1, "atOnce"    # Z
    .param p2, "isHeader"    # Z

    .prologue
    .line 932
    iget-byte v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    if-eqz p1, :cond_3

    sget-byte v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_AT_ONCE:B

    :goto_1
    or-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    .line 938
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    .line 939
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 940
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->onUIRefreshPrepare(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    .line 941
    sget-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 945
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setIsHeader(Z)V

    .line 947
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mScrollChecker:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getOffsetToRefresh()I

    move-result v2

    if-eqz p2, :cond_4

    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->tryToScrollTo(II)V

    .line 948
    if-eqz p1, :cond_0

    .line 949
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    .line 950
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->performRefresh()V

    goto :goto_0

    .line 936
    :cond_3
    sget-byte v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_BUT_LATER:B

    goto :goto_1

    .line 947
    :cond_4
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseFooter:I

    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1227
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableWhenHorizontalMove(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 1002
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDisableWhenHorizontalMove:Z

    .line 1003
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v10, :cond_1

    .line 423
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 535
    :goto_0
    return v10

    .line 425
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 426
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 535
    :cond_2
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_0

    .line 429
    :pswitch_0
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->onRelease()V

    .line 430
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 431
    sget-boolean v10, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 434
    :cond_3
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->onRelease(Z)V

    .line 435
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasMovedAfterPressedDown()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 436
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->sendCancelEvent()V

    .line 437
    const/4 v10, 0x1

    goto :goto_0

    .line 439
    :cond_4
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_0

    .line 441
    :cond_5
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_0

    .line 445
    :pswitch_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHasSendCancelEvent:Z

    .line 446
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->onPressDown(FF)V

    .line 448
    iget-boolean v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mForceBackWhenComplete:Z

    if-nez v10, :cond_7

    .line 449
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mScrollChecker:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->abortIfWorking()V

    .line 458
    :cond_6
    :goto_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    .line 462
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    .line 463
    const/4 v10, 0x1

    goto :goto_0

    .line 452
    :cond_7
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v5, 0x1

    .line 453
    .local v5, "isFooter":Z
    :goto_2
    if-eqz v5, :cond_8

    iget-byte v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    const/4 v11, 0x4

    if-eq v10, v11, :cond_6

    .line 454
    :cond_8
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mScrollChecker:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->abortIfWorking()V

    goto :goto_1

    .line 452
    .end local v5    # "isFooter":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 466
    :pswitch_2
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mLastMoveEvent:Landroid/view/MotionEvent;

    .line 467
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->onMove(FF)V

    .line 468
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getOffsetX()F

    move-result v8

    .line 469
    .local v8, "offsetX":F
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getOffsetY()F

    move-result v9

    .line 471
    .local v9, "offsetY":F
    iget-boolean v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDisableWhenHorizontalMove:Z

    if-eqz v10, :cond_a

    iget-boolean v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    if-nez v10, :cond_a

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPagingTouchSlop:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    .line 472
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isInStartPosition()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 473
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    .line 476
    :cond_a
    iget-boolean v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    if-eqz v10, :cond_b

    .line 477
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_0

    .line 480
    :cond_b
    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-lez v10, :cond_d

    const/4 v6, 0x1

    .line 481
    .local v6, "moveDown":Z
    :goto_3
    if-nez v6, :cond_e

    const/4 v7, 0x1

    .line 483
    .local v7, "moveUp":Z
    :goto_4
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v4, 0x1

    .line 485
    .local v4, "canMoveUp":Z
    :goto_5
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v3, 0x1

    .line 487
    .local v3, "canMoveDown":Z
    :goto_6
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;

    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    iget-object v12, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {v10, p0, v11, v12}, Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;->checkCanDoRefresh(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mMode:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->ordinal()I

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-lez v10, :cond_11

    const/4 v2, 0x1

    .line 488
    .local v2, "canHeaderMoveDown":Z
    :goto_7
    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;

    instance-of v10, v10, Lcom/iflytek/viafly/ui/view/ptr/PtrHandler2;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;

    check-cast v10, Lcom/iflytek/viafly/ui/view/ptr/PtrHandler2;

    iget-object v11, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    iget-object v12, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    .line 489
    invoke-interface {v10, p0, v11, v12}, Lcom/iflytek/viafly/ui/view/ptr/PtrHandler2;->checkCanDoLoadMore(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mMode:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    invoke-virtual {v10}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->ordinal()I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-lez v10, :cond_12

    const/4 v1, 0x1

    .line 491
    .local v1, "canFooterMoveUp":Z
    :goto_8
    sget-boolean v10, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v10, :cond_c

    .line 496
    :cond_c
    if-nez v4, :cond_16

    if-nez v3, :cond_16

    .line 498
    if-eqz v6, :cond_13

    if-nez v2, :cond_13

    .line 499
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_0

    .line 480
    .end local v1    # "canFooterMoveUp":Z
    .end local v2    # "canHeaderMoveDown":Z
    .end local v3    # "canMoveDown":Z
    .end local v4    # "canMoveUp":Z
    .end local v6    # "moveDown":Z
    .end local v7    # "moveUp":Z
    :cond_d
    const/4 v6, 0x0

    goto :goto_3

    .line 481
    .restart local v6    # "moveDown":Z
    :cond_e
    const/4 v7, 0x0

    goto :goto_4

    .line 483
    .restart local v7    # "moveUp":Z
    :cond_f
    const/4 v4, 0x0

    goto :goto_5

    .line 485
    .restart local v4    # "canMoveUp":Z
    :cond_10
    const/4 v3, 0x0

    goto :goto_6

    .line 487
    .restart local v3    # "canMoveDown":Z
    :cond_11
    const/4 v2, 0x0

    goto :goto_7

    .line 489
    .restart local v2    # "canHeaderMoveDown":Z
    :cond_12
    const/4 v1, 0x0

    goto :goto_8

    .line 501
    .restart local v1    # "canFooterMoveUp":Z
    :cond_13
    if-eqz v7, :cond_14

    if-nez v1, :cond_14

    .line 502
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_0

    .line 506
    :cond_14
    if-eqz v6, :cond_15

    .line 507
    invoke-direct {p0, v9}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->moveHeaderPos(F)V

    .line 508
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 512
    :cond_15
    if-eqz v7, :cond_16

    .line 513
    invoke-direct {p0, v9}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->moveFooterPos(F)V

    .line 514
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 519
    :cond_16
    if-eqz v4, :cond_17

    .line 520
    invoke-direct {p0, v9}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->moveHeaderPos(F)V

    .line 521
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 525
    :cond_17
    if-eqz v3, :cond_2

    .line 527
    iget-boolean v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mForceBackWhenComplete:Z

    if-eqz v10, :cond_18

    iget-byte v10, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    const/4 v11, 0x4

    if-ne v10, v11, :cond_18

    .line 528
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_0

    .line 530
    :cond_18
    invoke-direct {p0, v9}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->moveFooterPos(F)V

    .line 531
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1232
    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1242
    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1237
    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getDurationToBackFooter()I
    .locals 1

    .prologue
    .line 1105
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToBackFooter:I

    return v0
.end method

.method public getDurationToBackHeader()I
    .locals 1

    .prologue
    .line 1097
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToBackHeader:I

    return v0
.end method

.method public getDurationToClose()F
    .locals 1

    .prologue
    .line 1082
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    int-to-float v0, v0

    return v0
.end method

.method public getDurationToCloseFooter()J
    .locals 2

    .prologue
    .line 1137
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseFooter:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDurationToCloseHeader()J
    .locals 2

    .prologue
    .line 1132
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFooterHeight()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterHeight:I

    return v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderHeight:I

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getMode()Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mMode:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    return-object v0
.end method

.method public getOffsetToKeepHeaderWhileLoading()I
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getOffsetToKeepHeaderWhileLoading()I

    move-result v0

    return v0
.end method

.method public getOffsetToRefresh()I
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getOffsetToRefresh()I

    move-result v0

    return v0
.end method

.method public getRatioOfHeaderToHeightRefresh()F
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getRatioOfHeaderToHeightRefresh()F

    move-result v0

    return v0
.end method

.method public getResistanceFooter()F
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getResistanceFooter()F

    move-result v0

    return v0
.end method

.method public getResistanceHeader()F
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getResistanceHeader()F

    move-result v0

    return v0
.end method

.method public isAutoRefresh()Z
    .locals 2

    .prologue
    .line 955
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->MASK_AUTO_REFRESH:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabledNextPtrAtOnce()Z
    .locals 2

    .prologue
    .line 963
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->FLAG_ENABLE_NEXT_PTR_AT_ONCE:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForceBackWhenComplete()Z
    .locals 1

    .prologue
    .line 1179
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mForceBackWhenComplete:Z

    return v0
.end method

.method public isKeepHeaderWhenRefresh()Z
    .locals 1

    .prologue
    .line 1170
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    return v0
.end method

.method public isPinContent()Z
    .locals 2

    .prologue
    .line 980
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->FLAG_PIN_CONTENT:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPullToRefresh()Z
    .locals 1

    .prologue
    .line 1187
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPullToRefresh:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    .line 832
    iget-byte v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 281
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mScrollChecker:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mScrollChecker:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->access$100(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPerformRefreshCompleteDelay:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPerformRefreshCompleteDelay:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 288
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getChildCount()I

    move-result v6

    .line 165
    .local v6, "childCount":I
    if-le v6, v2, :cond_0

    .line 166
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "PtrFrameLayout only can host 3 elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    if-ne v6, v2, :cond_10

    .line 168
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderId:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 169
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderId:I

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    .line 171
    :cond_1
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContainerId:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-nez v1, :cond_2

    .line 172
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContainerId:I

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    .line 174
    :cond_2
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterId:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 175
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterId:I

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    if-nez v1, :cond_5

    .line 179
    :cond_4
    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 180
    .local v3, "child1":Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 181
    .local v4, "child2":Landroid/view/View;
    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 183
    .local v5, "child3":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    if-nez v1, :cond_a

    .line 184
    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    .line 185
    iput-object v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    .line 186
    iput-object v5, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    .line 265
    .end local v3    # "child1":Landroid/view/View;
    .end local v4    # "child2":Landroid/view/View;
    .end local v5    # "child3":Landroid/view/View;
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 266
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    instance-of v1, v1, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    if-eqz v1, :cond_6

    .line 267
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    check-cast v1, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->addPtrUIHandler(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;)V

    .line 268
    :cond_6
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 270
    :cond_7
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 271
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    instance-of v1, v1, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    if-eqz v1, :cond_8

    .line 272
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    check-cast v1, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->addPtrUIHandler(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;)V

    .line 273
    :cond_8
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 275
    :cond_9
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 276
    return-void

    .line 190
    .restart local v3    # "child1":Landroid/view/View;
    .restart local v4    # "child2":Landroid/view/View;
    .restart local v5    # "child3":Landroid/view/View;
    :cond_a
    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$2;-><init>(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;ILandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 195
    .local v0, "view":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 196
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 198
    :cond_b
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 199
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 201
    :cond_c
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 202
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    :cond_d
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 205
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    .line 206
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 208
    :cond_e
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-nez v1, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 209
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    .line 210
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 212
    :cond_f
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 213
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    .line 214
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 218
    .end local v0    # "view":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "child1":Landroid/view/View;
    .end local v4    # "child2":Landroid/view/View;
    .end local v5    # "child3":Landroid/view/View;
    :cond_10
    if-ne v6, v10, :cond_1a

    .line 219
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderId:I

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_11

    .line 220
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderId:I

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    .line 222
    :cond_11
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContainerId:I

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-nez v1, :cond_12

    .line 223
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContainerId:I

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    .line 227
    :cond_12
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_5

    .line 229
    :cond_13
    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 230
    .restart local v3    # "child1":Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 231
    .restart local v4    # "child2":Landroid/view/View;
    instance-of v1, v3, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    if-eqz v1, :cond_14

    .line 232
    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    .line 233
    iput-object v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    goto/16 :goto_0

    .line 234
    :cond_14
    instance-of v1, v4, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    if-eqz v1, :cond_15

    .line 235
    iput-object v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    .line 236
    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    goto/16 :goto_0

    .line 239
    :cond_15
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_16

    .line 240
    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    .line 241
    iput-object v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    goto/16 :goto_0

    .line 245
    :cond_16
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_18

    .line 246
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-ne v1, v3, :cond_17

    .end local v4    # "child2":Landroid/view/View;
    :goto_1
    iput-object v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    goto/16 :goto_0

    .restart local v4    # "child2":Landroid/view/View;
    :cond_17
    move-object v4, v3

    goto :goto_1

    .line 248
    :cond_18
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-ne v1, v3, :cond_19

    .end local v4    # "child2":Landroid/view/View;
    :goto_2
    iput-object v4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    goto/16 :goto_0

    .restart local v4    # "child2":Landroid/view/View;
    :cond_19
    move-object v4, v3

    goto :goto_2

    .line 253
    .end local v3    # "child1":Landroid/view/View;
    .end local v4    # "child2":Landroid/view/View;
    :cond_1a
    if-ne v6, v9, :cond_1b

    .line 254
    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    goto/16 :goto_0

    .line 256
    :cond_1b
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 257
    .local v7, "errorView":Landroid/widget/TextView;
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 258
    const v1, -0x9a00

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    const/16 v1, 0x11

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 260
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 261
    const-string/jumbo v1, "The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?"

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iput-object v7, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    .line 263
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "flag"    # Z
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->layoutChildren()V

    .line 348
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 292
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 301
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 303
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 304
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderHeight:I

    .line 305
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderHeight:I

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setHeaderHeight(I)V

    .line 308
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 309
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 310
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 311
    .restart local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterHeight:I

    .line 312
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterHeight:I

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setFooterHeight(I)V

    .line 315
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->measureContentView(Landroid/view/View;II)V

    .line 317
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 318
    .restart local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    sget-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 330
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    return-void
.end method

.method protected onPtrScrollAbort()V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    sget-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 813
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->onRelease(Z)V

    .line 815
    :cond_1
    return-void
.end method

.method protected onPtrScrollFinish()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    sget-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 822
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->onRelease(Z)V

    .line 824
    :cond_1
    return-void
.end method

.method public final refreshComplete()V
    .locals 8

    .prologue
    .line 840
    sget-boolean v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHook;

    if-eqz v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHook;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHook;->reset()V

    .line 848
    :cond_1
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mLoadingMinTime:I

    int-to-long v2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mLoadingStartTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 849
    .local v0, "delay":I
    if-gtz v0, :cond_4

    .line 850
    sget-boolean v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 853
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->performRefreshComplete()V

    .line 860
    :cond_3
    :goto_0
    return-void

    .line 855
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPerformRefreshCompleteDelay:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 856
    sget-boolean v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_3

    goto :goto_0
.end method

.method public removePtrUIHandler(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;)V
    .locals 1
    .param p1, "ptrUIHandler"    # Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->removeHandler(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;)Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    .line 1040
    return-void
.end method

.method public setDurationToBack(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1092
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->setDurationToBackHeader(I)V

    .line 1093
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->setDurationToBackFooter(I)V

    .line 1094
    return-void
.end method

.method public setDurationToBackFooter(I)V
    .locals 0
    .param p1, "mDurationToBackFooter"    # I

    .prologue
    .line 1109
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToBackFooter:I

    .line 1110
    return-void
.end method

.method public setDurationToBackHeader(I)V
    .locals 0
    .param p1, "mDurationToBackHeader"    # I

    .prologue
    .line 1101
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToBackHeader:I

    .line 1102
    return-void
.end method

.method public setDurationToClose(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1118
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->setDurationToCloseHeader(I)V

    .line 1119
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->setDurationToCloseFooter(I)V

    .line 1120
    return-void
.end method

.method public setDurationToCloseFooter(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1127
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseFooter:I

    .line 1128
    return-void
.end method

.method public setDurationToCloseHeader(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1123
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    .line 1124
    return-void
.end method

.method public setEnabledNextPtrAtOnce(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 972
    if-eqz p1, :cond_0

    .line 973
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->FLAG_ENABLE_NEXT_PTR_AT_ONCE:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    .line 977
    :goto_0
    return-void

    .line 975
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->FLAG_ENABLE_NEXT_PTR_AT_ONCE:B

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    goto :goto_0
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 3
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .line 1213
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 1214
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->removeView(Landroid/view/View;)V

    .line 1216
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1217
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 1218
    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    .line 1219
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1221
    :cond_1
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFooterView:Landroid/view/View;

    .line 1222
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    .line 1223
    return-void
.end method

.method public setForceBackWhenComplete(Z)V
    .locals 0
    .param p1, "mForceBackWhenComplete"    # Z

    .prologue
    .line 1183
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mForceBackWhenComplete:Z

    .line 1184
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 1200
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 1201
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->removeView(Landroid/view/View;)V

    .line 1203
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1204
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 1205
    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    .line 1206
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1208
    :cond_1
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    .line 1209
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    .line 1210
    return-void
.end method

.method public setInterceptEventWhileWorking(Z)V
    .locals 0
    .param p1, "yes"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1021
    return-void
.end method

.method public setKeepHeaderWhenRefresh(Z)V
    .locals 0
    .param p1, "keepOrNot"    # Z

    .prologue
    .line 1174
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    .line 1175
    return-void
.end method

.method public setLoadingMinTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 1011
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mLoadingMinTime:I

    .line 1012
    return-void
.end method

.method public setMode(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;)V
    .locals 0
    .param p1, "mode"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mMode:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    .line 1051
    return-void
.end method

.method public setOffsetToKeepHeaderWhileLoading(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setOffsetToKeepHeaderWhileLoading(I)V

    .line 1166
    return-void
.end method

.method public setOffsetToRefresh(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setOffsetToRefresh(I)V

    .line 1151
    return-void
.end method

.method public setPinContent(Z)V
    .locals 2
    .param p1, "pinContent"    # Z

    .prologue
    .line 989
    if-eqz p1, :cond_0

    .line 990
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->FLAG_PIN_CONTENT:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    .line 994
    :goto_0
    return-void

    .line 992
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->FLAG_PIN_CONTENT:B

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mFlag:I

    goto :goto_0
.end method

.method public setPtrHandler(Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;)V
    .locals 0
    .param p1, "ptrHandler"    # Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;

    .line 1031
    return-void
.end method

.method public setPtrIndicator(Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;)V
    .locals 1
    .param p1, "slider"    # Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    if-eq v0, p1, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->convertFrom(Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;)V

    .line 1046
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    .line 1047
    return-void
.end method

.method public setPullToRefresh(Z)V
    .locals 0
    .param p1, "pullToRefresh"    # Z

    .prologue
    .line 1191
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPullToRefresh:Z

    .line 1192
    return-void
.end method

.method public setRatioOfHeaderHeightToRefresh(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setRatioOfHeaderHeightToRefresh(F)V

    .line 1142
    return-void
.end method

.method public setRefreshCompleteHook(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHook;)V
    .locals 1
    .param p1, "hook"    # Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHook;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHook;

    .line 711
    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$3;-><init>(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHook;->setResumeAction(Ljava/lang/Runnable;)V

    .line 720
    return-void
.end method

.method public setResistance(F)V
    .locals 0
    .param p1, "resistance"    # F

    .prologue
    .line 1068
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->setResistanceHeader(F)V

    .line 1069
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->setResistanceFooter(F)V

    .line 1070
    return-void
.end method

.method public setResistanceFooter(F)V
    .locals 1
    .param p1, "resistance"    # F

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setResistanceFooter(F)V

    .line 1078
    return-void
.end method

.method public setResistanceHeader(F)V
    .locals 1
    .param p1, "resistance"    # F

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setResistanceHeader(F)V

    .line 1074
    return-void
.end method
