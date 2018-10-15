.class public Layu;
.super Landroid/widget/BaseAdapter;
.source "TextTranslateResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layu$c;,
        Layu$b;,
        Layu$a;,
        Layu$d;
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

.field private d:Layu$d;

.field private e:Layu$c;

.field private f:I


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
    .line 37
    .local p2, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/translate/entity/TranslateResultItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Layu;->f:I

    .line 38
    iput-object p1, p0, Layu;->b:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Layu;->a:Ljava/util/List;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Layu;->c:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method static synthetic a(Layu;I)I
    .locals 0
    .param p0, "x0"    # Layu;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Layu;->f:I

    return p1
.end method

.method static synthetic a(Layu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Layu;

    .prologue
    .line 25
    iget-object v0, p0, Layu;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Layu;)Layu$c;
    .locals 1
    .param p0, "x0"    # Layu;

    .prologue
    .line 25
    iget-object v0, p0, Layu;->e:Layu$c;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 202
    iput p1, p0, Layu;->f:I

    .line 203
    invoke-virtual {p0}, Layu;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method public a(Layu$c;)V
    .locals 0
    .param p1, "resultItemClickListener"    # Layu$c;

    .prologue
    .line 44
    iput-object p1, p0, Layu;->e:Layu$c;

    .line 45
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Layu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    iget-object v0, p0, Layu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 68
    if-nez p2, :cond_1

    .line 69
    new-instance v1, Layu$d;

    invoke-direct {v1, p0}, Layu$d;-><init>(Layu;)V

    iput-object v1, p0, Layu;->d:Layu$d;

    .line 71
    iget-object v1, p0, Layu;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f03013b

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v1, Layu$d;

    invoke-direct {v1, p0}, Layu$d;-><init>(Layu;)V

    iput-object v1, p0, Layu;->d:Layu$d;

    .line 74
    iget-object v2, p0, Layu;->d:Layu$d;

    const v1, 0x7f0b06f9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Layu$d;->a:Landroid/widget/TextView;

    .line 75
    iget-object v2, p0, Layu;->d:Layu$d;

    const v1, 0x7f0b06fb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Layu$d;->b:Landroid/widget/TextView;

    .line 76
    iget-object v2, p0, Layu;->d:Layu$d;

    const v1, 0x7f0b06fa

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Layu$d;->c:Landroid/widget/ImageView;

    .line 77
    iget-object v2, p0, Layu;->d:Layu$d;

    const v1, 0x7f0b06fc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Layu$d;->d:Landroid/widget/ImageView;

    .line 78
    iget-object v2, p0, Layu;->d:Layu$d;

    const v1, 0x7f0b06f8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Layu$d;->e:Landroid/widget/LinearLayout;

    .line 80
    iget-object v2, p0, Layu;->d:Layu$d;

    const v1, 0x7f0b06fd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Layu$d;->f:Landroid/widget/ImageView;

    .line 81
    iget-object v1, p0, Layu;->d:Layu$d;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    iget-object v1, p0, Layu;->d:Layu$d;

    iget-object v2, v1, Layu$d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Layu;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Layu;->d:Layu$d;

    iget-object v2, v1, Layu$d;->b:Landroid/widget/TextView;

    iget-object v1, p0, Layu;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Layu;->d:Layu$d;

    iget-object v1, v1, Layu$d;->d:Landroid/widget/ImageView;

    const v2, 0x7f02039c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 92
    iget-object v1, p0, Layu;->d:Layu$d;

    iget-object v1, v1, Layu$d;->c:Landroid/widget/ImageView;

    new-instance v2, Layu$a;

    invoke-direct {v2, p0, p1, v4}, Layu$a;-><init>(Layu;II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Layu;->d:Layu$d;

    iget-object v1, v1, Layu$d;->d:Landroid/widget/ImageView;

    new-instance v2, Layu$a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Layu$a;-><init>(Layu;II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, p0, Layu;->d:Layu$d;

    iget-object v1, v1, Layu$d;->f:Landroid/widget/ImageView;

    new-instance v2, Layu$a;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v3}, Layu$a;-><init>(Layu;II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Layu;->d:Layu$d;

    iget-object v1, v1, Layu$d;->e:Landroid/widget/LinearLayout;

    new-instance v2, Layu$b;

    invoke-direct {v2, p0, p1}, Layu$b;-><init>(Layu;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    iget-object v1, p0, Layu;->d:Layu$d;

    iget-object v1, v1, Layu$d;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 97
    iget-object v1, p0, Layu;->d:Layu$d;

    iget-object v1, v1, Layu$d;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 99
    iget-object v1, p0, Layu;->d:Layu$d;

    iget-object v1, v1, Layu$d;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 100
    .local v0, "mSpeakButAnim":Landroid/graphics/drawable/AnimationDrawable;
    iget v1, p0, Layu;->f:I

    if-ne v1, p1, :cond_2

    .line 102
    const-string/jumbo v1, "TextTranslateResultAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getView currentClickPosition == position, start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 115
    :cond_0
    :goto_1
    return-object p2

    .line 84
    .end local v0    # "mSpeakButAnim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Layu$d;

    iput-object v1, p0, Layu;->d:Layu$d;

    goto/16 :goto_0

    .line 110
    .restart local v0    # "mSpeakButAnim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    const-string/jumbo v1, "TextTranslateResultAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getView currentClickPosition != position, stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 112
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    goto :goto_1
.end method
