.class public Laix;
.super Ljava/lang/Object;
.source "PlayListHelper.java"


# static fields
.field private static b:Laix;


# instance fields
.field private volatile a:Lcom/iflytek/viafly/listenbook/base/PlayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;-><init>()V

    iput-object v0, p0, Laix;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    .line 33
    return-void
.end method

.method public static a()Laix;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Laix;->b:Laix;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Laix;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Laix;->b:Laix;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Laix;

    invoke-direct {v0}, Laix;-><init>()V

    sput-object v0, Laix;->b:Laix;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Laix;->b:Laix;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayListHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlayingIndex index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Laix;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Laix;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/iflytek/viafly/listenbook/base/PlayList;)V
    .locals 3
    .param p1, "list"    # Lcom/iflytek/viafly/listenbook/base/PlayList;

    .prologue
    .line 36
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

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Laix;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayListHelper"

    const-string/jumbo v1, "getPlayList "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Laix;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laix;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Laix;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayListHelper"

    const-string/jumbo v1, "getPlayingIndex index "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Laix;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Laix;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->e()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 62
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lcom/iflytek/viafly/player/entity/Audio;
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laix;->a:Lcom/iflytek/viafly/listenbook/base/PlayList;

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
