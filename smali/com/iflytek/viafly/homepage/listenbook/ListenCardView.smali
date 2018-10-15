.class public Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;
.super Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.source "ListenCardView.java"

# interfaces
.implements Laij;
.implements Lajk;
.implements Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:I

.field private q:Landroid/content/Context;

.field private r:Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;

.field private s:Ljava/lang/String;

.field private t:Laky;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakx;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;",
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
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;-><init>(Landroid/content/Context;Laic;)V

    .line 32
    const-string/jumbo v0, "ListenCardView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->o:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->p:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->v:Ljava/util/List;

    .line 46
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->setCallBack(Laij;)V

    .line 47
    invoke-virtual {p2}, Laic;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->s:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->q:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->g()V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->n()V

    return-void
.end method

.method private getContentView()Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 64
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->q:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "contentView":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    new-instance v1, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->q:Landroid/content/Context;

    invoke-direct {v1, v4, v5, p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;-><init>(Landroid/content/Context;Lakx;Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;)V

    .line 68
    .local v1, "listenBookItemView1":Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v2, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->q:Landroid/content/Context;

    invoke-direct {v2, v4, v5, p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;-><init>(Landroid/content/Context;Lakx;Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;)V

    .line 70
    .local v2, "listenBookItemView2":Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    new-instance v3, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->q:Landroid/content/Context;

    invoke-direct {v3, v4, v5, p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;-><init>(Landroid/content/Context;Lakx;Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView$a;)V

    .line 72
    .local v3, "listenBookItemView3":Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->v:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->v:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->v:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v0
.end method

.method private n()V
    .locals 5

    .prologue
    .line 184
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->u:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 185
    :cond_0
    const-string/jumbo v3, "ListenCardView"

    const-string/jumbo v4, "get unUseless data,return"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    return-void

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->h()V

    .line 190
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->getDefaultParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->v:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;

    .line 195
    .local v1, "listenBookItemView":Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 196
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->u:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lakx;

    .line 197
    .local v2, "listenModel":Lakx;
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->a(Lakx;)V

    .line 192
    .end local v2    # "listenModel":Lakx;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/homepage/listenbook/ListenBookItemView;->a(Lakx;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 207
    const-string/jumbo v1, "ListenCardView"

    const-string/jumbo v2, "clickSetting"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.setting.card.LISTENBOOK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->q:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->q:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method public a(Lakx;)V
    .locals 2
    .param p1, "listenModel"    # Lakx;

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string/jumbo v1, "content"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->d(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lakx;->d()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->t:Laky;

    invoke-virtual {v1, v0}, Laky;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 133
    sget-object v0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$1;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->r:Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->r:Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->f()V

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->l()V

    goto :goto_0

    .line 133
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
    .line 102
    const-string/jumbo v0, "card_hide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const-string/jumbo v0, "ListenCardView"

    const-string/jumbo v1, "get 000008,hide card"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->k()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->c(Ljava/lang/String;)I

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->t:Laky;

    invoke-virtual {v0, p1}, Laky;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->u:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->u:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 112
    :cond_2
    const-string/jumbo v0, "ListenCardView"

    const-string/jumbo v1, "close card"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->k()V

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->r:Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->r:Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->i()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 216
    const-string/jumbo v0, "ListenCardView"

    const-string/jumbo v1, "clickMore"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->t:Laky;

    invoke-virtual {v0}, Laky;->a()V

    .line 218
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 223
    const-string/jumbo v0, "ListenCardView"

    const-string/jumbo v1, "clickRefresh"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->f()V

    .line 225
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Laky;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->q:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->s:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Laky;-><init>(Lajk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->t:Laky;

    .line 55
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->b(I)V

    .line 57
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->getContentView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->a(Landroid/widget/LinearLayout;)V

    .line 59
    const-string/jumbo v0, "\u67e5\u770b\u5168\u90e8"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->b(Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;-><init>(Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->r:Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;

    .line 61
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->getCache()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "cache":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->t:Laky;

    invoke-virtual {v1, v0}, Laky;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->u:Ljava/util/List;

    .line 86
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->r:Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->u:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->r:Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView$a;->sendEmptyMessage(I)Z

    .line 90
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, "ListenCardView"

    const-string/jumbo v1, "loadData"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->t:Laky;

    invoke-virtual {v0}, Laky;->g()V

    .line 97
    return-void
.end method

.method public setHomeResultCallback(Lail;)V
    .locals 1
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;->t:Laky;

    invoke-virtual {v0, p1}, Laky;->a(Lail;)V

    .line 129
    return-void
.end method
