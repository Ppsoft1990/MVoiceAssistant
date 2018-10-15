.class public Lapj;
.super Landroid/widget/BaseAdapter;
.source "MusicFavorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapj$a;,
        Lapj$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicFavor;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lapj$a;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lapj$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "selectListener"    # Lapj$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicFavor;",
            ">;",
            "Lapj$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "lrcList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicFavor;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lapj;->b:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapj;->d:Z

    .line 42
    iput-object p2, p0, Lapj;->b:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lapj;->c:Lapj$a;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lapj;->a:Landroid/view/LayoutInflater;

    .line 45
    return-void
.end method

.method static synthetic a(Lapj;)Lapj$a;
    .locals 1
    .param p0, "x0"    # Lapj;

    .prologue
    .line 34
    iget-object v0, p0, Lapj;->c:Lapj$a;

    return-object v0
.end method

.method static synthetic b(Lapj;)Z
    .locals 1
    .param p0, "x0"    # Lapj;

    .prologue
    .line 34
    iget-boolean v0, p0, Lapj;->d:Z

    return v0
.end method

.method static synthetic c(Lapj;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lapj;

    .prologue
    .line 34
    iget-object v0, p0, Lapj;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .param p1, "edit"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lapj;->d:Z

    .line 164
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lapj;->d:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lapj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lapj;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 66
    iget-object v4, p0, Lapj;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    .line 67
    .local v2, "song":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    if-nez p2, :cond_0

    .line 68
    new-instance v3, Lapj$b;

    invoke-direct {v3}, Lapj$b;-><init>()V

    .line 69
    .local v3, "wrapper":Lapj$b;
    iget-object v4, p0, Lapj;->a:Landroid/view/LayoutInflater;

    const v5, 0x7f0300cb

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 70
    const v4, 0x7f0b0316

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lapj$b;->a:Landroid/widget/LinearLayout;

    .line 71
    const v4, 0x7f0b04fc

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lapj$b;->b:Landroid/widget/ImageView;

    .line 72
    const v4, 0x7f0b0317

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lapj$b;->c:Landroid/widget/ImageView;

    .line 73
    const v4, 0x7f0b0318

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lapj$b;->d:Landroid/widget/TextView;

    .line 74
    const v4, 0x7f0b0319

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lapj$b;->e:Landroid/widget/TextView;

    .line 75
    const v4, 0x7f0b031a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lapj$b;->f:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_0
    if-nez v2, :cond_1

    .line 146
    :goto_1
    return-object p2

    .line 78
    .end local v3    # "wrapper":Lapj$b;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lapj$b;

    .restart local v3    # "wrapper":Lapj$b;
    goto :goto_0

    .line 84
    :cond_1
    iget-object v4, v3, Lapj$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Laqc;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 85
    iget-object v4, v3, Lapj$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const-string/jumbo v1, "\u672a\u77e5"

    .line 87
    .local v1, "singer":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 88
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->b()Ljava/lang/String;

    move-result-object v1

    .line 90
    :cond_2
    iget-object v4, v3, Lapj$b;->e:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6b4c\u624b  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const-string/jumbo v0, "\u672a\u77e5"

    .line 92
    .local v0, "album":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 93
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_3
    iget-object v4, v3, Lapj$b;->f:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u4e13\u8f91  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-boolean v4, p0, Lapj;->d:Z

    if-eqz v4, :cond_5

    .line 97
    iget-object v4, v3, Lapj$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->o()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 99
    iget-object v4, v3, Lapj$b;->b:Landroid/widget/ImageView;

    const v5, 0x7f0201f4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :goto_2
    iget-object v4, v3, Lapj$b;->b:Landroid/widget/ImageView;

    new-instance v5, Lapj$1;

    invoke-direct {v5, p0, v2}, Lapj$1;-><init>(Lapj;Lcom/iflytek/viafly/music/business/entry/MusicFavor;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v4, v3, Lapj$b;->a:Landroid/widget/LinearLayout;

    new-instance v5, Lapj$2;

    invoke-direct {v5, p0, v2, p1}, Lapj$2;-><init>(Lapj;Lcom/iflytek/viafly/music/business/entry/MusicFavor;I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v4, 0x9ba3c1

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->e()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 138
    iget-object v4, v3, Lapj$b;->d:Landroid/widget/TextView;

    const-string/jumbo v5, "#FFB0B0B0"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v4, v3, Lapj$b;->e:Landroid/widget/TextView;

    const-string/jumbo v5, "#FFB0B0B0"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v4, v3, Lapj$b;->f:Landroid/widget/TextView;

    const-string/jumbo v5, "#FFB0B0B0"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 101
    :cond_4
    iget-object v4, v3, Lapj$b;->b:Landroid/widget/ImageView;

    const v5, 0x7f0201f3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 104
    :cond_5
    iget-object v4, v3, Lapj$b;->b:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 142
    :cond_6
    iget-object v4, v3, Lapj$b;->d:Landroid/widget/TextView;

    const-string/jumbo v5, "#FF212325"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v4, v3, Lapj$b;->e:Landroid/widget/TextView;

    const-string/jumbo v5, "#FF838486"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v4, v3, Lapj$b;->f:Landroid/widget/TextView;

    const-string/jumbo v5, "#FF838486"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method
