.class public Layw;
.super Landroid/widget/BaseAdapter;
.source "TranslateResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layw$c;,
        Layw$b;,
        Layw$a;,
        Layw$d;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/translate/entity/TranslateResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Layw$c;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/translate/entity/TranslateResultItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/translate/entity/TranslateResultItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Layw;->e:I

    .line 40
    iput-object p1, p0, Layw;->b:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Layw;->a:Ljava/util/List;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Layw;->c:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method

.method static synthetic a(Layw;I)I
    .locals 0
    .param p0, "x0"    # Layw;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Layw;->e:I

    return p1
.end method

.method static synthetic a(Layw;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Layw;

    .prologue
    .line 26
    iget-object v0, p0, Layw;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Layw;)Layw$c;
    .locals 1
    .param p0, "x0"    # Layw;

    .prologue
    .line 26
    iget-object v0, p0, Layw;->d:Layw$c;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 243
    iput p1, p0, Layw;->e:I

    .line 244
    invoke-virtual {p0}, Layw;->notifyDataSetChanged()V

    .line 245
    return-void
.end method

.method public a(Layw$c;)V
    .locals 0
    .param p1, "resultItemClickListener"    # Layw$c;

    .prologue
    .line 46
    iput-object p1, p0, Layw;->d:Layw$c;

    .line 47
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Layw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Layw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Layw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 77
    invoke-virtual {p0, p1}, Layw;->getItemViewType(I)I

    move-result v2

    .line 78
    .local v2, "type":I
    const/4 v1, 0x0

    .line 80
    .local v1, "mViewHolder":Layw$d;
    if-nez p2, :cond_2

    .line 81
    new-instance v1, Layw$d;

    .end local v1    # "mViewHolder":Layw$d;
    invoke-direct {v1, p0}, Layw$d;-><init>(Layw;)V

    .line 82
    .restart local v1    # "mViewHolder":Layw$d;
    if-ne v2, v5, :cond_1

    .line 83
    iget-object v3, p0, Layw;->c:Landroid/view/LayoutInflater;

    const v4, 0x7f03014b

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 87
    :goto_0
    new-instance v1, Layw$d;

    .end local v1    # "mViewHolder":Layw$d;
    invoke-direct {v1, p0}, Layw$d;-><init>(Layw;)V

    .line 88
    .restart local v1    # "mViewHolder":Layw$d;
    const v3, 0x7f0b0760

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Layw$d;->a:Landroid/widget/ImageView;

    .line 89
    const v3, 0x7f0b06f9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Layw$d;->b:Landroid/widget/TextView;

    .line 90
    const v3, 0x7f0b06fb

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Layw$d;->c:Landroid/widget/TextView;

    .line 91
    const v3, 0x7f0b06fa

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Layw$d;->d:Landroid/widget/ImageView;

    .line 92
    const v3, 0x7f0b06fc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Layw$d;->e:Landroid/widget/ImageView;

    .line 93
    const v3, 0x7f0b06f8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v1, Layw$d;->f:Landroid/widget/LinearLayout;

    .line 94
    const v3, 0x7f0b0761

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v1, Layw$d;->g:Landroid/widget/LinearLayout;

    .line 95
    const v3, 0x7f0b06fd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v1, Layw$d;->h:Landroid/widget/LinearLayout;

    .line 96
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    :goto_1
    iget-object v4, v1, Layw$d;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Layw;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getFlagImg()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v4, v1, Layw$d;->b:Landroid/widget/TextView;

    iget-object v3, p0, Layw;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v4, v1, Layw$d;->c:Landroid/widget/TextView;

    iget-object v3, p0, Layw;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, v1, Layw$d;->e:Landroid/widget/ImageView;

    const v4, 0x7f02039c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 108
    iget-object v3, v1, Layw$d;->d:Landroid/widget/ImageView;

    new-instance v4, Layw$a;

    invoke-direct {v4, p0, p1, v6}, Layw$a;-><init>(Layw;II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v3, v1, Layw$d;->e:Landroid/widget/ImageView;

    new-instance v4, Layw$a;

    invoke-direct {v4, p0, p1, v5}, Layw$a;-><init>(Layw;II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v3, v1, Layw$d;->g:Landroid/widget/LinearLayout;

    new-instance v4, Layw$a;

    const/4 v5, 0x2

    invoke-direct {v4, p0, p1, v5}, Layw$a;-><init>(Layw;II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v3, v1, Layw$d;->h:Landroid/widget/LinearLayout;

    new-instance v4, Layw$a;

    const/4 v5, 0x3

    invoke-direct {v4, p0, p1, v5}, Layw$a;-><init>(Layw;II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v3, v1, Layw$d;->f:Landroid/widget/LinearLayout;

    new-instance v4, Layw$b;

    invoke-direct {v4, p0, p1}, Layw$b;-><init>(Layw;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 113
    iget-object v3, v1, Layw$d;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 114
    iget-object v3, v1, Layw$d;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 116
    iget-object v3, v1, Layw$d;->e:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 117
    .local v0, "mSpeakButAnim":Landroid/graphics/drawable/AnimationDrawable;
    iget v3, p0, Layw;->e:I

    if-ne v3, p1, :cond_3

    .line 119
    const-string/jumbo v3, "TranslateResultAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getView currentClickPosition == position, start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 133
    :cond_0
    :goto_2
    const-string/jumbo v3, "TranslateResultAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getView: position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v3, p0, Layw;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_4

    sget-boolean v3, Laxp;->a:Z

    if-eqz v3, :cond_4

    .line 135
    iget-object v3, v1, Layw$d;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    :goto_3
    iget-object v3, p0, Layw;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_5

    .line 140
    iget-object v3, v1, Layw$d;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    :goto_4
    return-object p2

    .line 85
    .end local v0    # "mSpeakButAnim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    iget-object v3, p0, Layw;->c:Landroid/view/LayoutInflater;

    const v4, 0x7f03014a

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 99
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mViewHolder":Layw$d;
    check-cast v1, Layw$d;

    .restart local v1    # "mViewHolder":Layw$d;
    goto/16 :goto_1

    .line 127
    .restart local v0    # "mSpeakButAnim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_3
    const-string/jumbo v3, "TranslateResultAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getView currentClickPosition != position, stop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 129
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    goto :goto_2

    .line 137
    :cond_4
    iget-object v3, v1, Layw$d;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 142
    :cond_5
    iget-object v3, v1, Layw$d;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x2

    return v0
.end method
