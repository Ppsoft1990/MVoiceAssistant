.class public Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;
.super Landroid/view/View;
.source "WeatherCirclePageIndicator.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;
    }
.end annotation


# instance fields
.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/support/v4/view/ViewPager$f;

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:F

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const v0, 0x7f01007a

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 83
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->b:Landroid/graphics/Paint;

    .line 56
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 57
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 69
    const/high16 v17, -0x40800000    # -1.0f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->o:F

    .line 70
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->p:I

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->isInEditMode()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 120
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 87
    .local v16, "res":Landroid/content/res/Resources;
    const v17, 0x7f0a0011

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 88
    .local v11, "defaultPageColor":I
    const v17, 0x7f0a000d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 89
    .local v9, "defaultFillColor":I
    const/4 v10, 0x0

    .line 90
    .local v10, "defaultOrientation":I
    const v17, 0x7f0a0011

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 91
    .local v14, "defaultStrokeColor":I
    const v17, 0x7f07001a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 92
    .local v15, "defaultStrokeWidth":F
    const v17, 0x7f0700ff

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 93
    .local v12, "defaultRadius":F
    const/4 v8, 0x1

    .line 94
    .local v8, "defaultCentered":Z
    const/4 v13, 0x0

    .line 97
    .local v13, "defaultSnap":Z
    sget-object v17, Lcom/iflytek/cmcc/R$styleable;->CirclePageIndicator:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 99
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0x2

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->l:Z

    .line 100
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->k:I

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->b:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->b:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->d:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->d:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->a:F

    .line 109
    const/16 v17, 0x7

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->m:Z

    .line 111
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 112
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 119
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v7}, Lbl;->a(Landroid/view/ViewConfiguration;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->n:I

    goto/16 :goto_0
.end method

.method private a(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 492
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 493
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 495
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_2

    .line 497
    :cond_0
    move v1, v3

    .line 508
    .local v1, "result":I
    :cond_1
    :goto_0
    return v1

    .line 500
    .end local v1    # "result":I
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Lba;

    move-result-object v4

    invoke-virtual {v4}, Lba;->getCount()I

    move-result v0

    .line 501
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->a:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->a:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 504
    .restart local v1    # "result":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 505
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private b(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 520
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 521
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 523
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 525
    move v0, v2

    .line 534
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 528
    .end local v0    # "result":I
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->a:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 530
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 531
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->k:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->a:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->requestLayout()V

    .line 429
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 205
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/view/ViewPager;->getAdapter()Lba;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lba;->getCount()I

    move-result v4

    .line 211
    .local v4, "count":I
    if-eqz v4, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v0, v4, :cond_2

    .line 216
    add-int/lit8 v19, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 224
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->k:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getWidth()I

    move-result v14

    .line 226
    .local v14, "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getPaddingLeft()I

    move-result v13

    .line 227
    .local v13, "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getPaddingRight()I

    move-result v12

    .line 228
    .local v12, "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getPaddingTop()I

    move-result v17

    .line 236
    .local v17, "shortPaddingBefore":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->a:F

    move/from16 v19, v0

    const/high16 v20, 0x40a00000    # 5.0f

    mul-float v18, v19, v20

    .line 237
    .local v18, "threeRadius":F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->a:F

    move/from16 v20, v0

    add-float v16, v19, v20

    .line 238
    .local v16, "shortOffset":F
    int-to-float v0, v13

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->a:F

    move/from16 v20, v0

    add-float v11, v19, v20

    .line 239
    .local v11, "longOffset":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->l:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 240
    sub-int v19, v14, v13

    sub-int v19, v19, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    int-to-float v0, v4

    move/from16 v20, v0

    mul-float v20, v20, v18

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    sub-float v19, v19, v20

    add-float v11, v11, v19

    .line 246
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->a:F

    .line 247
    .local v15, "pageFillRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_4

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->c:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    sub-float v15, v15, v19

    .line 252
    :cond_4
    const/4 v9, 0x0

    .local v9, "iLoop":I
    :goto_2
    if-ge v9, v4, :cond_9

    .line 253
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, v18

    add-float v8, v11, v19

    .line 254
    .local v8, "drawLong":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->k:I

    move/from16 v19, v0

    if-nez v19, :cond_7

    .line 255
    move v6, v8

    .line 256
    .local v6, "dX":F
    move/from16 v7, v16

    .line 268
    .local v7, "dY":F
    :goto_3
    if-nez v9, :cond_8

    .line 269
    const-string/jumbo v19, "WeatherCirclePageIndicator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onDraw: 0 = mCurrentPage"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020264

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 272
    .local v10, "locationBitmap":Landroid/graphics/Bitmap;
    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v18, v19

    sub-float v19, v6, v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 252
    .end local v10    # "locationBitmap":Landroid/graphics/Bitmap;
    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 230
    .end local v6    # "dX":F
    .end local v7    # "dY":F
    .end local v8    # "drawLong":F
    .end local v9    # "iLoop":I
    .end local v11    # "longOffset":F
    .end local v12    # "longPaddingAfter":I
    .end local v13    # "longPaddingBefore":I
    .end local v14    # "longSize":I
    .end local v15    # "pageFillRadius":F
    .end local v16    # "shortOffset":F
    .end local v17    # "shortPaddingBefore":I
    .end local v18    # "threeRadius":F
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getHeight()I

    move-result v14

    .line 231
    .restart local v14    # "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getPaddingTop()I

    move-result v13

    .line 232
    .restart local v13    # "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getPaddingBottom()I

    move-result v12

    .line 233
    .restart local v12    # "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getPaddingLeft()I

    move-result v17

    .restart local v17    # "shortPaddingBefore":I
    goto/16 :goto_1

    .line 258
    .restart local v8    # "drawLong":F
    .restart local v9    # "iLoop":I
    .restart local v11    # "longOffset":F
    .restart local v15    # "pageFillRadius":F
    .restart local v16    # "shortOffset":F
    .restart local v18    # "threeRadius":F
    :cond_7
    move/from16 v6, v16

    .line 259
    .restart local v6    # "dX":F
    move v7, v8

    .restart local v7    # "dY":F
    goto :goto_3

    .line 275
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->b:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getAlpha()I

    move-result v19

    if-lez v19, :cond_5

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->b:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v7, v15, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 283
    .end local v6    # "dX":F
    .end local v7    # "dY":F
    .end local v8    # "drawLong":F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->m:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->h:I

    move/from16 v19, v0

    :goto_5
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v5, v19, v18

    .line 284
    .local v5, "cx":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->m:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->i:F

    move/from16 v19, v0

    mul-float v19, v19, v18

    add-float v5, v5, v19

    .line 287
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->k:I

    move/from16 v19, v0

    if-nez v19, :cond_c

    .line 288
    add-float v6, v11, v5

    .line 289
    .restart local v6    # "dX":F
    move/from16 v7, v16

    .line 299
    .restart local v7    # "dY":F
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    move/from16 v19, v0

    if-nez v19, :cond_d

    .line 300
    const-string/jumbo v19, "WeatherCirclePageIndicator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onDraw: 0 = mCurrentPage"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020265

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 303
    .restart local v10    # "locationBitmap":Landroid/graphics/Bitmap;
    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v18, v19

    sub-float v19, v6, v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 283
    .end local v5    # "cx":F
    .end local v6    # "dX":F
    .end local v7    # "dY":F
    .end local v10    # "locationBitmap":Landroid/graphics/Bitmap;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    move/from16 v19, v0

    goto :goto_5

    .line 291
    .restart local v5    # "cx":F
    :cond_c
    move/from16 v6, v16

    .line 292
    .restart local v6    # "dX":F
    add-float v7, v11, v5

    .restart local v7    # "dY":F
    goto :goto_6

    .line 305
    :cond_d
    const-string/jumbo v19, "WeatherCirclePageIndicator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onDraw: mCurrentPage"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->a:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->d:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 476
    iget v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->k:I

    if-nez v0, :cond_0

    .line 477
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->setMeasuredDimension(II)V

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->b(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 433
    iput p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->j:I

    .line 435
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageScrollStateChanged(I)V

    .line 438
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 442
    iput p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    .line 443
    iput p2, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->i:F

    .line 444
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->invalidate()V

    .line 446
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$f;->onPageScrolled(IFI)V

    .line 449
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->j:I

    if-nez v0, :cond_1

    .line 454
    :cond_0
    iput p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    .line 455
    iput p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->h:I

    .line 456
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->invalidate()V

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageSelected(I)V

    .line 462
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 539
    move-object v0, p1

    check-cast v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;

    .line 540
    .local v0, "savedState":Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 541
    iget v1, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;->a:I

    iput v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    .line 542
    iget v1, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;->a:I

    iput v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->h:I

    .line 543
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->requestLayout()V

    .line 544
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 548
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 549
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 550
    .local v0, "savedState":Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;
    iget v2, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    iput v2, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;->a:I

    .line 551
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 313
    const/4 v12, 0x1

    .line 391
    :goto_0
    return v12

    .line 315
    :cond_0
    iget-object v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Lba;

    move-result-object v12

    invoke-virtual {v12}, Lba;->getCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 316
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 319
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    .line 320
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 391
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 322
    :pswitch_1
    const/4 v12, 0x0

    invoke-static {p1, v12}, Lay;->b(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->p:I

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->o:F

    goto :goto_1

    .line 327
    :pswitch_2
    iget v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->p:I

    invoke-static {p1, v12}, Lay;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 328
    .local v1, "activePointerIndex":I
    invoke-static {p1, v1}, Lay;->c(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 329
    .local v11, "x":F
    iget v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->o:F

    sub-float v3, v11, v12

    .line 331
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->q:Z

    if-nez v12, :cond_4

    .line 332
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->n:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 333
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->q:Z

    .line 337
    :cond_4
    iget-boolean v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->q:Z

    if-eqz v12, :cond_3

    .line 338
    iput v11, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->o:F

    .line 339
    iget-object v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 340
    :cond_5
    iget-object v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 349
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->q:Z

    if-nez v12, :cond_9

    .line 350
    iget-object v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Lba;

    move-result-object v12

    invoke-virtual {v12}, Lba;->getCount()I

    move-result v2

    .line 351
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->getWidth()I

    move-result v10

    .line 352
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 353
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 355
    .local v9, "sixthWidth":F
    iget v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    if-lez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 356
    const/4 v12, 0x3

    if-eq v0, v12, :cond_6

    .line 357
    iget-object v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 359
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 360
    :cond_7
    iget v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 361
    const/4 v12, 0x3

    if-eq v0, v12, :cond_8

    .line 362
    iget-object v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 364
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 368
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->q:Z

    .line 369
    const/4 v12, -0x1

    iput v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->p:I

    .line 370
    iget-object v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 374
    :pswitch_4
    invoke-static {p1}, Lay;->b(Landroid/view/MotionEvent;)I

    move-result v5

    .line 375
    .local v5, "index":I
    invoke-static {p1, v5}, Lay;->c(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->o:F

    .line 376
    invoke-static {p1, v5}, Lay;->b(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->p:I

    goto/16 :goto_1

    .line 381
    .end local v5    # "index":I
    :pswitch_5
    invoke-static {p1}, Lay;->b(Landroid/view/MotionEvent;)I

    move-result v8

    .line 382
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Lay;->b(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 383
    .local v7, "pointerId":I
    iget v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->p:I

    if-ne v7, v12, :cond_a

    .line 384
    if-nez v8, :cond_b

    const/4 v6, 0x1

    .line 385
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-static {p1, v6}, Lay;->b(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->p:I

    .line 387
    .end local v6    # "newPointerIndex":I
    :cond_a
    iget v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->p:I

    invoke-static {p1, v12}, Lay;->a(Landroid/view/MotionEvent;I)I

    move-result v12

    invoke-static {p1, v12}, Lay;->c(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->o:F

    goto/16 :goto_1

    .line 384
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0
    .param p1, "centered"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->l:Z

    .line 125
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->invalidate()V

    .line 126
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 422
    iput p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->g:I

    .line 423
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->invalidate()V

    .line 424
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->invalidate()V

    .line 144
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$f;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$f;

    .line 467
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 151
    packed-switch p1, :pswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_0
    iput p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->k:I

    .line 155
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->requestLayout()V

    .line 161
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1
    .param p1, "pageColor"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->invalidate()V

    .line 135
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 186
    iput p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->a:F

    .line 187
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->invalidate()V

    .line 188
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->m:Z

    .line 196
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->invalidate()V

    .line 197
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->invalidate()V

    .line 170
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 177
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->invalidate()V

    .line 179
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 408
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 402
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Lba;

    move-result-object v0

    if-nez v0, :cond_2

    .line 403
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_2
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 406
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 407
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 413
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->setCurrentItem(I)V

    .line 414
    return-void
.end method
