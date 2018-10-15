.class final Lmh;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lmg;


# direct methods
.method constructor <init>(Lmg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmh;->a:Lmg;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startReadThread OK="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmh;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lmh;->a:Lmg;

    invoke-static {v0}, Lmg;->a(Lmg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmh;->a:Lmg;

    invoke-static {v0}, Lmg;->b(Lmg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmh;->a:Lmg;

    invoke-static {v0}, Lmg;->c(Lmg;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "startReadThread break "

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startReadThread finish="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmh;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
