.class public Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;
.super Ljava/lang/Object;
.source "PtrIndicator.java"


# static fields
.field public static final POS_START:I


# instance fields
.field private isHeader:Z

.field private mCurrentPos:I

.field private mFooterHeight:I

.field private mHeaderHeight:I

.field private mIsUnderTouch:Z

.field private mLastPos:I

.field private mOffsetToKeepHeaderWhileLoading:I

.field protected mOffsetToLoadMore:I

.field protected mOffsetToRefresh:I

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPressedPos:I

.field private mPtLastMove:Landroid/graphics/PointF;

.field private mRatioOfHeaderHeightToRefresh:F

.field public mRationOfHeaderHeightToPull:F

.field private mRefreshCompleteY:I

.field private mResistanceFooter:F

.field private mResistanceHeader:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x3fd9999a    # 1.7f

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToRefresh:I

    .line 11
    iput v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToLoadMore:I

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mPtLastMove:Landroid/graphics/PointF;

    .line 15
    iput v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    .line 16
    iput v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mLastPos:I

    .line 19
    iput v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mPressedPos:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader:Z

    .line 22
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mRatioOfHeaderHeightToRefresh:F

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mRationOfHeaderHeightToPull:F

    .line 25
    iput v2, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mResistanceHeader:F

    .line 26
    iput v2, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mResistanceFooter:F

    .line 27
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mIsUnderTouch:Z

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToKeepHeaderWhileLoading:I

    .line 30
    iput v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mRefreshCompleteY:I

    return-void
.end method


# virtual methods
.method public convertFrom(Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;)V
    .locals 1
    .param p1, "ptrSlider"    # Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    .prologue
    .line 169
    iget v0, p1, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    .line 170
    iget v0, p1, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mLastPos:I

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mLastPos:I

    .line 171
    iget v0, p1, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    .line 172
    return-void
.end method

.method public crossRefreshLineFromTopToBottom()Z
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mLastPos:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getOffsetToRefresh()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getOffsetToRefresh()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPercent()F
    .locals 3

    .prologue
    .line 233
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 234
    .local v0, "currentPercent":F
    :goto_0
    return v0

    .line 233
    .end local v0    # "currentPercent":F
    :cond_0
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method public getCurrentPosY()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    return v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    return v0
.end method

.method public getLastPercent()F
    .locals 3

    .prologue
    .line 228
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 229
    .local v0, "oldPercent":F
    :goto_0
    return v0

    .line 228
    .end local v0    # "oldPercent":F
    :cond_0
    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mLastPos:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method public getLastPosY()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mLastPos:I

    return v0
.end method

.method public getOffsetToKeepHeaderWhileLoading()I
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader:Z

    if-eqz v0, :cond_1

    .line 217
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToKeepHeaderWhileLoading:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToKeepHeaderWhileLoading:I

    .line 219
    :goto_0
    return v0

    .line 217
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    goto :goto_0

    .line 219
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToKeepHeaderWhileLoading:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToKeepHeaderWhileLoading:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mFooterHeight:I

    goto :goto_0
.end method

.method public getOffsetToLoadMore()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToLoadMore:I

    return v0
.end method

.method public getOffsetToPull()I
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mRationOfHeaderHeightToPull:F

    float-to-int v0, v0

    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getOffsetToRefresh()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToRefresh:I

    return v0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetY:F

    return v0
.end method

.method public getRatioOfHeaderToHeightRefresh()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mRatioOfHeaderHeightToRefresh:F

    return v0
.end method

.method public getResistanceFooter()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mResistanceFooter:F

    return v0
.end method

.method public getResistanceHeader()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mResistanceHeader:F

    return v0
.end method

.method public goDownCrossFinishPosition()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mRefreshCompleteY:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJustBackToStartPosition()Z
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mLastPos:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isInStartPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJustLeftStartPosition()Z
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mLastPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJustReachedHeaderHeightFromTopToBottom()Z
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mLastPos:I

    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLeftStartPosition()Z
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMovedAfterPressedDown()Z
    .locals 3

    .prologue
    .line 191
    const-string/jumbo v0, "PtrFrameLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mPressedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mPressedPos:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlreadyHere(I)Z
    .locals 1
    .param p1, "to"    # I

    .prologue
    .line 224
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeader()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader:Z

    return v0
.end method

.method public isInStartPosition()Z
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverOffsetToKeepHeaderWhileLoading()Z
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getOffsetToKeepHeaderWhileLoading()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverOffsetToRefresh()Z
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getOffsetToRefresh()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderTouch()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mIsUnderTouch:Z

    return v0
.end method

.method public final onMove(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 109
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mPtLastMove:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v2

    .line 110
    .local v0, "offsetX":F
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mPtLastMove:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v2

    .line 111
    .local v1, "offsetY":F
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->processOnMove(FFFF)V

    .line 112
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mPtLastMove:Landroid/graphics/PointF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 113
    return-void
.end method

.method public onPressDown(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mIsUnderTouch:Z

    .line 104
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mPressedPos:I

    .line 105
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mPtLastMove:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 106
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mIsUnderTouch:Z

    .line 64
    return-void
.end method

.method public onUIRefreshComplete()V
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mRefreshCompleteY:I

    .line 68
    return-void
.end method

.method protected onUpdatePos(II)V
    .locals 0
    .param p1, "current"    # I
    .param p2, "last"    # I

    .prologue
    .line 147
    return-void
.end method

.method protected processOnMove(FFFF)V
    .locals 1
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F

    .prologue
    .line 75
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mResistanceHeader:F

    div-float v0, p4, v0

    invoke-virtual {p0, p3, v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->setOffset(FF)V

    .line 76
    return-void
.end method

.method public final setCurrentPos(I)V
    .locals 1
    .param p1, "current"    # I

    .prologue
    .line 140
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mLastPos:I

    .line 141
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mCurrentPos:I

    .line 142
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mLastPos:I

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->onUpdatePos(II)V

    .line 143
    return-void
.end method

.method public setFooterHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mFooterHeight:I

    .line 160
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->updateHeight()V

    .line 161
    return-void
.end method

.method public setHeaderHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    .line 155
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->updateHeight()V

    .line 156
    return-void
.end method

.method public setIsHeader(Z)V
    .locals 0
    .param p1, "isHeader"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader:Z

    .line 40
    return-void
.end method

.method protected setOffset(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 116
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetX:F

    .line 117
    iput p2, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetY:F

    .line 118
    return-void
.end method

.method public setOffsetToKeepHeaderWhileLoading(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToKeepHeaderWhileLoading:I

    .line 213
    return-void
.end method

.method public setOffsetToRefresh(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 97
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mRatioOfHeaderHeightToRefresh:F

    .line 98
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToRefresh:I

    .line 99
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToLoadMore:I

    .line 100
    return-void
.end method

.method public setRatioOfHeaderHeightToRefresh(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mRatioOfHeaderHeightToRefresh:F

    .line 80
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToRefresh:I

    .line 81
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mFooterHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToLoadMore:I

    .line 82
    return-void
.end method

.method public setResistanceFooter(F)V
    .locals 0
    .param p1, "resistance"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mResistanceFooter:F

    .line 60
    return-void
.end method

.method public setResistanceHeader(F)V
    .locals 0
    .param p1, "resistance"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mResistanceHeader:F

    .line 56
    return-void
.end method

.method protected updateHeight()V
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mRatioOfHeaderHeightToRefresh:F

    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToRefresh:I

    .line 165
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mRatioOfHeaderHeightToRefresh:F

    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mFooterHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mOffsetToLoadMore:I

    .line 166
    return-void
.end method

.method public willOverBottom(I)Z
    .locals 3
    .param p1, "to"    # I

    .prologue
    .line 242
    int-to-float v0, p1

    iget v1, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mRationOfHeaderHeightToPull:F

    iget v2, p0, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willOverTop(I)Z
    .locals 1
    .param p1, "to"    # I

    .prologue
    .line 238
    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
