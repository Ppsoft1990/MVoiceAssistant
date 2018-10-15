.class public abstract Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;
.super Ljava/lang/Object;
.source "PhoneCollecter.java"


# instance fields
.field public final MAX_LOG_COUNT:I

.field private final RELOAD_DELAY_TIME:I

.field private final TAG:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field private handlerThread:Landroid/os/HandlerThread;

.field private lock:Ljava/lang/Object;

.field private mCacheCount:I

.field private mReadCount:I

.field private reloadRunnable:Ljava/lang/Runnable;

.field private workerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->MAX_LOG_COUNT:I

    .line 28
    const/16 v0, 0x1388

    iput v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->RELOAD_DELAY_TIME:I

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->lock:Ljava/lang/Object;

    .line 96
    new-instance v0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter$1;

    invoke-direct {v0, p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter$1;-><init>(Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;)V

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->reloadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->checkLog()V

    return-void
.end method

.method private checkLog()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 104
    iget-object v3, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkLog"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->isOpenRead()Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkLog | read is closed --> return"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v3, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->context:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->getRealCount(Landroid/content/Context;)I

    move-result v2

    .line 109
    .local v2, "realCount":I
    invoke-virtual {p0, v2}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->resetCount(I)V

    .line 155
    :goto_0
    return-void

    .line 113
    .end local v2    # "realCount":I
    :cond_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->context:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->getRealCount(Landroid/content/Context;)I

    move-result v2

    .line 114
    .restart local v2    # "realCount":I
    iget v1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->mReadCount:I

    .line 115
    .local v1, "readCount":I
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->getCacheCount()I

    move-result v0

    .line 116
    .local v0, "cacheCount":I
    iget-object v3, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkLog | realCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", cacheCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", readCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-ge v2, v0, :cond_1

    .line 119
    iget-object v3, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkLog | realCount < cacheCount, resetCount-->return"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0, v2}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->resetCount(I)V

    goto :goto_0

    .line 124
    :cond_1
    if-ne v2, v0, :cond_2

    .line 126
    iget-object v3, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkLog | realCount == cacheCount, resetCount-->return"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0, v2}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->resetCount(I)V

    goto :goto_0

    .line 132
    :cond_2
    add-int v3, v0, v1

    if-gt v2, v3, :cond_4

    .line 133
    iget-object v3, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkLog | realCache <= cacheCount + readCount"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->updateReadCount()V

    .line 135
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->getReadCount()I

    move-result v3

    if-lt v3, v6, :cond_3

    .line 136
    iget-object v3, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkLog | getReadCount() >= 5, uploadLog and closeListener"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v3, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->getReadCount()I

    move-result v5

    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->getUnReadCount()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->uploadLog(Landroid/content/Context;ZII)V

    .line 141
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->closeListener()V

    .line 154
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->resetCount(I)V

    goto/16 :goto_0

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->updateUnReadCount()V

    .line 145
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->getUnReadCount()I

    move-result v3

    if-lt v3, v6, :cond_3

    .line 146
    iget-object v3, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkLog | getUnReadCount() >= 5, uploadLog and closeListener"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v3, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->getReadCount()I

    move-result v5

    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->getUnReadCount()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->uploadLog(Landroid/content/Context;ZII)V

    .line 151
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->closeListener()V

    goto :goto_1
.end method

.method private getCacheCount()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->mCacheCount:I

    return v0
.end method

.method private stopHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 75
    iput-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->handlerThread:Landroid/os/HandlerThread;

    .line 76
    iput-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->workerHandler:Landroid/os/Handler;

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public addReadCount()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "old readCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->mReadCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new readCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->mReadCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    iget v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->mReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->mReadCount:I

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract closeListener()V
.end method

.method protected getDelaytime()I
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x1388

    return v0
.end method

.method protected abstract getReadCount()I
.end method

.method protected abstract getRealCount(Landroid/content/Context;)I
.end method

.method protected abstract getUnReadCount()I
.end method

.method protected initHandler()V
    .locals 3

    .prologue
    .line 65
    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->handlerThread:Landroid/os/HandlerThread;

    .line 66
    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->handlerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 67
    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 68
    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 69
    .local v0, "workerLooper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->workerHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method protected abstract isOpenRead()Z
.end method

.method protected final onDBChanged()V
    .locals 6

    .prologue
    .line 81
    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->workerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->getDelaytime()I

    move-result v0

    .line 83
    .local v0, "delaytime":I
    if-gez v0, :cond_1

    .line 84
    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->workerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->reloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    .end local v0    # "delaytime":I
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local v0    # "delaytime":I
    :cond_1
    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->workerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->reloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->workerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->reloadRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected resetCount(I)V
    .locals 1
    .param p1, "realCount"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->mCacheCount:I

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->mReadCount:I

    .line 198
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->context:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public stop(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->stopHandler()V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->resetCount(I)V

    .line 51
    return-void
.end method

.method protected abstract updateReadCount()V
.end method

.method protected abstract updateUnReadCount()V
.end method

.method public uploadLog(Landroid/content/Context;Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "uploadLog"

    invoke-static {v0, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string/jumbo v1, "IC00002"

    .line 166
    .local v1, "opCode":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 168
    .local v2, "startTime":J
    if-nez p2, :cond_0

    const/4 v5, 0x0

    .line 171
    .local v5, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-static {p1}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v0

    const-string/jumbo v4, "success"

    invoke-virtual/range {v0 .. v5}, Lvr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 174
    return-void

    .line 169
    .end local v5    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p2}, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->toMap()Ljava/util/Map;

    move-result-object v5

    goto :goto_0
.end method

.method protected abstract uploadLog(Landroid/content/Context;ZII)V
.end method
