.class public Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$AnimationDirection;
    }
.end annotation


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation;

.field private d:Landroid/view/animation/Animation;

.field private e:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;)V
    .locals 1
    .param p1, "pageContainer"    # Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->e:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->h:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->g:Landroid/view/View;

    return-object p1
.end method

.method private a(IFIFIFIF)Landroid/view/animation/TranslateAnimation;
    .locals 9
    .param p1, "fromXType"    # I
    .param p2, "fromXValue"    # F
    .param p3, "toXType"    # I
    .param p4, "toXValue"    # F
    .param p5, "fromYType"    # I
    .param p6, "fromYValue"    # F
    .param p7, "toYType"    # I
    .param p8, "toYValue"    # F

    .prologue
    .line 79
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 82
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 83
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 84
    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;-><init>(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 124
    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;)Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->e:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$AnimationDirection;)V
    .locals 9
    .param p1, "direction"    # Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$AnimationDirection;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 43
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->a(IFIFIFIF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->a:Landroid/view/animation/Animation;

    .line 45
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->a(IFIFIFIF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->b:Landroid/view/animation/Animation;

    .line 47
    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->a(IFIFIFIF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->c:Landroid/view/animation/Animation;

    .line 49
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->a(IFIFIFIF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->d:Landroid/view/animation/Animation;

    .line 53
    :cond_0
    sget-object v0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$2;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$AnimationDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->e:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->g:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 58
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->e:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->f:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->e:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->g:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 65
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->e:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->f:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
