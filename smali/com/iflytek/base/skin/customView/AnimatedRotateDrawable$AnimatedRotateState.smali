.class final Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedRotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnimatedRotateState"
.end annotation


# instance fields
.field private mCanConstantState:Z

.field mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mFrameDuration:I

.field mFramesCount:I

.field mPivotX:F

.field mPivotXRel:Z

.field mPivotY:F

.field mPivotYRel:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "source"    # Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;
    .param p2, "owner"    # Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 298
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 291
    const/16 v0, 0x96

    iput v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    .line 292
    const/16 v0, 0xc

    iput v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    .line 299
    if-eqz p1, :cond_0

    .line 300
    iget-object v0, p1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 301
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 302
    iget-boolean v0, p1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    .line 303
    iget v0, p1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    iput v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    .line 304
    iget-boolean v0, p1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    .line 305
    iget v0, p1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    iput v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    .line 306
    iget v0, p1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    iput v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    .line 307
    iget v0, p1, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    iput v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mCheckedConstantState:Z

    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mCanConstantState:Z

    .line 310
    :cond_0
    return-void
.end method


# virtual methods
.method public canConstantState()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 324
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mCheckedConstantState:Z

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mCanConstantState:Z

    .line 326
    iput-boolean v1, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mCheckedConstantState:Z

    .line 329
    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mCanConstantState:Z

    return v0

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 314
    new-instance v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;-><init>(Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable$1;)V

    return-object v0
.end method
