.class public Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;
.super Ljava/lang/Object;
.source "LocalTrafficLooper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;
    }
.end annotation


# instance fields
.field private volatile executeLooper:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private futureTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private looperTask:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;

.field private networkChanged:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/INetworkChanged;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;)V
    .locals 1
    .param p1, "executeLooper"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$1;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->networkChanged:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/INetworkChanged;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->executeLooper:Ljava/util/List;

    .line 38
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->addExecuteLooper(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;)V

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->executeLooper:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->pauseLoop()V

    return-void
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->getExecuteLooper()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getExecuteLooper()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->executeLooper:Ljava/util/List;

    return-object v0
.end method

.method private isRun()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->looperTask:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->looperTask:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->access$200(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseLoop()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->looperTask:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->looperTask:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->cancel()V

    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->futureTask:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public addExecuteLooper(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;)V
    .locals 1
    .param p1, "executeLooper"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->executeLooper:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->executeLooper:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    return-void
.end method

.method public getNetworkChanged()Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/INetworkChanged;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->networkChanged:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/INetworkChanged;

    return-object v0
.end method

.method public removeExecuteLooper(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;)V
    .locals 1
    .param p1, "executeLooper"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->executeLooper:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->executeLooper:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-void
.end method

.method public declared-synchronized startLoop()V
    .locals 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->isRun()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->pauseLoop()V

    .line 61
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->looperTask:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;

    .line 62
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->looperTask:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->futureTask:Ljava/util/concurrent/FutureTask;

    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->futureTask:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopLoop()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->pauseLoop()V

    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->executeLooper:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 72
    :cond_0
    return-void
.end method
