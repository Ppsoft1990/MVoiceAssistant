.class public Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;
.super Landroid/widget/LinearLayout;
.source "HomeConvenientBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner$a;,
        Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner$PageIndicatorAlign;
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


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:[I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lajf;

.field private f:Landroid/support/v4/view/ViewPager$f;

.field private g:Lajb;

.field private h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

.field private i:Laji;

.field private j:Landroid/view/ViewGroup;

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Z

.field private final o:I

.field private final p:I

.field private q:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->d:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->m:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->n:Z

    .line 61
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-static {v0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->o:I

    .line 62
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->p:I

    .line 67
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->d:Ljava/util/ArrayList;

    .line 55
    iput-boolean v4, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->m:Z

    .line 56
    iput-boolean v5, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->n:Z

    .line 61
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->o:I

    .line 62
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->p:I

    .line 72
    sget-object v1, Lcom/iflytek/cmcc/R$styleable;->HomeConvenientBanner:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->n:Z

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(Landroid/content/Context;)V

    .line 76
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
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->d:Ljava/util/ArrayList;

    .line 55
    iput-boolean v4, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->m:Z

    .line 56
    iput-boolean v5, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->n:Z

    .line 61
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->o:I

    .line 62
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->p:I

    .line 81
    sget-object v1, Lcom/iflytek/cmcc/R$styleable;->HomeConvenientBanner:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->n:Z

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(Landroid/content/Context;)V

    .line 85
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
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->d:Ljava/util/ArrayList;

    .line 55
    iput-boolean v4, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->m:Z

    .line 56
    iput-boolean v5, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->n:Z

    .line 61
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->o:I

    .line 62
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->p:I

    .line 90
    sget-object v1, Lcom/iflytek/cmcc/R$styleable;->HomeConvenientBanner:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->n:Z

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;)Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030016

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "hView":Landroid/view/View;
    const v1, 0x7f0b0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    .line 100
    const v1, 0x7f0b0098

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->j:Landroid/view/ViewGroup;

    .line 102
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->c()V

    .line 104
    new-instance v1, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner$a;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner$a;-><init>(Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;)V

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->q:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 241
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->q:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->q:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->q:Landroid/os/Handler;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->k:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ConvenientBanner"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->l:Z

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 279
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    const/4 v1, 0x0

    .line 280
    .local v1, "mScroller":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v2, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v3, "mScroller"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 281
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 282
    new-instance v2, Laji;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    .line 283
    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Laji;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->i:Laji;

    .line 284
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->i:Laji;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 293
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 288
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->b()V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;
    .locals 1
    .param p1, "autoTurningTime"    # J

    .prologue
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->m:Z

    .line 234
    iput-wide p1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->k:J

    .line 235
    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->l:Z

    .line 236
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->b()V

    .line 237
    return-object p0
.end method

.method public a(Lajc;Ljava/util/List;Ljava/util/List;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;
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
            "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "icons":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a:Ljava/util/List;

    .line 137
    iput-object p3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->b:Ljava/util/List;

    .line 138
    new-instance v0, Lajb;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->b:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Lajb;-><init>(Lajc;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->g:Lajb;

    .line 139
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->g:Lajb;

    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->n:Z

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a(Lba;Z)V

    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->c:[I

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->c:[I

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a([I)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .line 143
    :cond_0
    return-object p0
.end method

.method public a(Lajg;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;
    .locals 2
    .param p1, "onItemClickListener"    # Lajg;

    .prologue
    .line 361
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    if-nez p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setOnItemClickListener(Lajg;)V

    .line 366
    :goto_0
    return-object p0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setOnItemClickListener(Lajg;)V

    goto :goto_0
.end method

.method public a(Z)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 162
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->j:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 163
    return-object p0

    .line 162
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a([I)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;
    .locals 7
    .param p1, "page_indicatorId"    # [I

    .prologue
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    const/4 v6, 0x0

    .line 172
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->j:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 173
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 174
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->c:[I

    .line 175
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a:Ljava/util/List;

    if-nez v3, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-object p0

    .line 176
    :cond_1
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 178
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 179
    .local v2, "pointView":Landroid/widget/ImageView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->o:I

    iget v4, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->o:I

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 181
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    const-string/jumbo v3, "ConvenientBanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BANERR_PAGEINDICATOR_PADDING="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",BANERR_PAGEINDICATOR_WIDTH="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->p:I

    iget v4, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->p:I

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 184
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    :goto_2
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->j:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_2
    aget v3, p1, v6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 191
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "pointView":Landroid/widget/ImageView;
    :cond_3
    new-instance v3, Lajf;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->d:Ljava/util/ArrayList;

    invoke-direct {v3, v4, p1}, Lajf;-><init>(Ljava/util/ArrayList;[I)V

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->e:Lajf;

    .line 193
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->e:Lajf;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 194
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->e:Lajf;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v4}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getRealItem()I

    move-result v4

    invoke-virtual {v3, v4}, Lajf;->onPageSelected(I)V

    .line 195
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->f:Landroid/support/v4/view/ViewPager$f;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->e:Lajf;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->f:Landroid/support/v4/view/ViewPager$f;

    invoke-virtual {v3, v4}, Lajf;->a(Landroid/support/v4/view/ViewPager$f;)V

    goto/16 :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 253
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->l:Z

    .line 254
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->q:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->q:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ConvenientBanner"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 310
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 311
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 313
    :cond_0
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->m:Z

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->k:J

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(J)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .line 318
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 314
    :cond_2
    if-nez v0, :cond_1

    .line 316
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->m:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a()V

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 323
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getRealItem()I

    move-result v0

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOnPageChangeListener()Landroid/support/v4/view/ViewPager$f;
    .locals 1

    .prologue
    .line 336
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->f:Landroid/support/v4/view/ViewPager$f;

    return-object v0
.end method

.method public getScrollDuration()I
    .locals 1

    .prologue
    .line 378
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->i:Laji;

    invoke-virtual {v0}, Laji;->a()I

    move-result v0

    return v0
.end method

.method public getViewPager()Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;
    .locals 1

    .prologue
    .line 382
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    return-object v0
.end method

.method public setCanLoop(Z)V
    .locals 1
    .param p1, "canLoop"    # Z

    .prologue
    .line 386
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->n:Z

    .line 387
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setCanLoop(Z)V

    .line 388
    return-void
.end method

.method public setManualPageable(Z)V
    .locals 1
    .param p1, "manualPageable"    # Z

    .prologue
    .line 300
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setCanScroll(Z)V

    .line 301
    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 1
    .param p1, "eable"    # Z

    .prologue
    .line 303
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setPagingEnabled(Z)V

    .line 304
    return-void
.end method

.method public setScrollDuration(I)V
    .locals 1
    .param p1, "scrollDuration"    # I

    .prologue
    .line 374
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->i:Laji;

    invoke-virtual {v0, p1}, Laji;->a(I)V

    .line 375
    return-void
.end method

.method public setcurrentitem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 330
    .local p0, "this":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;, "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->h:Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setCurrentItem(I)V

    .line 333
    :cond_0
    return-void
.end method
