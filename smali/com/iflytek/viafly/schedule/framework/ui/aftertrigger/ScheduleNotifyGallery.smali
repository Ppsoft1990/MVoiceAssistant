.class public Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;
.super Landroid/widget/Gallery;
.source "ScheduleNotifyGallery.java"


# instance fields
.field private a:Landroid/view/MotionEvent;

.field private b:F

.field private c:F

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 30
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->b:F

    .line 31
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->c:F

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->d:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->b:F

    .line 31
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->c:F

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->d:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->b:F

    .line 31
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->c:F

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->d:Z

    .line 23
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x41700000    # 15.0f

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 40
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 42
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->e:Z

    if-eqz v6, :cond_5

    .line 84
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 88
    :goto_1
    return v5

    .line 45
    :pswitch_1
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->a:Landroid/view/MotionEvent;

    if-eqz v6, :cond_1

    .line 46
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->a:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 48
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->a:Landroid/view/MotionEvent;

    .line 49
    iput-boolean v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->e:Z

    .line 50
    iput-boolean v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->d:Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 52
    invoke-super {p0, p1}, Landroid/widget/Gallery;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_1

    .line 56
    :pswitch_2
    iget-boolean v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->d:Z

    if-eqz v6, :cond_0

    .line 58
    :try_start_0
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->a:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v0, v3, v6

    .line 59
    .local v0, "deltaX":F
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->a:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v1, v4, v6

    .line 60
    .local v1, "deltaY":F
    cmpl-float v6, v0, v8

    if-lez v6, :cond_2

    .line 61
    :goto_2
    cmpl-float v6, v1, v8

    if-lez v6, :cond_3

    .line 65
    :goto_3
    sub-float v6, v1, v0

    cmpl-float v6, v6, v9

    if-lez v6, :cond_4

    .line 66
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->e:Z

    .line 67
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->d:Z

    .line 68
    invoke-super {p0, p1}, Landroid/widget/Gallery;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_1

    .line 60
    :cond_2
    neg-float v0, v0

    goto :goto_2

    .line 61
    :cond_3
    neg-float v1, v1

    goto :goto_3

    .line 69
    :cond_4
    sub-float v6, v0, v1

    cmpl-float v6, v6, v9

    if-lez v6, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 71
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->e:Z

    .line 72
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleNotifyGallery;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 75
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/Gallery;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_1

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
