.class public Lcom/iflytek/viafly/homepage/music/MusicCardView;
.super Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.source "MusicCardView.java"

# interfaces
.implements Laij;
.implements Lajk;
.implements Lcom/iflytek/viafly/homepage/music/MusicItemView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/music/MusicCardView$a;
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:I

.field private q:Landroid/content/Context;

.field private r:Lalj;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/music/MusicItemView;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/iflytek/viafly/homepage/music/MusicCardView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laic;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeCardItem"    # Laic;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;-><init>(Landroid/content/Context;Laic;)V

    .line 41
    const-string/jumbo v0, "MusicCardView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->o:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->p:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->t:Ljava/util/List;

    .line 51
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->setCallBack(Laij;)V

    .line 52
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->q:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->g()V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/music/MusicCardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/music/MusicCardView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->n()V

    return-void
.end method

.method private getContentView()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->q:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "contentView":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    new-instance v1, Lcom/iflytek/viafly/homepage/music/MusicItemView;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->q:Landroid/content/Context;

    invoke-direct {v1, v3, v4, p0}, Lcom/iflytek/viafly/homepage/music/MusicItemView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;Lcom/iflytek/viafly/homepage/music/MusicItemView$a;)V

    .line 72
    .local v1, "musicItemView1":Lcom/iflytek/viafly/homepage/music/MusicItemView;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v2, Lcom/iflytek/viafly/homepage/music/MusicItemView;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->q:Landroid/content/Context;

    invoke-direct {v2, v3, v4, p0}, Lcom/iflytek/viafly/homepage/music/MusicItemView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;Lcom/iflytek/viafly/homepage/music/MusicItemView$a;)V

    .line 74
    .local v2, "musicItemView2":Lcom/iflytek/viafly/homepage/music/MusicItemView;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->t:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->t:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 173
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->s:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 188
    :cond_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->h()V

    .line 177
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->getDefaultParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/music/MusicItemView;

    .line 181
    .local v1, "musicItemView":Lcom/iflytek/viafly/homepage/music/MusicItemView;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .line 183
    .local v2, "musicModel":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    .line 178
    .end local v2    # "musicModel":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.setting.card.MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->q:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->q:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 134
    sget-object v0, Lcom/iflytek/viafly/homepage/music/MusicCardView$1;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->u:Lcom/iflytek/viafly/homepage/music/MusicCardView$a;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->u:Lcom/iflytek/viafly/homepage/music/MusicCardView$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/music/MusicCardView$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :pswitch_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->f()V

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->l()V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V
    .locals 4
    .param p1, "musicModel"    # Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 216
    :cond_0
    const-string/jumbo v1, "content"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->d(Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_CARD:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->s:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v1, v2, v3}, Laqf;->a(Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;Ljava/util/List;I)V

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "musicCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90008"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string/jumbo v0, "card_hide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string/jumbo v0, "MusicCardView"

    const-string/jumbo v1, "get 000008,hide card"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->k()V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->c(Ljava/lang/String;)I

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->r:Lalj;

    invoke-virtual {v0, p1}, Lalj;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->s:Ljava/util/ArrayList;

    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 113
    :cond_2
    const-string/jumbo v0, "MusicCardView"

    const-string/jumbo v1, "close card"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->k()V

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->u:Lcom/iflytek/viafly/homepage/music/MusicCardView$a;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->c(Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->u:Lcom/iflytek/viafly/homepage/music/MusicCardView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/music/MusicCardView$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->i()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->r:Lalj;

    invoke-virtual {v0}, Lalj;->a()V

    .line 201
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->f()V

    .line 207
    const-string/jumbo v0, "MusicCardView"

    const-string/jumbo v1, "clickRefresh"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 58
    const-string/jumbo v0, "MusicCardView"

    const-string/jumbo v1, "MusicCardView\u5361\u7247\u521b\u5efa"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lalj;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->q:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lalj;-><init>(Lajk;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->r:Lalj;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->b(I)V

    .line 62
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->getContentView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->a(Landroid/widget/LinearLayout;)V

    .line 63
    const-string/jumbo v0, "\u67e5\u770b\u5168\u90e8"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->b(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/iflytek/viafly/homepage/music/MusicCardView$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView$a;-><init>(Lcom/iflytek/viafly/homepage/music/MusicCardView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->u:Lcom/iflytek/viafly/homepage/music/MusicCardView$a;

    .line 65
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/music/MusicCardView;->getCache()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "cache":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->r:Lalj;

    invoke-virtual {v1, v0}, Lalj;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->s:Ljava/util/ArrayList;

    .line 87
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->u:Lcom/iflytek/viafly/homepage/music/MusicCardView$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->s:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->u:Lcom/iflytek/viafly/homepage/music/MusicCardView$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/music/MusicCardView$a;->sendEmptyMessage(I)Z

    .line 91
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "MusicCardView"

    const-string/jumbo v1, "\u97f3\u4e50\u5361\u7247\u6570\u636e\u8bf7\u6c42"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->r:Lalj;

    invoke-virtual {v0}, Lalj;->g()V

    .line 98
    return-void
.end method

.method public setHomeResultCallback(Lail;)V
    .locals 1
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicCardView;->r:Lalj;

    invoke-virtual {v0, p1}, Lalj;->a(Lail;)V

    .line 130
    return-void
.end method
