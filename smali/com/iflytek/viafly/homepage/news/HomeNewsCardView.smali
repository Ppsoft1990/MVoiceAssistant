.class public Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;
.super Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.source "HomeNewsCardView.java"

# interfaces
.implements Laij;
.implements Lajk;
.implements Lcom/iflytek/viafly/homepage/news/NewsItemView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:I

.field private final q:I

.field private r:Landroid/content/Context;

.field private s:Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;

.field private t:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lall;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/news/NewsItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Laic;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeCardItem"    # Laic;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;-><init>(Landroid/content/Context;Laic;)V

    .line 33
    const-string/jumbo v0, "HomeNewsCardView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->o:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->p:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->q:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->v:Ljava/util/List;

    .line 45
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->setCallBack(Laij;)V

    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->r:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->g()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->n()V

    return-void
.end method

.method private getContentView()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    .line 62
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->r:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "contentView":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 66
    new-instance v2, Lcom/iflytek/viafly/homepage/news/NewsItemView;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->r:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p0}, Lcom/iflytek/viafly/homepage/news/NewsItemView;-><init>(Landroid/content/Context;Lall;Lcom/iflytek/viafly/homepage/news/NewsItemView$a;)V

    .line 67
    .local v2, "newsItemView":Lcom/iflytek/viafly/homepage/news/NewsItemView;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->v:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "newsItemView":Lcom/iflytek/viafly/homepage/news/NewsItemView;
    :cond_0
    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 174
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->u:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 191
    :cond_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->h()V

    .line 179
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->getDefaultParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->v:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/news/NewsItemView;

    .line 184
    .local v1, "newsItemView":Lcom/iflytek/viafly/homepage/news/NewsItemView;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 185
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->u:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lall;

    .line 186
    .local v2, "newsModel":Lall;
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->a(Lall;)V

    .line 181
    .end local v2    # "newsModel":Lall;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->a(Lall;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 196
    const-string/jumbo v1, "HomeNewsCardView"

    const-string/jumbo v2, "clickSetting"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.setting.card.NEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->r:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->r:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 201
    return-void
.end method

.method public a(Lall;)V
    .locals 2
    .param p1, "NewsModel"    # Lall;

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string/jumbo v0, "content"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->d(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->t:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-virtual {p1}, Lall;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 125
    sget-object v0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$1;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->s:Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->s:Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->f()V

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->l()V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v0, "card_hide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const-string/jumbo v0, "HomeNewsCardView"

    const-string/jumbo v1, "get 000008,hide card"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->k()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->c(Ljava/lang/String;)I

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->t:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->u:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->u:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 105
    :cond_2
    const-string/jumbo v0, "HomeNewsCardView"

    const-string/jumbo v1, "close card"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->k()V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->s:Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->s:Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->i()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 205
    const-string/jumbo v0, "HomeNewsCardView"

    const-string/jumbo v1, "clickMore"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->t:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a()V

    .line 207
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 212
    const-string/jumbo v0, "HomeNewsCardView"

    const-string/jumbo v1, "clickRefresh"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->f()V

    .line 214
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->r:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;-><init>(Lajk;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->t:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    .line 53
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->b(I)V

    .line 55
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->getContentView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->a(Landroid/widget/LinearLayout;)V

    .line 57
    const-string/jumbo v0, "\u67e5\u770b\u5168\u90e8"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->b(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;-><init>(Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->s:Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;

    .line 59
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->getCache()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "cache":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->t:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->u:Ljava/util/List;

    .line 79
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->s:Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->u:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->s:Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView$a;->sendEmptyMessage(I)Z

    .line 83
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 88
    const-string/jumbo v0, "HomeNewsCardView"

    const-string/jumbo v1, "loadData"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->t:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->g()V

    .line 90
    return-void
.end method

.method public setHomeResultCallback(Lail;)V
    .locals 1
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;->t:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a(Lail;)V

    .line 121
    return-void
.end method
