.class public Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "CBLoopViewPager.java"


# instance fields
.field a:Landroid/support/v4/view/ViewPager$f;

.field private b:Lajg;

.field private c:Lajb;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:Landroid/support/v4/view/ViewPager$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, -0x3e7

    .line 114
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->d:Z

    .line 20
    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->e:Z

    .line 21
    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->f:Z

    .line 22
    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->g:I

    .line 23
    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->h:I

    .line 24
    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->i:I

    .line 25
    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->j:I

    .line 60
    iput v2, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->k:F

    iput v2, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->l:F

    .line 127
    new-instance v0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;-><init>(Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->m:Landroid/support/v4/view/ViewPager$f;

    .line 115
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c()V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, -0x3e7

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->d:Z

    .line 20
    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->e:Z

    .line 21
    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->f:Z

    .line 22
    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->g:I

    .line 23
    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->h:I

    .line 24
    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->i:I

    .line 25
    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->j:I

    .line 60
    iput v2, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->k:F

    iput v2, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->l:F

    .line 127
    new-instance v0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager$1;-><init>(Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->m:Landroid/support/v4/view/ViewPager$f;

    .line 120
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c()V

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;)Lajb;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c:Lajb;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->m:Landroid/support/v4/view/ViewPager$f;

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 125
    return-void
.end method


# virtual methods
.method public a(Lba;Z)V
    .locals 2
    .param p1, "adapter"    # Lba;
    .param p2, "canLoop"    # Z

    .prologue
    .line 28
    check-cast p1, Lajb;

    .end local p1    # "adapter":Lba;
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c:Lajb;

    .line 29
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c:Lajb;

    invoke-virtual {v0, p2}, Lajb;->a(Z)V

    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c:Lajb;

    invoke-virtual {v0, p0}, Lajb;->a(Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;)V

    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c:Lajb;

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Lba;)V

    .line 33
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getFristItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setCurrentItem(IZ)V

    .line 34
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->d:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->e:Z

    return v0
.end method

.method public getAdapter()Lajb;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c:Lajb;

    return-object v0
.end method

.method public bridge synthetic getAdapter()Lba;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getAdapter()Lajb;

    move-result-object v0

    return-object v0
.end method

.method public getFristItem()I
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c:Lajb;

    invoke-virtual {v0}, Lajb;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastItem()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c:Lajb;

    invoke-virtual {v0}, Lajb;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getRealItem()I
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c:Lajb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c:Lajb;

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lajb;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->d:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 64
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->d:Z

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->b:Lajg;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 88
    :goto_1
    return v0

    .line 68
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->g:I

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->h:I

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->k:F

    goto :goto_0

    .line 74
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->i:I

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->j:I

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->l:F

    .line 77
    const/high16 v6, 0x40a00000    # 5.0f

    .line 78
    .local v6, "SENS":F
    iget v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->k:F

    iget v1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->l:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->b:Lajg;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getRealItem()I

    move-result v1

    iget v2, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->g:I

    iget v3, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->h:I

    iget v4, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->i:I

    iget v5, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->j:I

    invoke-interface/range {v0 .. v5}, Lajg;->onItemClick(IIIII)V

    .line 81
    :cond_1
    iput v7, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->k:F

    .line 82
    iput v7, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->l:F

    goto :goto_0

    .line 88
    .end local v6    # "SENS":F
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->f:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 53
    :cond_0
    return-void
.end method

.method public setCanLoop(Z)V
    .locals 2
    .param p1, "canLoop"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->e:Z

    .line 175
    if-nez p1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getRealItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setCurrentItem(IZ)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c:Lajb;

    if-nez v0, :cond_1

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c:Lajb;

    invoke-virtual {v0, p1}, Lajb;->a(Z)V

    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->c:Lajb;

    invoke-virtual {v0}, Lajb;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setCanScroll(Z)V
    .locals 0
    .param p1, "isCanScroll"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->d:Z

    .line 56
    return-void
.end method

.method public setOnItemClickListener(Lajg;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lajg;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->b:Lajg;

    .line 185
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$f;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->a:Landroid/support/v4/view/ViewPager$f;

    .line 110
    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->f:Z

    .line 59
    return-void
.end method
