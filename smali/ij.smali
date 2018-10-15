.class public Lij;
.super Ljava/lang/Object;
.source "PcmRecorder.java"


# instance fields
.field private a:[B

.field private b:Landroid/media/AudioRecord;

.field private c:Lii;

.field private d:Ljava/lang/Object;

.field private e:J

.field private f:Z

.field private g:Ljava/lang/Thread;

.field private volatile h:Z

.field private i:J

.field private volatile j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sampleRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x1

    const/16 v1, 0x10

    const/16 v2, 0x28

    invoke-direct {p0, v0, v1, p2, v2}, Lij;-><init>(SSII)V

    .line 54
    return-void
.end method

.method public constructor <init>(SSII)V
    .locals 10
    .param p1, "channels"    # S
    .param p2, "bitSamples"    # S
    .param p3, "sampleRate"    # I
    .param p4, "timeInterval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lij;->a:[B

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lij;->c:Lii;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lij;->d:Ljava/lang/Object;

    .line 35
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lij;->e:J

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lij;->f:Z

    .line 39
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lij;->i:J

    .line 58
    rem-int/lit8 v0, p4, 0x28

    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "parameter error, timeInterval must be multiple of 40"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 63
    :cond_0
    mul-int v0, p3, p4

    div-int/lit16 v6, v0, 0x3e8

    .line 64
    .local v6, "framePeriod":I
    mul-int/lit8 v0, v6, 0xa

    mul-int/2addr v0, p2

    mul-int/2addr v0, p1

    div-int/lit8 v5, v0, 0x8

    .line 66
    .local v5, "recordBufferSize":I
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 v3, 0x2

    .line 68
    .local v3, "channelConfig":I
    :goto_0
    const/16 v0, 0x10

    if-ne p2, v0, :cond_4

    const/4 v4, 0x2

    .line 71
    .local v4, "audioFormat":I
    :goto_1
    invoke-static {}, Lih;->a()I

    move-result v1

    .line 73
    .local v1, "audioSource":I
    invoke-static {p3, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v7

    .line 75
    .local v7, "min":I
    if-ge v5, v7, :cond_1

    .line 76
    move v5, v7

    .line 77
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Increasing buffer size to "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    const/16 v0, 0x1f40

    if-ne p3, v0, :cond_2

    .line 82
    const/4 v1, 0x1

    .line 84
    :cond_2
    new-instance v0, Landroid/media/AudioRecord;

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    .line 87
    iget-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    .line 88
    iget-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    .line 90
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "create AudioRecord error"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "create AudioRecord error"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    .end local v1    # "audioSource":I
    .end local v3    # "channelConfig":I
    .end local v4    # "audioFormat":I
    .end local v7    # "min":I
    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    .line 68
    .restart local v3    # "channelConfig":I
    :cond_4
    const/4 v4, 0x3

    goto :goto_1

    .line 94
    .restart local v1    # "audioSource":I
    .restart local v4    # "audioFormat":I
    .restart local v7    # "min":I
    :cond_5
    mul-int v0, v6, p1

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lij;->a:[B

    .line 95
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "create AudioRecord ok buffer size="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lij;->a:[B

    array-length v8, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " audioSource="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " sampleRate="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method static synthetic a(Lij;)Z
    .locals 1
    .param p0, "x0"    # Lij;

    .prologue
    .line 19
    iget-boolean v0, p0, Lij;->f:Z

    return v0
.end method

.method private a([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 160
    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 164
    :goto_1
    return v1

    .line 159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lij;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lij;

    .prologue
    .line 19
    iget-object v0, p0, Lij;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lij;)I
    .locals 1
    .param p0, "x0"    # Lij;

    .prologue
    .line 19
    invoke-direct {p0}, Lij;->g()I

    move-result v0

    return v0
.end method

.method private g()I
    .locals 10

    .prologue
    const-wide/16 v8, 0xbb8

    const/4 v2, 0x0

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Lij;->b:Landroid/media/AudioRecord;

    if-eqz v3, :cond_6

    .line 108
    iget-object v3, p0, Lij;->b:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 109
    const-string/jumbo v3, "SPEECH_PcmRecorder"

    const-string/jumbo v4, "readRecordData END RECORDSTATE_STOPPED"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return v2

    .line 112
    :cond_0
    iget-boolean v3, p0, Lij;->j:Z

    if-eqz v3, :cond_2

    .line 113
    const-string/jumbo v3, "SPEECH_PcmRecorder"

    const-string/jumbo v4, "readRecordData record error"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    move v2, v0

    .line 149
    goto :goto_0

    .line 116
    :cond_2
    :try_start_1
    iget-object v3, p0, Lij;->b:Landroid/media/AudioRecord;

    iget-object v4, p0, Lij;->a:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lij;->a:[B

    array-length v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lij;->i:J

    .line 118
    iget-object v3, p0, Lij;->c:Lii;

    if-nez v3, :cond_3

    .line 119
    const-string/jumbo v3, "SPEECH_PcmRecorder"

    const-string/jumbo v4, "mRecordListener is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_3
    if-lez v0, :cond_5

    .line 123
    iget-object v2, p0, Lij;->a:[B

    invoke-direct {p0, v2}, Lij;->a([B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    const-string/jumbo v2, "SPEECH_PcmRecorder"

    const-string/jumbo v3, "onRecordData --zero data."

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_2
    iget-boolean v2, p0, Lij;->h:Z

    if-nez v2, :cond_1

    iget-wide v2, p0, Lij;->i:J

    iget-wide v4, p0, Lij;->e:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    .line 131
    const-string/jumbo v2, "SPEECH_PcmRecorder"

    const-string/jumbo v3, "onRecordData --no data time out."

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lij;->c:Lii;

    const v3, 0xc3501

    invoke-interface {v2, v3}, Lii;->a(I)V

    .line 133
    const/4 v2, 0x1

    iput-boolean v2, p0, Lij;->j:Z

    goto :goto_1

    .line 126
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lij;->h:Z

    .line 127
    iget-object v2, p0, Lij;->c:Lii;

    iget-object v3, p0, Lij;->a:[B

    iget-wide v4, p0, Lij;->i:J

    iget-wide v6, p0, Lij;->e:J

    sub-long/2addr v4, v6

    invoke-interface {v2, v3, v0, v4, v5}, Lii;->a([BIJ)V

    goto :goto_2

    .line 136
    :cond_5
    const-string/jumbo v2, "SPEECH_PcmRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-boolean v2, p0, Lij;->h:Z

    if-nez v2, :cond_1

    iget-wide v2, p0, Lij;->i:J

    iget-wide v4, p0, Lij;->e:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    .line 138
    const-string/jumbo v2, "SPEECH_PcmRecorder"

    const-string/jumbo v3, "onRecordData --no data time out."

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lij;->c:Lii;

    const v3, 0xc3501

    invoke-interface {v2, v3}, Lii;->a(I)V

    .line 140
    const/4 v2, 0x1

    iput-boolean v2, p0, Lij;->j:Z

    goto/16 :goto_1

    .line 144
    :cond_6
    const-string/jumbo v2, "SPEECH_PcmRecorder"

    const-string/jumbo v3, "readRecordData null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lij$1;

    const-string/jumbo v1, "PcmRecorderNew"

    invoke-direct {v0, p0, v1}, Lij$1;-><init>(Lij;Ljava/lang/String;)V

    iput-object v0, p0, Lij;->g:Ljava/lang/Thread;

    .line 187
    iget-object v0, p0, Lij;->g:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 188
    iget-object v0, p0, Lij;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 189
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    const-string/jumbo v1, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "startRecording begin"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lij;->b:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lij;->b:Landroid/media/AudioRecord;

    .line 202
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-nez v1, :cond_1

    .line 203
    :cond_0
    const-string/jumbo v1, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "startRecording STATE_UNINITIALIZED"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lij;->b:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 207
    const-string/jumbo v1, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "startRecording RECORDSTATE_RECORDING"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :cond_2
    iput-boolean v3, p0, Lij;->h:Z

    .line 212
    iput-boolean v3, p0, Lij;->j:Z

    .line 213
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lij;->i:J

    .line 216
    :try_start_0
    iget-object v1, p0, Lij;->b:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lij;->f:Z

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lij;->e:J

    .line 219
    invoke-direct {p0}, Lij;->h()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_1
    const-string/jumbo v1, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "startRecording end"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Lii;)V
    .locals 0
    .param p1, "listener"    # Lii;

    .prologue
    .line 192
    iput-object p1, p0, Lij;->c:Lii;

    .line 193
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 228
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "stopRecording into"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lij;->f:Z

    .line 231
    iget-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 232
    iget-object v1, p0, Lij;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 234
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "stopRecording end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    return-void

    .line 234
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lij;->f:Z

    .line 246
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    .line 254
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lij;->b()V

    .line 258
    :cond_0
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "release begin"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lij;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    .line 264
    :cond_1
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v2, "release ok"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    const-string/jumbo v1, "release end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 265
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lij;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v0

    .line 277
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3e80

    goto :goto_0
.end method

.method public f()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lij;->b:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lij;->b:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 290
    :cond_0
    return v0
.end method
