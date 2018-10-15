.class public Lami;
.super Ljava/lang/Object;
.source "PlayListHelper.java"


# static fields
.field private static b:Lami;


# instance fields
.field private volatile a:Lcom/iflytek/viafly/listenbook/base/PlayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;-><init>()V

    iput-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    .line 25
    return-void
.end method

.method public static a()Lami;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lami;->b:Lami;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lami;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lami;->b:Lami;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lami;

    invoke-direct {v0}, Lami;-><init>()V

    sput-object v0, Lami;->b:Lami;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lami;->b:Lami;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/player/entity/Audio;)I
    .locals 1
    .param p1, "audio"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    .line 73
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c(Lcom/iflytek/viafly/player/entity/Audio;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized a(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/iflytek/viafly/listenbook/base/PlayList;)V
    .locals 3
    .param p1, "list"    # Lcom/iflytek/viafly/listenbook/base/PlayList;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayListHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlayList list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)Z
    .locals 1
    .param p1, "fromComplete"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized b()Lcom/iflytek/viafly/listenbook/base/PlayList;
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)V
    .locals 1
    .param p1, "playingIndex"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->b(I)V

    .line 111
    return-void
.end method

.method public b(Lcom/iflytek/viafly/player/entity/Audio;)V
    .locals 1
    .param p1, "audio"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    .line 98
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->d(Lcom/iflytek/viafly/player/entity/Audio;)V

    .line 99
    return-void
.end method

.method public declared-synchronized c()Lcom/iflytek/viafly/player/entity/Audio;
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->f()Lcom/iflytek/viafly/player/entity/Audio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/player/entity/Audio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->d()I
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

.method public f()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->g()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/iflytek/viafly/player/entity/Audio;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->j()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/iflytek/viafly/player/entity/Audio;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->h()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->e()I

    move-result v0

    iget-object v1, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lami;->c()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 145
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 149
    invoke-virtual {p0}, Lami;->d()Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, "audios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/player/entity/Audio;>;"
    invoke-virtual {p0}, Lami;->k()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "id":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/player/entity/Audio;

    .line 153
    .local v1, "chapterAudio":Lcom/iflytek/viafly/player/entity/Audio;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    invoke-virtual {v1}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/player/entity/Audio;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/player/entity/Audio;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    .end local v1    # "chapterAudio":Lcom/iflytek/viafly/player/entity/Audio;
    :cond_2
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lami;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->l()V

    .line 171
    :cond_0
    return-void
.end method
