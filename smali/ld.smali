.class public abstract Lld;
.super Llc;


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/Object;

.field protected volatile d:Lla;

.field protected volatile e:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Llc;-><init>()V

    iput-object v1, p0, Lld;->b:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lld;->c:Ljava/lang/Object;

    iput-object v1, p0, Lld;->d:Lla;

    iput-object v1, p0, Lld;->e:Landroid/os/HandlerThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Llp;->a(Landroid/content/Context;)Llp;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lld;->b:Landroid/content/Context;

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lld;->b:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method protected a()Z
    .locals 2

    iget-object v0, p0, Lld;->e:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lld;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lld;->e:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    iput-object v1, p0, Lld;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final b(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lld;->e:Landroid/os/HandlerThread;

    iget-object v0, p0, Lld;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lld;->e:Landroid/os/HandlerThread;

    return-object v0
.end method

.method protected final b()Z
    .locals 1

    iget-object v0, p0, Lld;->d:Lla;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lld;->d:Lla;

    invoke-virtual {v0}, Lla;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lld;->d:Lla;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lld;->d:Lla;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lla;->a(Z)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lld;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lld;->d:Lla;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lld;->d:Lla;

    invoke-virtual {v2}, Lla;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lld;->d:Lla;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lla;->a(Z)V

    monitor-exit v3

    :goto_1
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lld;->a()Z

    const-string/jumbo v0, "MscSpeechLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "destory =true"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method protected finalize()V
    .locals 3

    const-string/jumbo v0, "MscSpeechLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " finalize called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
