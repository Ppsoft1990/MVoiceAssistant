.class public Lcom/baidu/aiupdatesdk/obf/j;
.super Lcom/baidu/aiupdatesdk/obf/i;
.source "FileHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/aiupdatesdk/obf/j$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/RandomAccessFile;

.field private c:J

.field private d:Lcom/baidu/aiupdatesdk/obf/j$a;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/baidu/aiupdatesdk/obf/i;-><init>(Landroid/os/Handler;)V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->c:J

    .line 22
    const/16 v0, -0x64

    iput v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->e:I

    .line 42
    return-void
.end method

.method private b(IJJ)V
    .locals 2
    .param p1, "percent"    # I
    .param p2, "receiveLength"    # J
    .param p4, "fileSize"    # J

    .prologue
    .line 124
    iget v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->e:I

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iput p1, p0, Lcom/baidu/aiupdatesdk/obf/j;->e:I

    .line 128
    invoke-virtual/range {p0 .. p5}, Lcom/baidu/aiupdatesdk/obf/j;->a(IJJ)V

    goto :goto_0
.end method

.method private e(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v1, Lcom/baidu/aiupdatesdk/obf/j$a;->d:Lcom/baidu/aiupdatesdk/obf/j$a;

    iput-object v1, p0, Lcom/baidu/aiupdatesdk/obf/j;->d:Lcom/baidu/aiupdatesdk/obf/j$a;

    .line 112
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    .line 120
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 121
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/j$a;->b:Lcom/baidu/aiupdatesdk/obf/j$a;

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->d:Lcom/baidu/aiupdatesdk/obf/j$a;

    .line 133
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/j;->a()V

    .line 134
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/j$a;->e:Lcom/baidu/aiupdatesdk/obf/j$a;

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->d:Lcom/baidu/aiupdatesdk/obf/j$a;

    .line 138
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/j;->b()V

    .line 139
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "FileHttpResponseHandler\uff1aonDownloadStart"

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public a(IJJ)V
    .locals 2
    .param p1, "percent"    # I
    .param p2, "receiveLength"    # J
    .param p4, "fileSize"    # J

    .prologue
    .line 96
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FileHttpResponseHandler\uff1aonDownloadPercent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 7
    .param p1, "contentLength"    # I
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/i;->a(ILjava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->d:Lcom/baidu/aiupdatesdk/obf/j$a;

    sget-object v1, Lcom/baidu/aiupdatesdk/obf/j$a;->d:Lcom/baidu/aiupdatesdk/obf/j$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 155
    .local v2, "length":J
    int-to-long v0, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->c:J

    .line 156
    const-wide/16 v0, 0x64

    mul-long/2addr v0, v2

    iget-wide v4, p0, Lcom/baidu/aiupdatesdk/obf/j;->c:J

    div-long/2addr v0, v4

    long-to-int v1, v0

    iget-wide v4, p0, Lcom/baidu/aiupdatesdk/obf/j;->c:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/aiupdatesdk/obf/j;->b(IJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v2    # "length":J
    :catch_0
    move-exception v6

    .line 158
    .local v6, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/baidu/aiupdatesdk/obf/j;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileFullPath"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/j;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string/jumbo v0, "FileHttpResponseHandler\uff1aonDownloadFail"

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public a([BI)V
    .locals 7
    .param p1, "slice"    # [B
    .param p2, "length"    # I

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/i;->a([BI)V

    .line 166
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->d:Lcom/baidu/aiupdatesdk/obf/j$a;

    sget-object v1, Lcom/baidu/aiupdatesdk/obf/j$a;->d:Lcom/baidu/aiupdatesdk/obf/j$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 172
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 173
    .local v2, "rcvLength":J
    const-wide/16 v0, 0x64

    mul-long/2addr v0, v2

    iget-wide v4, p0, Lcom/baidu/aiupdatesdk/obf/j;->c:J

    div-long/2addr v0, v4

    long-to-int v1, v0

    iget-wide v4, p0, Lcom/baidu/aiupdatesdk/obf/j;->c:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/aiupdatesdk/obf/j;->b(IJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v2    # "rcvLength":J
    :catch_0
    move-exception v6

    .line 175
    .local v6, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/baidu/aiupdatesdk/obf/j;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "FileHttpResponseHandler\uff1aonDownloadSuccess"

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-super {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/i;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/j;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/baidu/aiupdatesdk/obf/i;->c()V

    .line 144
    return-void
.end method

.method public d()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 50
    invoke-super {p0}, Lcom/baidu/aiupdatesdk/obf/i;->d()V

    .line 51
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/j;->k()V

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 56
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/baidu/aiupdatesdk/obf/j;->a:Ljava/lang/String;

    const-string/jumbo v5, "rw"

    invoke-direct {v1, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    .line 57
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 58
    .local v2, "length":J
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 59
    iget-wide v4, p0, Lcom/baidu/aiupdatesdk/obf/j;->c:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    .line 60
    const-wide/32 v4, 0x7fffffff

    iput-wide v4, p0, Lcom/baidu/aiupdatesdk/obf/j;->c:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    .end local v2    # "length":J
    :cond_1
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-direct {p0, v0, v8}, Lcom/baidu/aiupdatesdk/obf/j;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0, v8}, Lcom/baidu/aiupdatesdk/obf/j;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 182
    invoke-super {p0}, Lcom/baidu/aiupdatesdk/obf/i;->e()V

    .line 183
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->d:Lcom/baidu/aiupdatesdk/obf/j$a;

    sget-object v1, Lcom/baidu/aiupdatesdk/obf/j$a;->d:Lcom/baidu/aiupdatesdk/obf/j$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    .line 191
    const/16 v1, 0x64

    iget-wide v2, p0, Lcom/baidu/aiupdatesdk/obf/j;->c:J

    iget-wide v4, p0, Lcom/baidu/aiupdatesdk/obf/j;->c:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/aiupdatesdk/obf/j;->b(IJJ)V

    .line 192
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/j;->l()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v6

    .line 194
    .local v6, "e":Ljava/io/IOException;
    invoke-direct {p0, v6, v7}, Lcom/baidu/aiupdatesdk/obf/j;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 200
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/aiupdatesdk/obf/j;->b:Ljava/io/RandomAccessFile;

    .line 208
    :cond_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
