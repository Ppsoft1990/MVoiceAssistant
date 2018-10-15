.class public Lcom/iflytek/viafly/music/business/entry/MusicHistory;
.super Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
.source "MusicHistory.java"


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V
    .locals 2
    .param p1, "song"    # Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->l(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->m(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->n(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->c(I)V

    .line 22
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->e(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->g(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->c(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->f(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(I)V

    .line 28
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->b(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->d(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->h(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->i(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(J)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .param p1, "mPlayTime"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a:J

    .line 39
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "mSelected"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->b:Z

    .line 45
    return-void
.end method

.method public l()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a:J

    return-wide v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->b:Z

    return v0
.end method
