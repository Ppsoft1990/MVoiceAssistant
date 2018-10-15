.class public Lcom/iflytek/viafly/ui/view/GridLinesView;
.super Landroid/view/View;
.source "GridLinesView.java"


# static fields
.field private static final mXLineCount:I = 0x2

.field private static final mYLineCount:I = 0x2


# instance fields
.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/ui/view/GridLinesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/viafly/ui/view/GridLinesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mPaint:Landroid/graphics/Paint;

    .line 36
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/GridLinesView;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/GridLinesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/GridLinesView;->setBackgroundColor(I)V

    .line 45
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/GridLinesView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mWidth:I

    .line 51
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/GridLinesView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/GridLinesView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/GridLinesView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mHeight:I

    .line 52
    const-string/jumbo v0, "GridSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWidth:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " | mHeight:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " | getPaddingTop() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/GridLinesView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget v0, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mWidth:I

    div-int/lit8 v8, v0, 0x3

    .line 54
    .local v8, "x":I
    iget v0, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mHeight:I

    div-int/lit8 v9, v0, 0x3

    .line 55
    .local v9, "y":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, v10, :cond_0

    .line 56
    mul-int v0, v8, v7

    int-to-float v1, v0

    mul-int v0, v8, v7

    int-to-float v3, v0

    iget v0, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mHeight:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/GridLinesView;->getPaddingTop()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/GridLinesView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 55
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v7, 0x1

    :goto_1
    if-gt v7, v10, :cond_1

    .line 59
    mul-int v0, v9, v7

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/GridLinesView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mWidth:I

    int-to-float v4, v0

    mul-int v0, v9, v7

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/GridLinesView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/iflytek/viafly/ui/view/GridLinesView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 58
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 61
    :cond_1
    return-void
.end method
