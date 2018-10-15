.class public Lix;
.super Ljava/lang/Object;
.source "TtsFileLog.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:S

.field private static e:S


# instance fields
.field private f:Ljava/lang/Object;

.field private g:Ljava/io/File;

.field private h:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x2c

    sput v0, Lix;->a:I

    .line 23
    const/4 v0, 0x0

    sput v0, Lix;->b:I

    .line 24
    const/16 v0, 0x3e80

    sput v0, Lix;->c:I

    .line 25
    const/4 v0, 0x1

    sput-short v0, Lix;->d:S

    .line 26
    const/16 v0, 0x10

    sput-short v0, Lix;->e:S

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7
    .param p1, "sampleRate"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lix;->f:Ljava/lang/Object;

    .line 36
    const/4 v3, 0x0

    iput-object v3, p0, Lix;->h:Ljava/io/RandomAccessFile;

    .line 73
    iget-object v4, p0, Lix;->f:Ljava/lang/Object;

    monitor-enter v4

    .line 74
    const/4 v3, 0x0

    :try_start_0
    sput v3, Lix;->b:I

    .line 75
    sput p1, Lix;->c:I

    .line 77
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 78
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "/tts_log/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .local v2, "path":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 81
    const-string/jumbo v3, "cache_"

    const-string/jumbo v5, ".pcm"

    invoke-static {v3, v5, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lix;->g:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v2    # "path":Ljava/io/File;
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lix;->g:Ljava/io/File;

    const-string/jumbo v6, "rw"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lix;->h:Ljava/io/RandomAccessFile;

    .line 91
    sget v3, Lix;->a:I

    new-array v0, v3, [B

    .line 92
    .local v0, "bufHead":[B
    iget-object v3, p0, Lix;->h:Ljava/io/RandomAccessFile;

    const/4 v5, 0x0

    sget v6, Lix;->a:I

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .end local v0    # "bufHead":[B
    :goto_1
    :try_start_3
    monitor-exit v4

    .line 101
    return-void

    .line 82
    .restart local v2    # "path":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "TtsFileLog"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "path":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 86
    :cond_1
    :try_start_4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lix;->g:Ljava/io/File;

    goto :goto_0

    .line 93
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v3, "TtsFileLog"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 95
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "TtsFileLog"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 97
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TtsFileLog"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private a(Ljava/io/RandomAccessFile;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/RandomAccessFile;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const-string/jumbo v0, "RIFF"

    invoke-static {p1, v0}, Lix;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 126
    add-int/lit8 v0, p2, 0x24

    invoke-static {p1, v0}, Lix;->b(Ljava/io/RandomAccessFile;I)V

    .line 127
    const-string/jumbo v0, "WAVE"

    invoke-static {p1, v0}, Lix;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v0, "fmt "

    invoke-static {p1, v0}, Lix;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 131
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lix;->b(Ljava/io/RandomAccessFile;I)V

    .line 132
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lix;->a(Ljava/io/RandomAccessFile;S)V

    .line 133
    sget-short v0, Lix;->d:S

    invoke-static {p1, v0}, Lix;->a(Ljava/io/RandomAccessFile;S)V

    .line 134
    sget v0, Lix;->c:I

    invoke-static {p1, v0}, Lix;->b(Ljava/io/RandomAccessFile;I)V

    .line 136
    sget-short v0, Lix;->d:S

    sget v1, Lix;->c:I

    mul-int/2addr v0, v1

    sget-short v1, Lix;->e:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Lix;->b(Ljava/io/RandomAccessFile;I)V

    .line 137
    sget-short v0, Lix;->d:S

    sget-short v1, Lix;->e:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    invoke-static {p1, v0}, Lix;->a(Ljava/io/RandomAccessFile;S)V

    .line 138
    sget-short v0, Lix;->e:S

    invoke-static {p1, v0}, Lix;->a(Ljava/io/RandomAccessFile;S)V

    .line 140
    const-string/jumbo v0, "data"

    invoke-static {p1, v0}, Lix;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 141
    invoke-static {p1, p2}, Lix;->b(Ljava/io/RandomAccessFile;I)V

    .line 142
    return-void
.end method

.method private static a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Ljava/io/RandomAccessFile;
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/RandomAccessFile;S)V
    .locals 1
    .param p0, "out"    # Ljava/io/RandomAccessFile;
    .param p1, "val"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 161
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 162
    return-void
.end method

.method private static b(Ljava/io/RandomAccessFile;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/RandomAccessFile;
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 153
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 154
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 155
    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 156
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lix;->g:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lix;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 40
    iget-object v3, p0, Lix;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 41
    :try_start_0
    iget-object v2, p0, Lix;->h:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 42
    :cond_0
    const-string/jumbo v2, "TtsFileLog"

    const-string/jumbo v4, " writeTtsData file is null"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    monitor-exit v3

    .line 53
    :goto_0
    return-void

    .line 45
    :cond_1
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .local v1, "len":I
    :try_start_1
    iget-object v2, p0, Lix;->h:Ljava/io/RandomAccessFile;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 48
    sget v2, Lix;->b:I

    add-int/2addr v2, v1

    sput v2, Lix;->b:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "len":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 49
    .restart local v1    # "len":I
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "TtsFileLog"

    const-string/jumbo v4, ""

    invoke-static {v2, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public b()V
    .locals 6

    .prologue
    .line 105
    iget-object v2, p0, Lix;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 107
    :try_start_0
    iget-object v1, p0, Lix;->h:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 110
    :try_start_1
    iget-object v1, p0, Lix;->h:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 111
    iget-object v1, p0, Lix;->h:Ljava/io/RandomAccessFile;

    sget v3, Lix;->b:I

    invoke-direct {p0, v1, v3}, Lix;->a(Ljava/io/RandomAccessFile;I)V

    .line 112
    iget-object v1, p0, Lix;->h:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lix;->h:Ljava/io/RandomAccessFile;

    .line 119
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v1, "TtsFileLog"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lix;->h:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 116
    :catchall_1
    move-exception v1

    const/4 v3, 0x0

    :try_start_5
    iput-object v3, p0, Lix;->h:Ljava/io/RandomAccessFile;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
