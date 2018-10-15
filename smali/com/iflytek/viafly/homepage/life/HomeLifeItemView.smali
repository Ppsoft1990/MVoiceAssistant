.class public Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;
.super Landroid/widget/LinearLayout;
.source "HomeLifeItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/iflytek/base/skin/customView/XImageView;

.field private h:Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

.field private i:Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$a;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeLifeServiceItem"    # Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    .param p3, "itemClick"    # Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$a;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string/jumbo v0, "HomeLifeItemView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->b:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "image.card_life_default"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->c:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->a:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->h:Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .line 56
    iput-object p3, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->i:Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$a;

    .line 57
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->a()V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;)Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->h:Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 61
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 63
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300a2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 64
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 65
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    const v3, 0x7f0b0439

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->d:Landroid/widget/ImageView;

    .line 67
    const v3, 0x7f0b043b

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->e:Landroid/widget/TextView;

    .line 68
    const v3, 0x7f0b0438

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->f:Landroid/widget/LinearLayout;

    .line 69
    const v3, 0x7f0b043a

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    .line 70
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->b()V

    .line 71
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$1;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$1;-><init>(Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;

    .prologue
    .line 26
    iget v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->j:I

    return v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 81
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->h:Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->h:Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->h:Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "imageSrc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->d:Landroid/widget/ImageView;

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v0, v3}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    .end local v0    # "imageSrc":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local v0    # "imageSrc":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->d:Landroid/widget/ImageView;

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v2

    const-string/jumbo v3, "image.card_life_default"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->h:Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->getListOptions()Lbcu;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;)Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->i:Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$a;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->g:Lcom/iflytek/base/skin/customView/XImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getListOptions()Lbcu;
    .locals 3

    .prologue
    .line 105
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 107
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 111
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 113
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 115
    .local v0, "options":Lbcu;
    return-object v0
.end method
