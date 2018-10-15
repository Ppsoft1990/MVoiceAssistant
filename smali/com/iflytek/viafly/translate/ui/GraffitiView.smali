.class public Lcom/iflytek/viafly/translate/ui/GraffitiView;
.super Landroid/view/View;
.source "GraffitiView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/translate/ui/GraffitiView$a;
    }
.end annotation


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Z

.field private C:Lcom/iflytek/viafly/translate/ui/GraffitiView$a;

.field private D:I

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:F

.field private N:I

.field private O:Ljava/lang/Runnable;

.field private P:Z

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

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Float;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private a(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 371
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 372
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 373
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

.method private a()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 208
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 209
    .local v3, "w":I
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 210
    .local v0, "h":I
    int-to-float v4, v3

    mul-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 211
    .local v2, "nw":F
    int-to-float v4, v0

    mul-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 212
    .local v1, "nh":F
    cmpl-float v4, v2, v1

    if-lez v4, :cond_0

    .line 213
    div-float v4, v6, v2

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    .line 214
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->i:I

    .line 215
    int-to-float v4, v0

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->h:I

    .line 222
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->i:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v7

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->j:F

    .line 223
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->h:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v7

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->k:F

    .line 224
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->m:Landroid/graphics/Paint;

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->D:I

    int-to-float v5, v5

    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 225
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b()V

    .line 226
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->invalidate()V

    .line 227
    return-void

    .line 217
    :cond_0
    div-float v4, v6, v1

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    .line 218
    int-to-float v4, v3

    iget v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->i:I

    .line 219
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->h:I

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 240
    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->j:F

    iget v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    .line 241
    .local v0, "left":F
    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->k:F

    iget v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v3, v4

    div-float v1, v2, v3

    .line 243
    .local v1, "top":F
    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    iget v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    iget v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 244
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 248
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v5, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 250
    iget-boolean v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->r:Z

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->l:Landroid/graphics/Path;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a(Landroid/graphics/Path;)V

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v5, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 254
    return-void
.end method

.method private a(Landroid/graphics/Path;)V
    .locals 4
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->m:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 258
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->f:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 260
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->f:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 261
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->c:Landroid/graphics/Bitmap;

    .line 298
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->e:Landroid/graphics/Bitmap;

    .line 299
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->d:Landroid/graphics/Canvas;

    .line 300
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->e:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->f:Landroid/graphics/Canvas;

    .line 301
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->f:Landroid/graphics/Canvas;

    const-string/jumbo v1, "#55000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 302
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 312
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->i:I

    int-to-float v0, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 313
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->j:F

    add-float/2addr v0, v1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 314
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->j:F

    neg-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    .line 325
    :cond_0
    :goto_0
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 326
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->k:F

    add-float/2addr v0, v1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    .line 327
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->k:F

    neg-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    .line 338
    :cond_1
    :goto_1
    return-void

    .line 315
    :cond_2
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->j:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->j:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    goto :goto_0

    .line 319
    :cond_3
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->j:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 320
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->j:F

    neg-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    goto :goto_0

    .line 321
    :cond_4
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->j:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->j:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    goto :goto_0

    .line 328
    :cond_5
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->k:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->k:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    goto/16 :goto_1

    .line 332
    :cond_6
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->k:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    .line 333
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->k:F

    neg-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    goto/16 :goto_1

    .line 334
    :cond_7
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->k:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->k:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    goto/16 :goto_1
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 484
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->L:F

    .line 485
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->M:F

    .line 486
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

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->M:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mTempX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->L:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 488
    iput v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->N:I

    .line 489
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->O:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 490
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->setEditable(Z)V

    .line 492
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 3
    .param p1, "touchX"    # F

    .prologue
    .line 267
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->j:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public final a(FF)F
    .locals 3
    .param p1, "touchX"    # F
    .param p2, "graffitiX"    # F

    .prologue
    .line 286
    neg-float v0, p2

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->j:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public a(Ljava/util/List;F)[I
    .locals 10
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;F)[I"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v7, 0x4

    new-array v0, v7, [I

    .line 409
    .local v0, "border":[I
    const/4 v2, -0x1

    .line 410
    .local v2, "left":I
    const/4 v6, -0x1

    .line 411
    .local v6, "top":I
    const/4 v5, -0x1

    .line 412
    .local v5, "right":I
    const/4 v1, -0x1

    .line 413
    .local v1, "bottom":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 414
    .local v3, "point":Landroid/graphics/Point;
    iget v8, v3, Landroid/graphics/Point;->x:I

    if-lt v8, v2, :cond_1

    const/4 v8, -0x1

    if-ne v8, v2, :cond_2

    .line 415
    :cond_1
    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 417
    :cond_2
    iget v8, v3, Landroid/graphics/Point;->x:I

    if-le v8, v5, :cond_3

    .line 418
    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 420
    :cond_3
    iget v8, v3, Landroid/graphics/Point;->y:I

    if-lt v8, v6, :cond_4

    const/4 v8, -0x1

    if-ne v8, v6, :cond_5

    .line 421
    :cond_4
    iget v6, v3, Landroid/graphics/Point;->y:I

    .line 423
    :cond_5
    iget v8, v3, Landroid/graphics/Point;->y:I

    if-le v8, v1, :cond_0

    .line 424
    iget v1, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 427
    .end local v3    # "point":Landroid/graphics/Point;
    :cond_6
    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->D:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    div-float/2addr v7, v8

    div-float/2addr v7, p2

    float-to-int v4, v7

    .line 428
    .local v4, "r":I
    const/4 v7, 0x0

    sub-int v8, v2, v4

    aput v8, v0, v7

    .line 429
    const/4 v7, 0x1

    sub-int v8, v6, v4

    aput v8, v0, v7

    .line 430
    const/4 v7, 0x2

    add-int v8, v5, v4

    aput v8, v0, v7

    .line 431
    const/4 v7, 0x3

    add-int v8, v1, v4

    aput v8, v0, v7

    .line 432
    const/4 v7, 0x0

    aget v7, v0, v7

    if-gez v7, :cond_b

    .line 433
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v0, v7

    .line 437
    :cond_7
    :goto_1
    const/4 v7, 0x1

    aget v7, v0, v7

    if-gez v7, :cond_c

    .line 438
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v0, v7

    .line 442
    :cond_8
    :goto_2
    const/4 v7, 0x2

    aget v7, v0, v7

    if-gez v7, :cond_d

    .line 443
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v0, v7

    .line 447
    :cond_9
    :goto_3
    const/4 v7, 0x3

    aget v7, v0, v7

    if-gez v7, :cond_e

    .line 448
    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v0, v7

    .line 452
    :cond_a
    :goto_4
    const-string/jumbo v7, "GraffitiView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "This Rect is left-top-point:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "],right-bottom-point:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    aget v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-object v0

    .line 434
    :cond_b
    const/4 v7, 0x0

    aget v7, v0, v7

    iget-object v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-lt v7, v8, :cond_7

    .line 435
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    aput v8, v0, v7

    goto :goto_1

    .line 439
    :cond_c
    const/4 v7, 0x1

    aget v7, v0, v7

    iget-object v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-lt v7, v8, :cond_8

    .line 440
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    aput v8, v0, v7

    goto/16 :goto_2

    .line 444
    :cond_d
    const/4 v7, 0x2

    aget v7, v0, v7

    iget-object v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-lt v7, v8, :cond_9

    .line 445
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    aput v8, v0, v7

    goto/16 :goto_3

    .line 449
    :cond_e
    const/4 v7, 0x3

    aget v7, v0, v7

    iget-object v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-lt v7, v8, :cond_a

    .line 450
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    aput v8, v0, v7

    goto/16 :goto_4
.end method

.method public final b(F)F
    .locals 3
    .param p1, "touchY"    # F

    .prologue
    .line 274
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->k:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public final b(FF)F
    .locals 3
    .param p1, "touchY"    # F
    .param p2, "graffitiY"    # F

    .prologue
    .line 290
    neg-float v0, p2

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->k:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public c(FF)V
    .locals 0
    .param p1, "transX"    # F
    .param p2, "transY"    # F

    .prologue
    .line 357
    iput p1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    .line 358
    iput p2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    .line 359
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->c()V

    .line 360
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->invalidate()V

    .line 361
    return-void
.end method

.method public getBorders()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 389
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<[I>;"
    iget-object v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->z:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 391
    .local v7, "timeKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 392
    .local v6, "timeKey":Ljava/lang/Long;
    iget-object v9, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->z:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 393
    .local v3, "pointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Ljava/util/List<Landroid/graphics/Point;>;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 394
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Float;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 395
    .local v1, "key":Ljava/lang/Float;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 396
    .local v4, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {p0, v4, v10}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a(Ljava/util/List;F)[I

    move-result-object v0

    .line 397
    .local v0, "border":[I
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    .end local v0    # "border":[I
    .end local v1    # "key":Ljava/lang/Float;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Float;>;"
    .end local v3    # "pointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Ljava/util/List<Landroid/graphics/Point;>;>;"
    .end local v4    # "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .end local v6    # "timeKey":Ljava/lang/Long;
    :cond_1
    return-object v5
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    return v0
.end method

.method public getTransX()F
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    return v0
.end method

.method public getTransY()F
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 235
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a(Landroid/graphics/Canvas;)V

    .line 236
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
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 95
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a()V

    .line 96
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x40600000    # 3.5f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 108
    iget-boolean v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->B:Z

    if-nez v6, :cond_0

    .line 203
    :goto_0
    return v5

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getScale()F

    move-result v6

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 203
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 114
    :pswitch_1
    iput v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->n:I

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->u:F

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->w:F

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->s:F

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->v:F

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->x:F

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->t:F

    .line 118
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->l:Landroid/graphics/Path;

    .line 119
    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->l:Landroid/graphics/Path;

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->s:F

    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a(F)F

    move-result v7

    iget v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->t:F

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b(F)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 120
    iput-boolean v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->r:Z

    .line 121
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->invalidate()V

    .line 122
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->y:Ljava/util/List;

    goto :goto_0

    .line 126
    :pswitch_2
    iput v12, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->n:I

    .line 127
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->w:F

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->u:F

    .line 128
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->x:F

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->v:F

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->w:F

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->x:F

    .line 131
    iput-boolean v12, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a:Z

    .line 132
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->d()V

    .line 133
    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->y:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 134
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v1, "pointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Ljava/util/List<Landroid/graphics/Point;>;>;"
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->y:Ljava/util/List;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->z:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v1    # "pointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Ljava/util/List<Landroid/graphics/Point;>;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->invalidate()V

    goto/16 :goto_0

    .line 141
    :pswitch_3
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->n:I

    const/4 v7, 0x2

    if-ge v6, v7, :cond_3

    iget-boolean v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a:Z

    if-nez v6, :cond_3

    .line 142
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->w:F

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->u:F

    .line 143
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->x:F

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->v:F

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->w:F

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->x:F

    .line 146
    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->l:Landroid/graphics/Path;

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->u:F

    .line 147
    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a(F)F

    move-result v7

    iget v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->v:F

    .line 148
    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b(F)F

    move-result v8

    iget v9, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->w:F

    iget v10, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->u:F

    add-float/2addr v9, v10

    div-float/2addr v9, v13

    .line 149
    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a(F)F

    move-result v9

    iget v10, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->x:F

    iget v11, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->v:F

    add-float/2addr v10, v11

    div-float/2addr v10, v13

    .line 150
    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b(F)F

    move-result v10

    .line 146
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 151
    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->l:Landroid/graphics/Path;

    invoke-direct {p0, v6}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a(Landroid/graphics/Path;)V

    .line 153
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 154
    .local v0, "point":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->j:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->p:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    iget v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v0, Landroid/graphics/Point;->x:I

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->k:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->q:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    iget v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v0, Landroid/graphics/Point;->y:I

    .line 156
    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->y:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->C:Lcom/iflytek/viafly/translate/ui/GraffitiView$a;

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->P:Z

    if-eqz v6, :cond_2

    .line 160
    iget-object v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->C:Lcom/iflytek/viafly/translate/ui/GraffitiView$a;

    invoke-interface {v6}, Lcom/iflytek/viafly/translate/ui/GraffitiView$a;->a()V

    .line 161
    iput-boolean v12, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->P:Z

    .line 183
    .end local v0    # "point":Landroid/graphics/Point;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->invalidate()V

    goto/16 :goto_0

    .line 163
    :cond_3
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->n:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 164
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->G:F

    .line 165
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->G:F

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->F:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 166
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->G:F

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->F:F

    div-float v2, v6, v7

    .line 167
    .local v2, "scale":F
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->E:F

    mul-float/2addr v6, v2

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    .line 169
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_4

    .line 170
    iput v9, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    .line 172
    :cond_4
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_5

    .line 173
    iput v8, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    .line 176
    :cond_5
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->setScale(F)V

    .line 178
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->J:F

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->H:F

    invoke-virtual {p0, v6, v7}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a(FF)F

    move-result v3

    .line 179
    .local v3, "transX":F
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->K:F

    iget v7, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->I:F

    invoke-virtual {p0, v6, v7}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b(FF)F

    move-result v4

    .line 180
    .local v4, "transY":F
    invoke-virtual {p0, v3, v4}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->c(FF)V

    goto :goto_1

    .line 186
    .end local v2    # "scale":F
    .end local v3    # "transX":F
    .end local v4    # "transY":F
    :pswitch_4
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->n:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->n:I

    .line 187
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->invalidate()V

    goto/16 :goto_0

    .line 190
    :pswitch_5
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->n:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->n:I

    .line 191
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->n:I

    if-le v6, v5, :cond_6

    .line 192
    iput-boolean v5, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a:Z

    .line 194
    :cond_6
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->getScale()F

    move-result v6

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->E:F

    .line 195
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->F:F

    .line 196
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v13

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->J:F

    .line 197
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v13

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->K:F

    .line 198
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->J:F

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->a(F)F

    move-result v6

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->H:F

    .line 199
    iget v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->K:F

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->b(F)F

    move-result v6

    iput v6, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->I:F

    .line 200
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->invalidate()V

    goto/16 :goto_0

    .line 112
    nop

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
    .line 516
    iput-boolean p1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->B:Z

    .line 517
    return-void
.end method

.method public setGraffitiStateListener(Lcom/iflytek/viafly/translate/ui/GraffitiView$a;)V
    .locals 1
    .param p1, "listener"    # Lcom/iflytek/viafly/translate/ui/GraffitiView$a;

    .prologue
    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->P:Z

    .line 526
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->C:Lcom/iflytek/viafly/translate/ui/GraffitiView$a;

    .line 527
    return-void
.end method

.method public setScale(F)V
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 346
    iput p1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    .line 347
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->D:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->g:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiView;->o:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 348
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->c()V

    .line 349
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/GraffitiView;->invalidate()V

    .line 350
    return-void
.end method
