.class public Lcom/iflytek/common/adaptation/ui/AdaptationDialog;
.super Landroid/app/Dialog;
.source "AdaptationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdaptationDialog"


# instance fields
.field private mBody:Landroid/widget/TextView;

.field private mBodyString:Ljava/lang/String;

.field private mCheckBox:Lcom/iflytek/base/skin/customView/XImageView;

.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field private mLeftButton:Landroid/widget/Button;

.field private mLeftListener:Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;

.field private mLeftString:Ljava/lang/String;

.field private mPref:Ljava/lang/String;

.field private mRightButton:Landroid/widget/Button;

.field private mRightListener:Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;

.field private mRightString:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const v0, 0x7f08000a

    invoke-direct {p0, p1, v0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;-><init>(Landroid/content/Context;I)V

    .line 52
    iput-object p1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 56
    iput-object p1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic access$001(Lcom/iflytek/common/adaptation/ui/AdaptationDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/adaptation/ui/AdaptationDialog;

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 74
    const v0, 0x7f0b0276

    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mTitle:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0b0277

    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mBody:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0b0279

    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mLeftButton:Landroid/widget/Button;

    .line 77
    const v0, 0x7f0b027a

    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mRightButton:Landroid/widget/Button;

    .line 78
    const v0, 0x7f0b0278

    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mCheckBox:Lcom/iflytek/base/skin/customView/XImageView;

    .line 79
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mTitleString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mBodyString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mBody:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mBodyString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mLeftString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mLeftString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mRightString:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mRightString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mCheckBox:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 144
    const-string/jumbo v3, "AdaptationDialog"

    const-string/jumbo v4, "dismiss"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 147
    .local v0, "outAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 148
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 149
    new-instance v1, Lcom/iflytek/common/adaptation/ui/AdaptationDialog$1;

    invoke-direct {v1, p0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog$1;-><init>(Lcom/iflytek/common/adaptation/ui/AdaptationDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 167
    iget-object v1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mConvertView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    .end local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->dismiss()V

    .line 175
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0b0279

    if-ne v2, v3, :cond_2

    .line 180
    iget-object v1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mLeftListener:Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mLeftListener:Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;

    invoke-interface {v1, v0}, Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;->onClick(I)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->dismiss()V

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0b027a

    if-ne v2, v3, :cond_4

    .line 185
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mRightListener:Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mRightListener:Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;

    invoke-interface {v0, v1}, Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;->onClick(I)V

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->dismiss()V

    goto :goto_0

    .line 189
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0b0278

    if-ne v2, v3, :cond_1

    .line 190
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mPref:Ljava/lang/String;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mPref:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lil;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_1
    invoke-virtual {v2, v3, v0}, Lil;->a(Ljava/lang/String;Z)V

    .line 191
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mPref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mCheckBox:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "image.ic_checkbox_carmode_nor"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 190
    goto :goto_1

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mCheckBox:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "image.ic_checkbox_carmode_sel"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method

.method protected onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 60
    iget-object v3, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030043

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, "lParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->setContentView(Landroid/view/View;)V

    .line 66
    iput-object v1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mConvertView:Landroid/view/View;

    .line 67
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->initView()V

    .line 68
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {p0, v6}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->setCancelable(Z)V

    .line 70
    invoke-virtual {p0, v6}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->setCanceledOnTouchOutside(Z)V

    .line 71
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mBodyString:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setCheckBoxSetting(Ljava/lang/String;)V
    .locals 0
    .param p1, "pref"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mPref:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setRightButton(Ljava/lang/String;Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mRightString:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mRightListener:Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;

    .line 117
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mTitleString:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setleftbutton(Ljava/lang/String;Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mLeftString:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mLeftListener:Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;

    .line 112
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->onCreate()V

    .line 129
    const-string/jumbo v3, "AdaptationDialog"

    const-string/jumbo v4, "show()"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 131
    .local v9, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x50

    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 132
    iput v5, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 133
    iput v5, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 134
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 135
    .local v0, "inAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 137
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 138
    iget-object v1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->mConvertView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
