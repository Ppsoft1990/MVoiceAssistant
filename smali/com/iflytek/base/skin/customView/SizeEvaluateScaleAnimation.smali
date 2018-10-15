.class public Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;
.super Landroid/view/animation/ScaleAnimation;
.source "SizeEvaluateScaleAnimation.java"


# instance fields
.field private mEvaluatedProgressX:D

.field private mEvaluatedProgressY:D

.field private mFromX:D

.field private mFromY:D

.field private mToX:D

.field private mToY:D


# direct methods
.method public constructor <init>(FFFFIFIF)V
    .locals 2
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "pivotXType"    # I
    .param p6, "pivotXValue"    # F
    .param p7, "pivotYType"    # I
    .param p8, "pivotYValue"    # F

    .prologue
    .line 21
    invoke-direct/range {p0 .. p8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 23
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->mFromX:D

    .line 24
    float-to-double v0, p2

    iput-wide v0, p0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->mToX:D

    .line 25
    float-to-double v0, p3

    iput-wide v0, p0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->mFromY:D

    .line 26
    float-to-double v0, p4

    iput-wide v0, p0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->mToY:D

    .line 27
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 31
    invoke-super {p0, p1, p2}, Landroid/view/animation/ScaleAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 33
    move v0, p1

    .line 38
    .local v0, "factor":F
    iget-wide v2, p0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->mFromX:D

    sub-float v1, v8, v0

    float-to-double v4, v1

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->mToX:D

    float-to-double v6, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->mEvaluatedProgressX:D

    .line 39
    iget-wide v2, p0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->mFromY:D

    sub-float v1, v8, v0

    float-to-double v4, v1

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->mToY:D

    float-to-double v6, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->mEvaluatedProgressY:D

    .line 40
    return-void
.end method

.method public getEvaluatedProgressFactorX()F
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->mEvaluatedProgressX:D

    double-to-float v0, v0

    return v0
.end method

.method public getEvaluatedProgressFactorY()F
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/iflytek/base/skin/customView/SizeEvaluateScaleAnimation;->mEvaluatedProgressY:D

    double-to-float v0, v0

    return v0
.end method
