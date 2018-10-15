.class public Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;
.super Landroid/widget/RelativeLayout;
.source "MovicesCardItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/RatingBar;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lalf;

.field private k:Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lalf;Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "moviceModel"    # Lalf;
    .param p3, "callBack"    # Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->a:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    .line 41
    iput-object p3, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->k:Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;

    .line 42
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->a()V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;)Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->k:Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 46
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300a5

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 49
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 50
    .local v2, "view":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v2, v1}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const v3, 0x7f0b0450

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->b:Landroid/widget/ImageView;

    .line 52
    const v3, 0x7f0b0451

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->c:Landroid/widget/TextView;

    .line 53
    const v3, 0x7f0b0455

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->d:Landroid/widget/TextView;

    .line 54
    const v3, 0x7f0b0456

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->e:Landroid/widget/TextView;

    .line 55
    const v3, 0x7f0b042d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->f:Landroid/widget/RatingBar;

    .line 56
    const v3, 0x7f0b0452

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->g:Landroid/widget/TextView;

    .line 57
    const v3, 0x7f0b0454

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->h:Landroid/widget/TextView;

    .line 58
    const v3, 0x7f0b0453

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->i:Landroid/widget/TextView;

    .line 59
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->b()V

    .line 60
    new-instance v3, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$1;-><init>(Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;)Lalf;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const v2, 0x7f0a002e

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 76
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    invoke-virtual {v1}, Lalf;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    invoke-virtual {v0}, Lalf;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "\u4e3b\u6f14    \u672a\u77e5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    invoke-virtual {v0}, Lalf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->e:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5bfc\u6f14    \u672a\u77e5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    invoke-virtual {v0}, Lalf;->f()I

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->f:Landroid/widget/RatingBar;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    invoke-virtual {v1}, Lalf;->f()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    div-double/2addr v2, v4

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    invoke-virtual {v1}, Lalf;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    invoke-virtual {v0}, Lalf;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    invoke-virtual {v2}, Lalf;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u7535\u5f71"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->f:Landroid/widget/RatingBar;

    invoke-virtual {v0, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :goto_3
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    invoke-virtual {v1}, Lalf;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->getListOptions()Lbcu;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    goto/16 :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4e3b\u6f14    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    invoke-virtual {v2}, Lalf;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5bfc\u6f14    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    invoke-virtual {v2}, Lalf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->f:Landroid/widget/RatingBar;

    invoke-virtual {v0, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public a(Lalf;)V
    .locals 1
    .param p1, "moviceModel"    # Lalf;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->j:Lalf;

    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->b()V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->setVisibility(I)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getListOptions()Lbcu;
    .locals 4

    .prologue
    const v3, 0x7f0a0034

    .line 120
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 122
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 126
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 128
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v3}, Lbcu$a;->a(I)Lbcu$a;

    move-result-object v1

    .line 130
    invoke-virtual {v1, v3}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v3}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 133
    .local v0, "options":Lbcu;
    return-object v0
.end method
