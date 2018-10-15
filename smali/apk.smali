.class public Lapk;
.super Landroid/widget/BaseAdapter;
.source "MusicHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapk$a;,
        Lapk$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicHistory;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lapk$a;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lapk$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "selectListener"    # Lapk$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicHistory;",
            ">;",
            "Lapk$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "lrcList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicHistory;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lapk;->b:Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapk;->d:Z

    .line 41
    iput-object p2, p0, Lapk;->b:Ljava/util/List;

    .line 42
    iput-object p3, p0, Lapk;->c:Lapk$a;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lapk;->a:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method

.method static synthetic a(Lapk;)Lapk$a;
    .locals 1
    .param p0, "x0"    # Lapk;

    .prologue
    .line 33
    iget-object v0, p0, Lapk;->c:Lapk$a;

    return-object v0
.end method

.method static synthetic b(Lapk;)Z
    .locals 1
    .param p0, "x0"    # Lapk;

    .prologue
    .line 33
    iget-boolean v0, p0, Lapk;->d:Z

    return v0
.end method

.method static synthetic c(Lapk;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lapk;

    .prologue
    .line 33
    iget-object v0, p0, Lapk;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .param p1, "edit"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lapk;->d:Z

    .line 154
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lapk;->d:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lapk;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lapk;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 58
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

    .line 65
    iget-object v4, p0, Lapk;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    .line 66
    .local v2, "song":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    if-nez p2, :cond_0

    .line 67
    new-instance v3, Lapk$b;

    invoke-direct {v3}, Lapk$b;-><init>()V

    .line 68
    .local v3, "wrapper":Lapk$b;
    iget-object v4, p0, Lapk;->a:Landroid/view/LayoutInflater;

    const v5, 0x7f0300cb

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 69
    const v4, 0x7f0b0316

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lapk$b;->a:Landroid/widget/LinearLayout;

    .line 70
    const v4, 0x7f0b04fc

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lapk$b;->b:Landroid/widget/ImageView;

    .line 71
    const v4, 0x7f0b0317

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lapk$b;->c:Landroid/widget/ImageView;

    .line 72
    const v4, 0x7f0b0318

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lapk$b;->d:Landroid/widget/TextView;

    .line 73
    const v4, 0x7f0b0319

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lapk$b;->e:Landroid/widget/TextView;

    .line 74
    const v4, 0x7f0b031a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lapk$b;->f:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :goto_0
    if-nez v2, :cond_1

    .line 136
    :goto_1
    return-object p2

    .line 77
    .end local v3    # "wrapper":Lapk$b;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lapk$b;

    .restart local v3    # "wrapper":Lapk$b;
    goto :goto_0

    .line 83
    :cond_1
    iget-object v4, v3, Lapk$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Laqc;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 84
    iget-object v4, v3, Lapk$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const-string/jumbo v1, "\u672a\u77e5"

    .line 86
    .local v1, "singer":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 87
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->b()Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_2
    iget-object v4, v3, Lapk$b;->e:Landroid/widget/TextView;

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

    .line 90
    const-string/jumbo v0, "\u672a\u77e5"

    .line 91
    .local v0, "album":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 92
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_3
    iget-object v4, v3, Lapk$b;->f:Landroid/widget/TextView;

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

    .line 95
    iget-boolean v4, p0, Lapk;->d:Z

    if-eqz v4, :cond_5

    .line 96
    iget-object v4, v3, Lapk$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->m()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 98
    iget-object v4, v3, Lapk$b;->b:Landroid/widget/ImageView;

    const v5, 0x7f0201f4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    :goto_2
    iget-object v4, v3, Lapk$b;->b:Landroid/widget/ImageView;

    new-instance v5, Lapk$1;

    invoke-direct {v5, p0, v2}, Lapk$1;-><init>(Lapk;Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v4, v3, Lapk$b;->a:Landroid/widget/LinearLayout;

    new-instance v5, Lapk$2;

    invoke-direct {v5, p0, v2, p1}, Lapk$2;-><init>(Lapk;Lcom/iflytek/viafly/music/business/entry/MusicHistory;I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 100
    :cond_4
    iget-object v4, v3, Lapk$b;->b:Landroid/widget/ImageView;

    const v5, 0x7f0201f3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 103
    :cond_5
    iget-object v4, v3, Lapk$b;->b:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
