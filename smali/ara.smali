.class public Lara;
.super Lif;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lara$a;
    }
.end annotation


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Lcom/iflytek/viafly/player/entity/Audio;

.field private c:I

.field private final d:Ljava/lang/Object;

.field private e:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Laqw;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/content/Context;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Lif;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lara;->c:I

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lara;->d:Ljava/lang/Object;

    .line 51
    const-string/jumbo v0, "Player"

    const-string/jumbo v1, "Player"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object p1, p0, Lara;->g:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lara;->p()V

    .line 56
    return-void
.end method

.method static synthetic a(Lara;)V
    .locals 0
    .param p0, "x0"    # Lara;

    .prologue
    .line 23
    invoke-direct {p0}, Lara;->v()V

    return-void
.end method

.method static synthetic a(Lara;I)V
    .locals 0
    .param p0, "x0"    # Lara;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lara;->c(I)V

    return-void
.end method

.method static synthetic a(Lara;Z)Z
    .locals 0
    .param p0, "x0"    # Lara;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lara;->i:Z

    return p1
.end method

.method private declared-synchronized b(I)V
    .locals 1
    .param p1, "playbackState"    # I

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lara;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lara;)V
    .locals 0
    .param p0, "x0"    # Lara;

    .prologue
    .line 23
    invoke-direct {p0}, Lara;->s()V

    return-void
.end method

.method static synthetic b(Lara;I)V
    .locals 0
    .param p0, "x0"    # Lara;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lara;->d(I)V

    return-void
.end method

.method private c(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    .line 274
    const-string/jumbo v4, "Player"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " notifyPlayStateChanged state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, p1}, Lara;->b(I)V

    .line 277
    iget-object v5, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v5

    .line 279
    :try_start_0
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 280
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 281
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Laqw;

    .line 282
    .local v0, "callback":Laqw;
    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0, p1}, Laqw;->a(I)V

    .line 280
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "callback":Laqw;
    :cond_1
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    .end local v2    # "i":I
    .end local v3    # "num":I
    :goto_1
    :try_start_1
    monitor-exit v5

    .line 302
    return-void

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "Player"

    const-string/jumbo v6, "notifyPlayStateChanged RemoteException "

    invoke-static {v4, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 292
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 289
    :catch_1
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "Player"

    const-string/jumbo v6, "notifyPlayStateChanged "

    invoke-static {v4, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic c(Lara;)V
    .locals 0
    .param p0, "x0"    # Lara;

    .prologue
    .line 23
    invoke-direct {p0}, Lara;->q()V

    return-void
.end method

.method static synthetic c(Lara;I)V
    .locals 0
    .param p0, "x0"    # Lara;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lara;->e(I)V

    return-void
.end method

.method static synthetic d(Lara;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lara;

    .prologue
    .line 23
    iget-object v0, p0, Lara;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private d(I)V
    .locals 7
    .param p1, "percent"    # I

    .prologue
    .line 326
    const-string/jumbo v4, "Player"

    const-string/jumbo v5, " notifyBufferingUpdate "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v5, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v5

    .line 329
    :try_start_0
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 330
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 331
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Laqw;

    .line 332
    .local v0, "callback":Laqw;
    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0, p1}, Laqw;->b(I)V

    .line 330
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    .end local v0    # "callback":Laqw;
    :cond_1
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    .end local v2    # "i":I
    .end local v3    # "num":I
    :goto_1
    :try_start_1
    monitor-exit v5

    .line 344
    return-void

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "Player"

    const-string/jumbo v6, "notifyBufferingUpdate "

    invoke-static {v4, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 342
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 339
    :catch_1
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "Player"

    const-string/jumbo v6, "notifyBufferingUpdate "

    invoke-static {v4, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic e(Lara;)I
    .locals 1
    .param p0, "x0"    # Lara;

    .prologue
    .line 23
    invoke-direct {p0}, Lara;->r()I

    move-result v0

    return v0
.end method

.method private e(I)V
    .locals 7
    .param p1, "errorCode"    # I

    .prologue
    .line 348
    const-string/jumbo v4, "Player"

    const-string/jumbo v5, " notifyPlayError "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v5, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v5

    .line 351
    :try_start_0
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 352
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 353
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Laqw;

    .line 354
    .local v0, "callback":Laqw;
    if-eqz v0, :cond_0

    .line 355
    invoke-interface {v0, p1}, Laqw;->c(I)V

    .line 352
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "callback":Laqw;
    :cond_1
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .end local v2    # "i":I
    .end local v3    # "num":I
    :goto_1
    :try_start_1
    monitor-exit v5

    .line 367
    return-void

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "Player"

    const-string/jumbo v6, "notifyPlayError "

    invoke-static {v4, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 365
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 361
    :catch_1
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "Player"

    const-string/jumbo v6, "notifyPlayError "

    invoke-static {v4, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic f(Lara;)Z
    .locals 1
    .param p0, "x0"    # Lara;

    .prologue
    .line 23
    iget-boolean v0, p0, Lara;->i:Z

    return v0
.end method

.method static synthetic g(Lara;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lara;

    .prologue
    .line 23
    iget-object v0, p0, Lara;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic h(Lara;)V
    .locals 0
    .param p0, "x0"    # Lara;

    .prologue
    .line 23
    invoke-direct {p0}, Lara;->u()V

    return-void
.end method

.method static synthetic i(Lara;)V
    .locals 0
    .param p0, "x0"    # Lara;

    .prologue
    .line 23
    invoke-direct {p0}, Lara;->t()V

    return-void
.end method

.method static synthetic j(Lara;)V
    .locals 0
    .param p0, "x0"    # Lara;

    .prologue
    .line 23
    invoke-direct {p0}, Lara;->p()V

    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    .line 59
    const-string/jumbo v1, "Player"

    const-string/jumbo v2, "initPlayer"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lara;->a:Landroid/media/MediaPlayer;

    .line 63
    iget-object v1, p0, Lara;->a:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 64
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    .line 65
    new-instance v0, Lara$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lara$a;-><init>(Lara;Lara$1;)V

    .line 66
    .local v0, "mMediaPlayerListener":Lara$a;
    iget-object v1, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 67
    iget-object v1, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 68
    iget-object v1, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 69
    iget-object v1, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 70
    iget-object v1, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 71
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lara;->b(I)V

    .line 73
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    iget-object v2, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :try_start_1
    iget-object v1, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 135
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lara;->c(I)V

    .line 136
    invoke-direct {p0}, Lara;->u()V

    .line 138
    monitor-exit v2

    .line 142
    :goto_0
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Player"

    const-string/jumbo v2, "start"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized r()I
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lara;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private s()V
    .locals 7

    .prologue
    .line 305
    const-string/jumbo v4, "Player"

    const-string/jumbo v5, " notifyComplete "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v5, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v5

    .line 308
    :try_start_0
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 309
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 310
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Laqw;

    .line 311
    .local v0, "callback":Laqw;
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0}, Laqw;->a()V

    .line 309
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "callback":Laqw;
    :cond_1
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    .end local v2    # "i":I
    .end local v3    # "num":I
    :goto_1
    :try_start_1
    monitor-exit v5

    .line 323
    return-void

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "Player"

    const-string/jumbo v6, "notifyComplete "

    invoke-static {v4, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 321
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 318
    :catch_1
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "Player"

    const-string/jumbo v6, "notifyComplete "

    invoke-static {v4, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private t()V
    .locals 7

    .prologue
    .line 370
    const-string/jumbo v4, "Player"

    const-string/jumbo v5, " notifySeekComplete "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v5, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v5

    .line 373
    :try_start_0
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 374
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 375
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Laqw;

    .line 376
    .local v0, "callback":Laqw;
    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0}, Laqw;->b()V

    .line 374
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .end local v0    # "callback":Laqw;
    :cond_1
    iget-object v4, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .end local v2    # "i":I
    .end local v3    # "num":I
    :goto_1
    :try_start_1
    monitor-exit v5

    .line 388
    return-void

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "Player"

    const-string/jumbo v6, "notifySeekComplete "

    invoke-static {v4, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 386
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 383
    :catch_1
    move-exception v1

    .line 384
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "Player"

    const-string/jumbo v6, "notifySeekComplete "

    invoke-static {v4, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private u()V
    .locals 3

    .prologue
    .line 425
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lara;->a(Landroid/content/Context;II)V

    .line 426
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    .line 429
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lara;->b(Landroid/content/Context;)V

    .line 430
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/iflytek/viafly/player/entity/Audio;
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lara;->b:Lcom/iflytek/viafly/player/entity/Audio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Laqw;)V
    .locals 1
    .param p1, "callback"    # Laqw;

    .prologue
    .line 256
    monitor-enter p0

    if-nez p1, :cond_0

    .line 259
    :goto_0
    monitor-exit p0

    return-void

    .line 257
    :cond_0
    :try_start_0
    iget-object v0, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 258
    iget v0, p0, Lara;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lara;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/iflytek/viafly/player/entity/Audio;)V
    .locals 1
    .param p1, "currentAudio"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lara;->b:Lcom/iflytek/viafly/player/entity/Audio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 206
    const-string/jumbo v2, "Player"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " seekTo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v2, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lara;->a()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 209
    .local v0, "currentAudio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lara;->g()I

    move-result v3

    if-ge v3, p1, :cond_1

    .line 211
    const-string/jumbo v1, "Player"

    const-string/jumbo v3, " seekTo position >= duration"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    :goto_0
    return v1

    .line 213
    :cond_1
    const-string/jumbo v3, "Player"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " seekTo position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v3, 0x4

    invoke-direct {p0}, Lara;->r()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 215
    const/4 v3, 0x1

    iput-boolean v3, p0, Lara;->i:Z

    .line 216
    iget-object v3, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    .line 217
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lara;->c(I)V

    .line 219
    :cond_2
    iget-object v3, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 220
    monitor-exit v2

    goto :goto_0

    .line 224
    .end local v0    # "currentAudio":Lcom/iflytek/viafly/player/entity/Audio;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized b(Laqw;)V
    .locals 1
    .param p1, "callback"    # Laqw;

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 264
    iget v0, p0, Lara;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lara;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 90
    const-string/jumbo v4, "Player"

    const-string/jumbo v5, "play"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v4, 0x5

    invoke-direct {p0}, Lara;->r()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 93
    const-string/jumbo v3, "Player"

    const-string/jumbo v4, "player is paused, start"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v3, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 95
    :try_start_0
    iget-object v4, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 96
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lara;->c(I)V

    .line 97
    invoke-direct {p0}, Lara;->u()V

    .line 98
    monitor-exit v3

    .line 124
    :goto_0
    return v2

    .line 98
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 102
    :cond_0
    const-string/jumbo v4, "Player"

    const-string/jumbo v5, "player  getPlayingAudio"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lara;->a()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 104
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/viafly/player/entity/Audio;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    :cond_1
    const-string/jumbo v2, "Player"

    const-string/jumbo v4, "player  audio is null or path is empty"

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    iget-object v4, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v4

    .line 111
    :try_start_1
    const-string/jumbo v5, "Player"

    const-string/jumbo v6, "player  start"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v5, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 114
    iget-object v5, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Lcom/iflytek/viafly/player/entity/Audio;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 115
    iget-object v5, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 117
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lara;->c(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "Player"

    const-string/jumbo v5, "play error "

    invoke-static {v2, v5, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const v2, 0xc357e

    invoke-direct {p0, v2}, Lara;->e(I)V

    .line 121
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v2, v3

    goto :goto_0
.end method

.method public declared-synchronized b(Lcom/iflytek/viafly/player/entity/Audio;)Z
    .locals 3
    .param p1, "audio"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " play audio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/player/entity/Audio;->s()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    monitor-exit p0

    return v0

    .line 152
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lara;->a(Lcom/iflytek/viafly/player/entity/Audio;)V

    .line 153
    invoke-virtual {p0}, Lara;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 158
    const-string/jumbo v1, "Player"

    const-string/jumbo v2, " pause "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lara;->h:Z

    .line 161
    iget-object v2, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v0, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 163
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lara;->c(I)V

    .line 164
    const/4 v0, 0x1

    monitor-exit v1

    .line 166
    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 172
    const-string/jumbo v0, "Player"

    const-string/jumbo v1, " stop "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 176
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lara;->c(I)V

    .line 177
    invoke-direct {p0}, Lara;->v()V

    .line 178
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v0, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    monitor-exit v1

    return v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()I
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    invoke-direct {p0}, Lara;->r()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lara;->r()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lara;->a:Landroid/media/MediaPlayer;

    .line 200
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 392
    invoke-super {p0}, Lif;->h()V

    .line 393
    const-string/jumbo v0, "Player"

    const-string/jumbo v1, "onFocusStop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-direct {p0}, Lara;->r()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lara;->h:Z

    .line 396
    iget-object v0, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 397
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lara;->c(I)V

    .line 399
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lara;->a(Z)V

    .line 400
    return-void
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 404
    invoke-super {p0}, Lif;->i()V

    .line 405
    const-string/jumbo v0, "Player"

    const-string/jumbo v1, "onFocusPause"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0}, Lara;->r()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lara;->h:Z

    .line 408
    iget-object v0, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 409
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lara;->c(I)V

    .line 411
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lara;->a(Z)V

    .line 412
    return-void
.end method

.method protected j()V
    .locals 2

    .prologue
    .line 416
    invoke-super {p0}, Lif;->j()V

    .line 417
    const-string/jumbo v0, "Player"

    const-string/jumbo v1, "onFocusResume"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0}, Lara;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lara;->h:Z

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lara;->h:Z

    .line 420
    invoke-virtual {p0}, Lara;->b()Z

    .line 422
    :cond_0
    return-void
.end method

.method public m()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 236
    iget v1, p0, Lara;->f:I

    if-gtz v1, :cond_1

    invoke-direct {p0}, Lara;->r()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 237
    invoke-direct {p0}, Lara;->r()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 242
    const-string/jumbo v0, "Player"

    const-string/jumbo v1, " releasePlayer "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lara;->o()V

    .line 245
    iget-object v1, p0, Lara;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-object v0, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 247
    iget-object v0, p0, Lara;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lara;->c(I)V

    .line 249
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-direct {p0}, Lara;->v()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lara;->a:Landroid/media/MediaPlayer;

    .line 252
    return-void

    .line 249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lara;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lara;->f:I

    .line 271
    return-void
.end method
