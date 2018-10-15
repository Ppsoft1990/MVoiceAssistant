.class public Luk;
.super Landroid/os/HandlerThread;
.source "DataEncodeThread.java"

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk$b;,
        Luk$a;
    }
.end annotation


# static fields
.field private static d:Lul;


# instance fields
.field private a:Luk$a;

.field private b:[B

.field private c:Ljava/io/FileOutputStream;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Luk$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;ILul;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "bufferSize"    # I
    .param p3, "recorderManager"    # Lul;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 62
    const-string/jumbo v0, "DataEncodeThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Luk;->e:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Luk;->c:Ljava/io/FileOutputStream;

    .line 64
    const-wide v0, 0x40bc200000000000L    # 7200.0

    mul-int/lit8 v2, p2, 0x2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Luk;->b:[B

    .line 65
    sput-object p3, Luk;->d:Lul;

    .line 66
    return-void
.end method

.method static synthetic a(Luk;)I
    .locals 1
    .param p0, "x0"    # Luk;

    .prologue
    .line 25
    invoke-direct {p0}, Luk;->d()I

    move-result v0

    return v0
.end method

.method static synthetic b(Luk;)V
    .locals 0
    .param p0, "x0"    # Luk;

    .prologue
    .line 25
    invoke-direct {p0}, Luk;->e()V

    return-void
.end method

.method static synthetic c()Lul;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Luk;->d:Lul;

    return-object v0
.end method

.method private d()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v5, p0, Luk;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 102
    iget-object v5, p0, Luk;->e:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luk$b;

    .line 103
    .local v4, "task":Luk$b;
    invoke-virtual {v4}, Luk$b;->a()[S

    move-result-object v0

    .line 104
    .local v0, "buffer":[S
    invoke-virtual {v4}, Luk$b;->b()I

    move-result v3

    .line 105
    .local v3, "readSize":I
    iget-object v5, p0, Luk;->b:[B

    invoke-static {v0, v0, v3, v5}, Lcom/iflytek/viafly/listening/Mp3Encoder;->encodeBuffer([S[SI[B)I

    move-result v2

    .line 106
    .local v2, "encodedSize":I
    if-lez v2, :cond_0

    .line 108
    :try_start_0
    iget-object v5, p0, Luk;->c:Ljava/io/FileOutputStream;

    iget-object v6, p0, Luk;->b:[B

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "buffer":[S
    .end local v2    # "encodedSize":I
    .end local v3    # "readSize":I
    .end local v4    # "task":Luk$b;
    :cond_0
    :goto_0
    return v3

    .line 109
    .restart local v0    # "buffer":[S
    .restart local v2    # "encodedSize":I
    .restart local v3    # "readSize":I
    .restart local v4    # "task":Luk$b;
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "DataEncodeThread"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 122
    iget-object v2, p0, Luk;->b:[B

    invoke-static {v2}, Lcom/iflytek/viafly/listening/Mp3Encoder;->encodeFlush([B)I

    move-result v1

    .line 123
    .local v1, "flushResult":I
    if-lez v1, :cond_1

    .line 125
    :try_start_0
    iget-object v2, p0, Luk;->c:Ljava/io/FileOutputStream;

    iget-object v3, p0, Luk;->b:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v2, p0, Luk;->c:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    .line 132
    :try_start_1
    iget-object v2, p0, Luk;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :cond_0
    :goto_0
    invoke-static {}, Lcom/iflytek/viafly/listening/Mp3Encoder;->unInit()I

    .line 140
    :cond_1
    :goto_1
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "DataEncodeThread"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 127
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v2, "DataEncodeThread"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    iget-object v2, p0, Luk;->c:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_2

    .line 132
    :try_start_3
    iget-object v2, p0, Luk;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 137
    :cond_2
    :goto_2
    invoke-static {}, Lcom/iflytek/viafly/listening/Mp3Encoder;->unInit()I

    goto :goto_1

    .line 133
    :catch_2
    move-exception v0

    .line 134
    const-string/jumbo v2, "DataEncodeThread"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Luk;->c:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_3

    .line 132
    :try_start_4
    iget-object v3, p0, Luk;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 137
    :cond_3
    :goto_3
    invoke-static {}, Lcom/iflytek/viafly/listening/Mp3Encoder;->unInit()I

    throw v2

    .line 133
    :catch_3
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "DataEncodeThread"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Luk;->a:Luk$a;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Luk;->a:Luk$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk$a;->sendEmptyMessage(I)Z

    .line 78
    :cond_0
    return-void
.end method

.method public a([SI)V
    .locals 2
    .param p1, "rawData"    # [S
    .param p2, "readSize"    # I

    .prologue
    .line 145
    iget-object v0, p0, Luk;->e:Ljava/util/List;

    new-instance v1, Luk$b;

    invoke-direct {v1, p0, p1, p2}, Luk$b;-><init>(Luk;[SI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Luk;->a:Luk$a;

    return-object v0
.end method

.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 87
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 91
    invoke-direct {p0}, Luk;->d()I

    .line 92
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v0, Luk$a;

    invoke-virtual {p0}, Luk;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Luk$a;-><init>(Landroid/os/Looper;Luk;)V

    iput-object v0, p0, Luk;->a:Luk$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
