.class public Lauj;
.super Landroid/widget/PopupWindow;
.source "ScheduleDeleteGuide.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Lcom/iflytek/base/skin/customView/XButton;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

.field private j:Lavy;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 34
    iput v0, p0, Lauj;->e:I

    .line 35
    iput v0, p0, Lauj;->f:I

    .line 36
    iput v0, p0, Lauj;->g:I

    .line 38
    iput v0, p0, Lauj;->h:I

    .line 44
    iput-object p1, p0, Lauj;->a:Landroid/content/Context;

    .line 45
    iput p2, p0, Lauj;->d:I

    .line 46
    invoke-virtual {p0, v0}, Lauj;->setWidth(I)V

    .line 47
    invoke-virtual {p0, v0}, Lauj;->setHeight(I)V

    .line 48
    invoke-direct {p0, p1}, Lauj;->a(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lauj;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;
    .locals 1
    .param p0, "x0"    # Lauj;

    .prologue
    .line 28
    iget-object v0, p0, Lauj;->i:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    .line 106
    iget-object v3, p0, Lauj;->c:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 107
    .local v0, "tipParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v3, p0, Lauj;->a:Landroid/content/Context;

    const-wide v4, 0x4046800000000000L    # 45.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    .line 108
    .local v1, "tipViewHeight":I
    iget v3, p0, Lauj;->f:I

    sub-int/2addr v3, v1

    iput v3, p0, Lauj;->f:I

    .line 109
    iget v3, p0, Lauj;->f:I

    iget-object v4, p0, Lauj;->a:Landroid/content/Context;

    const-wide/high16 v6, 0x404c000000000000L    # 56.0

    invoke-static {v4, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 110
    iget v3, p0, Lauj;->f:I

    add-int/2addr v3, v1

    iget v4, p0, Lauj;->g:I

    add-int/2addr v3, v4

    iput v3, p0, Lauj;->f:I

    .line 112
    :cond_0
    iget v3, p0, Lauj;->f:I

    iput v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 113
    iget-object v3, p0, Lauj;->a:Landroid/content/Context;

    const-wide v4, 0x4051800000000000L    # 70.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    .line 114
    .local v2, "tipViewWidth":I
    iget v3, p0, Lauj;->e:I

    add-int/2addr v3, v2

    iget v4, p0, Lauj;->d:I

    if-le v3, v4, :cond_1

    .line 115
    iget v3, p0, Lauj;->d:I

    sub-int/2addr v3, v2

    iput v3, p0, Lauj;->e:I

    .line 117
    :cond_1
    iget-object v3, p0, Lauj;->i:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    if-ne v3, v4, :cond_2

    .line 119
    iget v3, p0, Lauj;->d:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lauj;->a:Landroid/content/Context;

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-static {v4, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 124
    :goto_0
    iget-object v3, p0, Lauj;->c:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v0}, Lcom/iflytek/base/skin/customView/XButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void

    .line 122
    :cond_2
    iget v3, p0, Lauj;->e:I

    iget-object v4, p0, Lauj;->a:Landroid/content/Context;

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v4, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300fe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lauj;->b:Landroid/view/View;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02043b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lauj;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lauj;->setFocusable(Z)V

    .line 58
    iget-object v1, p0, Lauj;->b:Landroid/view/View;

    const v2, 0x7f0b05f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v1, p0, Lauj;->c:Lcom/iflytek/base/skin/customView/XButton;

    .line 59
    iget-object v1, p0, Lauj;->c:Lcom/iflytek/base/skin/customView/XButton;

    new-instance v2, Lauj$1;

    invoke-direct {v2, p0, p1}, Lauj$1;-><init>(Lauj;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lauj;->b:Landroid/view/View;

    new-instance v2, Lauj$2;

    invoke-direct {v2, p0}, Lauj$2;-><init>(Lauj;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lauj;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Lauj;->setContentView(Landroid/view/View;)V

    .line 92
    invoke-direct {p0}, Lauj;->a()V

    .line 93
    return-void
.end method

.method static synthetic b(Lauj;)I
    .locals 1
    .param p0, "x0"    # Lauj;

    .prologue
    .line 28
    iget v0, p0, Lauj;->h:I

    return v0
.end method

.method static synthetic c(Lauj;)Lavy;
    .locals 1
    .param p0, "x0"    # Lauj;

    .prologue
    .line 28
    iget-object v0, p0, Lauj;->j:Lavy;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "mScheduleId"    # I

    .prologue
    .line 136
    iput p1, p0, Lauj;->h:I

    .line 137
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0}, Lauj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lauj;->dismiss()V

    .line 99
    :cond_0
    invoke-direct {p0}, Lauj;->a()V

    .line 100
    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0, v1, v1}, Lauj;->showAtLocation(Landroid/view/View;III)V

    .line 101
    iget-object v0, p0, Lauj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->p()V

    .line 102
    return-void
.end method

.method public a(Lavy;)V
    .locals 0
    .param p1, "mOnDeleteItemListener"    # Lavy;

    .prologue
    .line 128
    iput-object p1, p0, Lauj;->j:Lavy;

    .line 129
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;)V
    .locals 0
    .param p1, "category"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    .prologue
    .line 151
    iput-object p1, p0, Lauj;->i:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    .line 152
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "mScheduleItemHeight"    # I

    .prologue
    .line 140
    iput p1, p0, Lauj;->g:I

    .line 141
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1, "locX"    # I

    .prologue
    .line 144
    iput p1, p0, Lauj;->e:I

    .line 145
    return-void
.end method

.method public d(I)V
    .locals 0
    .param p1, "locY"    # I

    .prologue
    .line 147
    iput p1, p0, Lauj;->f:I

    .line 148
    return-void
.end method
