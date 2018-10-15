.class public Lcom/iflytek/base/skin/customView/XProgressBar;
.super Landroid/widget/ProgressBar;
.source "XProgressBar.java"

# interfaces
.implements Lcom/iflytek/base/skin/IRecyleResource;
.implements Lcom/iflytek/base/skin/customView/ISpaceViewSetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;
    }
.end annotation


# static fields
.field public static final INT_NO_VALUE:I = -0x1

.field public static final PROGRESS_CYCLE_TYPE:I = 0x1

.field public static final PROGRESS_HORIZONTAL_TYPE:I = 0x2

.field public static final PROGRESS_UNDEFINE_TYPE:I = 0x1


# instance fields
.field private mColorArray:Ljava/lang/String;

.field private mCycleDrawable:Ljava/lang/String;

.field private mFrameCount:I

.field private mFrameDuration:I

.field private mOrientation:Lcom/iflytek/base/skin/Orientation;

.field private mPluginId:Ljava/lang/String;

.field private mProgressType:I

.field private mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

.field private mViewDrawer:Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mProgressType:I

    .line 42
    sget-object v0, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mOrientation:Lcom/iflytek/base/skin/Orientation;

    .line 52
    const/4 v0, 0x0

    const-string/jumbo v1, "main"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/base/skin/customView/XProgressBar;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mProgressType:I

    .line 42
    sget-object v0, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mOrientation:Lcom/iflytek/base/skin/Orientation;

    .line 62
    const-string/jumbo v0, "main"

    invoke-direct {p0, p2, v0}, Lcom/iflytek/base/skin/customView/XProgressBar;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mProgressType:I

    .line 42
    sget-object v0, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mOrientation:Lcom/iflytek/base/skin/Orientation;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/iflytek/base/skin/customView/XProgressBar;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/base/skin/customView/XProgressBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XProgressBar;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mColorArray:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/iflytek/base/skin/customView/XProgressBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XProgressBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mColorArray:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iflytek/base/skin/customView/XProgressBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XProgressBar;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mCycleDrawable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iflytek/base/skin/customView/XProgressBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XProgressBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mCycleDrawable:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/iflytek/base/skin/customView/XProgressBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XProgressBar;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mFrameDuration:I

    return p1
.end method

.method static synthetic access$302(Lcom/iflytek/base/skin/customView/XProgressBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XProgressBar;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mFrameCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/iflytek/base/skin/customView/XProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XProgressBar;

    .prologue
    .line 28
    iget v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mProgressType:I

    return v0
.end method

.method static synthetic access$402(Lcom/iflytek/base/skin/customView/XProgressBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XProgressBar;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mProgressType:I

    return p1
.end method

.method static synthetic access$500(Lcom/iflytek/base/skin/customView/XProgressBar;)Lcom/iflytek/base/skin/Orientation;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/skin/customView/XProgressBar;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mOrientation:Lcom/iflytek/base/skin/Orientation;

    return-object v0
.end method

.method private getLayerDrawable([I)Landroid/graphics/drawable/LayerDrawable;
    .locals 14
    .param p1, "colorArray"    # [I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    .line 187
    .local v6, "progressDrawable":Landroid/graphics/drawable/LayerDrawable;
    new-array v4, v13, [Landroid/graphics/drawable/Drawable;

    .line 188
    .local v4, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 190
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v7

    const v8, 0x102000d

    if-ne v7, v8, :cond_0

    .line 191
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v7, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 193
    .local v2, "mDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v7, 0x0

    const/high16 v8, 0x3f400000    # 0.75f

    invoke-virtual {v2, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 194
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    mul-double/2addr v8, v10

    double-to-float v7, v8

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 195
    invoke-virtual {v2, v12}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 196
    const/16 v7, 0x8

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    .line 197
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 199
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    .local v0, "dra":Landroid/graphics/drawable/Drawable;
    instance-of v7, v0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v7, :cond_0

    .line 203
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/ClipDrawable;

    .line 204
    .local v3, "oldDrawable":Landroid/graphics/drawable/ClipDrawable;
    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    const/4 v7, 0x3

    invoke-direct {v5, v2, v7, v13}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 206
    .local v5, "proDrawable":Landroid/graphics/drawable/ClipDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 207
    aput-object v5, v4, v12

    .line 188
    .end local v0    # "dra":Landroid/graphics/drawable/Drawable;
    .end local v2    # "mDrawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "oldDrawable":Landroid/graphics/drawable/ClipDrawable;
    .end local v5    # "proDrawable":Landroid/graphics/drawable/ClipDrawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_1
    aget-object v7, v4, v12

    if-eqz v7, :cond_2

    .line 212
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    .end local v6    # "progressDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-direct {v6, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 214
    .restart local v6    # "progressDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    return-object v6

    .line 196
    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private init(Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p2, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mPluginId:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;-><init>(Lcom/iflytek/base/skin/customView/XProgressBar;Landroid/widget/ProgressBar;Landroid/util/AttributeSet;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mViewDrawer:Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;

    .line 68
    new-instance v0, Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/base/skin/customView/SpaceTools;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    .line 69
    return-void
.end method


# virtual methods
.method public getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mViewDrawer:Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->draw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 81
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mSpaceTools:Lcom/iflytek/base/skin/customView/SpaceTools;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/SpaceTools;->setSpace()V

    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    .line 75
    return-void
.end method

.method public recyleResource()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mViewDrawer:Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->setCustomBackground(Landroid/view/View;Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 86
    return-void
.end method

.method public setCycleDrawable(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "frameDuration"    # I
    .param p3, "frameCount"    # I

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    new-instance v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 170
    .local v0, "animatedRotateDrawable":Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;
    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->setFrameDuration(I)V

    .line 171
    invoke-virtual {v0, p3}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->setFrameCount(I)V

    .line 172
    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/XProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    .end local v0    # "animatedRotateDrawable":Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;
    :cond_0
    return-void
.end method

.method public setCycleDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 9
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 122
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManagerCache;->getInstance()Lcom/iflytek/base/skin/ThemeManagerCache;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mPluginId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/ThemeManagerCache;->get(Ljava/lang/String;)Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/iflytek/base/skin/IThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 124
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 125
    new-instance v0, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 127
    .local v0, "animatedDrawable":Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;
    iget v4, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mFrameDuration:I

    if-eq v4, v8, :cond_1

    .line 128
    iget v4, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mFrameDuration:I

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->setFrameDuration(I)V

    .line 129
    const-string/jumbo v4, "XProgressBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFrameDuration()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mFrameDuration:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    iget v4, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mFrameCount:I

    if-eq v4, v8, :cond_2

    .line 135
    iget v4, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mFrameCount:I

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->setFrameCount(I)V

    .line 136
    const-string/jumbo v4, "XProgressBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFrameCount()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mFrameCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_1
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mCycleDrawable:Ljava/lang/String;

    .line 143
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "mIndeterminate"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 145
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 146
    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 147
    const-string/jumbo v4, "XProgressBar"

    const-string/jumbo v5, "-------------------------------------------------->>"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/iflytek/base/skin/customView/XProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {p0, v7}, Lcom/iflytek/base/skin/customView/XProgressBar;->setIndeterminate(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XProgressBar;->postInvalidate()V

    .line 156
    const-string/jumbo v4, "XProgressBar"

    const-string/jumbo v5, "-------->> setIndeterminateDrawable()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0    # "animatedDrawable":Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 132
    .restart local v0    # "animatedDrawable":Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/16 v4, 0x96

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->setFrameDuration(I)V

    goto :goto_0

    .line 138
    :cond_2
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/AnimatedRotateDrawable;->setFrameCount(I)V

    goto :goto_1

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setHorizontalDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 6
    .param p1, "colorArrayString"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v1, 0x0

    .line 99
    .local v1, "colorArrayName":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    .line 105
    array-length v4, v1

    new-array v0, v4, [I

    .line 106
    .local v0, "colorArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 107
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManagerCache;->getInstance()Lcom/iflytek/base/skin/ThemeManagerCache;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/base/skin/customView/XProgressBar;->mPluginId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/ThemeManagerCache;->get(Ljava/lang/String;)Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-interface {v4, v5, p2}, Lcom/iflytek/base/skin/IThemeManager;->getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I

    move-result v4

    aput v4, v0, v3

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    .end local v0    # "colorArray":[I
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "XProgressBar"

    const-string/jumbo v5, "setHorizontalDrawable()"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "colorArray":[I
    .restart local v3    # "i":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/iflytek/base/skin/customView/XProgressBar;->getLayerDrawable([I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/iflytek/base/skin/customView/XProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
