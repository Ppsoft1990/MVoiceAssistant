.class public Lcom/iflytek/viafly/homepage/food/FoodCardView;
.super Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.source "FoodCardView.java"

# interfaces
.implements Laij;
.implements Lajk;
.implements Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/food/FoodCardView$a;
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/String;

.field private p:Lcom/iflytek/viafly/homepage/food/FoodCardView$a;

.field private final q:I

.field private r:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laks;",
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
            "Lcom/iflytek/viafly/homepage/food/FoodCardItemView;",
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
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;-><init>(Landroid/content/Context;Laic;)V

    .line 34
    const-string/jumbo v0, "FoodCardView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->o:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->q:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->u:Ljava/util/List;

    .line 44
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->setCallBack(Laij;)V

    .line 45
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->t:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->g()V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/food/FoodCardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/food/FoodCardView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->n()V

    return-void
.end method

.method private getContentView()Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->t:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "contentView":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    new-instance v1, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->t:Landroid/content/Context;

    invoke-direct {v1, v4, v5, p0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;-><init>(Landroid/content/Context;Laks;Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;)V

    .line 63
    .local v1, "foodCardItemView1":Lcom/iflytek/viafly/homepage/food/FoodCardItemView;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    new-instance v2, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->t:Landroid/content/Context;

    invoke-direct {v2, v4, v5, p0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;-><init>(Landroid/content/Context;Laks;Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;)V

    .line 65
    .local v2, "foodCardItemView2":Lcom/iflytek/viafly/homepage/food/FoodCardItemView;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    new-instance v3, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->t:Landroid/content/Context;

    invoke-direct {v3, v4, v5, p0}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;-><init>(Landroid/content/Context;Laks;Lcom/iflytek/viafly/homepage/food/FoodCardItemView$a;)V

    .line 67
    .local v3, "foodCardItemView3":Lcom/iflytek/viafly/homepage/food/FoodCardItemView;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->u:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->u:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->u:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 167
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->s:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 183
    :cond_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->h()V

    .line 171
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->getDefaultParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->u:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;

    .line 176
    .local v0, "foodItemView":Lcom/iflytek/viafly/homepage/food/FoodCardItemView;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laks;

    .line 178
    .local v1, "foodModel":Laks;
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->a(Laks;)V

    .line 173
    .end local v1    # "foodModel":Laks;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/homepage/food/FoodCardItemView;->a(Laks;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.setting.card.FOOD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->t:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->t:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method public a(Laks;)V
    .locals 2
    .param p1, "foodModel"    # Laks;

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    const-string/jumbo v0, "content"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->d(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->r:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-virtual {p1}, Laks;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 128
    sget-object v0, Lcom/iflytek/viafly/homepage/food/FoodCardView$1;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->p:Lcom/iflytek/viafly/homepage/food/FoodCardView$a;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->p:Lcom/iflytek/viafly/homepage/food/FoodCardView$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/food/FoodCardView$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->f()V

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->l()V

    goto :goto_0

    .line 128
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
    .line 98
    const-string/jumbo v0, "card_hide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string/jumbo v0, "FoodCardView"

    const-string/jumbo v1, "get 000008,hide card"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->k()V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->c(Ljava/lang/String;)I

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->r:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->s:Ljava/util/ArrayList;

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 108
    :cond_2
    const-string/jumbo v0, "FoodCardView"

    const-string/jumbo v1, "close card"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->k()V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->p:Lcom/iflytek/viafly/homepage/food/FoodCardView$a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->p:Lcom/iflytek/viafly/homepage/food/FoodCardView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/food/FoodCardView$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->i()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->r:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->b()V

    .line 196
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->f()V

    .line 202
    const-string/jumbo v0, "FoodCardView"

    const-string/jumbo v1, "clickRefresh"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;-><init>(Lajk;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->r:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    .line 52
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->b(I)V

    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->getContentView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->a(Landroid/widget/LinearLayout;)V

    .line 54
    const-string/jumbo v0, "\u67e5\u770b\u5168\u90e8"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->b(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/iflytek/viafly/homepage/food/FoodCardView$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView$a;-><init>(Lcom/iflytek/viafly/homepage/food/FoodCardView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->p:Lcom/iflytek/viafly/homepage/food/FoodCardView$a;

    .line 56
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardView;->getCache()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "cache":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->r:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->s:Ljava/util/ArrayList;

    .line 82
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->p:Lcom/iflytek/viafly/homepage/food/FoodCardView$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->s:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->p:Lcom/iflytek/viafly/homepage/food/FoodCardView$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/food/FoodCardView$a;->sendEmptyMessage(I)Z

    .line 86
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "FoodCardView"

    const-string/jumbo v1, "\u7f8e\u98df\u6570\u636e\u8bf7\u6c42"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->r:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->g()V

    .line 93
    return-void
.end method

.method public setHomeResultCallback(Lail;)V
    .locals 1
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardView;->r:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a(Lail;)V

    .line 124
    return-void
.end method
