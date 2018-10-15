.class public Lcom/iflytek/base/skin/customView/DefineProgressView;
.super Landroid/view/View;
.source "DefineProgressView.java"


# instance fields
.field private mBackgroundId:I

.field private mBgDstRect:Landroid/graphics/Rect;

.field private mBgSrcRect:Landroid/graphics/Rect;

.field private mHeadBitmap:Landroid/graphics/Bitmap;

.field private mHeadBitmapId:I

.field private mHeadDstRect:Landroid/graphics/Rect;

.field private mHeadSrcRect:Landroid/graphics/Rect;

.field private mMaxProgress:I

.field private mProgress:I

.field private mProgressBackground:Landroid/graphics/Bitmap;

.field private mTeilBitmap:Landroid/graphics/Bitmap;

.field private mTeilBitmapId:I

.field private mTeilDstRect:Landroid/graphics/Rect;

.field private mTeilSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/base/skin/customView/DefineProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/16 v0, 0x64

    iput v0, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mMaxProgress:I

    .line 45
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/DefineProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadBitmapId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadBitmap:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/DefineProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mTeilBitmapId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mTeilBitmap:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/DefineProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mBackgroundId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mProgressBackground:Landroid/graphics/Bitmap;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mBgSrcRect:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mBgDstRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mTeilSrcRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mTeilDstRect:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadSrcRect:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadDstRect:Landroid/graphics/Rect;

    .line 70
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/DefineProgressView;->getWidth()I

    move-result v4

    .line 85
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/DefineProgressView;->getHeight()I

    move-result v1

    .line 86
    .local v1, "height":I
    if-lez v4, :cond_0

    if-gtz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mTeilBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mProgressBackground:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 93
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mBgSrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mProgressBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mProgressBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mBgDstRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v8, v8, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 95
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mProgressBackground:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mBgSrcRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mBgDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 97
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 98
    .local v0, "headWidth":I
    iget v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mProgress:I

    int-to-float v5, v5

    iget v6, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mMaxProgress:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v4

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 99
    .local v2, "scaleWidth":I
    const-string/jumbo v5, "Rect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scaleWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-gt v2, v0, :cond_2

    .line 101
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadSrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v8, v8, v0, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 102
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadDstRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v8, v8, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 103
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadSrcRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 105
    :cond_2
    sub-int v3, v2, v0

    .line 107
    .local v3, "teilWidth":I
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mTeilSrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mTeilBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mTeilBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 108
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mTeilDstRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v8, v8, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mTeilBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mTeilSrcRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mTeilDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 110
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadSrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadDstRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v3, v8, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadSrcRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "mMaxProgress"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mMaxProgress:I

    .line 74
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "mProgress"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mProgress:I

    .line 78
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/DefineProgressView;->postInvalidate()V

    .line 79
    return-void
.end method

.method public setProgressBitMapId(III)V
    .locals 0
    .param p1, "backgroundId"    # I
    .param p2, "progressHeadId"    # I
    .param p3, "progressTeilId"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mBackgroundId:I

    .line 55
    iput p2, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mHeadBitmapId:I

    .line 56
    iput p3, p0, Lcom/iflytek/base/skin/customView/DefineProgressView;->mTeilBitmapId:I

    .line 57
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/DefineProgressView;->init()V

    .line 58
    return-void
.end method
