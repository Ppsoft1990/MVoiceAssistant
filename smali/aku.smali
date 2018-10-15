.class public Laku;
.super Landroid/widget/BaseAdapter;
.source "GridLifeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laku$b;,
        Laku$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Laku$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Laku$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "onItemClick"    # Laku$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;",
            ">;",
            "Laku$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "moreInfoModelList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const-string/jumbo v0, "GridLifeAdapter"

    iput-object v0, p0, Laku;->a:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "image.card_life_default"

    iput-object v0, p0, Laku;->b:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Laku;->d:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Laku;->c:Ljava/util/List;

    .line 46
    iput-object p3, p0, Laku;->e:Laku$a;

    .line 47
    return-void
.end method

.method static synthetic a(Laku;)Laku$a;
    .locals 1
    .param p0, "x0"    # Laku;

    .prologue
    .line 30
    iget-object v0, p0, Laku;->e:Laku$a;

    return-object v0
.end method


# virtual methods
.method public a()Lbcu;
    .locals 3

    .prologue
    .line 126
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 128
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 132
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 134
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 136
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "moreInfoModelList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;>;"
    iput-object p1, p0, Laku;->c:Ljava/util/List;

    .line 141
    invoke-virtual {p0}, Laku;->notifyDataSetChanged()V

    .line 142
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Laku;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Laku;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    const/4 v4, 0x0

    .line 72
    .local v4, "viewHolder":Laku$b;
    const-string/jumbo v5, "GridLifeAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "grid life init "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " view"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v5, p0, Laku;->c:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .line 74
    .local v0, "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    if-nez p2, :cond_3

    .line 75
    new-instance v4, Laku$b;

    .end local v4    # "viewHolder":Laku$b;
    const/4 v5, 0x0

    invoke-direct {v4, v5}, Laku$b;-><init>(Laku$1;)V

    .line 76
    .restart local v4    # "viewHolder":Laku$b;
    iget-object v5, p0, Laku;->d:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300a2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 77
    .local v3, "rootView":Landroid/view/View;
    const v5, 0x7f0b043b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Laku$b;->a:Landroid/widget/TextView;

    .line 78
    const v5, 0x7f0b0439

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Laku$b;->b:Landroid/widget/ImageView;

    .line 79
    const v5, 0x7f0b0438

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v4, Laku$b;->c:Landroid/widget/LinearLayout;

    .line 80
    move-object p2, v3

    .line 81
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .end local v3    # "rootView":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 86
    iget-object v5, v4, Laku$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 89
    const-string/jumbo v1, ""

    .line 90
    .local v1, "imageSrc":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "object":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 95
    const-string/jumbo v5, "GridLifeAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show local image "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v5, v4, Laku$b;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v6

    sget-object v7, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v1, v7}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    .end local v1    # "imageSrc":Ljava/lang/String;
    .end local v2    # "object":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v5, v4, Laku$b;->c:Landroid/widget/LinearLayout;

    new-instance v6, Laku$1;

    invoke-direct {v6, p0, v0, p1}, Laku$1;-><init>(Laku;Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;I)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-object p2

    .line 83
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "viewHolder":Laku$b;
    check-cast v4, Laku$b;

    .restart local v4    # "viewHolder":Laku$b;
    goto :goto_0

    .line 99
    .restart local v1    # "imageSrc":Ljava/lang/String;
    .restart local v2    # "object":Ljava/lang/String;
    :cond_4
    iget-object v5, v4, Laku$b;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v6

    const-string/jumbo v7, "image.card_life_default"

    sget-object v8, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    const-string/jumbo v5, "GridLifeAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show net image "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Laku$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Laku;->a()Lbcu;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    goto :goto_1
.end method
