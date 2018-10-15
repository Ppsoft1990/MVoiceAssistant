.class public Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
.super Landroid/widget/LinearLayout;
.source "ConvenientBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$ClickCallback;,
        Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$CycleScrollHandler;,
        Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$PageIndicatorAlign;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# static fields
.field private static final SCROLL_WHAT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConvenientBanner"


# instance fields
.field private final BANERR_PAGEINDICATOR_PADDING:I

.field private final BANERR_PAGEINDICATOR_WIDTH:I

.field private autoTurningTime:J

.field private canLoop:Z

.field private canTurn:Z

.field private handler:Landroid/os/Handler;

.field private iconShowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private loPageTurningPoint:Landroid/view/ViewGroup;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mPointViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private onPageChangeListener:Landroid/support/v4/view/ViewPager$f;

.field private pageAdapter:Lajb;

.field private pageChangeListener:Lajf;

.field private page_indicatorId:[I

.field private scroller:Laji;

.field private turning:Z

.field private viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->mPointViews:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canTurn:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canLoop:Z

    .line 63
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-static {v0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_WIDTH:I

    .line 64
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_PADDING:I

    .line 69
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->mPointViews:Ljava/util/ArrayList;

    .line 57
    iput-boolean v4, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canTurn:Z

    .line 58
    iput-boolean v5, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canLoop:Z

    .line 63
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_WIDTH:I

    .line 64
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_PADDING:I

    .line 74
    sget-object v1, Lcom/iflytek/cmcc/R$styleable;->HomeConvenientBanner:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canLoop:Z

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->init(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->mPointViews:Ljava/util/ArrayList;

    .line 57
    iput-boolean v4, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canTurn:Z

    .line 58
    iput-boolean v5, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canLoop:Z

    .line 63
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_WIDTH:I

    .line 64
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_PADDING:I

    .line 83
    sget-object v1, Lcom/iflytek/cmcc/R$styleable;->HomeConvenientBanner:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canLoop:Z

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->mPointViews:Ljava/util/ArrayList;

    .line 57
    iput-boolean v4, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canTurn:Z

    .line 58
    iput-boolean v5, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canLoop:Z

    .line 63
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_WIDTH:I

    .line 64
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_PADDING:I

    .line 92
    sget-object v1, Lcom/iflytek/cmcc/R$styleable;->HomeConvenientBanner:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canLoop:Z

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->init(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;)Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->turning:Z

    return v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->sendScrollMessage()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "hView":Landroid/view/View;
    const v1, 0x7f0b0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    .line 102
    const v1, 0x7f0b0098

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->loPageTurningPoint:Landroid/view/ViewGroup;

    .line 104
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->initViewPagerScroll()V

    .line 106
    new-instance v1, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$CycleScrollHandler;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$CycleScrollHandler;-><init>(Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;)V

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->handler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method private initViewPagerScroll()V
    .locals 4

    .prologue
    .line 281
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    const/4 v1, 0x0

    .line 282
    .local v1, "mScroller":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v2, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v3, "mScroller"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 283
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 284
    new-instance v2, Laji;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    .line 285
    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Laji;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->scroller:Laji;

    .line 286
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->scroller:Laji;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 295
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 292
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendScrollMessage()V
    .locals 6

    .prologue
    .line 243
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->autoTurningTime:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ConvenientBanner"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 312
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 313
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 315
    :cond_0
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canTurn:Z

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->autoTurningTime:J

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->startTurning(J)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .line 320
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 316
    :cond_2
    if-nez v0, :cond_1

    .line 318
    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canTurn:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->stopTurning()V

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 325
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getRealItem()I

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOnPageChangeListener()Landroid/support/v4/view/ViewPager$f;
    .locals 1

    .prologue
    .line 338
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->onPageChangeListener:Landroid/support/v4/view/ViewPager$f;

    return-object v0
.end method

.method public getScrollDuration()I
    .locals 1

    .prologue
    .line 380
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->scroller:Laji;

    invoke-virtual {v0}, Laji;->a()I

    move-result v0

    return v0
.end method

.method public getViewPager()Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;
    .locals 1

    .prologue
    .line 384
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    return-object v0
.end method

.method public isCanLoop()Z
    .locals 1

    .prologue
    .line 355
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->b()Z

    move-result v0

    return v0
.end method

.method public isManualPageable()Z
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a()Z

    move-result v0

    return v0
.end method

.method public isTurning()Z
    .locals 1

    .prologue
    .line 221
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->turning:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getAdapter()Lajb;

    move-result-object v0

    invoke-virtual {v0}, Lajb;->notifyDataSetChanged()V

    .line 154
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->page_indicatorId:[I

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->page_indicatorId:[I

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->setPageIndicator([I)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .line 156
    :cond_0
    return-void
.end method

.method public setCanLoop(Z)V
    .locals 1
    .param p1, "canLoop"    # Z

    .prologue
    .line 388
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canLoop:Z

    .line 389
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setCanLoop(Z)V

    .line 390
    return-void
.end method

.method public setManualPageable(Z)V
    .locals 1
    .param p1, "manualPageable"    # Z

    .prologue
    .line 302
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setCanScroll(Z)V

    .line 303
    return-void
.end method

.method public setOnItemClickListener(Lajg;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
    .locals 2
    .param p1, "onItemClickListener"    # Lajg;

    .prologue
    .line 363
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    if-nez p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setOnItemClickListener(Lajg;)V

    .line 368
    :goto_0
    return-object p0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setOnItemClickListener(Lajg;)V

    goto :goto_0
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
    .locals 1
    .param p1, "onPageChangeListener"    # Landroid/support/v4/view/ViewPager$f;

    .prologue
    .line 347
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->onPageChangeListener:Landroid/support/v4/view/ViewPager$f;

    .line 349
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->pageChangeListener:Lajf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->pageChangeListener:Lajf;

    invoke-virtual {v0, p1}, Lajf;->a(Landroid/support/v4/view/ViewPager$f;)V

    .line 351
    :goto_0
    return-object p0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    goto :goto_0
.end method

.method public setPageIndicator([I)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
    .locals 7
    .param p1, "page_indicatorId"    # [I

    .prologue
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    const/4 v6, 0x0

    .line 174
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->loPageTurningPoint:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->mPointViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 176
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->page_indicatorId:[I

    .line 177
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->mDatas:Ljava/util/List;

    if-nez v3, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object p0

    .line 178
    :cond_1
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->mDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 180
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 181
    .local v2, "pointView":Landroid/widget/ImageView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_WIDTH:I

    iget v4, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_WIDTH:I

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 183
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    const-string/jumbo v3, "ConvenientBanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BANERR_PAGEINDICATOR_PADDING="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_PADDING:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",BANERR_PAGEINDICATOR_WIDTH="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_WIDTH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_PADDING:I

    iget v4, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->BANERR_PAGEINDICATOR_PADDING:I

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 186
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->mPointViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    :goto_2
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->mPointViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->loPageTurningPoint:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_2
    aget v3, p1, v6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 193
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "pointView":Landroid/widget/ImageView;
    :cond_3
    new-instance v3, Lajf;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->mPointViews:Ljava/util/ArrayList;

    invoke-direct {v3, v4, p1}, Lajf;-><init>(Ljava/util/ArrayList;[I)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->pageChangeListener:Lajf;

    .line 195
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->pageChangeListener:Lajf;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 196
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->pageChangeListener:Lajf;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v4}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getRealItem()I

    move-result v4

    invoke-virtual {v3, v4}, Lajf;->onPageSelected(I)V

    .line 197
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->onPageChangeListener:Landroid/support/v4/view/ViewPager$f;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->pageChangeListener:Lajf;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->onPageChangeListener:Landroid/support/v4/view/ViewPager$f;

    invoke-virtual {v3, v4}, Lajf;->a(Landroid/support/v4/view/ViewPager$f;)V

    goto/16 :goto_0
.end method

.method public setPageIndicatorAlign(Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$PageIndicatorAlign;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
    .locals 5
    .param p1, "align"    # Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$PageIndicatorAlign;

    .prologue
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 208
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->loPageTurningPoint:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 209
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x9

    sget-object v1, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$PageIndicatorAlign;->ALIGN_PARENT_LEFT:Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$PageIndicatorAlign;

    if-ne p1, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 210
    const/16 v4, 0xb

    sget-object v1, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$PageIndicatorAlign;->ALIGN_PARENT_RIGHT:Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$PageIndicatorAlign;

    if-ne p1, v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 211
    const/16 v1, 0xe

    sget-object v4, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$PageIndicatorAlign;->CENTER_HORIZONTAL:Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$PageIndicatorAlign;

    if-ne p1, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 212
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->loPageTurningPoint:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    return-object p0

    :cond_0
    move v1, v3

    .line 209
    goto :goto_0

    :cond_1
    move v1, v3

    .line 210
    goto :goto_1

    :cond_2
    move v2, v3

    .line 211
    goto :goto_2
.end method

.method public setPageTransformer(Landroid/support/v4/view/ViewPager$g;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
    .locals 2
    .param p1, "transformer"    # Landroid/support/v4/view/ViewPager$g;

    .prologue
    .line 271
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$g;)V

    .line 272
    return-object p0
.end method

.method public setPages(Lajc;Ljava/util/List;Ljava/util/List;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
    .locals 3
    .param p1, "holderCreator"    # Lajc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajc;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "icons":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p2, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->mDatas:Ljava/util/List;

    .line 139
    iput-object p3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->iconShowList:Ljava/util/List;

    .line 140
    new-instance v0, Lajb;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->mDatas:Ljava/util/List;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->iconShowList:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Lajb;-><init>(Lajc;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->pageAdapter:Lajb;

    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->pageAdapter:Lajb;

    iget-boolean v2, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canLoop:Z

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a(Lba;Z)V

    .line 143
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->page_indicatorId:[I

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->page_indicatorId:[I

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->setPageIndicator([I)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .line 145
    :cond_0
    return-object p0
.end method

.method public setPagingEnabled(Z)V
    .locals 1
    .param p1, "eable"    # Z

    .prologue
    .line 305
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setPagingEnabled(Z)V

    .line 306
    return-void
.end method

.method public setPointViewVisible(Z)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 164
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->loPageTurningPoint:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 165
    return-object p0

    .line 164
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setScrollDuration(I)V
    .locals 1
    .param p1, "scrollDuration"    # I

    .prologue
    .line 376
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->scroller:Laji;

    invoke-virtual {v0, p1}, Laji;->a(I)V

    .line 377
    return-void
.end method

.method public setcurrentitem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 332
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->viewPager:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setCurrentItem(I)V

    .line 335
    :cond_0
    return-void
.end method

.method public startTurning(J)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
    .locals 1
    .param p1, "autoTurningTime"    # J

    .prologue
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->canTurn:Z

    .line 236
    iput-wide p1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->autoTurningTime:J

    .line 237
    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->turning:Z

    .line 238
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->sendScrollMessage()V

    .line 239
    return-object p0
.end method

.method public stopTurning()V
    .locals 3

    .prologue
    .line 255
    .local p0, "this":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;, "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner<TT;>;"
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->turning:Z

    .line 256
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ConvenientBanner"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
