.class public Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;
.super Landroid/widget/LinearLayout;
.source "ListenBookVoiceItemView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cover"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "author"    # Ljava/lang/String;
    .param p5, "desc"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->c:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->d:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->e:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->a()V

    .line 36
    return-void
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 39
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 40
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->a:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 41
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f030155

    const/4 v9, 0x0

    .line 42
    invoke-virtual {v5, v8, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 43
    .local v7, "view":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v7, v6}, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const v8, 0x7f0b078b

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 45
    .local v2, "historyCover":Landroid/widget/ImageView;
    const v8, 0x7f0b078c

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 46
    .local v4, "historyTitle":Landroid/widget/TextView;
    const v8, 0x7f0b078d

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, "historyAuthor":Landroid/widget/TextView;
    const v8, 0x7f0b078e

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 48
    .local v3, "historyDesc":Landroid/widget/TextView;
    const v8, 0x7f0b078f

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "divide":Landroid/view/View;
    iget-object v8, p0, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->c:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v8, p0, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->d:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 52
    iget-object v8, p0, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->d:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_0
    iget-object v8, p0, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->e:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 59
    iget-object v8, p0, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->e:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_1
    iget-object v8, p0, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 65
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->getListOptions()Lbcu;

    move-result-object v10

    invoke-virtual {v8, v9, v2, v10}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 69
    :goto_2
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 70
    return-void

    .line 54
    :cond_0
    const-string/jumbo v8, ""

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 61
    :cond_1
    const-string/jumbo v8, ""

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 67
    :cond_2
    const v8, 0x7f020309

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private getListOptions()Lbcu;
    .locals 4

    .prologue
    const v3, 0x7f020309

    .line 73
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 75
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 79
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v3}, Lbcu$a;->a(I)Lbcu$a;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v3}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v3}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 84
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 86
    .local v0, "options":Lbcu;
    return-object v0
.end method
