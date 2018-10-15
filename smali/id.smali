.class public Lid;
.super Ljava/lang/Object;
.source "IflyAudioPlayer.java"


# instance fields
.field private a:Landroid/media/AudioTrack;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/lang/Object;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioType"    # I
    .param p3, "sampleRate"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lid;->b:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lid;->d:Z

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lid;->e:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lid;->g:Z

    .line 40
    invoke-direct {p0, p2, p3}, Lid;->a(II)V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Lid;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Lid;

    const/4 v1, 0x3

    const/16 v2, 0x7d00

    invoke-direct {v0, p0, v1, v2}, Lid;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Lid;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "audioType"    # I

    .prologue
    .line 36
    new-instance v0, Lid;

    const/16 v1, 0x7d00

    invoke-direct {v0, p0, p1, v1}, Lid;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private a(II)V
    .locals 9
    .param p1, "audioType"    # I
    .param p2, "sampleRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 45
    if-nez p2, :cond_0

    .line 46
    const/16 p2, 0x7d00

    .line 48
    :cond_0
    iput p2, p0, Lid;->f:I

    .line 49
    iput p1, p0, Lid;->b:I

    .line 50
    invoke-static {p2, v8, v8}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lid;->c:I

    .line 53
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lid;->a()V

    .line 56
    :cond_1
    iget v0, p0, Lid;->c:I

    if-gtz v0, :cond_2

    .line 57
    const/16 v0, 0x500

    iput v0, p0, Lid;->c:I

    .line 61
    :cond_2
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lid;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget v5, p0, Lid;->c:I

    const/4 v6, 0x1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lid;->a:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    if-nez v0, :cond_3

    .line 70
    invoke-static {p2, v8, v8}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lid;->c:I

    .line 74
    :try_start_1
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lid;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget v5, p0, Lid;->c:I

    const/4 v6, 0x1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lid;->a:Landroid/media/AudioTrack;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :cond_3
    :goto_1
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4

    .line 84
    const-string/jumbo v0, "SPEECH_AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioTrack create ok buffer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lid;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_4
    return-void

    .line 65
    :catch_0
    move-exception v7

    .line 66
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "SPEECH_AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioTrack create error buffer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lid;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 79
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "SPEECH_AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioTrack create error buffer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lid;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lid;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 92
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 94
    :cond_0
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    .line 97
    :cond_1
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I[B)V
    .locals 9
    .param p1, "length"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v7, 0x0

    .line 125
    iget-object v5, p0, Lid;->a:Landroid/media/AudioTrack;

    if-nez v5, :cond_0

    .line 126
    const-string/jumbo v5, "SPEECH_AudioPlayer"

    const-string/jumbo v6, "play mAudio null"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v5, p0, Lid;->a:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 130
    const-string/jumbo v5, "SPEECH_AudioPlayer"

    const-string/jumbo v6, "play mAudio STATE_INITIALIZED"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_1
    iput-boolean v7, p0, Lid;->d:Z

    .line 134
    iget v5, p0, Lid;->c:I

    new-array v1, v5, [B

    .line 135
    .local v1, "emptyData":[B
    iget-object v6, p0, Lid;->e:Ljava/lang/Object;

    monitor-enter v6

    .line 137
    :try_start_0
    iget-object v5, p0, Lid;->a:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    iget-boolean v5, p0, Lid;->d:Z

    if-nez v5, :cond_2

    .line 139
    const-string/jumbo v5, "SPEECH_AudioPlayer"

    const-string/jumbo v7, " play mAudio not PLAYSTATE_PLAYING"

    invoke-static {v5, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v5, p0, Lid;->a:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->play()V

    .line 143
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p2

    if-ge v2, v5, :cond_3

    .line 144
    iget-boolean v5, p0, Lid;->d:Z

    if-eqz v5, :cond_4

    .line 145
    const-string/jumbo v5, "SPEECH_AudioPlayer"

    const-string/jumbo v7, "play but Aisound is stopped."

    invoke-static {v5, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-boolean v5, p0, Lid;->g:Z

    if-eqz v5, :cond_3

    .line 147
    iget-object v5, p0, Lid;->a:Landroid/media/AudioTrack;

    const/4 v7, 0x0

    array-length v8, v1

    invoke-virtual {v5, v1, v7, v8}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v2    # "i":I
    :cond_3
    :goto_2
    :try_start_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 152
    .restart local v2    # "i":I
    :cond_4
    :try_start_2
    iget v5, p0, Lid;->f:I

    div-int/lit8 v4, v5, 0x8

    .line 153
    .local v4, "size":I
    array-length v5, p2

    sub-int/2addr v5, v2

    if-ge v5, v4, :cond_5

    .line 154
    array-length v5, p2

    sub-int v4, v5, v2

    .line 157
    :cond_5
    iget-boolean v5, p0, Lid;->d:Z

    if-eqz v5, :cond_6

    .line 158
    const-string/jumbo v5, "SPEECH_AudioPlayer"

    const-string/jumbo v7, "play but Aisound is stopped."

    invoke-static {v5, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-boolean v5, p0, Lid;->g:Z

    if-eqz v5, :cond_3

    .line 160
    iget-object v5, p0, Lid;->a:Landroid/media/AudioTrack;

    const/4 v7, 0x0

    array-length v8, v1

    invoke-virtual {v5, v1, v7, v8}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 171
    .end local v2    # "i":I
    .end local v4    # "size":I
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "SPEECH_AudioPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_6
    :try_start_4
    iget-object v5, p0, Lid;->a:Landroid/media/AudioTrack;

    invoke-virtual {v5, p2, v2, v4}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    .line 166
    .local v3, "ret":I
    if-gtz v3, :cond_7

    .line 167
    const-string/jumbo v5, "SPEECH_AudioPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " mAudio write data ret ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    :cond_7
    add-int/2addr v2, v4

    .line 170
    goto :goto_1
.end method

.method public a(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lid;->g:Z

    .line 204
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    .line 102
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 105
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lid;->d:Z

    .line 112
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lid;->d:Z

    .line 116
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    .line 117
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    .line 118
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 119
    :cond_0
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 120
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 122
    :cond_1
    return-void
.end method

.method public e()I
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lid;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getStreamType()I

    move-result v0

    .line 186
    :goto_0
    return v0

    .line 185
    :cond_0
    const-string/jumbo v0, "SPEECH_AudioPlayer"

    const-string/jumbo v1, "getSreamType mAudio null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lid;->c:I

    return v0
.end method
