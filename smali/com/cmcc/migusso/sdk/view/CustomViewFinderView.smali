.class public Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;
.super Lme/dm7/barcodescanner/core/ViewFinderView;
.source "CustomViewFinderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/view/CustomViewFinderView$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/graphics/Bitmap;

.field public e:Landroid/graphics/Bitmap;

.field public f:Landroid/graphics/Bitmap;

.field public g:Landroid/graphics/Bitmap;

.field public h:Landroid/graphics/Bitmap;

.field public i:Lcom/cmcc/migusso/sdk/view/CustomViewFinderView$a;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:F

.field private n:Ljava/lang/String;

.field private o:Landroid/graphics/Rect;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->l:Landroid/graphics/Paint;

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->m:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->o:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lme/dm7/barcodescanner/core/ViewFinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->l:Landroid/graphics/Paint;

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->m:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->o:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/cmcc/util/ResourceUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-object v0
.end method

.method private a()V
    .locals 2

    const-string/jumbo v0, "sso_str_put_qrcode_in_box"

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->n:Ljava/lang/String;

    const-string/jumbo v0, "sso_str_open_flush"

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->b:Ljava/lang/String;

    const-string/jumbo v0, "sso_str_close_flush"

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->c:Ljava/lang/String;

    const-string/jumbo v0, "icon_lamp_dark"

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->e:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "icon_lamp_bright"

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->f:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "icon_line"

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->g:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "icon_border"

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->h:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->f:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "dimen_5dp"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->p:I

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "dimen_10dp"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->q:I

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "dimen_18dp"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->r:I

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "dimen_190dp"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->s:I

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "dimen_245dp"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->t:I

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "dimen_248dp"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->u:I

    const-string/jumbo v0, "dimen_15sp"

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->a(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->k:Landroid/graphics/Paint;

    const-string/jumbo v0, "dimen_14sp"

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->a(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->l:Landroid/graphics/Paint;

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/cmcc/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public drawLaser(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->q:I

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->m:F

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->m:F

    iget v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->m:F

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    shl-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    int-to-float v3, v0

    iput v3, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->m:F

    :cond_0
    iget-object v3, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->g:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->a(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->invalidate(IIII)V

    return-void
.end method

.method public drawViewFinderBorder(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->h:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->a(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->h:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->k:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->p:I

    iget v3, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->r:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    sub-int v3, v4, v3

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->n:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    int-to-float v3, v3

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->q:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->d:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->a(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->l:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    iput v2, v3, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->o:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->q:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->o:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v1, v4, v1

    add-int/2addr v1, v3

    iget v3, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->q:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->i:Lcom/cmcc/migusso/sdk/view/CustomViewFinderView$a;

    iget-object v1, v0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView$a;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;->b(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    move-result-object v1

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView$a;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;->b(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getFlash()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setFlash(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->f:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->e:Landroid/graphics/Bitmap;

    :goto_1
    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->b:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->f:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->c:Ljava/lang/String;

    goto :goto_2
.end method

.method public declared-synchronized updateFramingRect()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->updateFramingRect()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->h:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->s:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->t:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;->u:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
