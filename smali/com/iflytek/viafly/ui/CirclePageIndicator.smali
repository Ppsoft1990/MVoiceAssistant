.class public Lcom/iflytek/viafly/ui/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/CirclePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$f;

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const v0, 0x7f01007a

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 51
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 63
    const/high16 v17, -0x40800000    # -1.0f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mLastMotionX:F

    .line 64
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mActivePointerId:I

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->isInEditMode()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 111
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 81
    .local v16, "res":Landroid/content/res/Resources;
    const v17, 0x7f0a0011

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 82
    .local v11, "defaultPageColor":I
    const v17, 0x7f0a000d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 83
    .local v9, "defaultFillColor":I
    const/4 v10, 0x0

    .line 84
    .local v10, "defaultOrientation":I
    const v17, 0x7f0a0011

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 85
    .local v14, "defaultStrokeColor":I
    const v17, 0x7f07001a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 86
    .local v15, "defaultStrokeWidth":F
    const v17, 0x7f0700ff

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 87
    .local v12, "defaultRadius":F
    const/4 v8, 0x1

    .line 88
    .local v8, "defaultCentered":Z
    const/4 v13, 0x0

    .line 91
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

    .line 93
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0x2

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCentered:Z

    .line 94
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mOrientation:I

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mRadius:F

    .line 100
    const/16 v17, 0x7

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mSnap:Z

    .line 102
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 103
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 104
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 110
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v7}, Lbl;->a(Landroid/view/ViewConfiguration;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mTouchSlop:I

    goto/16 :goto_0
.end method

.method private measureLong(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 433
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 434
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 436
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_2

    .line 438
    :cond_0
    move v1, v3

    .line 449
    .local v1, "result":I
    :cond_1
    :goto_0
    return v1

    .line 441
    .end local v1    # "result":I
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Lba;

    move-result-object v4

    invoke-virtual {v4}, Lba;->getCount()I

    move-result v0

    .line 442
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 445
    .restart local v1    # "result":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 446
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private measureShort(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 461
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 462
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 464
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 466
    move v0, v2

    .line 475
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 469
    .end local v0    # "result":I
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mRadius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 471
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 472
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mOrientation:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mRadius:F

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mSnap:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->requestLayout()V

    .line 370
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 178
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Lba;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lba;->getCount()I

    move-result v3

    .line 184
    .local v3, "count":I
    if-eqz v3, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v3, :cond_2

    .line 189
    add-int/lit8 v17, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 197
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getWidth()I

    move-result v12

    .line 199
    .local v12, "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getPaddingLeft()I

    move-result v11

    .line 200
    .local v11, "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getPaddingRight()I

    move-result v10

    .line 201
    .local v10, "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getPaddingTop()I

    move-result v15

    .line 209
    .local v15, "shortPaddingBefore":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    const/high16 v18, 0x40400000    # 3.0f

    mul-float v16, v17, v18

    .line 210
    .local v16, "threeRadius":F
    int-to-float v0, v15

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mRadius:F

    move/from16 v18, v0

    add-float v14, v17, v18

    .line 211
    .local v14, "shortOffset":F
    int-to-float v0, v11

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mRadius:F

    move/from16 v18, v0

    add-float v9, v17, v18

    .line 212
    .local v9, "longOffset":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCentered:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 213
    sub-int v17, v12, v11

    sub-int v17, v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v18, v18, v16

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    add-float v9, v9, v17

    .line 219
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mRadius:F

    .line 222
    .local v13, "pageFillRadius":F
    const/4 v8, 0x0

    .local v8, "iLoop":I
    :goto_2
    if-ge v8, v3, :cond_7

    .line 223
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v7, v9, v17

    .line 224
    .local v7, "drawLong":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 225
    move v5, v7

    .line 226
    .local v5, "dX":F
    move v6, v14

    .line 232
    .local v6, "dY":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    if-lez v17, :cond_4

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v6, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 222
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 203
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    .end local v8    # "iLoop":I
    .end local v9    # "longOffset":F
    .end local v10    # "longPaddingAfter":I
    .end local v11    # "longPaddingBefore":I
    .end local v12    # "longSize":I
    .end local v13    # "pageFillRadius":F
    .end local v14    # "shortOffset":F
    .end local v15    # "shortPaddingBefore":I
    .end local v16    # "threeRadius":F
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getHeight()I

    move-result v12

    .line 204
    .restart local v12    # "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getPaddingTop()I

    move-result v11

    .line 205
    .restart local v11    # "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getPaddingBottom()I

    move-result v10

    .line 206
    .restart local v10    # "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getPaddingLeft()I

    move-result v15

    .restart local v15    # "shortPaddingBefore":I
    goto/16 :goto_1

    .line 228
    .restart local v7    # "drawLong":F
    .restart local v8    # "iLoop":I
    .restart local v9    # "longOffset":F
    .restart local v13    # "pageFillRadius":F
    .restart local v14    # "shortOffset":F
    .restart local v16    # "threeRadius":F
    :cond_6
    move v5, v14

    .line 229
    .restart local v5    # "dX":F
    move v6, v7

    .restart local v6    # "dY":F
    goto :goto_3

    .line 238
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mSnap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mSnapPage:I

    move/from16 v17, v0

    :goto_4
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v4, v17, v16

    .line 239
    .local v4, "cx":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mSnap:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPageOffset:F

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v4, v4, v17

    .line 242
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 243
    add-float v5, v9, v4

    .line 244
    .restart local v5    # "dX":F
    move v6, v14

    .line 249
    .restart local v6    # "dY":F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 238
    .end local v4    # "cx":F
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    goto :goto_4

    .line 246
    .restart local v4    # "cx":F
    :cond_a
    move v5, v14

    .line 247
    .restart local v5    # "dX":F
    add-float v6, v9, v4

    .restart local v6    # "dY":F
    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 417
    iget v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->measureLong(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->measureShort(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->measureShort(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->measureLong(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 374
    iput p1, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mScrollState:I

    .line 376
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageScrollStateChanged(I)V

    .line 379
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 383
    iput p1, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCurrentPage:I

    .line 384
    iput p2, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPageOffset:F

    .line 385
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->invalidate()V

    .line 387
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$f;->onPageScrolled(IFI)V

    .line 390
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_1

    .line 395
    :cond_0
    iput p1, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCurrentPage:I

    .line 396
    iput p1, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mSnapPage:I

    .line 397
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->invalidate()V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageSelected(I)V

    .line 403
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 480
    move-object v0, p1

    check-cast v0, Lcom/iflytek/viafly/ui/CirclePageIndicator$SavedState;

    .line 481
    .local v0, "savedState":Lcom/iflytek/viafly/ui/CirclePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 482
    iget v1, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCurrentPage:I

    .line 483
    iget v1, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mSnapPage:I

    .line 484
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->requestLayout()V

    .line 485
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 489
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 490
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/iflytek/viafly/ui/CirclePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 491
    .local v0, "savedState":Lcom/iflytek/viafly/ui/CirclePageIndicator$SavedState;
    iget v2, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/iflytek/viafly/ui/CirclePageIndicator$SavedState;->currentPage:I

    .line 492
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 254
    const/4 v12, 0x1

    .line 332
    :goto_0
    return v12

    .line 256
    :cond_0
    iget-object v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Lba;

    move-result-object v12

    invoke-virtual {v12}, Lba;->getCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 257
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    .line 261
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 332
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 263
    :pswitch_1
    const/4 v12, 0x0

    invoke-static {p1, v12}, Lay;->b(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mActivePointerId:I

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 268
    :pswitch_2
    iget v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Lay;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 269
    .local v1, "activePointerIndex":I
    invoke-static {p1, v1}, Lay;->c(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 270
    .local v11, "x":F
    iget v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mLastMotionX:F

    sub-float v3, v11, v12

    .line 272
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_4

    .line 273
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 274
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mIsDragging:Z

    .line 278
    :cond_4
    iget-boolean v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mIsDragging:Z

    if-eqz v12, :cond_3

    .line 279
    iput v11, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mLastMotionX:F

    .line 280
    iget-object v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 281
    :cond_5
    iget-object v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 290
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_9

    .line 291
    iget-object v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Lba;

    move-result-object v12

    invoke-virtual {v12}, Lba;->getCount()I

    move-result v2

    .line 292
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->getWidth()I

    move-result v10

    .line 293
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 294
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 296
    .local v9, "sixthWidth":F
    iget v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCurrentPage:I

    if-lez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 297
    const/4 v12, 0x3

    if-eq v0, v12, :cond_6

    .line 298
    iget-object v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 300
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 301
    :cond_7
    iget v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 302
    const/4 v12, 0x3

    if-eq v0, v12, :cond_8

    .line 303
    iget-object v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 305
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 309
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mIsDragging:Z

    .line 310
    const/4 v12, -0x1

    iput v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mActivePointerId:I

    .line 311
    iget-object v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 315
    :pswitch_4
    invoke-static {p1}, Lay;->b(Landroid/view/MotionEvent;)I

    move-result v5

    .line 316
    .local v5, "index":I
    invoke-static {p1, v5}, Lay;->c(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mLastMotionX:F

    .line 317
    invoke-static {p1, v5}, Lay;->b(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 322
    .end local v5    # "index":I
    :pswitch_5
    invoke-static {p1}, Lay;->b(Landroid/view/MotionEvent;)I

    move-result v8

    .line 323
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Lay;->b(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 324
    .local v7, "pointerId":I
    iget v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mActivePointerId:I

    if-ne v7, v12, :cond_a

    .line 325
    if-nez v8, :cond_b

    const/4 v6, 0x1

    .line 326
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-static {p1, v6}, Lay;->b(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mActivePointerId:I

    .line 328
    .end local v6    # "newPointerIndex":I
    :cond_a
    iget v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Lay;->a(Landroid/view/MotionEvent;I)I

    move-result v12

    invoke-static {p1, v12}, Lay;->c(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 325
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 261
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
    .line 115
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCentered:Z

    .line 116
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->invalidate()V

    .line 117
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 363
    iput p1, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mCurrentPage:I

    .line 364
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->invalidate()V

    .line 365
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->invalidate()V

    .line 135
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$f;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$f;

    .line 408
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_0
    iput p1, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mOrientation:I

    .line 146
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->requestLayout()V

    .line 152
    return-void

    .line 142
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
    .line 124
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->invalidate()V

    .line 126
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 159
    iput p1, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mRadius:F

    .line 160
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->invalidate()V

    .line 161
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mSnap:Z

    .line 169
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->invalidate()V

    .line 170
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 343
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Lba;

    move-result-object v0

    if-nez v0, :cond_2

    .line 344
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_2
    iput-object p1, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 347
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 348
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 354
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->setCurrentItem(I)V

    .line 355
    return-void
.end method
