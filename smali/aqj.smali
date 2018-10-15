.class public Laqj;
.super Ljava/lang/Object;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Laim;
.implements Lapf;
.implements Laqy;


# static fields
.field private static a:Laqj;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

.field private d:Laqb;

.field private e:Laqb;

.field private f:Laqb;

.field private g:Laqb;

.field private h:Lapg;

.field private i:Lapg;

.field private j:Lapf;

.field private k:Laph;

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:Landroid/os/Handler;

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Z

.field private t:Laqb$a;

.field private u:Lyn;

.field private v:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-wide v0, p0, Laqj;->l:J

    .line 86
    iput-wide v0, p0, Laqj;->m:J

    .line 87
    iput-wide v0, p0, Laqj;->n:J

    .line 88
    iput-wide v0, p0, Laqj;->o:J

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laqj;->q:Ljava/util/HashMap;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Laqj;->s:Z

    .line 595
    new-instance v0, Laqj$3;

    invoke-direct {v0, p0}, Laqj$3;-><init>(Laqj;)V

    iput-object v0, p0, Laqj;->t:Laqb$a;

    .line 635
    new-instance v0, Laqj$4;

    invoke-direct {v0, p0}, Laqj$4;-><init>(Laqj;)V

    iput-object v0, p0, Laqj;->u:Lyn;

    .line 793
    new-instance v0, Laqj$6;

    invoke-direct {v0, p0}, Laqj$6;-><init>(Laqj;)V

    iput-object v0, p0, Laqj;->v:Ljava/lang/Runnable;

    .line 110
    iput-object p1, p0, Laqj;->b:Landroid/content/Context;

    .line 111
    return-void
.end method

.method public static a(Landroid/content/Context;)Laqj;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    sget-object v0, Laqj;->a:Laqj;

    if-nez v0, :cond_1

    .line 100
    const-class v1, Laqj;

    monitor-enter v1

    .line 101
    :try_start_0
    sget-object v0, Laqj;->a:Laqj;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Laqj;

    invoke-direct {v0, p0}, Laqj;-><init>(Landroid/content/Context;)V

    sput-object v0, Laqj;->a:Laqj;

    .line 104
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_1
    sget-object v0, Laqj;->a:Laqj;

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Laqj;)Lcom/iflytek/viafly/music/manager/MusicBizManager;
    .locals 1
    .param p0, "x0"    # Laqj;

    .prologue
    .line 70
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    return-object v0
.end method

.method static synthetic a(Laqj;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Laqj;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Laqj;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Laqj;Z)Z
    .locals 0
    .param p0, "x0"    # Laqj;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Laqj;->s:Z

    return p1
.end method

.method static synthetic b(Laqj;)Laph;
    .locals 1
    .param p0, "x0"    # Laqj;

    .prologue
    .line 70
    iget-object v0, p0, Laqj;->k:Laph;

    return-object v0
.end method

.method static synthetic b(Laqj;Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .locals 1
    .param p0, "x0"    # Laqj;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Laqj;->b(Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .locals 5
    .param p1, "songId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 771
    iget-object v3, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v3}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v1

    .line 772
    .local v1, "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    if-nez v1, :cond_0

    move-object v0, v2

    .line 780
    :goto_0
    return-object v0

    .line 775
    :cond_0
    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/player/entity/Audio;

    .line 776
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    invoke-virtual {v0}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 777
    check-cast v0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    goto :goto_0

    .end local v0    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    :cond_2
    move-object v0, v2

    .line 780
    goto :goto_0
.end method

.method static synthetic c(Laqj;)Lapg;
    .locals 1
    .param p0, "x0"    # Laqj;

    .prologue
    .line 70
    iget-object v0, p0, Laqj;->h:Lapg;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .param p1, "toast"    # Ljava/lang/String;

    .prologue
    .line 784
    new-instance v0, Laqj$5;

    invoke-direct {v0, p0, p1}, Laqj$5;-><init>(Laqj;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Laqj;->a(Ljava/lang/Runnable;)V

    .line 790
    return-void
.end method

.method static synthetic d(Laqj;)J
    .locals 2
    .param p0, "x0"    # Laqj;

    .prologue
    .line 70
    iget-wide v0, p0, Laqj;->l:J

    return-wide v0
.end method

.method static synthetic e(Laqj;)J
    .locals 2
    .param p0, "x0"    # Laqj;

    .prologue
    .line 70
    iget-wide v0, p0, Laqj;->m:J

    return-wide v0
.end method

.method static synthetic f(Laqj;)J
    .locals 2
    .param p0, "x0"    # Laqj;

    .prologue
    .line 70
    iget-wide v0, p0, Laqj;->n:J

    return-wide v0
.end method

.method static synthetic g(Laqj;)J
    .locals 2
    .param p0, "x0"    # Laqj;

    .prologue
    .line 70
    iget-wide v0, p0, Laqj;->o:J

    return-wide v0
.end method

.method static synthetic h(Laqj;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laqj;

    .prologue
    .line 70
    iget-object v0, p0, Laqj;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->w()I

    move-result v0

    return v0
.end method

.method public declared-synchronized B()I
    .locals 1

    .prologue
    .line 574
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->j()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public C()Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->i()Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    move-result-object v0

    return-object v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->t()I

    move-result v0

    return v0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->u()I

    move-result v0

    return v0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->v()I

    move-result v0

    return v0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->y()Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->f()Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g()Z

    move-result v0

    return v0
.end method

.method public J()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 879
    iget-object v0, p0, Laqj;->h:Lapg;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d()V

    .line 882
    iget-object v0, p0, Laqj;->h:Lapg;

    invoke-interface {v0, v1, v1}, Lapg;->a(II)V

    .line 889
    :goto_0
    return-void

    .line 887
    :cond_0
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e()V

    goto :goto_0
.end method

.method public K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .locals 2

    .prologue
    .line 892
    iget-object v1, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->s()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 893
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    if-eqz v1, :cond_0

    .line 894
    check-cast v0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .line 896
    .end local v0    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    :goto_0
    return-object v0

    .restart local v0    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 901
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laqj;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 902
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.action.ACTION_MUSIC_PLAYER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 904
    iget-object v1, p0, Laqj;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 905
    return-void
.end method

.method public a(I)V
    .locals 4
    .param p1, "mPlayIndex"    # I

    .prologue
    .line 146
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v1

    .line 147
    .local v1, "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "audios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/player/entity/Audio;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 150
    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 151
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(I)V

    .line 157
    .end local v0    # "audios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/player/entity/Audio;>;"
    :cond_0
    :goto_0
    return-void

    .line 153
    .restart local v0    # "audios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/player/entity/Audio;>;"
    :cond_1
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(I)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 1
    .param p1, "mLastTime"    # J

    .prologue
    .line 389
    new-instance v0, Laqj$2;

    invoke-direct {v0, p0, p1, p2}, Laqj$2;-><init>(Laqj;J)V

    invoke-virtual {p0, v0}, Laqj;->a(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method

.method public a(Lapf;)V
    .locals 0
    .param p1, "listener"    # Lapf;

    .prologue
    .line 135
    iput-object p1, p0, Laqj;->j:Lapf;

    .line 136
    return-void
.end method

.method public a(Lapg;)V
    .locals 0
    .param p1, "listener"    # Lapg;

    .prologue
    .line 127
    iput-object p1, p0, Laqj;->h:Lapg;

    .line 128
    return-void
.end method

.method public a(Laph;)V
    .locals 0
    .param p1, "listener"    # Laph;

    .prologue
    .line 141
    iput-object p1, p0, Laqj;->k:Laph;

    .line 142
    return-void
.end method

.method public a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V
    .locals 5
    .param p1, "item"    # Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .prologue
    .line 817
    invoke-virtual {p0}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v0

    .line 819
    .local v0, "tempItem":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a(I)V

    .line 820
    if-nez p1, :cond_1

    .line 822
    iget-object v1, p0, Laqj;->j:Lapf;

    if-eqz v1, :cond_0

    .line 823
    iget-object v1, p0, Laqj;->j:Lapf;

    invoke-interface {v1, p1}, Lapf;->a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    .line 825
    :cond_0
    invoke-virtual {p0}, Laqj;->v()V

    .line 829
    :cond_1
    iget-object v1, p0, Laqj;->h:Lapg;

    if-eqz v1, :cond_2

    .line 830
    iget-object v1, p0, Laqj;->h:Lapg;

    invoke-interface {v1, v0}, Lapg;->a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    .line 833
    :cond_2
    iget-object v1, p0, Laqj;->i:Lapg;

    if-eqz v1, :cond_3

    .line 834
    iget-object v1, p0, Laqj;->i:Lapg;

    invoke-interface {v1, v0}, Lapg;->a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    .line 837
    :cond_3
    invoke-static {}, Laio;->b()Laio;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Laio;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 859
    iget-object v0, p0, Laqj;->p:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 860
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 327
    iget-boolean v0, p0, Laqj;->s:Z

    if-eqz v0, :cond_0

    .line 328
    const-string/jumbo v0, "MusicPlayerPresenter"

    const-string/jumbo v1, "you click so fast, please slow down "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    iput-boolean v1, p0, Laqj;->s:Z

    .line 332
    iget-object v0, p0, Laqj;->g:Laqb;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Laqb;->a([Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Laqj;->n:J

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Laqg;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-result-object v0

    .line 308
    .local v0, "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    if-nez v0, :cond_1

    .line 309
    iget-object v1, p0, Laqj;->e:Laqb;

    invoke-virtual {v1, p1, p2}, Laqb;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Laqj;->l:J

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v1, p0, Laqj;->h:Lapg;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Laqj;->h:Lapg;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lapg;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .param p1, "loading"    # Z

    .prologue
    .line 853
    iget-object v0, p0, Laqj;->h:Lapg;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Laqj;->h:Lapg;

    invoke-interface {v0, p1}, Lapg;->a(Z)V

    .line 856
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 909
    invoke-virtual {p0}, Laqj;->i()V

    .line 910
    return-void
.end method

.method public b(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    .line 232
    invoke-virtual {p0}, Laqj;->F()I

    move-result v0

    .line 233
    .local v0, "duration":I
    const-string/jumbo v2, "MusicPlayerPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seekTo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "   duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-eq p1, v0, :cond_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 236
    :cond_0
    invoke-virtual {p0}, Laqj;->s()V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b(I)Z

    move-result v1

    .line 240
    .local v1, "result":Z
    const-string/jumbo v2, "MusicPlayerPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Lapg;)V
    .locals 1
    .param p1, "listener"    # Lapg;

    .prologue
    .line 130
    iget-object v0, p0, Laqj;->h:Lapg;

    if-ne v0, p1, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Laqj;->h:Lapg;

    .line 133
    :cond_0
    return-void
.end method

.method public b(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V
    .locals 2
    .param p1, "song"    # Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .prologue
    .line 318
    iget-boolean v0, p0, Laqj;->s:Z

    if-eqz v0, :cond_0

    .line 319
    const-string/jumbo v0, "MusicPlayerPresenter"

    const-string/jumbo v1, "you click so fast, please slow down "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Laqj;->s:Z

    .line 323
    iget-object v0, p0, Laqj;->f:Laqb;

    invoke-virtual {v0, p1}, Laqb;->a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)J

    move-result-wide v0

    iput-wide v0, p0, Laqj;->m:J

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Laqj;->h:Lapg;

    .line 915
    invoke-virtual {p0}, Laqj;->J()V

    .line 916
    return-void
.end method

.method public c(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x4

    .line 423
    const-string/jumbo v1, "MusicPlayerPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MusicPlayerPresenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-ne v4, p1, :cond_1

    .line 425
    sget-object v1, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Laqj;->v:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 426
    invoke-virtual {p0}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v0

    .line 427
    .local v0, "song":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    iget-object v1, p0, Laqj;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Laqj;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Laqj;->b(I)V

    .line 430
    :cond_0
    iget-object v1, p0, Laqj;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 432
    .end local v0    # "song":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    :cond_1
    iget-object v1, p0, Laqj;->h:Lapg;

    if-eqz v1, :cond_2

    .line 433
    iget-object v1, p0, Laqj;->h:Lapg;

    invoke-interface {v1, p1}, Lapg;->a(I)V

    .line 434
    if-ne v4, p1, :cond_2

    .line 436
    invoke-virtual {p0}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v1

    if-nez v1, :cond_2

    .line 438
    iget-object v1, p0, Laqj;->h:Lapg;

    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->u()I

    move-result v2

    iget-object v3, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v3}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->v()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lapg;->a(II)V

    .line 439
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Laqj;->d(I)V

    .line 443
    :cond_2
    iget-object v1, p0, Laqj;->i:Lapg;

    if-eqz v1, :cond_3

    .line 444
    iget-object v1, p0, Laqj;->i:Lapg;

    invoke-interface {v1, p1}, Lapg;->a(I)V

    .line 446
    :cond_3
    invoke-static {}, Laio;->b()Laio;

    move-result-object v1

    invoke-virtual {v1, p1}, Laio;->a(I)V

    .line 447
    return-void
.end method

.method public c(Lapg;)V
    .locals 0
    .param p1, "listener"    # Lapg;

    .prologue
    .line 138
    iput-object p1, p0, Laqj;->i:Lapg;

    .line 139
    return-void
.end method

.method public d(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 451
    iput p1, p0, Laqj;->r:I

    .line 452
    iget-object v0, p0, Laqj;->h:Lapg;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Laqj;->h:Lapg;

    invoke-interface {v0, p1}, Lapg;->b(I)V

    .line 455
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 920
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v1

    .line 921
    .local v1, "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    if-eqz v1, :cond_0

    .line 922
    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v0

    .line 923
    .local v0, "audios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/player/entity/Audio;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 924
    const/4 v2, 0x0

    .line 927
    .end local v0    # "audios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/player/entity/Audio;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 5

    .prologue
    .line 932
    invoke-virtual {p0}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v0

    .line 933
    .local v0, "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    if-eqz v0, :cond_0

    .line 934
    invoke-static {}, Laio;->b()Laio;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Laio;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :cond_0
    invoke-static {}, Laio;->b()Laio;

    move-result-object v1

    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->t()I

    move-result v2

    invoke-virtual {v1, v2}, Laio;->a(I)V

    .line 937
    return-void
.end method

.method public e(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 464
    const-string/jumbo v1, "MusicPlayerPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPlayError errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/16 v1, -0x26

    if-ne v1, p1, :cond_1

    .line 467
    iget-object v1, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->c()V

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const/4 v1, -0x1

    if-ne v1, p1, :cond_3

    .line 469
    iget-object v1, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d()V

    .line 470
    iget-object v1, p0, Laqj;->h:Lapg;

    if-eqz v1, :cond_2

    .line 471
    iget-object v1, p0, Laqj;->h:Lapg;

    invoke-interface {v1}, Lapg;->b()V

    .line 473
    :cond_2
    invoke-virtual {p0}, Laqj;->o()V

    goto :goto_0

    .line 474
    :cond_3
    const/4 v1, -0x2

    if-ne v1, p1, :cond_4

    .line 475
    iget-object v1, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d()V

    .line 476
    iget-object v1, p0, Laqj;->h:Lapg;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Laqj;->h:Lapg;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lapg;->a(Z)V

    goto :goto_0

    .line 481
    :cond_4
    invoke-virtual {p0}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v0

    .line 482
    .local v0, "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a(I)V

    .line 483
    iget-object v1, p0, Laqj;->j:Lapf;

    if-eqz v1, :cond_5

    .line 484
    iget-object v1, p0, Laqj;->j:Lapf;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lapf;->a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    .line 486
    :cond_5
    invoke-virtual {p0}, Laqj;->s()V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Laqj;->h:Lapg;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Laqj;->h:Lapg;

    invoke-interface {v0}, Lapg;->f()V

    .line 845
    :cond_0
    iget-object v0, p0, Laqj;->j:Lapf;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Laqj;->j:Lapf;

    invoke-interface {v0}, Lapf;->f()V

    .line 848
    :cond_1
    return-void
.end method

.method public f(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 563
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->g(I)V

    .line 564
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v0

    iput-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    .line 115
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    iget-object v1, p0, Laqj;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(Landroid/content/Context;)V

    .line 116
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    const-string/jumbo v1, "MusicPlayerPresenter"

    invoke-virtual {v0, v1, p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(Ljava/lang/String;Laqy;)V

    .line 117
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(Lapf;)V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Laqj;->p:Landroid/os/Handler;

    .line 120
    new-instance v0, Laqb;

    iget-object v1, p0, Laqj;->b:Landroid/content/Context;

    const-string/jumbo v2, "8002"

    iget-object v3, p0, Laqj;->u:Lyn;

    invoke-direct {v0, v1, v2, v3}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Laqj;->d:Laqb;

    .line 121
    new-instance v0, Laqb;

    iget-object v1, p0, Laqj;->b:Landroid/content/Context;

    const-string/jumbo v2, "1137"

    iget-object v3, p0, Laqj;->t:Laqb$a;

    invoke-direct {v0, v1, v2, v3}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Laqb$a;)V

    iput-object v0, p0, Laqj;->e:Laqb;

    .line 122
    new-instance v0, Laqb;

    iget-object v1, p0, Laqj;->b:Landroid/content/Context;

    const-string/jumbo v2, "1135"

    iget-object v3, p0, Laqj;->t:Laqb$a;

    invoke-direct {v0, v1, v2, v3}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Laqb$a;)V

    iput-object v0, p0, Laqj;->f:Laqb;

    .line 123
    new-instance v0, Laqb;

    iget-object v1, p0, Laqj;->b:Landroid/content/Context;

    const-string/jumbo v2, "1136"

    iget-object v3, p0, Laqj;->t:Laqb$a;

    invoke-direct {v0, v1, v2, v3}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Laqb$a;)V

    iput-object v0, p0, Laqj;->g:Laqb;

    .line 124
    invoke-static {}, Laio;->b()Laio;

    move-result-object v0

    invoke-virtual {v0, p0}, Laio;->a(Laim;)V

    .line 125
    return-void
.end method

.method public declared-synchronized g(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    monitor-exit p0

    return-void

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()V
    .locals 4

    .prologue
    .line 162
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->x()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    invoke-virtual {p0}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Laqj;->a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    .line 166
    invoke-virtual {p0}, Laqj;->E()I

    move-result v1

    .line 167
    .local v1, "progress":I
    invoke-virtual {p0}, Laqj;->F()I

    move-result v0

    .line 168
    .local v0, "duration":I
    iget-object v2, p0, Laqj;->h:Lapg;

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Laqj;->h:Lapg;

    invoke-interface {v2, v1, v0}, Lapg;->a(II)V

    .line 171
    iget-object v2, p0, Laqj;->h:Lapg;

    iget v3, p0, Laqj;->r:I

    invoke-interface {v2, v3}, Lapg;->b(I)V

    .line 173
    iget-object v2, p0, Laqj;->h:Lapg;

    invoke-virtual {p0}, Laqj;->D()I

    move-result v3

    invoke-interface {v2, v3}, Lapg;->a(I)V

    .line 178
    .end local v0    # "duration":I
    .end local v1    # "progress":I
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->c()V

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Laqj;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->c()V

    goto :goto_0
.end method

.method public j()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 189
    invoke-virtual {p0}, Laqj;->G()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v1

    .line 194
    .local v1, "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->t()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 195
    :cond_3
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/base/PlayList;->i()I

    move-result v0

    .line 196
    .local v0, "index":I
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(I)V

    .line 198
    iget-object v2, p0, Laqj;->h:Lapg;

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Laqj;->h:Lapg;

    invoke-interface {v2, v4, v4}, Lapg;->a(II)V

    goto :goto_0
.end method

.method public k()V
    .locals 5

    .prologue
    .line 405
    invoke-virtual {p0}, Laqj;->E()I

    move-result v0

    .line 406
    .local v0, "currentTime":I
    const-string/jumbo v2, "MusicPlayerPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "currentTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v2, p0, Laqj;->h:Lapg;

    if-eqz v2, :cond_0

    iget-object v2, p0, Laqj;->h:Lapg;

    invoke-interface {v2}, Lapg;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    :cond_0
    invoke-virtual {p0}, Laqj;->s()V

    .line 419
    :goto_0
    return-void

    .line 410
    :cond_1
    const-string/jumbo v2, "MusicPlayerPresenter"

    const-string/jumbo v3, " play buffering fail "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v2, p0, Laqj;->q:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 413
    invoke-virtual {p0}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v1

    .line 414
    .local v1, "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    if-eqz v1, :cond_2

    .line 415
    iget-object v2, p0, Laqj;->q:Ljava/util/HashMap;

    invoke-virtual {p0}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_2
    const-string/jumbo v2, "\u7f13\u5b58\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {p0, v2}, Laqj;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method public n()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Laqj;->i:Lapg;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Laqj;->i:Lapg;

    invoke-interface {v0}, Lapg;->b()V

    .line 505
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Laqj;->i:Lapg;

    .line 506
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    const-string/jumbo v1, "MusicPlayerPresenter"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->z()V

    .line 508
    invoke-static {}, Laio;->b()Laio;

    move-result-object v0

    invoke-virtual {v0}, Laio;->a()V

    .line 509
    return-void
.end method

.method public p()V
    .locals 0

    .prologue
    .line 514
    invoke-virtual {p0}, Laqj;->s()V

    .line 515
    return-void
.end method

.method public q()V
    .locals 0

    .prologue
    .line 520
    invoke-virtual {p0}, Laqj;->j()V

    .line 521
    return-void
.end method

.method public r()V
    .locals 0

    .prologue
    .line 526
    invoke-virtual {p0}, Laqj;->i()V

    .line 527
    return-void
.end method

.method public s()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-virtual {p0}, Laqj;->G()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string/jumbo v2, "MusicPlayerPresenter"

    const-string/jumbo v3, "play next song "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v1

    .line 212
    .local v1, "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->t()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 213
    :cond_3
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/base/PlayList;->k()I

    move-result v0

    .line 214
    .local v0, "index":I
    iget-object v2, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(I)V

    .line 216
    iget-object v2, p0, Laqj;->h:Lapg;

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Laqj;->h:Lapg;

    invoke-interface {v2, v4, v4}, Lapg;->a(II)V

    goto :goto_0
.end method

.method public t()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 223
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->w()I

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p0, v1}, Laqj;->f(I)V

    .line 228
    :cond_0
    :goto_0
    invoke-virtual {p0}, Laqj;->f()V

    .line 229
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->w()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laqj;->f(I)V

    goto :goto_0
.end method

.method public u()V
    .locals 11

    .prologue
    .line 247
    invoke-virtual {p0}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v9

    .line 248
    .local v9, "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    const-string/jumbo v0, "\u672c\u5730\u97f3\u4e50\u6682\u4e0d\u652f\u6301\u5206\u4eab"

    invoke-direct {p0, v0}, Laqj;->c(Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {v9}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    const-string/jumbo v0, "\u6b4c\u66f2\u4fe1\u606f\u83b7\u53d6\u5931\u8d25"

    invoke-direct {p0, v0}, Laqj;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 257
    .local v6, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    const-string/jumbo v5, "share"

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v5, "FT90010"

    invoke-virtual {v0, v5, v6}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 261
    :try_start_0
    invoke-virtual {v9}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->q()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "shareTitle":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "shareText":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->j()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "shareUrl":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g()Ljava/lang/String;

    move-result-object v10

    .line 265
    .local v10, "shareImg":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 266
    .local v4, "imagePath":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 268
    invoke-static {}, Lbcv;->a()Lbcv;

    move-result-object v0

    invoke-virtual {v0}, Lbcv;->b()Lbce;

    move-result-object v0

    invoke-static {v10, v0}, Lbdb;->a(Ljava/lang/String;Lbce;)Ljava/io/File;

    move-result-object v8

    .line 269
    .local v8, "f":Ljava/io/File;
    if-eqz v8, :cond_3

    .line 270
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 273
    .end local v8    # "f":Ljava/io/File;
    :cond_3
    iget-object v0, p0, Laqj;->b:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lazu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    .end local v1    # "shareTitle":Ljava/lang/String;
    .end local v2    # "shareText":Ljava/lang/String;
    .end local v3    # "shareUrl":Ljava/lang/String;
    .end local v4    # "imagePath":Ljava/lang/String;
    .end local v10    # "shareImg":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 275
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "MusicPlayerPresenter"

    const-string/jumbo v5, ""

    invoke-static {v0, v5, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public v()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    invoke-virtual {p0}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v0

    .line 282
    .local v0, "song":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    if-nez v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 286
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    iget-object v1, p0, Laqj;->b:Landroid/content/Context;

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Laqj;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v1, p0, Laqj;->h:Lapg;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Laqj;->h:Lapg;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lapg;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v1, p0, Laqj;->h:Lapg;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Laqj;->h:Lapg;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lapg;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 300
    :cond_4
    iget-object v1, p0, Laqj;->h:Lapg;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Laqj;->h:Lapg;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lapg;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public w()V
    .locals 7

    .prologue
    .line 336
    iget-object v2, p0, Laqj;->b:Landroid/content/Context;

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 337
    invoke-virtual {p0}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v1

    .line 338
    .local v1, "song":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    if-nez v1, :cond_0

    .line 358
    .end local v1    # "song":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    :goto_0
    return-void

    .line 341
    .restart local v1    # "song":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    :cond_0
    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Laqg;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-result-object v0

    .line 344
    .local v0, "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    if-nez v0, :cond_1

    .line 345
    invoke-virtual {p0, v1}, Laqj;->b(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Laqj;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    .end local v0    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    :cond_2
    iget-object v2, p0, Laqj;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v3

    iget-object v2, p0, Laqj;->b:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v4, 0x0

    sget-object v5, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v6, "music"

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_3
    const-string/jumbo v2, "\u672c\u5730\u6b4c\u66f2\u6682\u4e0d\u652f\u6301\u6536\u85cf"

    invoke-direct {p0, v2}, Laqj;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    .end local v1    # "song":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    :cond_4
    const-string/jumbo v2, "\u7f51\u7edc\u4e0d\u7ed9\u529b"

    invoke-direct {p0, v2}, Laqj;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public x()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Laqj;->d:Laqb;

    invoke-virtual {v0}, Laqb;->b()J

    move-result-wide v0

    iput-wide v0, p0, Laqj;->o:J

    .line 365
    return-void
.end method

.method public y()V
    .locals 1

    .prologue
    .line 371
    new-instance v0, Laqj$1;

    invoke-direct {v0, p0}, Laqj$1;-><init>(Laqj;)V

    invoke-virtual {p0, v0}, Laqj;->a(Ljava/lang/Runnable;)V

    .line 383
    return-void
.end method

.method public z()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 534
    sget-object v7, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_RECOGNITION:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    invoke-virtual {p0}, Laqj;->C()Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    move-result-object v8

    if-ne v7, v8, :cond_2

    .line 535
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b()Lafn;

    move-result-object v3

    .line 536
    .local v3, "playResult":Lafn;
    if-nez v3, :cond_1

    .line 559
    .end local v3    # "playResult":Lafn;
    :cond_0
    :goto_0
    return v6

    .line 540
    .restart local v3    # "playResult":Lafn;
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lafn;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 541
    .local v0, "currentIndex":I
    invoke-virtual {v3}, Lafn;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 543
    .local v4, "total":I
    if-ge v0, v4, :cond_0

    move v6, v5

    .line 549
    goto :goto_0

    .line 546
    .end local v0    # "currentIndex":I
    .end local v4    # "total":I
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 550
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "playResult":Lafn;
    :cond_2
    sget-object v7, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_HISTORY:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    invoke-virtual {p0}, Laqj;->C()Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    move-result-object v8

    if-ne v7, v8, :cond_4

    .line 552
    iget-object v7, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v7}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    rem-int/lit8 v2, v7, 0x32

    .line 553
    .local v2, "mod":I
    if-nez v2, :cond_3

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    .line 554
    .end local v2    # "mod":I
    :cond_4
    sget-object v7, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_FAVORITE:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    invoke-virtual {p0}, Laqj;->C()Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 556
    iget-object v7, p0, Laqj;->c:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-virtual {v7}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    rem-int/lit8 v2, v7, 0x32

    .line 557
    .restart local v2    # "mod":I
    if-nez v2, :cond_5

    :goto_2
    move v6, v5

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_2
.end method
