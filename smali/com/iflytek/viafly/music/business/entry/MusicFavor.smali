.class public Lcom/iflytek/viafly/music/business/entry/MusicFavor;
.super Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
.source "MusicFavor.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V
    .locals 1
    .param p1, "song"    # Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->l(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->m(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->n(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->c(I)V

    .line 25
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->e(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->g(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->c(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->f(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a(I)V

    .line 31
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->b(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->d(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->h(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->i(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .param p1, "mAddTime"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a:J

    .line 42
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "mSelected"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->d:Z

    .line 60
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUserId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLxSongId"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public l()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a:J

    return-wide v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->d:Z

    return v0
.end method
