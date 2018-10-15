.class Lara$a;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lara;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lara;


# direct methods
.method private constructor <init>(Lara;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lara$a;->a:Lara;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lara;Lara$1;)V
    .locals 0
    .param p1, "x0"    # Lara;
    .param p2, "x1"    # Lara$1;

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lara$a;-><init>(Lara;)V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lara$a;->a:Lara;

    invoke-static {v0, p2}, Lara;->b(Lara;I)V

    .line 451
    const-string/jumbo v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBufferingUpdate, percent is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 440
    const-string/jumbo v0, "Player"

    const-string/jumbo v1, "MediaPlayer | onCompletion"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lara$a;->a:Lara;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lara;->a(Lara;I)V

    .line 442
    iget-object v0, p0, Lara$a;->a:Lara;

    invoke-static {v0}, Lara;->a(Lara;)V

    .line 443
    iget-object v0, p0, Lara$a;->a:Lara;

    invoke-static {v0}, Lara;->b(Lara;)V

    .line 445
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x1

    .line 478
    const-string/jumbo v1, "Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mediaPlayer onError="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    sparse-switch p2, :sswitch_data_0

    .line 501
    iget-object v1, p0, Lara$a;->a:Lara;

    invoke-virtual {v1}, Lara;->d()Z

    .line 502
    iget-object v1, p0, Lara$a;->a:Lara;

    invoke-static {v1, p2}, Lara;->c(Lara;I)V

    .line 505
    :goto_0
    return v4

    .line 481
    :sswitch_0
    const-string/jumbo v1, "Player"

    const-string/jumbo v2, "player error unknown"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v1, p0, Lara$a;->a:Lara;

    invoke-virtual {v1}, Lara;->d()Z

    .line 483
    iget-object v1, p0, Lara$a;->a:Lara;

    invoke-static {v1}, Lara;->a(Lara;)V

    .line 484
    iget-object v1, p0, Lara$a;->a:Lara;

    const v2, 0xc3578

    invoke-static {v1, v2}, Lara;->c(Lara;I)V

    goto :goto_0

    .line 488
    :sswitch_1
    const-string/jumbo v1, "Player"

    const-string/jumbo v2, "player error died"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lara$a;->a:Lara;

    invoke-static {v1}, Lara;->g(Lara;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 491
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_1
    iget-object v1, p0, Lara$a;->a:Lara;

    invoke-static {v1}, Lara;->j(Lara;)V

    .line 496
    iget-object v1, p0, Lara$a;->a:Lara;

    const v2, 0xc3579

    invoke-static {v1, v2}, Lara;->c(Lara;I)V

    .line 497
    iget-object v1, p0, Lara$a;->a:Lara;

    invoke-static {v1, v4}, Lara;->a(Lara;I)V

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Player"

    const-string/jumbo v2, "onError"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 479
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 456
    const-string/jumbo v0, "Player"

    const-string/jumbo v1, "mediaPlayer onPrepared"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lara$a;->a:Lara;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lara;->a(Lara;I)V

    .line 458
    iget-object v0, p0, Lara$a;->a:Lara;

    invoke-static {v0}, Lara;->c(Lara;)V

    .line 459
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 463
    const-string/jumbo v0, "Player"

    const-string/jumbo v1, "mediaPlayer onSeekComplete"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lara$a;->a:Lara;

    invoke-static {v0}, Lara;->d(Lara;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 465
    const/4 v0, 0x5

    :try_start_0
    iget-object v2, p0, Lara$a;->a:Lara;

    invoke-static {v2}, Lara;->e(Lara;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lara$a;->a:Lara;

    invoke-static {v0}, Lara;->f(Lara;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lara$a;->a:Lara;

    invoke-static {v0}, Lara;->g(Lara;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 467
    iget-object v0, p0, Lara$a;->a:Lara;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lara;->a(Lara;I)V

    .line 468
    iget-object v0, p0, Lara$a;->a:Lara;

    invoke-static {v0}, Lara;->h(Lara;)V

    .line 470
    :cond_0
    const-string/jumbo v0, "Player"

    const-string/jumbo v2, "mediaPlayer notifySeekComplete "

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lara$a;->a:Lara;

    invoke-static {v0}, Lara;->i(Lara;)V

    .line 472
    iget-object v0, p0, Lara$a;->a:Lara;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lara;->a(Lara;Z)Z

    .line 473
    monitor-exit v1

    .line 474
    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
