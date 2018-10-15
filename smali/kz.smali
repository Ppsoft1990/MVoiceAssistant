.class public final Lkz;
.super Llb;


# instance fields
.field private c:Lcom/iflytek/msc/MSCSessionInfo;

.field private d:Lcom/iflytek/msc/MSCSessionInfo;

.field private e:Lcom/iflytek/msc/MSCSessionInfo;

.field private f:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Llb;-><init>()V

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lkz;->c:Lcom/iflytek/msc/MSCSessionInfo;

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lkz;->d:Lcom/iflytek/msc/MSCSessionInfo;

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lkz;->e:Lcom/iflytek/msc/MSCSessionInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lkz;->f:[B

    return-void
.end method

.method private declared-synchronized a([BII)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkz;->a:[C

    const/4 v1, 0x0

    iget-object v5, p0, Lkz;->c:Lcom/iflytek/msc/MSCSessionInfo;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/iflytek/msc/MSC;->QISVAudioWrite([C[C[BIILcom/iflytek/msc/MSCSessionInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lla;)I
    .locals 6

    invoke-static {p1, p3}, Lme;->a(Landroid/content/Context;Lla;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string/jumbo v1, "MSCSessionBegin"

    invoke-static {v1}, Llk;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Lla;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lkz;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v0, v4}, Lcom/iflytek/msc/MSC;->QISVSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v0

    iput-object v0, p0, Lkz;->a:[C

    const-string/jumbo v0, "SessionBeginEnd"

    invoke-static {v0}, Llk;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "MscSpeechLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sessionBegin ErrCode:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lkz;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v4, v4, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " time:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkz;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz v0, :cond_1

    const/16 v1, 0x2791

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2781

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2794

    if-eq v0, v1, :cond_1

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_0
    invoke-virtual {p3}, Lla;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;Lla;)I
    .locals 8

    const/4 v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p2}, Lla;->j()Lmc;

    move-result-object v0

    const-string/jumbo v4, "vid"

    invoke-virtual {v0, v4}, Lmc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lme;->a(Landroid/content/Context;Lla;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MscSpeechLog"

    const-string/jumbo v6, "sendRequest enter "

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "LastDataFlag"

    invoke-static {v5}, Llk;->a(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lla;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lkz;->e:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v4, v5}, Lcom/iflytek/msc/MSC;->QISVQueDelModel([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v0

    const-string/jumbo v4, "GetNotifyResult"

    invoke-static {v4}, Llk;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/msc/MSC;->QISVQueDelModelRelease([C)I

    iget-object v0, p0, Lkz;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkz;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    :goto_1
    if-eqz v0, :cond_3

    if-eq v1, v0, :cond_3

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_0
    invoke-virtual {p2}, Lla;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lkz;->e:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v4, v4, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "MscSpeechLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sendRequest leavel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [B

    const-string/jumbo v1, "LastDataFlag"

    invoke-static {v1}, Llk;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lkz;->a([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lkz;->a:[C

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "sessionEnd enter "

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lkz;->a:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QISVSessionEnd([C[B)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "MscSpeechLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sessionEnd leavel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " time:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lkz;->a:[C

    iput-object v6, p0, Lkz;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final declared-synchronized a([BI)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lkz;->a([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lkz;->a:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lkz;->a:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lkz;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISVGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lkz;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v2, v2, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkz;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->epstatues:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()I
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lkz;->a:[C

    const-string/jumbo v2, "volume"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lkz;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISVGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lkz;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    const-string/jumbo v2, "MscSpeechLog"

    const-string/jumbo v3, "VAD CHECK FALSE"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_1
    :try_start_3
    const-string/jumbo v2, "MscSpeechLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getAudioVolume Exception vadret = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    move v1, v0

    goto :goto_1
.end method

.method public final d()[B
    .locals 1

    iget-object v0, p0, Lkz;->f:[B

    return-object v0
.end method

.method public final e()Lcom/iflytek/cloud/a/b/e;
    .locals 8

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "getStatus "

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lkz;->a:[C

    const/4 v2, 0x0

    iget-object v3, p0, Lkz;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v2, v3}, Lcom/iflytek/msc/MSC;->QISVGetResult([C[CLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v0

    iput-object v0, p0, Lkz;->f:[B

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string/jumbo v3, "MscSpeechLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "QISVGetResult leavel:"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lkz;->f:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " time:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkz;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    const-string/jumbo v1, "MscSpeechLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getStatus error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    iget-object v0, p0, Lkz;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->rsltstatus:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    sget-object v0, Lcom/iflytek/cloud/a/b/e;->c:Lcom/iflytek/cloud/a/b/e;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "MscSpeechLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ResultStatus: noResult"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e25

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :pswitch_2
    iget-object v1, p0, Lkz;->f:[B

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MscSpeechLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ResultStatus: hasResult"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iflytek/cloud/a/b/e;->a:Lcom/iflytek/cloud/a/b/e;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "MscSpeechLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Result: error errorcode is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
