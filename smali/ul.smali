.class public Lul;
.super Ljava/lang/Object;
.source "Mp3RecorderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lul$a;
    }
.end annotation


# static fields
.field private static final q:Ljava/lang/String;

.field private static final r:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lcom/iflytek/viafly/audiorecorder/PCMFormat;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I

.field private j:Z

.field private k:Landroid/media/AudioRecord;

.field private l:I

.field private m:[S

.field private n:Luk;

.field private o:Ljava/io/File;

.field private p:Ljava/lang/Object;

.field private s:Lul$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lnk;->a:Ljava/lang/String;

    sput-object v0, Lul;->q:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lul;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "listening/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "record_cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lul;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lul;->a:I

    .line 25
    const v0, 0xac44

    iput v0, p0, Lul;->b:I

    .line 27
    const/16 v0, 0x10

    iput v0, p0, Lul;->c:I

    .line 28
    sget-object v0, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->PCM_16BIT:Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    iput-object v0, p0, Lul;->d:Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    .line 30
    const v0, 0xc800

    iput v0, p0, Lul;->e:I

    .line 34
    iput v1, p0, Lul;->f:I

    .line 35
    const/4 v0, 0x5

    iput v0, p0, Lul;->g:I

    .line 36
    const/16 v0, 0x40

    iput v0, p0, Lul;->h:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lul;->j:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lul;->k:Landroid/media/AudioRecord;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lul;->p:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method static synthetic a(Lul;)Z
    .locals 1
    .param p0, "x0"    # Lul;

    .prologue
    .line 20
    iget-boolean v0, p0, Lul;->j:Z

    return v0
.end method

.method static synthetic b(Lul;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lul;

    .prologue
    .line 20
    iget-object v0, p0, Lul;->p:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lul;)[S
    .locals 1
    .param p0, "x0"    # Lul;

    .prologue
    .line 20
    iget-object v0, p0, Lul;->m:[S

    return-object v0
.end method

.method static synthetic d(Lul;)I
    .locals 1
    .param p0, "x0"    # Lul;

    .prologue
    .line 20
    iget v0, p0, Lul;->l:I

    return v0
.end method

.method static synthetic e(Lul;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lul;

    .prologue
    .line 20
    iget-object v0, p0, Lul;->k:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic f(Lul;)Luk;
    .locals 1
    .param p0, "x0"    # Lul;

    .prologue
    .line 20
    iget-object v0, p0, Lul;->n:Luk;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lul;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lul;->k:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lul;->k:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 129
    :cond_0
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private g()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x1

    const v2, 0xac44

    .line 145
    iget-object v0, p0, Lul;->d:Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    .line 146
    invoke-virtual {v0}, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->getAudioFormat()I

    move-result v0

    .line 145
    invoke-static {v2, v3, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lul;->l:I

    .line 148
    iget-object v0, p0, Lul;->d:Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    invoke-virtual {v0}, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->getBytesPerFrame()I

    move-result v6

    .line 151
    .local v6, "bytesPerFrame":I
    iget v0, p0, Lul;->l:I

    div-int v7, v0, v6

    .line 152
    .local v7, "frameSize":I
    rem-int/lit16 v0, v7, 0xa0

    if-eqz v0, :cond_0

    .line 153
    rem-int/lit16 v0, v7, 0xa0

    rsub-int v0, v0, 0xa0

    add-int/2addr v7, v0

    .line 154
    mul-int v0, v7, v6

    iput v0, p0, Lul;->l:I

    .line 158
    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    iget-object v4, p0, Lul;->d:Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    .line 159
    invoke-virtual {v4}, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->getAudioFormat()I

    move-result v4

    iget v5, p0, Lul;->l:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lul;->k:Landroid/media/AudioRecord;

    .line 162
    iget v0, p0, Lul;->l:I

    new-array v0, v0, [S

    iput-object v0, p0, Lul;->m:[S

    .line 165
    const/16 v0, 0x40

    const v3, 0xc800

    const/4 v4, 0x5

    invoke-static {v1, v2, v0, v3, v4}, Lcom/iflytek/viafly/listening/Mp3Encoder;->init(IIIII)I

    .line 166
    invoke-direct {p0}, Lul;->h()V

    .line 167
    new-instance v0, Luk;

    iget-object v1, p0, Lul;->o:Ljava/io/File;

    iget v2, p0, Lul;->l:I

    invoke-direct {v0, v1, v2, p0}, Luk;-><init>(Ljava/io/File;ILul;)V

    iput-object v0, p0, Lul;->n:Luk;

    .line 168
    iget-object v0, p0, Lul;->n:Luk;

    invoke-virtual {v0}, Luk;->start()V

    .line 169
    const-string/jumbo v0, "Mp3RecorderManager"

    const-string/jumbo v1, "mp3 encode thread is start"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lul;->k:Landroid/media/AudioRecord;

    iget-object v1, p0, Lul;->n:Luk;

    iget-object v2, p0, Lul;->n:Luk;

    invoke-virtual {v2}, Luk;->b()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 171
    iget-object v0, p0, Lul;->k:Landroid/media/AudioRecord;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    .line 172
    return-void
.end method

.method static synthetic g(Lul;)V
    .locals 0
    .param p0, "x0"    # Lul;

    .prologue
    .line 20
    invoke-direct {p0}, Lul;->f()V

    return-void
.end method

.method private h()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lul;->r:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "path":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "Mp3RecorderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Mp3 Recorder path is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 185
    :cond_0
    invoke-virtual {p0}, Lul;->c()I

    move-result v2

    iput v2, p0, Lul;->i:I

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lul;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".mp3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lul;->o:Ljava/io/File;

    .line 189
    iget-object v2, p0, Lul;->o:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lul;->o:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 192
    :cond_1
    iget-object v2, p0, Lul;->o:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 193
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-boolean v0, p0, Lul;->j:Z

    if-eqz v0, :cond_0

    .line 89
    const-string/jumbo v0, "Mp3RecorderManager"

    const-string/jumbo v1, "audio is recording"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lul;->s:Lul$a;

    const v1, 0x4baf5

    invoke-interface {v0, v1}, Lul$a;->onFailed(I)V

    .line 122
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lul;->j:Z

    .line 95
    invoke-direct {p0}, Lul;->g()V

    .line 96
    const-string/jumbo v0, "Mp3RecorderManager"

    const-string/jumbo v1, "init AudioRecorder"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lul;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lul;->k:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lul$1;

    invoke-direct {v1, p0}, Lul$1;-><init>(Lul;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lul$a;)V
    .locals 0
    .param p1, "listener"    # Lul$a;

    .prologue
    .line 134
    iput-object p1, p0, Lul;->s:Lul$a;

    .line 135
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lul;->j:Z

    .line 139
    invoke-direct {p0}, Lul;->f()V

    .line 140
    return-void
.end method

.method public c()I
    .locals 4

    .prologue
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mp3RecorderManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "Mp3RecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createAudioID()  key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lul;->s:Lul$a;

    iget v1, p0, Lul;->i:I

    invoke-interface {v0, v1}, Lul$a;->onSuccess(I)V

    .line 203
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 215
    :try_start_0
    iget-object v2, p0, Lul;->p:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :try_start_1
    iget-object v1, p0, Lul;->k:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lul;->k:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lul;->k:Landroid/media/AudioRecord;

    .line 220
    :cond_0
    monitor-exit v2

    .line 224
    :goto_0
    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Mp3RecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
