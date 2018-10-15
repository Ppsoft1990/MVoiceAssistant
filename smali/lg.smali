.class public final Llg;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/Object;


# instance fields
.field private b:Lcom/iflytek/msc/MSCSessionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llg;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Llg;->b:Lcom/iflytek/msc/MSCSessionInfo;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;[BLla;)[B
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v1, Llg;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1, p4}, Lme;->b(Landroid/content/Context;Lla;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "MscSpeechLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[MSPSession uploadData]enter time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Lla;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, p3

    const-string/jumbo v4, "utf-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v4, p0, Llg;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v2, p3, v3, v0, v4}, Lcom/iflytek/msc/MSC;->QMSPUploadData([B[BI[BLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v2

    const-string/jumbo v3, "MscSpeechLog"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[MSPSession uploaddData]leavel:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Llg;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v4, v4, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ",data len = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Llg;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-nez v0, :cond_0

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v2, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    array-length v0, v2

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lla;)[B
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v1, Llg;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1, p2}, Lme;->b(Landroid/content/Context;Lla;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "MscSpeechLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[MSPSession downloadData]enter time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "LastDataFlag"

    invoke-static {v2}, Llk;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lla;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Llg;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v2}, Lcom/iflytek/msc/MSC;->QMSPDownloadData([BLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v2

    const-string/jumbo v0, "GetNotifyResult"

    invoke-static {v0}, Llk;->a(Ljava/lang/String;)V

    const-string/jumbo v3, "MscSpeechLog"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[MSPSession downloadData]leavel:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Llg;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v4, v4, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ",data len = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Llg;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-nez v0, :cond_0

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v2, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    array-length v0, v2

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lla;Ljava/lang/String;)[B
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v1, Llg;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1, p2}, Lme;->b(Landroid/content/Context;Lla;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "MscSpeechLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[MSPSession searchResult]enter time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "LastDataFlag"

    invoke-static {v3}, Llk;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lla;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v3, p0, Llg;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v2, v3}, Lcom/iflytek/msc/MSC;->QMSPSearch([B[BLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v2

    const-string/jumbo v0, "GetNotifyResult"

    invoke-static {v0}, Llk;->a(Ljava/lang/String;)V

    const-string/jumbo v3, "MscSpeechLog"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[QMSPSearch searchResult]leavel:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Llg;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v4, v4, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ",data len = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Llg;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-nez v0, :cond_0

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v2, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    array-length v0, v2

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2
.end method
