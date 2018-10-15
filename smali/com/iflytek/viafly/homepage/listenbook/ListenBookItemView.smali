.class public Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;
.super Landroid/widget/RelativeLayout;
.source "ListenBookItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Lakx;

.field private h:Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lakx;Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listenModel"    # Lakx;
    .param p3, "callBack"    # Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->g:Lakx;

    .line 39
    iput-object p3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->h:Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;

    .line 40
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->a()V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;)Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->h:Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 44
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030052

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 47
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 48
    .local v2, "view":Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v2, v1}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    const v3, 0x7f0b02c9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->b:Landroid/widget/ImageView;

    .line 50
    const v3, 0x7f0b02cb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->c:Landroid/widget/TextView;

    .line 51
    const v3, 0x7f0b02cc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->d:Landroid/widget/TextView;

    .line 52
    const v3, 0x7f0b02cd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->e:Landroid/widget/TextView;

    .line 53
    const v3, 0x7f0b02ca

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->f:Landroid/widget/ImageView;

    .line 54
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->b()V

    .line 55
    new-instance v3, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$1;-><init>(Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;)Lakx;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->g:Lakx;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const v5, 0x7f0a002e

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 66
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->g:Lakx;

    if-nez v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 70
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 71
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 73
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 75
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->g:Lakx;

    invoke-virtual {v2}, Lakx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->g:Lakx;

    invoke-virtual {v1}, Lakx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->g:Lakx;

    invoke-virtual {v2}, Lakx;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->g:Lakx;

    invoke-virtual {v1}, Lakx;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->g:Lakx;

    invoke-virtual {v2}, Lakx;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_2
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->g:Lakx;

    invoke-virtual {v1}, Lakx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 89
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->g:Lakx;

    invoke-virtual {v2}, Lakx;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->getListOptions()Lbcu;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    goto/16 :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->d:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->e:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->b:Landroid/widget/ImageView;

    const v2, 0x7f020309

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lakx;)V
    .locals 1
    .param p1, "listenModel"    # Lakx;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->g:Lakx;

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->b()V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->setVisibility(I)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getListOptions()Lbcu;
    .locals 4

    .prologue
    const v3, 0x7f020309

    .line 106
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 108
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 112
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 114
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 115
    invoke-virtual {v1, v3}, Lbcu$a;->a(I)Lbcu$a;

    move-result-object v1

    .line 116
    invoke-virtual {v1, v3}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v3}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 119
    .local v0, "options":Lbcu;
    return-object v0
.end method
