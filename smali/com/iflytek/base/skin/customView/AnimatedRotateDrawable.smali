.class public Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedRotateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;
    }
.end annotation


# instance fields
.field private mCurrentDegrees:F

.field private mIncrement:F

.field private mMutated:Z

.field private mRunning:Z

.field private mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, v1, v1, p1}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;-><init>(Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    .line 48
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>(Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "rotateState"    # Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    new-instance v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;-><init>(Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    .line 61
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iput-object p3, v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x3"    # Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$1;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;-><init>(Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 67
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    .line 68
    .local v1, "state":Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;
    const/high16 v2, 0x43b40000    # 360.0f

    iget v3, v1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mIncrement:F

    .line 69
    iget-object v0, v1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 72
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 73
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method private nextFrame()V
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0, p0}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget v2, v2, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 118
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 81
    .local v5, "saveCount":I
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->start()V

    .line 82
    iget-object v6, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    .line 83
    .local v6, "st":Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;
    iget-object v1, v6, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 86
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v8, v9

    .line 87
    .local v7, "w":I
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v8, v9

    .line 89
    .local v2, "h":I
    iget-boolean v8, v6, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    if-eqz v8, :cond_0

    int-to-float v8, v7

    iget v9, v6, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    mul-float v3, v8, v9

    .line 90
    .local v3, "px":F
    :goto_0
    iget-boolean v8, v6, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    if-eqz v8, :cond_1

    int-to-float v8, v2

    iget v9, v6, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    mul-float v4, v8, v9

    .line 92
    .local v4, "py":F
    :goto_1
    iget v8, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mCurrentDegrees:F

    invoke-virtual {p1, v8, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 94
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 97
    return-void

    .line 89
    .end local v3    # "px":F
    .end local v4    # "py":F
    :cond_0
    iget v3, v6, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    goto :goto_0

    .line 90
    .restart local v3    # "px":F
    :cond_1
    iget v4, v6, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    goto :goto_1
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget v1, v1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v1, v1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mChangingConfigurations:I

    .line 220
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    .line 244
    const/4 v1, 0x1

    .line 245
    .local v1, "pivotXRel":Z
    const/high16 v0, 0x3f000000    # 0.5f

    .line 248
    .local v0, "pivotX":F
    const/4 v3, 0x1

    .line 249
    .local v3, "pivotYRel":Z
    const/high16 v2, 0x3f000000    # 0.5f

    .line 258
    .local v2, "pivotY":F
    iget-object v4, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    .line 259
    .local v4, "rotateState":Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;
    iput-boolean v6, v4, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    .line 260
    iput v5, v4, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    .line 261
    iput-boolean v6, v4, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    .line 262
    iput v5, v4, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    .line 266
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->init()V

    .line 268
    iget-object v5, v4, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 269
    iget-object v5, v4, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 271
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 176
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mMutated:Z

    .line 279
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 204
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 123
    iget v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mCurrentDegrees:F

    iget v1, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mIncrement:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mCurrentDegrees:F

    .line 124
    iget v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mCurrentDegrees:F

    const/high16 v1, 0x43b40000    # 360.0f

    iget v2, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mIncrement:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mCurrentDegrees:F

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->invalidateSelf()V

    .line 128
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->nextFrame()V

    .line 129
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 182
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 162
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 166
    return-void
.end method

.method public setFrameCount(I)V
    .locals 2
    .param p1, "frameCount"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iput p1, v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    .line 232
    const/high16 v0, 0x43b40000    # 360.0f

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget v1, v1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mIncrement:F

    .line 233
    return-void
.end method

.method public setFrameDuration(I)V
    .locals 4
    .param p1, "frameDuration"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iput p1, v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget v2, v2, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 228
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 133
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mState:Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v1, v1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 134
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 135
    .local v0, "changed":Z
    if-eqz p1, :cond_2

    .line 136
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 137
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mCurrentDegrees:F

    .line 138
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->nextFrame()V

    .line 143
    :cond_1
    :goto_0
    return v0

    .line 141
    :cond_2
    invoke-virtual {p0, p0}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mRunning:Z

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mRunning:Z

    .line 102
    invoke-direct {p0}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->nextFrame()V

    .line 104
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->mRunning:Z

    .line 108
    invoke-virtual {p0, p0}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 188
    return-void
.end method
