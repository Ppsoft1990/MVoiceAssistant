.class public Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;
.super Landroid/widget/RelativeLayout;
.source "FluentPageTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/iflytek/base/skin/customView/XImageView;

.field private c:Lcom/iflytek/base/skin/customView/XImageView;

.field private d:Lcom/iflytek/base/skin/customView/XImageView;

.field private e:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/graphics/drawable/AnimationDrawable;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Lcom/iflytek/base/skin/customView/XImageView;

.field private k:Lcom/iflytek/base/skin/customView/XImageView;

.field private l:Lcom/iflytek/base/skin/customView/XProgressView;

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-string/jumbo v0, "FluentPageTitle"

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->a:Ljava/lang/String;

    .line 211
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;-><init>(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)V

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->m:Landroid/os/Handler;

    .line 69
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->a(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->b:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x8

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030098

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->d(Landroid/content/Context;)I

    move-result v2

    .line 77
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x60

    invoke-static {v3, v4}, Lazk;->a(Landroid/content/Context;I)I

    move-result v3

    .line 75
    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->addView(Landroid/view/View;II)V

    .line 78
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x5

    .line 79
    invoke-static {p1, v3}, Lazk;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v0, "lpprogress":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    new-instance v2, Lcom/iflytek/base/skin/customView/XProgressView;

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/iflytek/base/skin/customView/XProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->l:Lcom/iflytek/base/skin/customView/XProgressView;

    .line 87
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->l:Lcom/iflytek/base/skin/customView/XProgressView;

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->l:Lcom/iflytek/base/skin/customView/XProgressView;

    invoke-virtual {v2, v5}, Lcom/iflytek/base/skin/customView/XProgressView;->setVisibility(I)V

    .line 89
    const v2, 0x7f0b03f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->b:Lcom/iflytek/base/skin/customView/XImageView;

    .line 90
    const v2, 0x7f0b02a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->j:Lcom/iflytek/base/skin/customView/XImageView;

    .line 91
    const v2, 0x7f0b03f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->k:Lcom/iflytek/base/skin/customView/XImageView;

    .line 92
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->k:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 93
    const v2, 0x7f0b02a5

    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 95
    const v2, 0x7f0b02a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->i:Landroid/widget/RelativeLayout;

    .line 97
    const v2, 0x7f0b03f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->d:Lcom/iflytek/base/skin/customView/XImageView;

    .line 98
    const v2, 0x7f0b02a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->f:Landroid/widget/TextView;

    .line 99
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->f:Landroid/widget/TextView;

    const-string/jumbo v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    const v2, 0x7f0b03f5

    .line 105
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->h:Landroid/widget/LinearLayout;

    .line 106
    const v2, 0x7f0b02a1

    .line 107
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->e:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 111
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->c:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->d:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->e:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->h:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "tag_fluent_title_speak"

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->c:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v3, "tag_fluent_title_refresh"

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setTag(Ljava/lang/Object;)V

    .line 117
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->e:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const-string/jumbo v3, "tag_fluent_title_back"

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setTag(Ljava/lang/Object;)V

    .line 118
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->d:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v3, "tag_fluent_title_more"

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setTag(Ljava/lang/Object;)V

    .line 119
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->d:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 122
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->c()V

    .line 124
    return-void
.end method

.method static synthetic b(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->g:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Lcom/iflytek/base/skin/customView/XProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->l:Lcom/iflytek/base/skin/customView/XProgressView;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->m:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 181
    const-string/jumbo v0, "FluentPageTitle"

    const-string/jumbo v1, "startSpeakAnimation"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->g:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->b()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    return-void
.end method

.method public a(II)V
    .locals 5
    .param p1, "progress"    # I
    .param p2, "modeAnimation"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 242
    if-nez p1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->l:Lcom/iflytek/base/skin/customView/XProgressView;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XProgressView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 244
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->l:Lcom/iflytek/base/skin/customView/XProgressView;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XProgressView;->setVisibility(I)V

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->l:Lcom/iflytek/base/skin/customView/XProgressView;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XProgressView;->startAnimation()V

    .line 253
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->m:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->m:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 255
    :cond_2
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 256
    if-nez p2, :cond_3

    const/4 v0, 0x1

    .line 257
    .local v0, "isImmediateFinish":Z
    :cond_3
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->l:Lcom/iflytek/base/skin/customView/XProgressView;

    new-instance v2, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$2;

    invoke-direct {v2, p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$2;-><init>(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)V

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/base/skin/customView/XProgressView;->endAnimation(Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 189
    const-string/jumbo v0, "FluentPageTitle"

    const-string/jumbo v1, "stopSpeakAnimation"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    const/16 v6, 0xfa

    .line 194
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->g:Landroid/graphics/drawable/AnimationDrawable;

    .line 195
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.title_broadcast_first"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 196
    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 198
    .local v0, "drawable01":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.title_broadcast_second"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 199
    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 201
    .local v1, "drawable02":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.title_broadcast_nor"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 202
    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 205
    .local v2, "drawable03":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->g:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v0, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 206
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->g:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v1, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 207
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->g:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v2, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 208
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->g:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 209
    return-void
.end method

.method public getBackBtn()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->e:Lcom/iflytek/base/skin/customView/XLinearLayout;

    return-object v0
.end method

.method public getMoreBtn()Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->d:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method public getRefeshBtn()Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->c:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method public getRefreshAndCancelContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getSpeakBtn()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    .line 131
    .local v0, "homeTitle":Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getEventListener()Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getEventListener()Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer$a;

    move-result-object v2

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    invoke-interface {v2, p1, v1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer$a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string/jumbo v0, "FluentPageTitle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTitle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method
