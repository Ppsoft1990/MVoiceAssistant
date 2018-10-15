.class public Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;
.super Landroid/widget/LinearLayout;
.source "SmartSmallFloatView.java"


# static fields
.field public static final CAR_ICON_APPEAR:I = 0x65

.field public static final CAR_ICON_DISAPPEAR:I = 0x64

.field public static final END_ANIMATION:I = 0x66

.field private static final MOVE_TIME:I = 0x64

.field private static final OFFSET_TOLERATE_VALUE:F = 5.0f

.field public static final SMALL_WINDOW_APPEAR:I = 0x69

.field public static final START_ANIMATION:I = 0x67

.field private static final TAG:Ljava/lang/String; = "SmartSmallFloatView"


# instance fields
.field private mActionDownTime:J

.field private mActionMoveTime:J

.field private mAnimImageView:Lcom/iflytek/viafly/smartschedule/AnimImageView;

.field private mContext:Landroid/content/Context;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private screenWidth:I

.field private statusBarHeight:I

.field private windowManager:Landroid/view/WindowManager;

.field private xDownInScreen:F

.field private xInScreen:F

.field private xInView:F

.field private yDownInScreen:F

.field private yInScreen:F

.field private yInView:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wmParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v2, -0x2

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mContext:Landroid/content/Context;

    .line 97
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 102
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-static {p1}, Lhl;->d(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->screenWidth:I

    .line 108
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->windowManager:Landroid/view/WindowManager;

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030121

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 112
    const v1, 0x7f0b067d

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/smartschedule/AnimImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mAnimImageView:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    .line 113
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->initStatusBarHeight()V

    .line 114
    return-void
.end method

.method private initStatusBarHeight()V
    .locals 7

    .prologue
    .line 246
    :try_start_0
    const-string/jumbo v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 247
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 248
    .local v3, "o":Ljava/lang/Object;
    const-string/jumbo v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 249
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 250
    .local v4, "x":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->statusBarHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "x":I
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SmartSmallFloatView"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAppearAnimation()V
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "appearAnimation":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->setVisibility(I)V

    .line 223
    :cond_0
    return-void
.end method

.method private startDisappearAnimation()V
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "disappearAnimation":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    :cond_0
    return-void
.end method

.method private updateViewLayout()V
    .locals 3

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "SmartSmallFloatView"

    const-string/jumbo v2, "updateViewLayout() exception:"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateViewPosition()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->xInScreen:F

    iget v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->xInView:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 194
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->yInScreen:F

    iget v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->yInView:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 196
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->updateViewLayout()V

    .line 197
    return-void
.end method


# virtual methods
.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x40a00000    # 5.0f

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    return v7

    .line 121
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->xInView:F

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->yInView:F

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->xDownInScreen:F

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->statusBarHeight:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->yDownInScreen:F

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->xInScreen:F

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->statusBarHeight:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->yInScreen:F

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mActionDownTime:J

    goto :goto_0

    .line 130
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->xInScreen:F

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->statusBarHeight:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->yInScreen:F

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mActionMoveTime:J

    .line 135
    iget v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->xDownInScreen:F

    iget v3, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->xInScreen:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 136
    .local v0, "xOffset":F
    iget v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->yDownInScreen:F

    iget v3, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->yInScreen:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 138
    .local v1, "yOffset":F
    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mActionMoveTime:J

    iget-wide v4, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mActionDownTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    cmpl-float v2, v0, v6

    if-gtz v2, :cond_1

    cmpl-float v2, v1, v6

    if-lez v2, :cond_0

    .line 141
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->updateViewPosition()V

    goto :goto_0

    .line 146
    .end local v0    # "xOffset":F
    .end local v1    # "yOffset":F
    :pswitch_2
    iget v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->xDownInScreen:F

    iget v3, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->xInScreen:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 147
    .restart local v0    # "xOffset":F
    iget v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->yDownInScreen:F

    iget v3, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->yInScreen:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 148
    .restart local v1    # "yOffset":F
    cmpg-float v2, v0, v6

    if-gez v2, :cond_2

    cmpg-float v2, v1, v6

    if-gez v2, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->performClick()Z

    goto/16 :goto_0

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->screenWidth:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 155
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->updateViewLayout()V

    goto/16 :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setImages(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 7
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 257
    if-nez p1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mAnimImageView:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    if-eqz v4, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getScheduleType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 266
    const-string/jumbo v4, "SmartSmallFloatView"

    const-string/jumbo v5, "setImages | floatIcons = null, showImage"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getFloatIcon()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 270
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, "cardImage":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 272
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 274
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mAnimImageView:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-virtual {v4, v0}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 277
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mAnimImageView:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getFloatIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->setImage(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mAnimImageView:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getFloatIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->setImage(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v1    # "cardImage":Ljava/io/File;
    :cond_4
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mAnimImageView:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getFloatIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->setImage(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    .end local v3    # "path":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "SmartSmallFloatView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setImages | id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", floatIconUrl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getFloatIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getFloatIconUrls()[Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "floatIcons":[Ljava/lang/String;
    if-nez v2, :cond_6

    .line 291
    const-string/jumbo v4, "SmartSmallFloatView"

    const-string/jumbo v5, "setImages | floatIcons = null, showImage"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mAnimImageView:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getFloatIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->setImage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    :cond_6
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getShowTime()I

    move-result v4

    if-nez v4, :cond_7

    .line 297
    const-string/jumbo v4, "SmartSmallFloatView"

    const-string/jumbo v5, "setImages | showTime = 0, show anim"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mAnimImageView:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getFloatIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getRepeatTime()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->setImages([Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 300
    :cond_7
    const-string/jumbo v4, "SmartSmallFloatView"

    const-string/jumbo v5, "setImages | showTime > 1, showImage"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mAnimImageView:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getFloatIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->setImage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 180
    return-void
.end method

.method public startScreenOnAnimation()V
    .locals 3

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "appearAnimation":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->setVisibility(I)V

    .line 237
    :cond_0
    return-void
.end method
