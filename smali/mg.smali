.class public Lmg;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:Landroid/media/AudioRecord;

.field private c:Lmf;

.field private d:Ljava/lang/Object;

.field private e:J

.field private volatile f:Z

.field private g:Ljava/lang/Thread;

.field private volatile h:Z

.field private i:J

.field private volatile j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x3e80

    const/16 v1, 0x28

    invoke-direct {p0, v0, v1}, Lmg;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lmg;->a:[B

    iput-object v7, p0, Lmg;->b:Landroid/media/AudioRecord;

    iput-object v7, p0, Lmg;->c:Lmf;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmg;->d:Ljava/lang/Object;

    iput-wide v4, p0, Lmg;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmg;->f:Z

    iput-wide v4, p0, Lmg;->i:J

    mul-int v0, p1, p2

    div-int/lit16 v6, v0, 0x3e8

    mul-int/lit8 v0, v6, 0xa

    mul-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1, v3, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    if-ge v0, v5, :cond_1

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Increasing buffer size to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/media/AudioRecord;

    move v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-object v7, p0, Lmg;->b:Landroid/media/AudioRecord;

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "create AudioRecord error"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "create AudioRecord error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    mul-int/lit8 v0, v6, 0x1

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lmg;->a:[B

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "create AudioRecord ok buffer size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmg;->a:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " audioSource=1 sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v5, v0

    goto :goto_0
.end method

.method static synthetic a(Lmg;)Z
    .locals 1

    iget-boolean v0, p0, Lmg;->f:Z

    return v0
.end method

.method static synthetic b(Lmg;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmg;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lmg;)I
    .locals 1

    invoke-direct {p0}, Lmg;->e()I

    move-result v0

    return v0
.end method

.method private e()I
    .locals 9

    const-wide/16 v6, 0xbb8

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmg;->f:Z

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "readRecordData END RECORDSTATE_STOPPED"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmg;->c:Lmf;

    const/16 v2, 0x4e26

    invoke-interface {v0, v2}, Lmf;->a(I)V

    :goto_0
    return v1

    :cond_0
    iget-boolean v0, p0, Lmg;->j:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "readRecordData record error"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmg;->c:Lmf;

    const/16 v2, 0x4e26

    invoke-interface {v0, v2}, Lmf;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    iget-object v3, p0, Lmg;->a:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lmg;->a:[B

    array-length v5, v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioRecord;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lmg;->i:J

    iget-object v3, p0, Lmg;->c:Lmf;

    if-nez v3, :cond_3

    const-string/jumbo v2, "SPEECH_PcmRecorder"

    const-string/jumbo v3, "mRecordListener is null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_3
    if-lez v0, :cond_7

    iget-object v4, p0, Lmg;->a:[B

    move v3, v1

    :goto_3
    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget-byte v5, v4, v3

    if-eqz v5, :cond_4

    :goto_4
    if-eqz v1, :cond_6

    const-string/jumbo v1, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "onRecordData --zero data."

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-boolean v1, p0, Lmg;->h:Z

    if-nez v1, :cond_1

    iget-wide v2, p0, Lmg;->i:J

    iget-wide v4, p0, Lmg;->e:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    const-string/jumbo v1, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "onRecordData --no data time out."

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmg;->c:Lmf;

    const v2, 0xc3501

    invoke-interface {v1, v2}, Lmf;->a(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmg;->j:Z

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    const-string/jumbo v1, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "onRecordData -----"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmg;->h:Z

    iget-object v1, p0, Lmg;->c:Lmf;

    iget-object v2, p0, Lmg;->a:[B

    iget-wide v4, p0, Lmg;->i:J

    iget-wide v4, p0, Lmg;->e:J

    invoke-interface {v1, v2, v0}, Lmf;->a([BI)V

    goto :goto_5

    :cond_7
    const-string/jumbo v1, "SPEECH_PcmRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "count = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lmg;->h:Z

    if-nez v1, :cond_1

    iget-wide v2, p0, Lmg;->i:J

    iget-wide v4, p0, Lmg;->e:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    const-string/jumbo v1, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "onRecordData --no data time out."

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmg;->c:Lmf;

    const v2, 0xc3501

    invoke-interface {v1, v2}, Lmf;->a(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmg;->j:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :cond_8
    :try_start_3
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "readRecordData null"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "startRecording begin"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "startRecording STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "startRecording RECORDSTATE_RECORDING"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lmg;->h:Z

    iput-boolean v2, p0, Lmg;->j:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmg;->i:J

    :try_start_0
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startRecording before mRecorder.getRecordingState() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startRecording after mRecorder.getRecordingState() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmg;->f:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmg;->e:J

    new-instance v0, Lmh;

    const-string/jumbo v1, "PcmRecorderNew"

    invoke-direct {v0, p0, v1}, Lmh;-><init>(Lmg;Ljava/lang/String;)V

    iput-object v0, p0, Lmg;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lmg;->g:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lmg;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "startRecording end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SPEECH_PcmRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startRecording IllegalStateException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final a(Lmf;)V
    .locals 0

    iput-object p1, p0, Lmg;->c:Lmf;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmg;->f:Z

    return-void
.end method

.method public c()V
    .locals 4

    const/4 v2, 0x3

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "stopRecording into"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmg;->f:Z

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "stopRecording get lock"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "stopRecording stop record"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "stopRecording end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "release begin"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "release ok"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "release end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SPEECH_PcmRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stopRecording stop error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "reset into"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmg;->f:Z

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "reset get lock"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "reset stop record"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reset stop mRecorder state"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "reset end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "reset begin"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmg;->b:Landroid/media/AudioRecord;

    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "reset ok"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "reset end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SPEECH_PcmRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reset stop error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
