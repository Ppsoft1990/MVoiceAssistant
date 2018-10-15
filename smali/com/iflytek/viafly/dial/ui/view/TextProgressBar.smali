.class public Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;
.super Lcom/iflytek/base/skin/customView/XProgressBar;
.source "TextProgressBar.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Rect;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XProgressBar;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/16 v1, 0xc

    iput v1, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->d:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 56
    .local v0, "density":F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->c:Landroid/graphics/Rect;

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->b:Landroid/graphics/Paint;

    .line 58
    iget-object v1, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->b:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v1, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->b:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v1, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->d:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 69
    iput-object p1, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->a:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->invalidate()V

    .line 72
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/iflytek/base/skin/customView/XProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    iget-object v2, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->a:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->c:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 44
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->c:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int v0, v2, v3

    .line 45
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->c:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int v1, v2, v3

    .line 46
    .local v1, "y":I
    iget-object v2, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->a:Ljava/lang/String;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 42
    .end local v0    # "x":I
    .end local v1    # "y":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/iflytek/base/skin/customView/XProgressBar;->setProgress(I)V

    .line 38
    return-void
.end method
