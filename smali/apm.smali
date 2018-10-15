.class public Lapm;
.super Landroid/widget/PopupWindow;
.source "MusicListPopWindow.java"

# interfaces
.implements Lapf;
.implements Laph;
.implements Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapm$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/iflytek/base/skin/customView/PullListView;

.field private h:Lapl;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/player/entity/Audio;",
            ">;"
        }
    .end annotation
.end field

.field private j:Laqj;

.field private k:J

.field private l:Landroid/widget/AdapterView$OnItemClickListener;

.field private m:Lapm$a;

.field private final n:I

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 159
    new-instance v0, Lapm$4;

    invoke-direct {v0, p0}, Lapm$4;-><init>(Lapm;)V

    iput-object v0, p0, Lapm;->l:Landroid/widget/AdapterView$OnItemClickListener;

    .line 199
    new-instance v0, Lapm$5;

    invoke-direct {v0, p0}, Lapm$5;-><init>(Lapm;)V

    iput-object v0, p0, Lapm;->m:Lapm$a;

    .line 246
    const/4 v0, 0x2

    iput v0, p0, Lapm;->n:I

    .line 247
    new-instance v0, Lapm$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lapm$6;-><init>(Lapm;Landroid/os/Looper;)V

    iput-object v0, p0, Lapm;->o:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lapm;->a:Landroid/app/Activity;

    .line 65
    invoke-static {p1}, Laqj;->a(Landroid/content/Context;)Laqj;

    move-result-object v0

    iput-object v0, p0, Lapm;->j:Laqj;

    .line 66
    iget-object v0, p0, Lapm;->j:Laqj;

    invoke-virtual {v0, p0}, Laqj;->a(Lapf;)V

    .line 67
    iget-object v0, p0, Lapm;->j:Laqj;

    invoke-virtual {v0, p0}, Laqj;->a(Laph;)V

    .line 68
    invoke-direct {p0}, Lapm;->a()V

    .line 69
    invoke-direct {p0}, Lapm;->b()V

    .line 70
    iget-object v0, p0, Lapm;->j:Laqj;

    invoke-virtual {v0}, Laqj;->z()Z

    move-result v0

    invoke-virtual {p0, v0}, Lapm;->b(Z)V

    .line 71
    return-void
.end method

.method static synthetic a(Lapm;)Laqj;
    .locals 1
    .param p0, "x0"    # Lapm;

    .prologue
    .line 44
    iget-object v0, p0, Lapm;->j:Laqj;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v0, p0, Lapm;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300dd

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lapm;->b:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lapm;->b:Landroid/view/View;

    const v1, 0x7f0b054e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lapm;->c:Landroid/widget/LinearLayout;

    .line 77
    iget-object v0, p0, Lapm;->b:Landroid/view/View;

    const v1, 0x7f0b054f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lapm;->d:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lapm;->b:Landroid/view/View;

    const v1, 0x7f0b0550

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapm;->e:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lapm;->b:Landroid/view/View;

    const v1, 0x7f0b0552

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapm;->f:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lapm;->b:Landroid/view/View;

    const v1, 0x7f0b0551

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/PullListView;

    iput-object v0, p0, Lapm;->g:Lcom/iflytek/base/skin/customView/PullListView;

    .line 81
    iget-object v0, p0, Lapm;->f:Landroid/widget/TextView;

    new-instance v1, Lapm$1;

    invoke-direct {v1, p0}, Lapm$1;-><init>(Lapm;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lapm;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lapm$2;

    invoke-direct {v1, p0}, Lapm$2;-><init>(Lapm;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-direct {p0}, Lapm;->c()V

    .line 100
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lapm;->i:Ljava/util/List;

    .line 101
    new-instance v0, Lapl;

    iget-object v1, p0, Lapm;->a:Landroid/app/Activity;

    iget-object v2, p0, Lapm;->i:Ljava/util/List;

    iget-object v3, p0, Lapm;->m:Lapm$a;

    invoke-direct {v0, v1, v2, v3}, Lapl;-><init>(Landroid/content/Context;Ljava/util/List;Lapm$a;)V

    iput-object v0, p0, Lapm;->h:Lapl;

    .line 102
    iget-object v0, p0, Lapm;->g:Lcom/iflytek/base/skin/customView/PullListView;

    iget-object v1, p0, Lapm;->h:Lapl;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/PullListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v0, p0, Lapm;->g:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/PullListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Lapm;->g:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/PullListView;->setPullRefreshEnable(Z)V

    .line 105
    iget-object v0, p0, Lapm;->g:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/PullListView;->setPullLoadEnable(Z)V

    .line 106
    iget-object v0, p0, Lapm;->g:Lcom/iflytek/base/skin/customView/PullListView;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/PullListView;->setXListViewListener(Lcom/iflytek/base/skin/customView/PullListView$IXListViewListener;)V

    .line 107
    iget-object v0, p0, Lapm;->g:Lcom/iflytek/base/skin/customView/PullListView;

    iget-object v1, p0, Lapm;->l:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/PullListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    return-void
.end method

.method static synthetic b(Lapm;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lapm;

    .prologue
    .line 44
    iget-object v0, p0, Lapm;->b:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 112
    invoke-virtual {p0, v4}, Lapm;->setOutsideTouchable(Z)V

    .line 114
    iget-object v1, p0, Lapm;->b:Landroid/view/View;

    new-instance v2, Lapm$3;

    invoke-direct {v2, p0}, Lapm$3;-><init>(Lapm;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    iget-object v1, p0, Lapm;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Lapm;->setContentView(Landroid/view/View;)V

    .line 130
    iget-object v1, p0, Lapm;->a:Landroid/app/Activity;

    const-wide v2, 0x4077200000000000L    # 370.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {p0, v1}, Lapm;->setHeight(I)V

    .line 131
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lapm;->setWidth(I)V

    .line 132
    invoke-virtual {p0, v4}, Lapm;->setFocusable(Z)V

    .line 134
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x50000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 135
    .local v0, "dw":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v0}, Lapm;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lapm;->setAnimationStyle(I)V

    .line 138
    return-void
.end method

.method static synthetic c(Lapm;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lapm;

    .prologue
    .line 44
    iget-object v0, p0, Lapm;->i:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lapm;->j:Laqj;

    invoke-virtual {v1}, Laqj;->A()I

    move-result v0

    .line 142
    .local v0, "mode":I
    iget-object v1, p0, Lapm;->d:Landroid/widget/ImageView;

    invoke-static {v0}, Lamj;->e(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v1, p0, Lapm;->e:Landroid/widget/TextView;

    invoke-static {v0}, Lamj;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method static synthetic d(Lapm;)Lapl;
    .locals 1
    .param p0, "x0"    # Lapm;

    .prologue
    .line 44
    iget-object v0, p0, Lapm;->h:Lapl;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V
    .locals 2
    .param p1, "item"    # Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .prologue
    .line 148
    iget-object v0, p0, Lapm;->o:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 149
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 157
    return-void
.end method

.method public b(Z)V
    .locals 4
    .param p1, "needLoadMore"    # Z

    .prologue
    .line 180
    iget-object v1, p0, Lapm;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lapm;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lapm;->h:Lapl;

    invoke-virtual {v1}, Lapl;->notifyDataSetChanged()V

    .line 184
    iget-object v1, p0, Lapm;->i:Ljava/util/List;

    iget-object v2, p0, Lapm;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .line 185
    .local v0, "lastItem":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    instance-of v1, v0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    if-eqz v1, :cond_2

    .line 186
    check-cast v0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    .end local v0    # "lastItem":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->l()J

    move-result-wide v2

    iput-wide v2, p0, Lapm;->k:J

    .line 188
    :cond_2
    if-eqz p1, :cond_3

    .line 189
    iget-object v1, p0, Lapm;->g:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/PullListView;->setPullLoadEnable(Z)V

    goto :goto_0

    .line 191
    :cond_3
    iget-object v1, p0, Lapm;->g:Lcom/iflytek/base/skin/customView/PullListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/PullListView;->setPullLoadEnable(Z)V

    goto :goto_0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lapm;->c()V

    .line 154
    return-void
.end method

.method public onLoadMore()V
    .locals 4

    .prologue
    .line 233
    sget-object v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_RECOGNITION:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    iget-object v1, p0, Lapm;->j:Laqj;

    invoke-virtual {v1}, Laqj;->C()Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 234
    iget-object v0, p0, Lapm;->j:Laqj;

    invoke-virtual {v0}, Laqj;->x()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_HISTORY:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    iget-object v1, p0, Lapm;->j:Laqj;

    invoke-virtual {v1}, Laqj;->C()Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 236
    iget-object v0, p0, Lapm;->j:Laqj;

    invoke-virtual {v0}, Laqj;->y()V

    goto :goto_0

    .line 237
    :cond_2
    sget-object v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_FAVORITE:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    iget-object v1, p0, Lapm;->j:Laqj;

    invoke-virtual {v1}, Laqj;->C()Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lapm;->j:Laqj;

    iget-wide v2, p0, Lapm;->k:J

    invoke-virtual {v0, v2, v3}, Laqj;->a(J)V

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method
