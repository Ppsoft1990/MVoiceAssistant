.class public Lcom/iflytek/viafly/music/MusicHistoryListActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "MusicHistoryListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lapk$a;
.implements Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/iflytek/base/skin/customView/PullListView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Lapk;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicHistory;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->i:Ljava/util/List;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->j:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/music/MusicHistoryListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicHistoryListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/music/MusicHistoryListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicHistoryListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "deleteHistory":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicHistory;>;"
    const/4 v5, 0x0

    .line 166
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v1, "\u786e\u8ba4\u5220\u9664"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/iflytek/viafly/music/MusicHistoryListActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity$2;-><init>(Lcom/iflytek/viafly/music/MusicHistoryListActivity;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V

    .line 168
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u5220\u9664"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Lcom/iflytek/viafly/music/MusicHistoryListActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/iflytek/viafly/music/MusicHistoryListActivity$1;-><init>(Lcom/iflytek/viafly/music/MusicHistoryListActivity;Ljava/util/List;)V

    .line 174
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 191
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/16 v2, 0x11

    .line 192
    invoke-virtual {v1, v2, v5, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 193
    return-void
.end method

.method private a(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x0

    .line 273
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 274
    new-instance v0, Lajh;

    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->e:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lajh;-><init>(Landroid/view/View;)V

    .line 275
    .local v0, "showBannerAnim":Lajh;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lajh;->setDuration(J)V

    .line 276
    if-eqz p1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-wide v2, 0x404b800000000000L    # 55.0

    invoke-static {p0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lajh;->a(II)V

    .line 281
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 282
    if-eqz p1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    :cond_0
    return-void

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v4}, Lajh;->a(II)V

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/16 v4, 0x32

    const/4 v3, 0x0

    .line 83
    invoke-static {}, Laqh;->a()Laqh;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->j:I

    invoke-virtual {v1, v2, v4}, Laqh;->a(II)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicHistory;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 85
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->d:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/PullListView;->setPullLoadEnable(Z)V

    .line 89
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->c:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    invoke-virtual {v1}, Lapk;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->d()V

    .line 97
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    invoke-virtual {v1}, Lapk;->notifyDataSetChanged()V

    .line 99
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->d:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/PullListView;->setPullLoadEnable(Z)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/iflytek/viafly/music/MusicHistoryListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicHistoryListActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->b()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "deleteHistory":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicHistory;>;"
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    .line 154
    .local v1, "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v1    # "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 159
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->a(Ljava/util/List;)V

    .line 163
    :goto_1
    return-void

    .line 161
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
    .line 230
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    invoke-virtual {v1}, Lapk;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_operation"

    const-string/jumbo v2, "edit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90103"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 241
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    invoke-virtual {v1}, Lapk;->a()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lapk;->a(Z)V

    .line 239
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    invoke-virtual {v1}, Lapk;->notifyDataSetChanged()V

    .line 240
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->e()V

    goto :goto_0

    .line 238
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    invoke-virtual {v1}, Lapk;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->a(Z)V

    .line 246
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->c:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5b8c\u6210"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->a(Z)V

    .line 249
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->c:Landroid/widget/TextView;

    const-string/jumbo v2, "\u7f16\u8f91"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    .line 251
    .local v0, "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(Z)V

    goto :goto_1

    .line 253
    .end local v0    # "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->a()V

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->i:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v1

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    .line 262
    .local v0, "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->m()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 266
    .end local v0    # "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->k:Z

    .line 211
    iget-boolean v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->k:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f0201f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 149
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->d()V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    invoke-virtual {v1}, Lapk;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->d()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->finish()V

    goto :goto_0

    .line 132
    :pswitch_3
    iget-boolean v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->k:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->k:Z

    .line 133
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    .line 134
    .local v0, "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    iget-boolean v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->k:Z

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(Z)V

    goto :goto_2

    .line 132
    .end local v0    # "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    invoke-virtual {v1}, Lapk;->notifyDataSetChanged()V

    .line 137
    iget-boolean v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->k:Z

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->b:Landroid/widget/ImageView;

    const v2, 0x7f0201f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->b:Landroid/widget/ImageView;

    const v2, 0x7f0201f3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 144
    :pswitch_4
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->c()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x7f0b0256
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
    const v1, 0x7f030041

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->setContentView(I)V

    .line 55
    const v1, 0x7f0b0258

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/PullListView;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->d:Lcom/iflytek/base/skin/customView/PullListView;

    .line 56
    const v1, 0x7f0b0259

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "emptyView":Landroid/view/View;
    new-instance v1, Lapk;

    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->i:Ljava/util/List;

    invoke-direct {v1, p0, v2, p0}, Lapk;-><init>(Landroid/content/Context;Ljava/util/List;Lapk$a;)V

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    .line 58
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->d:Lcom/iflytek/base/skin/customView/PullListView;

    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/PullListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->d:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/PullListView;->setEmptyView(Landroid/view/View;)V

    .line 60
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->d:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/PullListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->d:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/PullListView;->setPullRefreshEnable(Z)V

    .line 62
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->d:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/PullListView;->setXListViewListener(Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;)V

    .line 63
    const v1, 0x7f0b0257

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->c:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0b0256

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->a:Landroid/widget/ImageView;

    .line 65
    const v1, 0x7f0b025a

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->e:Landroid/widget/LinearLayout;

    .line 66
    const v1, 0x7f0b025b

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->f:Landroid/widget/LinearLayout;

    .line 67
    const v1, 0x7f0b025c

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->b:Landroid/widget/ImageView;

    .line 68
    const v1, 0x7f0b025d

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->g:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 74
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100129"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lapk;->a(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 220
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->h:Lapk;

    invoke-virtual {v0}, Lapk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->d()V

    .line 223
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoadMore()V
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->j:I

    .line 203
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->b()V

    .line 204
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->a()V

    .line 205
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->j:I

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->b()V

    .line 108
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
