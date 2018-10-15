.class public Lcom/iflytek/viafly/call/BroadcastFloatView;
.super Landroid/widget/LinearLayout;
.source "BroadcastFloatView.java"


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:I

.field private c:I

.field private d:Lcom/iflytek/base/skin/customView/XImageView;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide v2, 0x404b800000000000L    # 55.0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v1, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v1, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->d:Lcom/iflytek/base/skin/customView/XImageView;

    .line 51
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->d:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/viafly/call/BroadcastFloatView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->a:Landroid/view/WindowManager;

    .line 56
    invoke-direct {p0}, Lcom/iflytek/viafly/call/BroadcastFloatView;->getStatusBarHeight()I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->i:I

    .line 57
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->k:I

    .line 59
    const v1, 0x7f02000e

    const v2, 0x7f02000b

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/call/BroadcastFloatView;->a(II)V

    .line 62
    new-instance v1, Lcom/iflytek/viafly/call/BroadcastFloatView$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/call/BroadcastFloatView$1;-><init>(Lcom/iflytek/viafly/call/BroadcastFloatView;)V

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/call/BroadcastFloatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/call/BroadcastFloatView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/BroadcastFloatView;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/call/BroadcastFloatView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/BroadcastFloatView;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/call/BroadcastFloatView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/BroadcastFloatView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->m:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private getStatusBarHeight()I
    .locals 6

    .prologue
    .line 126
    iget v5, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->i:I

    if-nez v5, :cond_0

    .line 128
    :try_start_0
    const-string/jumbo v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 129
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 130
    .local v3, "o":Ljava/lang/Object;
    const-string/jumbo v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 131
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 132
    .local v4, "x":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/call/BroadcastFloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "x":I
    :cond_0
    :goto_0
    iget v5, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->i:I

    return v5

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/iflytek/viafly/call/BroadcastFloatView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 84
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->g:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 85
    iget v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->h:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 86
    iget-boolean v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->l:Z

    if-eqz v1, :cond_0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->a:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(II)V
    .locals 0
    .param p1, "normalImgId"    # I
    .param p2, "pressImgId"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/call/BroadcastFloatView;->setImg(I)V

    .line 74
    iput p1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->b:I

    .line 75
    iput p2, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->c:I

    .line 76
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->l:Z

    .line 142
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->l:Z

    .line 146
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 102
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->e:F

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->f:F

    .line 104
    iget v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->c:I

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/call/BroadcastFloatView;->setImg(I)V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->j:Z

    goto :goto_0

    .line 108
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->e:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->g:F

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->f:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->i:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->h:F

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->k:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->f:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->k:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/call/BroadcastFloatView;->a()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->j:Z

    goto :goto_0

    .line 116
    :pswitch_2
    iget v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->b:I

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/call/BroadcastFloatView;->setImg(I)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setImg(I)V
    .locals 1
    .param p1, "imgId"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->d:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    .line 80
    return-void
.end method

.method public setOnFloatWindowClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onFloatWindowClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/iflytek/viafly/call/BroadcastFloatView;->m:Landroid/view/View$OnClickListener;

    .line 96
    return-void
.end method
