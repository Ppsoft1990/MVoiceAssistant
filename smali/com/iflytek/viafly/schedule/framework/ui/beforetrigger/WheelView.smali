.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final b:[I

.field private static c:I

.field private static final d:I


# instance fields
.field private A:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final B:I

.field private final C:I

.field private D:Landroid/os/Handler;

.field a:Z

.field private e:Lavv;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/text/TextPaint;

.field private l:Landroid/text/TextPaint;

.field private m:Landroid/text/StaticLayout;

.field private n:Landroid/text/StaticLayout;

.field private o:Landroid/text/StaticLayout;

.field private p:Ljava/lang/String;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/GradientDrawable;

.field private s:Landroid/graphics/drawable/GradientDrawable;

.field private t:Z

.field private u:I

.field private v:Landroid/view/GestureDetector;

.field private w:Landroid/widget/Scroller;

.field private x:I

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lavq;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lavr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b:[I

    .line 73
    const/16 v0, 0x1e

    sput v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->c:I

    .line 76
    sget v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->c:I

    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->d:I

    return-void

    .line 67
    nop

    :array_0
    .array-data 4
        -0xeeeeef
        0xaaaaaa
        0xaaaaaa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    .line 92
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    .line 95
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    .line 96
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h:I

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i:I

    .line 102
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->j:I

    .line 131
    iput-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a:Z

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->y:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->z:Ljava/util/List;

    .line 843
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->A:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 870
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->B:I

    .line 871
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->C:I

    .line 893
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->D:Landroid/os/Handler;

    .line 158
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a(Landroid/content/Context;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    .line 92
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    .line 95
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    .line 96
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h:I

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i:I

    .line 102
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->j:I

    .line 131
    iput-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a:Z

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->y:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->z:Ljava/util/List;

    .line 843
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->A:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 870
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->B:I

    .line 871
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->C:I

    .line 893
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->D:Landroid/os/Handler;

    .line 150
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    .line 92
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    .line 95
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    .line 96
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h:I

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i:I

    .line 102
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->j:I

    .line 131
    iput-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a:Z

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->y:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->z:Ljava/util/List;

    .line 843
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->A:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 870
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->B:I

    .line 871
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->C:I

    .line 893
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->D:Landroid/os/Handler;

    .line 142
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a(Landroid/content/Context;)V

    .line 143
    return-void
.end method

.method private a(Landroid/text/Layout;)I
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 452
    if-nez p1, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 461
    :goto_0
    return v0

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getItemHeight()I

    move-result v1

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i:I

    mul-int/2addr v1, v2

    sget v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->d:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0xf

    .line 459
    .local v0, "desired":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 461
    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 472
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v2}, Lavv;->a()I

    move-result v2

    if-nez v2, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-object v1

    .line 475
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v2}, Lavv;->a()I

    move-result v0

    .line 476
    .local v0, "count":I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a:Z

    if-eqz v2, :cond_0

    .line 479
    :cond_3
    :goto_1
    if-gez p1, :cond_4

    .line 480
    add-int/2addr p1, v0

    goto :goto_1

    .line 484
    :cond_4
    rem-int/2addr p1, v0

    .line 485
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v1, p1}, Lavv;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private a(Z)Ljava/lang/String;
    .locals 5
    .param p1, "useCurrentValue"    # Z

    .prologue
    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .local v2, "itemsText":Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v0, v4, 0x1

    .line 498
    .local v0, "addItems":I
    iget v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    sub-int v1, v4, v0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    add-int/2addr v4, v0

    if-gt v1, v4, :cond_3

    .line 499
    if-nez p1, :cond_0

    iget v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    if-eq v1, v4, :cond_1

    .line 500
    :cond_0
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    iget v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    add-int/2addr v4, v0

    if-ge v1, v4, :cond_2

    .line 506
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    const-wide/high16 v0, 0x4036000000000000L    # 22.0

    invoke-static {p1, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    sput v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->c:I

    .line 170
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->A:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->v:Landroid/view/GestureDetector;

    .line 171
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->v:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 173
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->w:Landroid/widget/Scroller;

    .line 174
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 714
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i:I

    div-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 715
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 717
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->s:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 718
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->s:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 719
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->x:I

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->w:Landroid/widget/Scroller;

    return-object v0
.end method

.method private b(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    const/4 v5, 0x0

    .line 803
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    .line 805
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getItemHeight()I

    move-result v4

    div-int v0, v3, v4

    .line 806
    .local v0, "count":I
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    sub-int v2, v3, v0

    .line 807
    .local v2, "pos":I
    iget-boolean v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v3}, Lavv;->a()I

    move-result v3

    if-lez v3, :cond_3

    .line 809
    :goto_0
    if-gez v2, :cond_0

    .line 810
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v3}, Lavv;->a()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 812
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v3}, Lavv;->a()I

    move-result v3

    rem-int/2addr v2, v3

    .line 828
    :cond_1
    :goto_1
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    .line 829
    .local v1, "offset":I
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    if-eq v2, v3, :cond_6

    .line 830
    invoke-virtual {p0, v2, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a(IZ)V

    .line 836
    :goto_2
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    sub-int v3, v1, v3

    iput v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    .line 837
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 838
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getHeight()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    .line 840
    :cond_2
    return-void

    .line 813
    .end local v1    # "offset":I
    :cond_3
    iget-boolean v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->t:Z

    if-eqz v3, :cond_5

    .line 815
    if-gez v2, :cond_4

    .line 816
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    .line 817
    const/4 v2, 0x0

    goto :goto_1

    .line 818
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v3}, Lavv;->a()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 819
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v4}, Lavv;->a()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x1

    .line 820
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v3}, Lavv;->a()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_1

    .line 824
    :cond_5
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 825
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v3}, Lavv;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 832
    .restart local v1    # "offset":I
    :cond_6
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->invalidate()V

    goto :goto_2
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 728
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->l:Landroid/text/TextPaint;

    const v2, -0xf009cb9

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 729
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->l:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getDrawableState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 731
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 732
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 735
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->n:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 736
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 737
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 738
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->n:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 739
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->o:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    .line 744
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 745
    const/4 v1, 0x0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 746
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->o:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 747
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 749
    :cond_1
    return-void
.end method

.method private c(II)I
    .locals 12
    .param p1, "widthSize"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v10, 0x0

    .line 567
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e()V

    .line 569
    move v6, p1

    .line 571
    .local v6, "width":I
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getMaxTextLength()I

    move-result v0

    .line 572
    .local v0, "maxLength":I
    if-lez v0, :cond_5

    .line 573
    const-string/jumbo v7, "0"

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->k:Landroid/text/TextPaint;

    invoke-static {v7, v8}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 574
    .local v5, "textWidth":F
    int-to-float v7, v0

    mul-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    .line 578
    .end local v5    # "textWidth":F
    :goto_0
    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    add-int/lit8 v7, v7, 0xa

    iput v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    .line 580
    iput v10, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h:I

    .line 581
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->p:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->p:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 582
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->p:Ljava/lang/String;

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->l:Landroid/text/TextPaint;

    invoke-static {v7, v8}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h:I

    .line 585
    :cond_0
    const/4 v4, 0x0

    .line 586
    .local v4, "recalculate":Z
    const/high16 v7, 0x40000000    # 2.0f

    if-ne p2, v7, :cond_6

    .line 587
    move v6, p1

    .line 588
    const/4 v4, 0x1

    .line 604
    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    .line 606
    add-int/lit8 v7, v6, -0x8

    add-int/lit8 v1, v7, -0x14

    .line 607
    .local v1, "pureWidth":I
    if-gtz v1, :cond_2

    .line 608
    iput v10, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h:I

    iput v10, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    .line 610
    :cond_2
    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h:I

    if-lez v7, :cond_8

    .line 611
    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    int-to-double v8, v7

    int-to-double v10, v1

    mul-double/2addr v8, v10

    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    iget v10, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h:I

    add-int/2addr v7, v10

    int-to-double v10, v7

    div-double v2, v8, v10

    .line 612
    .local v2, "newWidthItems":D
    double-to-int v7, v2

    iput v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    .line 613
    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    sub-int v7, v1, v7

    iput v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h:I

    .line 619
    .end local v1    # "pureWidth":I
    .end local v2    # "newWidthItems":D
    :cond_3
    :goto_2
    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    if-lez v7, :cond_4

    .line 620
    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    iget v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h:I

    invoke-direct {p0, v7, v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->d(II)V

    .line 623
    :cond_4
    return v6

    .line 576
    .end local v4    # "recalculate":Z
    :cond_5
    iput v10, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    goto :goto_0

    .line 590
    .restart local v4    # "recalculate":Z
    :cond_6
    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    iget v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h:I

    add-int/2addr v7, v8

    add-int/lit8 v6, v7, 0x14

    .line 591
    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h:I

    if-lez v7, :cond_7

    .line 592
    add-int/lit8 v6, v6, 0x8

    .line 596
    :cond_7
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 598
    const/high16 v7, -0x80000000

    if-ne p2, v7, :cond_1

    if-ge p1, v6, :cond_1

    .line 599
    move v6, p1

    .line 600
    const/4 v4, 0x1

    goto :goto_1

    .line 615
    .restart local v1    # "pureWidth":I
    :cond_8
    add-int/lit8 v7, v1, 0x8

    iput v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    goto :goto_2
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 758
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 760
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    .line 761
    .local v0, "top":I
    const/4 v1, 0x0

    neg-int v2, v0

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 763
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->k:Landroid/text/TextPaint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 764
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->k:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getDrawableState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 765
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 767
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 768
    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f()V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->setNextMessage(I)V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    .line 408
    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->o:Landroid/text/StaticLayout;

    .line 409
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    .line 410
    return-void
.end method

.method private d(II)V
    .locals 9
    .param p1, "widthItems"    # I
    .param p2, "widthLabel"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x41700000    # 15.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 635
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_6

    .line 636
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->t:Z

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->k:Landroid/text/TextPaint;

    if-lez p2, :cond_5

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_0
    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    .line 641
    :goto_1
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->t:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->o:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->o:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_9

    .line 642
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getAdapter()Lavv;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getAdapter()Lavv;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    invoke-interface {v0, v1}, Lavv;->a(I)Ljava/lang/String;

    move-result-object v8

    .line 643
    .local v8, "text":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    if-eqz v8, :cond_7

    move-object v1, v8

    :goto_2
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->l:Landroid/text/TextPaint;

    if-lez p2, :cond_8

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_3
    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->o:Landroid/text/StaticLayout;

    .line 650
    .end local v8    # "text":Ljava/lang/String;
    :goto_4
    if-lez p2, :cond_4

    .line 651
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->n:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->n:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p2, :cond_b

    .line 652
    :cond_3
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->l:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->n:Landroid/text/StaticLayout;

    .line 657
    :cond_4
    :goto_5
    return-void

    .line 636
    :cond_5
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 638
    :cond_6
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_1

    .line 643
    .restart local v8    # "text":Ljava/lang/String;
    :cond_7
    const-string/jumbo v1, ""

    goto :goto_2

    :cond_8
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_3

    .line 644
    .end local v8    # "text":Ljava/lang/String;
    :cond_9
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->t:Z

    if-eqz v0, :cond_a

    .line 645
    iput-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->o:Landroid/text/StaticLayout;

    goto :goto_4

    .line 647
    :cond_a
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->o:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_4

    .line 654
    :cond_b
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->n:Landroid/text/StaticLayout;

    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_5
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 778
    .local v0, "center":I
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 779
    .local v1, "offset":I
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->q:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    sub-int v4, v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getWidth()I

    move-result v5

    add-int v6, v0, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 780
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 781
    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h()V

    return-void
.end method

.method static synthetic e(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    .prologue
    .line 53
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    const v3, 0x3dcccccd    # 0.1f

    .line 416
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->k:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->k:Landroid/text/TextPaint;

    .line 419
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->k:Landroid/text/TextPaint;

    sget v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->l:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    .line 423
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->l:Landroid/text/TextPaint;

    .line 425
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->l:Landroid/text/TextPaint;

    sget v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 426
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->l:Landroid/text/TextPaint;

    const/4 v1, 0x0

    const v2, -0x3f3f40

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->q:Landroid/graphics/drawable/Drawable;

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->r:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_3

    .line 434
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->r:Landroid/graphics/drawable/GradientDrawable;

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->s:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_4

    .line 438
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->s:Landroid/graphics/drawable/GradientDrawable;

    .line 441
    :cond_4
    const v0, 0x7f0203e0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->setBackgroundResource(I)V

    .line 442
    return-void
.end method

.method static synthetic f(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getItemHeight()I

    move-result v0

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 889
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->D:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 890
    return-void
.end method

.method static synthetic g(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    .prologue
    .line 53
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    return v0
.end method

.method private g()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 923
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    if-nez v0, :cond_0

    .line 943
    :goto_0
    return-void

    .line 927
    :cond_0
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->x:I

    .line 928
    iget v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    .line 929
    .local v4, "offset":I
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getItemHeight()I

    move-result v6

    .line 930
    .local v6, "itemHeight":I
    if-lez v4, :cond_4

    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v2}, Lavv;->a()I

    move-result v2

    if-ge v0, v2, :cond_3

    move v7, v8

    .line 931
    .local v7, "needToIncrease":Z
    :goto_1
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a:Z

    if-nez v0, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    int-to-float v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v6

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 932
    if-gez v4, :cond_6

    .line 933
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v4, v0

    .line 937
    :cond_2
    :goto_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v8, :cond_7

    .line 938
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->w:Landroid/widget/Scroller;

    const/16 v5, 0x190

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 939
    invoke-direct {p0, v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->setNextMessage(I)V

    goto :goto_0

    .end local v7    # "needToIncrease":Z
    :cond_3
    move v7, v1

    .line 930
    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    if-lez v0, :cond_5

    move v7, v8

    goto :goto_1

    :cond_5
    move v7, v1

    goto :goto_1

    .line 935
    .restart local v7    # "needToIncrease":Z
    :cond_6
    add-int/lit8 v0, v6, 0x1

    sub-int/2addr v4, v0

    goto :goto_2

    .line 941
    :cond_7
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->c()V

    goto :goto_0
.end method

.method private getItemHeight()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 547
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->j:I

    if-eqz v0, :cond_0

    .line 548
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->j:I

    .line 554
    :goto_0
    return v0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 550
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->j:I

    .line 551
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->j:I

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getMaxTextLength()I
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 519
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getAdapter()Lavv;

    move-result-object v0

    .line 520
    .local v0, "adapter":Lavv;
    if-nez v0, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v6

    .line 524
    :cond_1
    invoke-interface {v0}, Lavv;->b()I

    move-result v1

    .line 525
    .local v1, "adapterLength":I
    if-lez v1, :cond_2

    move v6, v1

    .line 526
    goto :goto_0

    .line 529
    :cond_2
    const/4 v4, 0x0

    .line 530
    .local v4, "maxText":Ljava/lang/String;
    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i:I

    div-int/lit8 v2, v7, 0x2

    .line 531
    .local v2, "addItems":I
    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    sub-int/2addr v7, v2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, "i":I
    :goto_1
    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    iget v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i:I

    add-int/2addr v7, v8

    invoke-interface {v0}, Lavv;->a()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 532
    invoke-interface {v0, v3}, Lavv;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 534
    :cond_3
    move-object v4, v5

    .line 531
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 538
    .end local v5    # "text":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_0
.end method

.method static synthetic h(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Lavv;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 949
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->t:Z

    if-nez v0, :cond_0

    .line 950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->t:Z

    .line 951
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a()V

    .line 953
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    .prologue
    .line 53
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->x:I

    return v0
.end method

.method static synthetic j(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->D:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g()V

    return-void
.end method

.method private setNextMessage(I)V
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f()V

    .line 881
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->D:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 882
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavr;

    .line 310
    .local v0, "listener":Lavr;
    invoke-interface {v0, p0}, Lavr;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V

    goto :goto_0

    .line 312
    .end local v0    # "listener":Lavr;
    :cond_0
    return-void
.end method

.method protected a(II)V
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 280
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavq;

    .line 281
    .local v0, "listener":Lavq;
    invoke-interface {v0, p0, p1, p2}, Lavq;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;II)V

    goto :goto_0

    .line 283
    .end local v0    # "listener":Lavq;
    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 341
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v1}, Lavv;->a()I

    move-result v1

    if-nez v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v1}, Lavv;->a()I

    move-result v1

    if-lt p1, v1, :cond_4

    .line 345
    :cond_2
    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a:Z

    if-eqz v1, :cond_0

    .line 346
    :goto_1
    if-gez p1, :cond_3

    .line 347
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v1}, Lavv;->a()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    .line 349
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    invoke-interface {v1}, Lavv;->a()I

    move-result v1

    rem-int/2addr p1, v1

    .line 354
    :cond_4
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    if-eq p1, v1, :cond_0

    .line 355
    if-eqz p2, :cond_5

    .line 356
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    sub-int v1, p1, v1

    const/16 v2, 0x190

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b(II)V

    goto :goto_0

    .line 358
    :cond_5
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->d()V

    .line 360
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    .line 361
    .local v0, "old":I
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    .line 363
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a(II)V

    .line 365
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->invalidate()V

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 318
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavr;

    .line 319
    .local v0, "listener":Lavr;
    invoke-interface {v0, p0}, Lavr;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V

    goto :goto_0

    .line 321
    .end local v0    # "listener":Lavr;
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 7
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    const/4 v1, 0x0

    .line 976
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->w:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 978
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->u:I

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->x:I

    .line 979
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getItemHeight()I

    move-result v0

    mul-int v6, p1, v0

    .line 981
    .local v6, "offset":I
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->w:Landroid/widget/Scroller;

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->x:I

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->x:I

    sub-int v4, v6, v3

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 982
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->setNextMessage(I)V

    .line 984
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h()V

    .line 985
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->t:Z

    if-eqz v0, :cond_0

    .line 960
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b()V

    .line 961
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->t:Z

    .line 963
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->d()V

    .line 964
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->invalidate()V

    .line 965
    return-void
.end method

.method public getAdapter()Lavv;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 684
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 686
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 687
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    if-nez v0, :cond_2

    .line 688
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->c(II)I

    .line 694
    :cond_0
    :goto_0
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    if-lez v0, :cond_1

    .line 695
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 697
    const/high16 v0, 0x41200000    # 10.0f

    sget v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->d:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 698
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->c(Landroid/graphics/Canvas;)V

    .line 699
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b(Landroid/graphics/Canvas;)V

    .line 700
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 703
    :cond_1
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->d(Landroid/graphics/Canvas;)V

    .line 704
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a(Landroid/graphics/Canvas;)V

    .line 705
    return-void

    .line 690
    :cond_2
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g:I

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h:I

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->d(II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 661
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 662
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 663
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 664
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 666
    .local v2, "heightSize":I
    invoke-direct {p0, v5, v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->c(II)I

    move-result v3

    .line 669
    .local v3, "width":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_1

    .line 670
    move v0, v2

    .line 679
    .local v0, "height":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->setMeasuredDimension(II)V

    .line 680
    return-void

    .line 672
    .end local v0    # "height":I
    :cond_1
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->m:Landroid/text/StaticLayout;

    invoke-direct {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a(Landroid/text/Layout;)I

    move-result v0

    .line 674
    .restart local v0    # "height":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 675
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 785
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getAdapter()Lavv;

    move-result-object v0

    .line 786
    .local v0, "adapter":Lavv;
    if-nez v0, :cond_1

    .line 793
    :cond_0
    :goto_0
    return v2

    .line 790
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->v:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 791
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g()V

    goto :goto_0
.end method

.method public setAdapter(Lavv;)V
    .locals 0
    .param p1, "adapter"    # Lavv;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e:Lavv;

    .line 193
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->d()V

    .line 194
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->invalidate()V

    .line 195
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a(IZ)V

    .line 378
    return-void
.end method

.method public setCyclic(Z)V
    .locals 0
    .param p1, "isCyclic"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a:Z

    .line 399
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->invalidate()V

    .line 400
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->d()V

    .line 401
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->w:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 205
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->w:Landroid/widget/Scroller;

    .line 206
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "newLabel"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->p:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->p:Ljava/lang/String;

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->n:Landroid/text/StaticLayout;

    .line 247
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->invalidate()V

    .line 249
    :cond_1
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i:I

    .line 225
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->invalidate()V

    .line 226
    return-void
.end method
