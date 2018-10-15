.class public Lcom/iflytek/yd/speech/vad/VadCheck;
.super Ljava/lang/Object;


# static fields
.field private static mVad:Lcom/iflytek/yd/speech/vad/VadCheck;


# instance fields
.field private mInit:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/vad/VadCheck;->mInit:Z

    return-void
.end method

.method public static declared-synchronized createVadCheck()Lcom/iflytek/yd/speech/vad/VadCheck;
    .locals 2

    const-class v1, Lcom/iflytek/yd/speech/vad/VadCheck;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/yd/speech/vad/VadCheck;->mVad:Lcom/iflytek/yd/speech/vad/VadCheck;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/yd/speech/vad/VadCheck;

    invoke-direct {v0}, Lcom/iflytek/yd/speech/vad/VadCheck;-><init>()V

    sput-object v0, Lcom/iflytek/yd/speech/vad/VadCheck;->mVad:Lcom/iflytek/yd/speech/vad/VadCheck;

    :cond_0
    sget-object v0, Lcom/iflytek/yd/speech/vad/VadCheck;->mVad:Lcom/iflytek/yd/speech/vad/VadCheck;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkVAD([BILcom/iflytek/yd/speech/vad/VadData;)I
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/iflytek/yd/vad/Vad;->checkVAD([BILcom/iflytek/yd/speech/vad/VadData;)I

    move-result v0

    return v0
.end method

.method public endData()I
    .locals 1

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->endData()I

    move-result v0

    return v0
.end method

.method public fixFetchData(Lcom/iflytek/yd/speech/vad/VadData;)I
    .locals 1

    invoke-static {p1}, Lcom/iflytek/yd/vad/Vad;->fixFetchData(Lcom/iflytek/yd/speech/vad/VadData;)I

    move-result v0

    return v0
.end method

.method public getAppParam()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->getAppParam()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized initialize()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/yd/speech/vad/VadCheck;->mInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->initialize()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/vad/VadCheck;->mInit:Z

    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/yd/speech/vad/VadCheck;->mInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .locals 0

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->reset()V

    return-void
.end method

.method public setAppParam(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/iflytek/yd/vad/Vad;->setAppParam(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setBeginPointParam(I)I
    .locals 1

    invoke-static {p1}, Lcom/iflytek/yd/vad/Vad;->setBeginPointParam(I)I

    move-result v0

    return v0
.end method

.method public setEarlyStartDisable()I
    .locals 1

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->setEarlyStartDisable()I

    move-result v0

    return v0
.end method

.method public setEarlyStartEnable()I
    .locals 1

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->setEarlyStartEnable()I

    move-result v0

    return v0
.end method

.method public setEndPointParam(I)I
    .locals 1

    invoke-static {p1}, Lcom/iflytek/yd/vad/Vad;->setEndPointParam(I)I

    move-result v0

    return v0
.end method

.method public setFeatrueDisable()I
    .locals 1

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->setFeatrueDisable()I

    move-result v0

    return v0
.end method

.method public setFeatrueEnable()I
    .locals 1

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->setFeatrueEnable()I

    move-result v0

    return v0
.end method

.method public setSpeechTimeout(I)I
    .locals 1

    invoke-static {p1}, Lcom/iflytek/yd/vad/Vad;->setSpeechTimeout(I)I

    move-result v0

    return v0
.end method

.method public setVadDisable()I
    .locals 1

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->setVadDisable()I

    move-result v0

    return v0
.end method

.method public setVadEnable()I
    .locals 1

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->setVadEnable()I

    move-result v0

    return v0
.end method

.method public declared-synchronized uninitialize()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/yd/speech/vad/VadCheck;->mInit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->uninitialize()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/vad/VadCheck;->mInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
