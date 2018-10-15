.class public Land;
.super Landroid/widget/BaseAdapter;
.source "BookCollectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Land$a;,
        Land$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Land$a;

.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Land$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "selectListener"    # Land$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;",
            "Land$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "lrcList":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Land;->b:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Land;->e:Z

    .line 44
    iput-object p1, p0, Land;->d:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Land;->b:Ljava/util/List;

    .line 46
    iput-object p3, p0, Land;->c:Land$a;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Land;->a:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method

.method static synthetic a(Land;)Land$a;
    .locals 1
    .param p0, "x0"    # Land;

    .prologue
    .line 35
    iget-object v0, p0, Land;->c:Land$a;

    return-object v0
.end method

.method private a()Lbcu;
    .locals 4

    .prologue
    const v3, 0x7f020309

    .line 167
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 169
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 173
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    .line 175
    invoke-virtual {v1, v3}, Lbcu$a;->a(I)Lbcu$a;

    move-result-object v1

    .line 176
    invoke-virtual {v1, v3}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v3}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 178
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 180
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method static synthetic b(Land;)Z
    .locals 1
    .param p0, "x0"    # Land;

    .prologue
    .line 35
    iget-boolean v0, p0, Land;->e:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "lists":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    iput-object p1, p0, Land;->b:Ljava/util/List;

    .line 158
    invoke-virtual {p0}, Land;->notifyDataSetChanged()V

    .line 159
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isEdit"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Land;->e:Z

    .line 164
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Land;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Land;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 69
    iget-object v5, p0, Land;->b:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lamo;

    .line 70
    .local v3, "markInfo":Lamo;
    if-nez p2, :cond_1

    .line 71
    new-instance v4, Land$b;

    invoke-direct {v4}, Land$b;-><init>()V

    .line 72
    .local v4, "wrapper":Land$b;
    iget-object v5, p0, Land;->a:Landroid/view/LayoutInflater;

    const v6, 0x7f0300bc

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    const v5, 0x7f0b04d1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v4, Land$b;->a:Landroid/widget/LinearLayout;

    .line 74
    const v5, 0x7f0b04d2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Land$b;->b:Landroid/widget/ImageView;

    .line 75
    const v5, 0x7f0b04d3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Land$b;->c:Landroid/widget/ImageView;

    .line 76
    const v5, 0x7f0b04d4

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Land$b;->d:Landroid/widget/TextView;

    .line 77
    const v5, 0x7f0b04d5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Land$b;->e:Landroid/widget/TextView;

    .line 78
    const v5, 0x7f0b04d6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Land$b;->f:Landroid/widget/TextView;

    .line 79
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lamo;->f()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 85
    invoke-virtual {v3}, Lamo;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lamo;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 139
    :cond_0
    :goto_1
    return-object p2

    .line 81
    .end local v4    # "wrapper":Land$b;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Land$b;

    .restart local v4    # "wrapper":Land$b;
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v3}, Lamo;->b()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "contentName":Ljava/lang/String;
    invoke-virtual {v3}, Lamo;->d()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "detail":Ljava/lang/String;
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v5

    invoke-virtual {v3}, Lamo;->g()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Land$b;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Land;->a()Lbcu;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 91
    iget-object v5, v4, Land$b;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const-string/jumbo v0, "\u672a\u77e5"

    .line 93
    .local v0, "author":Ljava/lang/String;
    invoke-virtual {v3}, Lamo;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 94
    invoke-virtual {v3}, Lamo;->e()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_3
    iget-object v5, v4, Land$b;->e:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u4e3b\u64ad  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, v4, Land$b;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Lamo;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-boolean v5, p0, Land;->e:Z

    if-eqz v5, :cond_5

    .line 100
    iget-object v5, v4, Land$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    invoke-virtual {v3}, Lamo;->i()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 102
    iget-object v5, v4, Land$b;->b:Landroid/widget/ImageView;

    const v6, 0x7f0201f4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    :goto_2
    iget-object v5, v4, Land$b;->b:Landroid/widget/ImageView;

    new-instance v6, Land$1;

    invoke-direct {v6, p0, v3}, Land$1;-><init>(Land;Lamo;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v5, v4, Land$b;->a:Landroid/widget/LinearLayout;

    new-instance v6, Land$2;

    invoke-direct {v6, p0, v3, v2}, Land$2;-><init>(Land;Lamo;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 104
    :cond_4
    iget-object v5, v4, Land$b;->b:Landroid/widget/ImageView;

    const v6, 0x7f0201f3

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 107
    :cond_5
    iget-object v5, v4, Land$b;->b:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
