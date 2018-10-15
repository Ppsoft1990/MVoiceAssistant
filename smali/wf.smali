.class public Lwf;
.super Ljava/lang/Object;
.source "LogFile.java"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lwf;->a:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lwf;->c:I

    .line 34
    iput-object p1, p0, Lwf;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "top_limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v5, "ret_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-gtz p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v5

    .line 105
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 109
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "r"

    invoke-direct {v6, v2, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .local v6, "tmp_file":Ljava/io/RandomAccessFile;
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v3, v10

    .line 111
    .local v3, "file_len":I
    if-gtz v3, :cond_2

    .line 112
    const-string/jumbo v9, "LogFile"

    const-string/jumbo v10, "myReadLines file size == 0"

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "file_len":I
    .end local v6    # "tmp_file":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "LogFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readLines file failed. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "file_len":I
    .restart local v6    # "tmp_file":Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_1
    new-array v0, v3, [B

    .line 115
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 116
    new-instance v7, Ljava/lang/String;

    const-string/jumbo v9, "utf-8"

    invoke-direct {v7, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 117
    .local v7, "tmp_str":Ljava/lang/String;
    const-string/jumbo v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "tmp_str_array":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, p1, :cond_3

    .line 120
    array-length v9, v8

    if-lt v4, v9, :cond_4

    .line 125
    :cond_3
    const-string/jumbo v9, "LogFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "myReadLines size\uff1d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " line="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 126
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 125
    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    :cond_4
    aget-object v9, v8, v4

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v3, 0x0

    .line 68
    .local v3, "line_size":I
    if-eqz p0, :cond_2

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 70
    .local v0, "chars":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 71
    .local v2, "len":I
    if-lez v2, :cond_0

    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 74
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 75
    aget-char v4, v0, v1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 74
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "chars":[C
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    return v3
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lwf;->c:I

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lwf;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->getFileLineCount(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lwf;->c:I

    .line 183
    :cond_0
    iget v0, p0, Lwf;->c:I

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 43
    :cond_0
    iget v2, p0, Lwf;->c:I

    .line 57
    :goto_0
    return v2

    .line 45
    :cond_1
    iget-object v3, p0, Lwf;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 46
    :try_start_0
    iget v2, p0, Lwf;->c:I

    if-nez v2, :cond_2

    .line 47
    iget-object v2, p0, Lwf;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/iflytek/yd/util/FileManager;->getFileLineCount(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lwf;->c:I

    .line 49
    :cond_2
    iget-object v2, p0, Lwf;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/iflytek/yd/util/FileManager;->appendLine(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 50
    .local v1, "ret":Z
    invoke-static {p1}, Lwf;->b(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "append_line":I
    if-eqz v1, :cond_3

    .line 52
    iget v2, p0, Lwf;->c:I

    add-int/2addr v2, v0

    iput v2, p0, Lwf;->c:I

    .line 56
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget v2, p0, Lwf;->c:I

    goto :goto_0

    .line 56
    .end local v0    # "append_line":I
    .end local v1    # "ret":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public a(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "top_limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "ret_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lwf;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 89
    :try_start_0
    iget-object v1, p0, Lwf;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lwf;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    monitor-exit v2

    .line 91
    return-object v0

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(I)I
    .locals 4
    .param p1, "top_limit"    # I

    .prologue
    .line 143
    if-gez p1, :cond_0

    .line 144
    iget v1, p0, Lwf;->c:I

    .line 154
    :goto_0
    return v1

    .line 146
    :cond_0
    iget-object v2, p0, Lwf;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_0
    iget-object v1, p0, Lwf;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/iflytek/yd/util/FileManager;->deleteLines(Ljava/lang/String;I)Z

    move-result v0

    .line 148
    .local v0, "ret":Z
    if-eqz v0, :cond_1

    .line 149
    iget-object v1, p0, Lwf;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->getFileLineCount(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lwf;->c:I

    .line 151
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    const-string/jumbo v1, "LogFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteLine("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lwf;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " FILE_LINE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lwf;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget v1, p0, Lwf;->c:I

    goto :goto_0

    .line 151
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
