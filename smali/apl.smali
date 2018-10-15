.class public Lapl;
.super Landroid/widget/BaseAdapter;
.source "MusicListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapl$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/player/entity/Audio;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lapm$a;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lapm$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lapm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/player/entity/Audio;",
            ">;",
            "Lapm$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/player/entity/Audio;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lapl;->b:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lapl;->a:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lapl;->c:Lapm$a;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lapl;->d:Landroid/view/LayoutInflater;

    .line 35
    return-void
.end method

.method static synthetic a(Lapl;)Lapm$a;
    .locals 1
    .param p0, "x0"    # Lapl;

    .prologue
    .line 23
    iget-object v0, p0, Lapl;->c:Lapm$a;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lapl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lapl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f0a000f

    const/4 v6, 0x0

    .line 56
    iget-object v4, p0, Lapl;->a:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .line 57
    .local v2, "song":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    if-nez p2, :cond_0

    .line 58
    new-instance v3, Lapl$a;

    invoke-direct {v3}, Lapl$a;-><init>()V

    .line 59
    .local v3, "wrapper":Lapl$a;
    iget-object v4, p0, Lapl;->d:Landroid/view/LayoutInflater;

    const v5, 0x7f0300b2

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    const v4, 0x7f0b04a1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lapl$a;->a:Landroid/widget/ImageView;

    .line 61
    const v4, 0x7f0b04a2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lapl$a;->b:Landroid/widget/TextView;

    .line 62
    const v4, 0x7f0b04a3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lapl$a;->c:Landroid/widget/TextView;

    .line 63
    const v4, 0x7f0b04a4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lapl$a;->d:Landroid/widget/ImageView;

    .line 64
    const v4, 0x7f0b04a5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lapl$a;->e:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    if-nez v2, :cond_1

    .line 105
    :goto_1
    return-object p2

    .line 67
    .end local v3    # "wrapper":Lapl$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lapl$a;

    .restart local v3    # "wrapper":Lapl$a;
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v1, ""

    .line 74
    .local v1, "singer":Ljava/lang/String;
    :goto_2
    iget-object v4, v3, Lapl$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v4, v3, Lapl$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->j()I

    move-result v0

    .line 77
    .local v0, "index":I
    if-ne v0, p1, :cond_3

    .line 78
    iget-object v4, v3, Lapl$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    :goto_3
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->e()I

    move-result v4

    if-nez v4, :cond_5

    .line 83
    if-ne v0, p1, :cond_4

    .line 84
    iget-object v4, v3, Lapl$a;->b:Landroid/widget/TextView;

    const-string/jumbo v5, "#FF0F6DED"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v4, v3, Lapl$a;->c:Landroid/widget/TextView;

    const-string/jumbo v5, "#FF0F6DED"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    :goto_4
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v4

    if-nez v4, :cond_6

    .line 95
    iget-object v4, v3, Lapl$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    :goto_5
    iget-object v4, v3, Lapl$a;->e:Landroid/widget/ImageView;

    new-instance v5, Lapl$1;

    invoke-direct {v5, p0, p1}, Lapl$1;-><init>(Lapl;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 73
    .end local v0    # "index":I
    .end local v1    # "singer":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 80
    .restart local v0    # "index":I
    .restart local v1    # "singer":Ljava/lang/String;
    :cond_3
    iget-object v4, v3, Lapl$a;->a:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 87
    :cond_4
    iget-object v4, v3, Lapl$a;->b:Landroid/widget/TextView;

    const-string/jumbo v5, "#FF212325"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v4, v3, Lapl$a;->c:Landroid/widget/TextView;

    const-string/jumbo v5, "#FF838486"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 91
    :cond_5
    iget-object v4, v3, Lapl$a;->b:Landroid/widget/TextView;

    iget-object v5, p0, Lapl;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v4, v3, Lapl$a;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lapl;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 97
    :cond_6
    iget-object v4, v3, Lapl$a;->d:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method
