.class public Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;
.super Landroid/view/View;
.source "GraffitiChooseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;
    }
.end annotation


# instance fields
.field private A:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;

.field private B:I

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxs;",
            ">;"
        }
    .end annotation
.end field

.field private D:Landroid/graphics/Bitmap;

.field private E:Landroid/graphics/Canvas;

.field private F:Landroid/graphics/Paint;

.field private G:Landroid/graphics/Paint;

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:F

.field private N:F

.field private O:F

.field private P:F

.field private Q:I

.field private R:Ljava/lang/Runnable;

.field a:Z

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Canvas;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Canvas;

.field private g:F

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:Landroid/graphics/Path;

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:Z

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Landroid/os/Handler;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    .line 50
    iput v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    iput v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    .line 52
    iput-boolean v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->r:Z

    .line 60
    iput-boolean v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->z:Z

    .line 62
    iput v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->B:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->C:Ljava/util/List;

    .line 131
    iput-boolean v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a:Z

    .line 623
    new-instance v0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;-><init>(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->R:Ljava/lang/Runnable;

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 76
    :cond_0
    iput-object p2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Bitmap is null!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a()V

    .line 81
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    invoke-static {p1, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->B:I

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    .prologue
    .line 31
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    return v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 316
    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->j:F

    iget v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    .line 317
    .local v0, "left":F
    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->k:F

    iget v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v3, v4

    div-float v1, v2, v3

    .line 319
    .local v1, "top":F
    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    iget v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 320
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 321
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1, v7, v7, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 324
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 326
    iget-boolean v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->r:Z

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->l:Landroid/graphics/Path;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(Landroid/graphics/Path;)V

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 330
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->f()V

    .line 331
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->D:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 332
    return-void
.end method

.method private a(Landroid/graphics/Path;)V
    .locals 4
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->m:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 336
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->f:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 338
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->f:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 339
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 241
    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->C:Ljava/util/List;

    if-nez v6, :cond_1

    .line 281
    :cond_0
    return-void

    .line 245
    :cond_1
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->B:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    div-float/2addr v6, v7

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    div-float/2addr v6, v7

    float-to-int v2, v6

    .line 246
    .local v2, "r":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int v1, v6, v2

    .line 247
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v5, v6, v2

    .line 248
    .local v5, "top":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    add-int v4, v6, v2

    .line 249
    .local v4, "right":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    add-int v0, v6, v2

    .line 251
    .local v0, "bottom":I
    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->C:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laxs;

    .line 252
    .local v3, "result":Laxs;
    invoke-virtual {v3}, Laxs;->b()Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v8, v1

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v5

    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 253
    invoke-virtual {v3}, Laxs;->c()Z

    move-result v7

    if-nez v7, :cond_2

    .line 254
    const-string/jumbo v7, "GraffitiChooseView"

    const-string/jumbo v8, "left_top"

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v3, v10}, Laxs;->a(Z)V

    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual {v3}, Laxs;->b()Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v8, v4

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v5

    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 260
    invoke-virtual {v3}, Laxs;->c()Z

    move-result v7

    if-nez v7, :cond_2

    .line 261
    const-string/jumbo v7, "GraffitiChooseView"

    const-string/jumbo v8, "right_top"

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v3, v10}, Laxs;->a(Z)V

    goto :goto_0

    .line 266
    :cond_4
    invoke-virtual {v3}, Laxs;->b()Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v8, v1

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v0

    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 267
    invoke-virtual {v3}, Laxs;->c()Z

    move-result v7

    if-nez v7, :cond_2

    .line 268
    const-string/jumbo v7, "GraffitiChooseView"

    const-string/jumbo v8, "left_bottom"

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v3, v10}, Laxs;->a(Z)V

    goto/16 :goto_0

    .line 273
    :cond_5
    invoke-virtual {v3}, Laxs;->b()Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v8, v4

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v0

    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 274
    invoke-virtual {v3}, Laxs;->c()Z

    move-result v7

    if-nez v7, :cond_2

    .line 275
    const-string/jumbo v7, "GraffitiChooseView"

    const-string/jumbo v8, "right_bottom"

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v3, v10}, Laxs;->a(Z)V

    goto/16 :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 494
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 495
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 496
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method static synthetic b(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    .prologue
    .line 31
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    return v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    .prologue
    .line 31
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->Q:I

    return v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)I
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    .prologue
    .line 31
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->Q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->Q:I

    return v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    .prologue
    .line 31
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->O:F

    return v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 284
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 285
    .local v3, "w":I
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 286
    .local v0, "h":I
    int-to-float v4, v3

    mul-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 287
    .local v2, "nw":F
    int-to-float v4, v0

    mul-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 288
    .local v1, "nh":F
    cmpl-float v4, v2, v1

    if-lez v4, :cond_0

    .line 289
    div-float v4, v6, v2

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    .line 290
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->i:I

    .line 291
    int-to-float v4, v0

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->h:I

    .line 298
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->i:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v7

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->j:F

    .line 299
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->h:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v7

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->k:F

    .line 300
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->m:Landroid/graphics/Paint;

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->B:I

    int-to-float v5, v5

    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 301
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g()V

    .line 302
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->invalidate()V

    .line 303
    return-void

    .line 293
    :cond_0
    div-float v4, v6, v1

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    .line 294
    int-to-float v4, v3

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->i:I

    .line 295
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->h:I

    goto :goto_0
.end method

.method static synthetic f(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    .prologue
    .line 31
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->P:F

    return v0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 342
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->C:Ljava/util/List;

    if-nez v1, :cond_1

    .line 352
    :cond_0
    return-void

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxs;

    .line 346
    .local v0, "result":Laxs;
    invoke-virtual {v0}, Laxs;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->E:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Laxs;->b()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->G:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->E:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Laxs;->b()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->F:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->y:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c:Landroid/graphics/Bitmap;

    .line 389
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e:Landroid/graphics/Bitmap;

    .line 390
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->D:Landroid/graphics/Bitmap;

    .line 391
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->d:Landroid/graphics/Canvas;

    .line 392
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->f:Landroid/graphics/Canvas;

    .line 393
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->f:Landroid/graphics/Canvas;

    const-string/jumbo v1, "#55000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 394
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->D:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->E:Landroid/graphics/Canvas;

    .line 395
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->f()V

    .line 396
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 435
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->i:I

    int-to-float v0, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 436
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->j:F

    add-float/2addr v0, v1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 437
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->j:F

    neg-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    .line 448
    :cond_0
    :goto_0
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 449
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->k:F

    add-float/2addr v0, v1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    .line 450
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->k:F

    neg-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    .line 461
    :cond_1
    :goto_1
    return-void

    .line 438
    :cond_2
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->j:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->j:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    goto :goto_0

    .line 442
    :cond_3
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->j:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 443
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->j:F

    neg-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    goto :goto_0

    .line 444
    :cond_4
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->j:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->j:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    goto :goto_0

    .line 451
    :cond_5
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->k:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->k:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    goto/16 :goto_1

    .line 455
    :cond_6
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->k:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    .line 456
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->k:F

    neg-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    goto/16 :goto_1

    .line 457
    :cond_7
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->k:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 458
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->k:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    goto/16 :goto_1
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 613
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->O:F

    .line 614
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->P:F

    .line 615
    const-string/jumbo v0, "Runnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoMove"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mTempY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->P:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mTempX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->O:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 617
    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->Q:I

    .line 618
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->R:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 619
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->setEditable(Z)V

    .line 621
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 3
    .param p1, "touchX"    # F

    .prologue
    .line 358
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->j:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public final a(FF)F
    .locals 3
    .param p1, "touchX"    # F
    .param p2, "graffitiX"    # F

    .prologue
    .line 377
    neg-float v0, p2

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->j:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public a()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x1

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->m:Landroid/graphics/Paint;

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->m:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->F:Landroid/graphics/Paint;

    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->F:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->F:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->F:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->F:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->G:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->G:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->G:Landroid/graphics/Paint;

    const-string/jumbo v1, "#FF135BD2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->y:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method public final b(F)F
    .locals 3
    .param p1, "touchY"    # F

    .prologue
    .line 365
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->k:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public final b(FF)F
    .locals 3
    .param p1, "touchY"    # F
    .param p2, "graffitiY"    # F

    .prologue
    .line 381
    neg-float v0, p2

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->k:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 399
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->C:Ljava/util/List;

    if-nez v1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxs;

    .line 403
    .local v0, "result":Laxs;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Laxs;->a(Z)V

    goto :goto_1

    .line 405
    .end local v0    # "result":Laxs;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->D:Landroid/graphics/Bitmap;

    .line 406
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->D:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->E:Landroid/graphics/Canvas;

    .line 407
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e:Landroid/graphics/Bitmap;

    .line 408
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->f:Landroid/graphics/Canvas;

    .line 409
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->f:Landroid/graphics/Canvas;

    const-string/jumbo v2, "#55000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 410
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->l:Landroid/graphics/Path;

    .line 411
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->postInvalidate()V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 415
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->C:Ljava/util/List;

    if-nez v1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxs;

    .line 419
    .local v0, "result":Laxs;
    invoke-virtual {v0, v3}, Laxs;->a(Z)V

    goto :goto_1

    .line 421
    .end local v0    # "result":Laxs;
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->postInvalidate()V

    .line 422
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->A:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->A:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;

    invoke-interface {v1, v3}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;->a(Z)V

    goto :goto_0
.end method

.method public c(FF)V
    .locals 0
    .param p1, "transX"    # F
    .param p2, "transY"    # F

    .prologue
    .line 480
    iput p1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    .line 481
    iput p2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    .line 482
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->h()V

    .line 483
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->invalidate()V

    .line 484
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 658
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 660
    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 664
    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c:Landroid/graphics/Bitmap;

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 667
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 668
    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e:Landroid/graphics/Bitmap;

    .line 670
    :cond_2
    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->y:Landroid/os/Handler;

    .line 671
    return-void
.end method

.method public getBorders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    const/16 v4, 0xc8

    const/16 v3, 0x64

    .line 512
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 524
    .local v0, "border":[I
    const/4 v2, 0x0

    aput v3, v0, v2

    .line 525
    const/4 v2, 0x1

    aput v3, v0, v2

    .line 526
    const/4 v2, 0x2

    aput v4, v0, v2

    .line 527
    const/4 v2, 0x3

    aput v4, v0, v2

    .line 528
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    return-object v1
.end method

.method public getRecognizeResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laxs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->C:Ljava/util/List;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    return v0
.end method

.method public getTransX()F
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->p:F

    return v0
.end method

.method public getTransY()F
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->q:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 311
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(Landroid/graphics/Canvas;)V

    .line 312
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 121
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e()V

    .line 122
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x40600000    # 3.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 134
    iget-boolean v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->z:Z

    if-nez v4, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v3

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getScale()F

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    .line 139
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(Landroid/view/MotionEvent;)V

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 237
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 142
    :pswitch_1
    iput v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->n:I

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->u:F

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->w:F

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->s:F

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->v:F

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->x:F

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->t:F

    .line 146
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->l:Landroid/graphics/Path;

    .line 147
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->l:Landroid/graphics/Path;

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->s:F

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(F)F

    move-result v5

    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->t:F

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(F)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 148
    iput-boolean v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->r:Z

    .line 149
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->invalidate()V

    .line 152
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->A:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;

    if-eqz v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->A:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;

    invoke-interface {v4}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;->a()V

    goto :goto_0

    .line 158
    :pswitch_2
    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->n:I

    .line 159
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->w:F

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->u:F

    .line 160
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->x:F

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->v:F

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->w:F

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->x:F

    .line 163
    iput-boolean v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a:Z

    .line 164
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->i()V

    .line 171
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->A:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;

    if-eqz v4, :cond_2

    .line 172
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->A:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;

    invoke-interface {v4, v6}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;->a(Z)V

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->invalidate()V

    goto :goto_0

    .line 177
    :pswitch_3
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->n:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_5

    iget-boolean v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a:Z

    if-nez v4, :cond_5

    .line 178
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->w:F

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->u:F

    .line 179
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->x:F

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->v:F

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->w:F

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->x:F

    .line 182
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->l:Landroid/graphics/Path;

    if-nez v4, :cond_3

    .line 183
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->l:Landroid/graphics/Path;

    .line 184
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->l:Landroid/graphics/Path;

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->u:F

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(F)F

    move-result v5

    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->v:F

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(F)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 186
    :cond_3
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->l:Landroid/graphics/Path;

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->u:F

    .line 187
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(F)F

    move-result v5

    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->v:F

    .line 188
    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(F)F

    move-result v6

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->w:F

    iget v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->u:F

    add-float/2addr v7, v8

    div-float/2addr v7, v10

    .line 189
    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(F)F

    move-result v7

    iget v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->x:F

    iget v9, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->v:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    .line 190
    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(F)F

    move-result v8

    .line 186
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 191
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->l:Landroid/graphics/Path;

    invoke-direct {p0, v4}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(Landroid/graphics/Path;)V

    .line 217
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->invalidate()V

    goto/16 :goto_0

    .line 197
    :cond_5
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->n:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 198
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(Landroid/view/MotionEvent;)F

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->J:F

    .line 199
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->J:F

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->I:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 200
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->J:F

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->I:F

    div-float v0, v4, v5

    .line 201
    .local v0, "scale":F
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->H:F

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    .line 203
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_6

    .line 204
    iput v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    .line 206
    :cond_6
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_7

    .line 207
    iput v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    .line 210
    :cond_7
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->setScale(F)V

    .line 212
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->M:F

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->K:F

    invoke-virtual {p0, v4, v5}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(FF)F

    move-result v1

    .line 213
    .local v1, "transX":F
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->N:F

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->L:F

    invoke-virtual {p0, v4, v5}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(FF)F

    move-result v2

    .line 214
    .local v2, "transY":F
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c(FF)V

    goto :goto_1

    .line 220
    .end local v0    # "scale":F
    .end local v1    # "transX":F
    .end local v2    # "transY":F
    :pswitch_4
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->n:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->n:I

    .line 221
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->invalidate()V

    goto/16 :goto_0

    .line 224
    :pswitch_5
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->n:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->n:I

    .line 225
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->n:I

    if-le v4, v3, :cond_8

    .line 226
    iput-boolean v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a:Z

    .line 228
    :cond_8
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getScale()F

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->H:F

    .line 229
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(Landroid/view/MotionEvent;)F

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->I:F

    .line 230
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->M:F

    .line 231
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->N:F

    .line 232
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->M:F

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(F)F

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->K:F

    .line 233
    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->N:F

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(F)F

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->L:F

    .line 234
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->invalidate()V

    goto/16 :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public setEditable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 645
    iput-boolean p1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->z:Z

    .line 646
    return-void
.end method

.method public setGraffitiStateListener(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->A:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;

    .line 655
    return-void
.end method

.method public setRecognizeResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "mRecognizeResultList":Ljava/util/List;, "Ljava/util/List<Laxs;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->C:Ljava/util/List;

    .line 111
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->postInvalidate()V

    .line 112
    return-void
.end method

.method public setScale(F)V
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 469
    iput p1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    .line 470
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->B:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->o:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 471
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->h()V

    .line 472
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->invalidate()V

    .line 473
    return-void
.end method
