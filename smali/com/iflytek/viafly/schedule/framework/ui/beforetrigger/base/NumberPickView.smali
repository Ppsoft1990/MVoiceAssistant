.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;
.super Landroid/view/View;
.source "NumberPickView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lavw;


# instance fields
.field public final a:I

.field public final b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lavw$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v3, 0x7f0701cc

    const/4 v2, -0x1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->j:I

    .line 31
    iput v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->k:I

    .line 33
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->a:I

    .line 34
    iput v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->b:I

    .line 49
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->f()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->h:I

    .line 51
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->h:I

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->f:F

    .line 53
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->f:F

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->g:F

    .line 54
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->g:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->i:I

    .line 56
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->setBackgroundColor(I)V

    .line 58
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->a(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->c:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->a(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->d:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->a(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->e:Landroid/graphics/Paint;

    .line 67
    return-void
.end method

.method private a(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 140
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->f:F

    div-float v2, p1, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 141
    .local v0, "m":I
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->g:F

    div-float v2, p2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 142
    .local v1, "n":I
    add-int/lit8 v2, v1, -0x1

    mul-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private a(Landroid/graphics/Canvas;ILandroid/graphics/Paint;F)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "radius"    # F

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 169
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->b(I)I

    move-result v2

    .line 170
    .local v2, "x":I
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->c(I)I

    move-result v3

    .line 171
    .local v3, "y":I
    int-to-float v4, v2

    sub-float/2addr v4, v6

    iget v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->f:F

    mul-float v0, v4, v5

    .line 172
    .local v0, "centreX":F
    int-to-float v4, v3

    sub-float/2addr v4, v6

    iget v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->g:F

    mul-float v1, v4, v5

    .line 173
    .local v1, "centreY":F
    invoke-virtual {p1, v0, v1, p4, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 174
    return-void
.end method

.method private a(Landroid/graphics/Canvas;ILandroid/graphics/Paint;Ljava/lang/String;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->b(I)I

    move-result v4

    .line 159
    .local v4, "x":I
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->c(I)I

    move-result v5

    .line 160
    .local v5, "y":I
    add-int/lit8 v6, v5, -0x1

    int-to-float v6, v6

    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->g:F

    mul-float v3, v6, v7

    .line 161
    .local v3, "top":F
    iget v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->g:F

    add-float v1, v3, v6

    .line 162
    .local v1, "bottom":F
    invoke-virtual {p0, v3, v1, p3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->a(FFLandroid/graphics/Paint;)F

    move-result v0

    .line 163
    .local v0, "baseline":F
    iget v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->f:F

    add-int/lit8 v7, v4, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->f:F

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {p0, v6, p3, p4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->a(FLandroid/graphics/Paint;Ljava/lang/String;)F

    move-result v2

    .line 164
    .local v2, "startX":F
    invoke-virtual {p1, p4, v2, v0, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 165
    return-void
.end method

.method private b(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 178
    rem-int/lit8 v0, p1, 0x7

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private c(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 183
    div-int/lit8 v0, p1, 0x7

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private d(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 197
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/16 v0, 0x1f

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(FFLandroid/graphics/Paint;)F
    .locals 3
    .param p1, "top"    # F
    .param p2, "bottom"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 187
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 188
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    add-float v1, p1, p2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    return v1
.end method

.method public a(FLandroid/graphics/Paint;Ljava/lang/String;)F
    .locals 2
    .param p1, "middle"    # F
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    sub-float v0, p1, v0

    return v0
.end method

.method public a(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 151
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    return-object v0
.end method

.method public getSelectDay()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->j:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->j:I

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->j:I

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->e:Landroid/graphics/Paint;

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->g:F

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->a(Landroid/graphics/Canvas;ILandroid/graphics/Paint;F)V

    .line 97
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_2

    .line 98
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->j:I

    if-ne v0, v1, :cond_1

    .line 97
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->c:Landroid/graphics/Paint;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->a(Landroid/graphics/Canvas;ILandroid/graphics/Paint;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_2
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->j:I

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->d(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->j:I

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->d:Landroid/graphics/Paint;

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->j:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->a(Landroid/graphics/Canvas;ILandroid/graphics/Paint;Ljava/lang/String;)V

    .line 107
    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 84
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 85
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 73
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->i:I

    if-lez v0, :cond_0

    .line 74
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->h:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 75
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->i:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->setMeasuredDimension(II)V

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 79
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 113
    .local v2, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 114
    .local v3, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 116
    :pswitch_0
    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->a(FF)I

    move-result v1

    .line 117
    .local v1, "index":I
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->d(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->k:I

    goto :goto_0

    .line 122
    .end local v1    # "index":I
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->a(FF)I

    move-result v0

    .line 123
    .local v0, "actionUpIndex":I
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->d(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    iget v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->k:I

    if-ne v4, v0, :cond_0

    .line 125
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->j:I

    .line 126
    const/4 v4, -0x1

    iput v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->k:I

    .line 127
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->l:Lavw$a;

    if-eqz v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->l:Lavw$a;

    iget v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->j:I

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, v5}, Lavw$a;->a(I)V

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->invalidate()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnItemClickListener(Lavw$a;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lavw$a;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->l:Lavw$a;

    .line 194
    return-void
.end method

.method public setSelectDay(I)V
    .locals 1
    .param p1, "day"    # I

    .prologue
    .line 202
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->j:I

    .line 203
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->invalidate()V

    .line 204
    return-void
.end method
