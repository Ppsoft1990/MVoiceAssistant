.class public abstract Lcom/iflytek/yd/base/BaseThread;
.super Ljava/lang/Thread;


# instance fields
.field public running:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/base/BaseThread;->running:Z

    return-void
.end method

.method public static final sleep(I)V
    .locals 4

    div-int/lit8 v0, p0, 0x14

    add-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const-wide/16 v2, 0x14

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    return-void
.end method


# virtual methods
.method public final Sleep(I)V
    .locals 4

    div-int/lit8 v0, p1, 0x14

    add-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-boolean v2, p0, Lcom/iflytek/yd/base/BaseThread;->running:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x14

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    return-void
.end method

.method exitInstance()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method initInstance()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/yd/base/BaseThread;->running:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/yd/base/BaseThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    invoke-virtual {p0}, Lcom/iflytek/yd/base/BaseThread;->initInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/yd/base/BaseThread;->threadProc()V

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/yd/base/BaseThread;->exitInstance()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/yd/base/BaseThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Exit with code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/base/BaseThread;->running:Z

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final stop(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/yd/base/BaseThread;->running:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/base/BaseThread;->running:Z

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public abstract threadProc()V
.end method
