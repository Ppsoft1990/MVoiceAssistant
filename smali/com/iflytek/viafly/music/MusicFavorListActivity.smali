.class public Lcom/iflytek/viafly/music/MusicFavorListActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "MusicFavorListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lapj$a;
.implements Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/iflytek/base/skin/customView/PullListView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Lapj;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicFavor;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field private l:Z

.field private m:Laqb;

.field private n:Laqb$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 41
    const-string/jumbo v0, "MusicFavorListActivity"

    iput-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->a:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->k:J

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->l:Z

    .line 295
    new-instance v0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity$3;-><init>(Lcom/iflytek/viafly/music/MusicFavorListActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->n:Laqb$a;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/music/MusicFavorListActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicFavorListActivity;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/music/MusicFavorListActivity;)Laqb;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicFavorListActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->m:Laqb;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicFavor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "deleteFavor":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicFavor;>;"
    const/4 v5, 0x0

    .line 177
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v1, "\u786e\u8ba4\u5220\u9664"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/iflytek/viafly/music/MusicFavorListActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/viafly/music/MusicFavorListActivity$2;-><init>(Lcom/iflytek/viafly/music/MusicFavorListActivity;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V

    .line 179
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u5220\u9664"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Lcom/iflytek/viafly/music/MusicFavorListActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/iflytek/viafly/music/MusicFavorListActivity$1;-><init>(Lcom/iflytek/viafly/music/MusicFavorListActivity;Ljava/util/List;)V

    .line 185
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 198
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/16 v2, 0x11

    .line 199
    invoke-virtual {v1, v2, v5, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 200
    return-void
.end method

.method private a(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x0

    .line 282
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 283
    new-instance v0, Lajh;

    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->f:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lajh;-><init>(Landroid/view/View;)V

    .line 284
    .local v0, "showBannerAnim":Lajh;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lajh;->setDuration(J)V

    .line 285
    if-eqz p1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-wide v2, 0x404b800000000000L    # 55.0

    invoke-static {p0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lajh;->a(II)V

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    if-eqz p1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    :cond_0
    return-void

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v4}, Lajh;->a(II)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/music/MusicFavorListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicFavorListActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/16 v5, 0x32

    const/4 v4, 0x0

    .line 90
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v1

    iget-wide v2, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->k:J

    invoke-virtual {v1, v2, v3, v5}, Laqg;->a(JI)Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "favorList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicFavor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 92
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->e:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v1, v4}, Lcom/iflytek/base/skin/customView/PullListView;->setPullLoadEnable(Z)V

    .line 96
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->d:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    invoke-virtual {v1}, Lapj;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->d()V

    .line 104
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    invoke-virtual {v1}, Lapj;->notifyDataSetChanged()V

    .line 106
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->e:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/PullListView;->setPullLoadEnable(Z)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "deleteFavor":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicFavor;>;"
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    .line 165
    .local v1, "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->o()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    .end local v1    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 170
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->a(Ljava/util/List;)V

    .line 174
    :goto_1
    return-void

    .line 172
    :cond_2
    const-string/jumbo v2, "\u8bf7\u9009\u62e9\u9700\u8981\u7684\u5220\u9664\u8bb0\u5f55"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/iflytek/viafly/music/MusicFavorListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/music/MusicFavorListActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->b()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    invoke-virtual {v1}, Lapj;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_operation"

    const-string/jumbo v2, "edit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90101"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 250
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    invoke-virtual {v1}, Lapj;->a()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lapj;->a(Z)V

    .line 248
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    invoke-virtual {v1}, Lapj;->notifyDataSetChanged()V

    .line 249
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->e()V

    goto :goto_0

    .line 247
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    invoke-virtual {v1}, Lapj;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->a(Z)V

    .line 255
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->d:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5b8c\u6210"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->a(Z)V

    .line 258
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->d:Landroid/widget/TextView;

    const-string/jumbo v2, "\u7f16\u8f91"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    .line 260
    .local v0, "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a(Z)V

    goto :goto_1

    .line 262
    .end local v0    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->a()V

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v1

    .line 270
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    .line 271
    .local v0, "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->o()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 275
    .end local v0    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->l:Z

    .line 220
    iget-boolean v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->l:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->c:Landroid/widget/ImageView;

    const v1, 0x7f0201f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->c:Landroid/widget/ImageView;

    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    return-void

    .line 129
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->d()V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    invoke-virtual {v1}, Lapj;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->d()V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->finish()V

    goto :goto_0

    .line 139
    :pswitch_3
    iget-boolean v2, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->l:Z

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->l:Z

    .line 140
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    .line 141
    .local v0, "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    iget-boolean v2, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->l:Z

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a(Z)V

    goto :goto_1

    .line 143
    .end local v0    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    invoke-virtual {v1}, Lapj;->notifyDataSetChanged()V

    .line 144
    iget-boolean v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->l:Z

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->c:Landroid/widget/ImageView;

    const v2, 0x7f0201f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->c:Landroid/widget/ImageView;

    const v2, 0x7f0201f3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 151
    :pswitch_4
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->c()V

    goto :goto_0

    .line 154
    :cond_4
    const-string/jumbo v2, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x7f0b024e
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
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v1, 0x7f030040

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->setContentView(I)V

    .line 61
    const v1, 0x7f0b0250

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/PullListView;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->e:Lcom/iflytek/base/skin/customView/PullListView;

    .line 62
    const v1, 0x7f0b0251

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "emptyView":Landroid/view/View;
    new-instance v1, Lapj;

    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    invoke-direct {v1, p0, v2, p0}, Lapj;-><init>(Landroid/content/Context;Ljava/util/List;Lapj$a;)V

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    .line 64
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->e:Lcom/iflytek/base/skin/customView/PullListView;

    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/PullListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->e:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/PullListView;->setEmptyView(Landroid/view/View;)V

    .line 66
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->e:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/PullListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->e:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/PullListView;->setPullRefreshEnable(Z)V

    .line 68
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->e:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/PullListView;->setXListViewListener(Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;)V

    .line 69
    const v1, 0x7f0b024f

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->d:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0b024e

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->b:Landroid/widget/ImageView;

    .line 71
    const v1, 0x7f0b0252

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->f:Landroid/widget/LinearLayout;

    .line 72
    const v1, 0x7f0b0253

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->g:Landroid/widget/LinearLayout;

    .line 73
    const v1, 0x7f0b0254

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->c:Landroid/widget/ImageView;

    .line 74
    const v1, 0x7f0b0255

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->h:Landroid/widget/TextView;

    .line 75
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 80
    new-instance v1, Laqb;

    const-string/jumbo v2, "1136"

    iget-object v3, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->n:Laqb$a;

    invoke-direct {v1, p0, v2, v3}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Laqb$a;)V

    iput-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->m:Laqb;

    .line 81
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100129"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lapj;->a(Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 229
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->i:Lapj;

    invoke-virtual {v0}, Lapj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->d()V

    .line 232
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoadMore()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->k:J

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->b()V

    .line 213
    invoke-virtual {p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->a()V

    .line 214
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->k:J

    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    invoke-direct {p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->b()V

    .line 115
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
