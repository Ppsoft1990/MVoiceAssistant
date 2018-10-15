.class public Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "BookHistoryListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lanf$a;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Lanf;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->i:Ljava/util/List;

    .line 48
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->j:Z

    .line 49
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "deleteHistory":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    const/4 v5, 0x0

    .line 159
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v1, "\u786e\u8ba4\u5220\u9664"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity$2;-><init>(Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V

    .line 161
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u5220\u9664"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity$1;-><init>(Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;Ljava/util/List;)V

    .line 167
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 182
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/16 v2, 0x11

    .line 183
    invoke-virtual {v1, v2, v5, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 184
    return-void
.end method

.method private a(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x0

    .line 253
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 254
    new-instance v0, Lajh;

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->e:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lajh;-><init>(Landroid/view/View;)V

    .line 255
    .local v0, "showBannerAnim":Lajh;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lajh;->setDuration(J)V

    .line 256
    if-eqz p1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-wide v2, 0x404b800000000000L    # 55.0

    invoke-static {p0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lajh;->a(II)V

    .line 261
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 262
    if-eqz p1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    :cond_0
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v4}, Lajh;->a(II)V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v1

    invoke-virtual {v1}, Lamk;->p()Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->h:Lanf;

    invoke-virtual {v1}, Lanf;->notifyDataSetChanged()V

    .line 87
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->c:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->j:Z

    if-eqz v1, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->d()V

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->b()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "deleteHistory":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .line 147
    .local v1, "history":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v1    # "history":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 152
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->a(Ljava/util/List;)V

    .line 156
    :goto_1
    return-void

    .line 154
    :cond_2
    const-string/jumbo v2, "\u8bf7\u9009\u62e9\u9700\u8981\u7684\u5220\u9664\u8bb0\u5f55"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private d()V
    .locals 3

    .prologue
    .line 209
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->j:Z

    if-nez v1, :cond_1

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_operation"

    const-string/jumbo v2, "edit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90104"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 221
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->j:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->j:Z

    .line 218
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->h:Lanf;

    iget-boolean v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->j:Z

    invoke-virtual {v1, v2}, Lanf;->a(Z)V

    .line 219
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->h:Lanf;

    invoke-virtual {v1}, Lanf;->notifyDataSetChanged()V

    .line 220
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->e()V

    goto :goto_0

    .line 217
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->j:Z

    if-eqz v1, :cond_0

    .line 225
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->a(Z)V

    .line 226
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->c:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5b8c\u6210"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->a(Z)V

    .line 229
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->c:Landroid/widget/TextView;

    const-string/jumbo v2, "\u7f16\u8f91"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .line 231
    .local v0, "history":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a(Z)V

    goto :goto_1

    .line 233
    .end local v0    # "history":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->a()V

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->i:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 241
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .line 242
    .local v0, "history":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->k()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 246
    .end local v0    # "history":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->k:Z

    .line 190
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->k:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f0201f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 141
    :goto_0
    :pswitch_0
    return-void

    .line 114
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->d()V

    goto :goto_0

    .line 117
    :pswitch_2
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->j:Z

    if-eqz v1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->d()V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->finish()V

    goto :goto_0

    .line 124
    :pswitch_3
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->k:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->k:Z

    .line 125
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .line 126
    .local v0, "history":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    iget-boolean v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->k:Z

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a(Z)V

    goto :goto_2

    .line 124
    .end local v0    # "history":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->h:Lanf;

    invoke-virtual {v1}, Lanf;->notifyDataSetChanged()V

    .line 129
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->k:Z

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->b:Landroid/widget/ImageView;

    const v2, 0x7f0201f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->b:Landroid/widget/ImageView;

    const v2, 0x7f0201f3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 136
    :pswitch_4
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->c()V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x7f0b0245
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v1, 0x7f03003e

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->setContentView(I)V

    .line 55
    const v1, 0x7f0b0247

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->d:Landroid/widget/ListView;

    .line 56
    const v1, 0x7f0b0248

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "emptyView":Landroid/view/View;
    new-instance v1, Lanf;

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->i:Ljava/util/List;

    invoke-direct {v1, p0, v2, p0}, Lanf;-><init>(Landroid/content/Context;Ljava/util/List;Lanf$a;)V

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->h:Lanf;

    .line 58
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->h:Lanf;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 60
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->d:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 61
    const v1, 0x7f0b0246

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->c:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0b0245

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->a:Landroid/widget/ImageView;

    .line 63
    const v1, 0x7f0b0249

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->e:Landroid/widget/LinearLayout;

    .line 64
    const v1, 0x7f0b024a

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->f:Landroid/widget/LinearLayout;

    .line 65
    const v1, 0x7f0b024b

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->b:Landroid/widget/ImageView;

    .line 66
    const v1, 0x7f0b024c

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->g:Landroid/widget/TextView;

    .line 67
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 72
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100128"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->j:Z

    .line 108
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 199
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 200
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->j:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->d()V

    .line 202
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;->b()V

    .line 102
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
