.class public Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "BookCollectListActivity.java"

# interfaces
.implements Land$a;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;


# instance fields
.field public final a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/iflytek/base/skin/customView/PullListView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private j:Land;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:Lamx;

.field private p:Z

.field private q:Z

.field private r:Lamq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 43
    const-string/jumbo v0, "BookCollectListActivity"

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->a:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->k:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->m:I

    .line 57
    const/16 v0, 0x32

    iput v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->n:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b:Ljava/util/List;

    .line 64
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->p:Z

    .line 65
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->q:Z

    .line 331
    new-instance v0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;-><init>(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->r:Lamq;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->m:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "deletecollect":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    const/4 v5, 0x0

    .line 199
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v1, "\u786e\u8ba4\u5220\u9664"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$2;-><init>(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V

    .line 201
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u5220\u9664"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$1;-><init>(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;Ljava/util/List;)V

    .line 207
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 216
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/16 v2, 0x11

    .line 217
    invoke-virtual {v1, v2, v5, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 218
    return-void
.end method

.method private a(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x0

    .line 300
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 301
    new-instance v0, Lajh;

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->g:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lajh;-><init>(Landroid/view/View;)V

    .line 302
    .local v0, "showBannerAnim":Lajh;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lajh;->setDuration(J)V

    .line 303
    if-eqz p1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-wide v2, 0x404b800000000000L    # 55.0

    invoke-static {p0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lajh;->a(II)V

    .line 308
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 309
    if-eqz p1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    :cond_0
    return-void

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v4}, Lajh;->a(II)V

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v2

    invoke-virtual {v2}, Lamk;->e()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->k:Ljava/util/List;

    .line 103
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->k:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->n:I

    if-ge v2, v3, :cond_0

    .line 105
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->f:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/PullListView;->setPullLoadEnable(Z)V

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 110
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->m:I

    iget v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->n:I

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_2

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->m:I

    iget v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->n:I

    mul-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 112
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->k:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->f:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/PullListView;->setPullLoadEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BookCollectListActivity"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 115
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->k:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 119
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->e:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-boolean v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->p:Z

    if-eqz v2, :cond_4

    .line 121
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->d()V

    .line 126
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->j:Land;

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    invoke-virtual {v2, v3}, Land;->a(Ljava/util/List;)V

    goto :goto_2

    .line 124
    :cond_5
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->e:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "deletecollect":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    if-nez p1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamo;

    .line 322
    .local v0, "bookMarkInfo":Lamo;
    invoke-virtual {v0}, Lamo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    .end local v0    # "bookMarkInfo":Lamo;
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->o:Lamx;

    invoke-virtual {v2, v1}, Lamx;->a(Ljava/util/List;)J

    goto :goto_0

    .line 326
    .end local v1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const v2, 0x7f0c02fd

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 186
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamo;

    .line 187
    .local v0, "collect":Lamo;
    invoke-virtual {v0}, Lamo;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    .end local v0    # "collect":Lamo;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->a(Ljava/util/List;)V

    .line 196
    :goto_1
    return-void

    .line 194
    :cond_2
    const-string/jumbo v1, "\u8bf7\u9009\u62e9\u9700\u8981\u7684\u5220\u9664\u8bb0\u5f55"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private d()V
    .locals 3

    .prologue
    .line 256
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->p:Z

    if-nez v1, :cond_1

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_operation"

    const-string/jumbo v2, "edit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90102"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 260
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 268
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->p:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->p:Z

    .line 265
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->j:Land;

    iget-boolean v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->p:Z

    invoke-virtual {v1, v2}, Land;->a(Z)V

    .line 266
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->j:Land;

    invoke-virtual {v1}, Land;->notifyDataSetChanged()V

    .line 267
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->e()V

    goto :goto_0

    .line 264
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->p:Z

    if-eqz v1, :cond_0

    .line 272
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->a(Z)V

    .line 273
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->e:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5b8c\u6210"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->a(Z)V

    .line 276
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->e:Landroid/widget/TextView;

    const-string/jumbo v2, "\u7f16\u8f91"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamo;

    .line 278
    .local v0, "collect":Lamo;
    invoke-virtual {v0, v3}, Lamo;->a(Z)V

    goto :goto_1

    .line 280
    .end local v0    # "collect":Lamo;
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->a()V

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 285
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v1

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamo;

    .line 289
    .local v0, "collect":Lamo;
    invoke-virtual {v0}, Lamo;->i()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 293
    .end local v0    # "collect":Lamo;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->q:Z

    .line 237
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->q:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f0201f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    return-void

    .line 154
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->d()V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->p:Z

    if-eqz v1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->d()V

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->finish()V

    goto :goto_0

    .line 164
    :pswitch_3
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->q:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->q:Z

    .line 165
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamo;

    .line 166
    .local v0, "collect":Lamo;
    iget-boolean v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->q:Z

    invoke-virtual {v0, v2}, Lamo;->a(Z)V

    goto :goto_2

    .line 164
    .end local v0    # "collect":Lamo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->j:Land;

    invoke-virtual {v1}, Land;->notifyDataSetChanged()V

    .line 169
    iget-boolean v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->q:Z

    if-eqz v1, :cond_3

    .line 170
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->d:Landroid/widget/ImageView;

    const v2, 0x7f0201f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->d:Landroid/widget/ImageView;

    const v2, 0x7f0201f3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 176
    :pswitch_4
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->c()V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x7f0b023d
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
    .line 69
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f03003d

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->setContentView(I)V

    .line 71
    const v1, 0x7f0b023f

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/PullListView;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->f:Lcom/iflytek/base/skin/customView/PullListView;

    .line 72
    const v1, 0x7f0b0240

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "emptyView":Landroid/view/View;
    new-instance v1, Land;

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->k:Ljava/util/List;

    invoke-direct {v1, p0, v2, p0}, Land;-><init>(Landroid/content/Context;Ljava/util/List;Land$a;)V

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->j:Land;

    .line 74
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->f:Lcom/iflytek/base/skin/customView/PullListView;

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->j:Land;

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/PullListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->f:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/PullListView;->setEmptyView(Landroid/view/View;)V

    .line 76
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->f:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/PullListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->f:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/PullListView;->setPullRefreshEnable(Z)V

    .line 78
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->f:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/PullListView;->setXListViewListener(Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;)V

    .line 79
    const v1, 0x7f0b023e

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->e:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0b023d

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->c:Landroid/widget/ImageView;

    .line 81
    const v1, 0x7f0b0241

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->g:Landroid/widget/LinearLayout;

    .line 82
    const v1, 0x7f0b0242

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->h:Landroid/widget/LinearLayout;

    .line 83
    const v1, 0x7f0b0243

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->d:Landroid/widget/ImageView;

    .line 84
    const v1, 0x7f0b0244

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->i:Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v1, Lamx;

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->r:Lamq;

    invoke-direct {v1, p0, v2}, Lamx;-><init>(Landroid/content/Context;Lamq;)V

    iput-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->o:Lamx;

    .line 90
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 91
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100128"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->p:Z

    .line 148
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 246
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 247
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->p:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->d()V

    .line 249
    const/4 v0, 0x1

    .line 252
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
    .line 227
    iget v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->m:I

    .line 228
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b()V

    .line 229
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->a()V

    .line 230
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->f:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/PullListView;->stopLoadMore()V

    .line 231
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->m:I

    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->b()V

    .line 142
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
