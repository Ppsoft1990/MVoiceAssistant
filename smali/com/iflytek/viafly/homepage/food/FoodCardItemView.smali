.class public Lcom/iflytek/viafly/homepage/food/FoodCardItemView;
.super Landroid/widget/RelativeLayout;
.source "FoodCardItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/RatingBar;

.field private e:Landroid/widget/TextView;

.field private f:Laks;

.field private g:Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laks;Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "foodModel"    # Laks;
    .param p3, "callBack"    # Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->f:Laks;

    .line 36
    iput-object p3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->g:Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;

    .line 37
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->a()V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/food/FoodCardItemView;)Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/food/FoodCardItemView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->g:Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 41
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300a0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 44
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 45
    .local v2, "view":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v2, v1}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    const v3, 0x7f0b042b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->b:Landroid/widget/ImageView;

    .line 47
    const v3, 0x7f0b042c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->c:Landroid/widget/TextView;

    .line 48
    const v3, 0x7f0b042d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->d:Landroid/widget/RatingBar;

    .line 49
    const v3, 0x7f0b0430

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->e:Landroid/widget/TextView;

    .line 50
    const v3, 0x7f0b042f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->h:Landroid/widget/TextView;

    .line 51
    const v3, 0x7f0b042e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->i:Landroid/widget/TextView;

    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->b()V

    .line 53
    new-instance v3, Lcom/iflytek/viafly/homepage/food/FoodCardItemView$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView$1;-><init>(Lcom/iflytek/viafly/homepage/food/FoodCardItemView;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/food/FoodCardItemView;)Laks;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/food/FoodCardItemView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->f:Laks;

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const v2, 0x7f0a002e

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->f:Laks;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->f:Laks;

    invoke-virtual {v1}, Laks;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->f:Laks;

    invoke-virtual {v2}, Laks;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->f:Laks;

    invoke-virtual {v2}, Laks;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->f:Laks;

    invoke-virtual {v0}, Laks;->c()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->f:Laks;

    invoke-virtual {v1}, Laks;->c()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->d:Landroid/widget/RatingBar;

    invoke-virtual {v0, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :goto_1
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->f:Laks;

    invoke-virtual {v1}, Laks;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->getListOptions()Lbcu;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    goto/16 :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->d:Landroid/widget/RatingBar;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->f:Laks;

    invoke-virtual {v1}, Laks;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0xa

    int-to-double v2, v1

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    div-double/2addr v2, v4

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->d:Landroid/widget/RatingBar;

    invoke-virtual {v0, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->f:Laks;

    invoke-virtual {v0}, Laks;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->f:Laks;

    invoke-virtual {v1}, Laks;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(Laks;)V
    .locals 1
    .param p1, "foodModel"    # Laks;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->f:Laks;

    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->b()V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->setVisibility(I)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getListOptions()Lbcu;
    .locals 3

    .prologue
    .line 100
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 102
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 106
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 108
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 110
    .local v0, "options":Lbcu;
    return-object v0
.end method
