.class public Lcom/iflytek/viafly/homepage/movies/MoviesCardView;
.super Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.source "MoviesCardView.java"

# interfaces
.implements Laij;
.implements Lajk;
.implements Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/String;

.field private p:Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;

.field private final q:I

.field private r:Lalg;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lalf;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/content/Context;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;",
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
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;-><init>(Landroid/content/Context;Laic;)V

    .line 36
    const-string/jumbo v0, "MoviesCardView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->o:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->q:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->u:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->t:Landroid/content/Context;

    .line 49
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->setCallBack(Laij;)V

    .line 50
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->g()V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/movies/MoviesCardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/movies/MoviesCardView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->n()V

    return-void
.end method

.method private getContentView()Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 63
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->t:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "contentView":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    new-instance v1, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->t:Landroid/content/Context;

    invoke-direct {v1, v4, v5, p0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;-><init>(Landroid/content/Context;Lalf;Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;)V

    .line 67
    .local v1, "moviceItemView1":Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    new-instance v2, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->t:Landroid/content/Context;

    invoke-direct {v2, v4, v5, p0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;-><init>(Landroid/content/Context;Lalf;Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;)V

    .line 69
    .local v2, "moviceItemView2":Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    new-instance v3, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->t:Landroid/content/Context;

    invoke-direct {v3, v4, v5, p0}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;-><init>(Landroid/content/Context;Lalf;Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView$a;)V

    .line 71
    .local v3, "moviceItemView3":Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->u:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->u:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->u:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-object v0
.end method

.method private getListOptions()Lbcu;
    .locals 3

    .prologue
    const v2, 0x7f0202aa

    .line 209
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 210
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    .line 212
    invoke-virtual {v1, v2}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v2}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 214
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 215
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 168
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->s:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 185
    :cond_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->h()V

    .line 172
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->getDefaultParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->u:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;

    .line 177
    .local v1, "moviceItemView":Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 178
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lalf;

    .line 179
    .local v2, "moviceModel":Lalf;
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->a(Lalf;)V

    .line 174
    .end local v2    # "moviceModel":Lalf;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/homepage/movies/MovicesCardItemView;->a(Lalf;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.setting.card.MOVIES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->t:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->t:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method public a(Lalf;)V
    .locals 2
    .param p1, "moviceModel"    # Lalf;

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    const-string/jumbo v0, "content"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->d(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->r:Lalg;

    invoke-virtual {p1}, Lalf;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalg;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 129
    sget-object v0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView$1;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->p:Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->p:Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->f()V

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->l()V

    goto :goto_0

    .line 129
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
    .line 101
    const-string/jumbo v0, "card_hide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string/jumbo v0, "MoviesCardView"

    const-string/jumbo v1, "get 000008,hide card"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->k()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->c(Ljava/lang/String;)I

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->r:Lalg;

    invoke-virtual {v0, p1}, Lalg;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->s:Ljava/util/ArrayList;

    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 112
    :cond_2
    const-string/jumbo v0, "MoviesCardView"

    const-string/jumbo v1, "close card"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->k()V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->p:Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->c(Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->p:Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->i()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->r:Lalg;

    invoke-virtual {v0}, Lalg;->a()V

    .line 199
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->f()V

    .line 222
    const-string/jumbo v0, "MoviesCardView"

    const-string/jumbo v1, "clickRefresh"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lalg;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lalg;-><init>(Lajk;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->r:Lalg;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->b(I)V

    .line 57
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->getContentView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->a(Landroid/widget/LinearLayout;)V

    .line 58
    const-string/jumbo v0, "\u67e5\u770b\u5168\u90e8"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->b(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;-><init>(Lcom/iflytek/viafly/homepage/movies/MoviesCardView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->p:Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;

    .line 60
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->getCache()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "cache":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->r:Lalg;

    invoke-virtual {v1, v0}, Lalg;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->s:Ljava/util/ArrayList;

    .line 85
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->p:Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->s:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 86
    const-string/jumbo v1, "MoviesCardView"

    const-string/jumbo v2, "\u6839\u636e\u7f13\u5b58\u5c55\u793a\u9875\u9762"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->p:Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;->sendEmptyMessage(I)Z

    .line 90
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->r:Lalg;

    invoke-virtual {v0}, Lalg;->g()V

    .line 96
    return-void
.end method

.method public setHomeResultCallback(Lail;)V
    .locals 1
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->r:Lalg;

    invoke-virtual {v0, p1}, Lalg;->a(Lail;)V

    .line 205
    return-void
.end method
