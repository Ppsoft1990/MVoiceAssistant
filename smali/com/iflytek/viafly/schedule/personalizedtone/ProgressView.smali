.class public Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;
.super Landroid/view/View;
.source "ProgressView.java"


# instance fields
.field a:Landroid/graphics/Paint;

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->b:F

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->a:Landroid/graphics/Paint;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->b:F

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->a:Landroid/graphics/Paint;

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->getMeasuredWidth()I

    move-result v1

    .line 37
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->getMeasuredHeight()I

    move-result v0

    .line 38
    .local v0, "height":I
    const-string/jumbo v2, "ProgressView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDraw() width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    if-gtz v1, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 42
    :cond_0
    if-gtz v0, :cond_1

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->a:Landroid/graphics/Paint;

    const-string/jumbo v3, "#4C54e0b7"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    new-instance v2, Landroid/graphics/Rect;

    int-to-float v3, v1

    iget v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->b:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v5, v5, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 51
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->a:Landroid/graphics/Paint;

    const-string/jumbo v3, "#59000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    new-instance v2, Landroid/graphics/Rect;

    int-to-float v3, v1

    iget v4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->b:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v3, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 56
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "percent"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->b:F

    .line 60
    const-string/jumbo v0, "ProgressView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProgress()| percent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->invalidate()V

    .line 62
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->forceLayout()V

    .line 63
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->requestLayout()V

    .line 64
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->requestFocus()Z

    .line 65
    return-void
.end method
