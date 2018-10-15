.class public Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;
.source "HeadSetFoundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/widget/TextView;

.field private h:Z

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;-><init>()V

    .line 245
    new-instance v0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$4;

    invoke-direct {v0, p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$4;-><init>(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)V

    iput-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02043b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    const v0, 0x7f0b03e9

    invoke-virtual {p0, v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a:Landroid/widget/RelativeLayout;

    .line 84
    const v0, 0x7f0b0390

    invoke-virtual {p0, v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->b:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f0b03ed

    invoke-virtual {p0, v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->c:Landroid/widget/CheckBox;

    .line 86
    const v0, 0x7f0b03ec

    invoke-virtual {p0, v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->d:Landroid/widget/Button;

    .line 87
    const v0, 0x7f0b03eb

    invoke-virtual {p0, v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->e:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f0b038e

    invoke-virtual {p0, v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->g:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->c:Landroid/widget/CheckBox;

    new-instance v1, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$1;

    invoke-direct {v1, p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$1;-><init>(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->c:Landroid/widget/CheckBox;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_HEADSET_AUTO_START_CHECK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .param p1, "isLoading"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 280
    iput-boolean p1, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->h:Z

    .line 282
    if-eqz p1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->f:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->c()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->f:Landroid/view/animation/Animation;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 288
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->g:Landroid/widget/TextView;

    const-string/jumbo v3, "\u63d2\u4ef6\u542f\u52a8\u4e2d..."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :goto_0
    iget-object v3, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v3, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->c:Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->d:Landroid/widget/Button;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 298
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 291
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->g:Landroid/widget/TextView;

    const-string/jumbo v3, "Mobius \u8033\u673a\u5728\u9644\u8fd1"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 295
    goto :goto_1

    :cond_3
    move v0, v1

    .line 296
    goto :goto_2

    :cond_4
    move v2, v1

    .line 297
    goto :goto_3
.end method

.method static synthetic b(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->c:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->finish()V

    .line 242
    const/4 v0, 0x0

    const v1, 0x7f040004

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->overridePendingTransition(II)V

    .line 243
    return-void
.end method

.method static synthetic b(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 4
    .param p1, "isDownloading"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 303
    if-eqz p1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->f:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->c()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->f:Landroid/view/animation/Animation;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 309
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->g:Landroid/widget/TextView;

    const-string/jumbo v3, "\u63d2\u4ef6\u4e0b\u8f7d\u4e2d..."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :goto_0
    iget-object v3, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v3, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->c:Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->d:Landroid/widget/Button;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 312
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->g:Landroid/widget/TextView;

    const-string/jumbo v3, "Mobius \u8033\u673a\u5728\u9644\u8fd1"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 316
    goto :goto_1

    :cond_3
    move v0, v1

    .line 317
    goto :goto_2

    :cond_4
    move v2, v1

    .line 318
    goto :goto_3
.end method

.method private c()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 322
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 323
    .local v0, "animation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 324
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 325
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 326
    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->b()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->h:Z

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->b()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 114
    :sswitch_0
    iget-boolean v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->h:Z

    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->b()V

    goto :goto_0

    .line 122
    :sswitch_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->c()Lcom/iflytek/viafly/ViaFlyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ViaFlyApp;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    const-string/jumbo v0, "\u63d2\u4ef6\u6846\u67b6\u672a\u521d\u59cb\u5b8c\u6210"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxj;->a(Landroid/content/Context;)Lxj;

    move-result-object v0

    const-string/jumbo v1, "dialog"

    invoke-virtual {v0, v1}, Lxj;->a(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100133"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Larc;->a()Larc;

    move-result-object v0

    invoke-virtual {v0}, Larc;->h()V

    .line 133
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "HeadSetFoundActivity"

    new-instance v2, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$2;

    invoke-direct {v2, p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$2;-><init>(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)V

    invoke-virtual {v0, v1, v2}, Lari;->a(Ljava/lang/String;Larn;)V

    .line 190
    new-instance v0, Lasi;

    new-instance v1, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$3;

    invoke-direct {v1, p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$3;-><init>(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)V

    invoke-direct {v0, p0, v1}, Lasi;-><init>(Landroid/content/Context;Lasi$a;)V

    const/16 v1, 0x12d

    sget-object v2, Lasc;->a:Lasc;

    sget-object v3, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->bottom_tool_bar:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .line 209
    invoke-virtual {v0, p0, v1, v2, v3}, Lasi;->a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto :goto_0

    .line 217
    :sswitch_2
    iget-boolean v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->h:Z

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->b()V

    goto :goto_0

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x7f0b0390 -> :sswitch_0
        0x7f0b03e9 -> :sswitch_2
        0x7f0b03ec -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 68
    const v0, 0x7f030096

    invoke-virtual {p0, v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a()V

    .line 70
    return-void
.end method
