.class public final Ljl;
.super Ljava/lang/Object;
.source "TtsWebFileLog.java"


# static fields
.field public static a:I

.field private static b:Ljava/io/RandomAccessFile;

.field private static c:I

.field private static d:I

.field private static e:S

.field private static f:S

.field private static final g:Ljava/lang/String;

.field private static h:Ljava/lang/Object;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/StringBuilder;

.field private static m:J

.field private static n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput-object v1, Ljl;->b:Ljava/io/RandomAccessFile;

    .line 30
    const/16 v0, 0x2c

    sput v0, Ljl;->a:I

    .line 32
    const/4 v0, 0x0

    sput v0, Ljl;->c:I

    .line 34
    const/16 v0, 0x3e80

    sput v0, Ljl;->d:I

    .line 36
    const/4 v0, 0x1

    sput-short v0, Ljl;->e:S

    .line 38
    const/16 v0, 0x10

    sput-short v0, Ljl;->f:S

    .line 50
    sget-object v0, Lnj;->a:Ljava/lang/String;

    sput-object v0, Ljl;->g:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljl;->h:Ljava/lang/Object;

    .line 66
    sput-object v1, Ljl;->l:Ljava/lang/StringBuilder;

    .line 67
    const-wide/16 v0, 0x0

    sput-wide v0, Ljl;->m:J

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 321
    const/4 v3, 0x0

    .line 322
    .local v3, "path":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-object v1

    .line 325
    :cond_1
    sget-object v4, Ljl;->j:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljl;->k:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    invoke-static {}, Ljl;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 327
    sget-object v3, Ljl;->i:Ljava/lang/String;

    .line 332
    const/4 v1, 0x0

    .line 334
    .local v1, "input":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "input":Ljava/io/FileInputStream;
    .local v2, "input":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 337
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "input":Ljava/io/FileInputStream;
    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "SPEECH_TtsWebFileLog"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a()V
    .locals 6

    .prologue
    .line 124
    sget-object v2, Ljl;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    sget-object v1, Ljl;->b:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 129
    :try_start_1
    sget-object v1, Ljl;->b:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 130
    sget-object v1, Ljl;->b:Ljava/io/RandomAccessFile;

    sget v3, Ljl;->c:I

    invoke-static {v1, v3}, Ljl;->a(Ljava/io/RandomAccessFile;I)V

    .line 131
    sget-object v1, Ljl;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Ljl;->b:Ljava/io/RandomAccessFile;

    .line 138
    .local v0, "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    return-void

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 133
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v1, "SPEECH_TtsWebFileLog"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Ljl;->b:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 135
    :catchall_1
    move-exception v1

    const/4 v3, 0x0

    :try_start_5
    sput-object v3, Ljl;->b:Ljava/io/RandomAccessFile;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static a(I)V
    .locals 6
    .param p0, "pos"    # I

    .prologue
    .line 175
    invoke-static {}, Lhj;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    sget-boolean v1, Ljl;->n:Z

    if-nez v1, :cond_0

    .line 177
    const/4 v1, 0x1

    sput-boolean v1, Ljl;->n:Z

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Ljl;->m:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 179
    .local v0, "time":I
    sget-object v1, Ljl;->l:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 180
    sget-object v1, Ljl;->l:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";firstaudio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    sget-object v1, Ljl;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .end local v0    # "time":I
    :cond_0
    return-void
.end method

.method public static a(II)V
    .locals 2
    .param p0, "up"    # I
    .param p1, "down"    # I

    .prologue
    .line 192
    invoke-static {}, Lhj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Ljl;->l:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Ljl;->l:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";upflow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    sget-object v0, Ljl;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    sget-object v0, Ljl;->l:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";downflow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    sget-object v0, Ljl;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    :cond_0
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "sampleRate"    # I
    .param p1, "fileContent"    # Ljava/lang/String;
    .param p2, "role"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v5, Ljl;->h:Ljava/lang/Object;

    monitor-enter v5

    .line 94
    const/4 v4, 0x0

    :try_start_0
    sput v4, Ljl;->c:I

    .line 95
    sput p0, Ljl;->d:I

    .line 96
    const/4 v3, 0x0

    .line 98
    .local v3, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljl;->g:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/web"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ".wav"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    sput-object p1, Ljl;->j:Ljava/lang/String;

    .line 100
    sput-object p2, Ljl;->k:Ljava/lang/String;

    .line 102
    sput-object v3, Ljl;->i:Ljava/lang/String;

    .line 103
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .local v2, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 111
    :goto_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rw"

    invoke-direct {v4, v2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v4, Ljl;->b:Ljava/io/RandomAccessFile;

    .line 112
    sget v4, Ljl;->a:I

    new-array v0, v4, [B

    .line 113
    .local v0, "bufHead":[B
    sget-object v4, Ljl;->b:Ljava/io/RandomAccessFile;

    const/4 v6, 0x0

    sget v7, Ljl;->a:I

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v0    # "bufHead":[B
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    return-void

    .line 108
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string/jumbo v4, "SPEECH_TtsWebFileLog"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 116
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "filePath":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v4, "SPEECH_TtsWebFileLog"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {}, Lhj;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "leng":I
    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 151
    :cond_0
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    .line 152
    .local v0, "env":Lhl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Ljl;->m:J

    .line 153
    const/4 v3, 0x0

    sput-boolean v3, Ljl;->n:Z

    .line 154
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 155
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    sget-wide v6, Ljl;->m:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "time":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v3, Ljl;->l:Ljava/lang/StringBuilder;

    .line 157
    sget-object v3, Ljl;->l:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "type:ttslog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    sget-object v3, Ljl;->l:Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";apcode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    sget-object v3, Ljl;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    sget-object v3, Ljl;->l:Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";df:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    sget-object v3, Ljl;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    sget-object v3, Ljl;->l:Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    sget-object v3, Ljl;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    sget-object v3, Ljl;->l:Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";starttime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    sget-object v3, Ljl;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    sget-object v3, Ljl;->l:Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    sget-object v3, Ljl;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .end local v0    # "env":Lhl;
    .end local v1    # "leng":I
    .end local v2    # "time":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static a(Ljava/io/RandomAccessFile;I)V
    .locals 2
    .param p0, "out"    # Ljava/io/RandomAccessFile;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const-string/jumbo v0, "RIFF"

    invoke-static {p0, v0}, Ljl;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 247
    add-int/lit8 v0, p1, 0x24

    invoke-static {p0, v0}, Ljl;->b(Ljava/io/RandomAccessFile;I)V

    .line 248
    const-string/jumbo v0, "WAVE"

    invoke-static {p0, v0}, Ljl;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 251
    const-string/jumbo v0, "fmt "

    invoke-static {p0, v0}, Ljl;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 252
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljl;->b(Ljava/io/RandomAccessFile;I)V

    .line 253
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljl;->a(Ljava/io/RandomAccessFile;S)V

    .line 254
    sget-short v0, Ljl;->e:S

    invoke-static {p0, v0}, Ljl;->a(Ljava/io/RandomAccessFile;S)V

    .line 255
    sget v0, Ljl;->d:I

    invoke-static {p0, v0}, Ljl;->b(Ljava/io/RandomAccessFile;I)V

    .line 257
    sget-short v0, Ljl;->e:S

    sget v1, Ljl;->d:I

    mul-int/2addr v0, v1

    sget-short v1, Ljl;->f:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    invoke-static {p0, v0}, Ljl;->b(Ljava/io/RandomAccessFile;I)V

    .line 258
    sget-short v0, Ljl;->e:S

    sget-short v1, Ljl;->f:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    invoke-static {p0, v0}, Ljl;->a(Ljava/io/RandomAccessFile;S)V

    .line 259
    sget-short v0, Ljl;->f:S

    invoke-static {p0, v0}, Ljl;->a(Ljava/io/RandomAccessFile;S)V

    .line 261
    const-string/jumbo v0, "data"

    invoke-static {p0, v0}, Ljl;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 262
    invoke-static {p0, p1}, Ljl;->b(Ljava/io/RandomAccessFile;I)V

    .line 263
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
    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
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
    .line 281
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 282
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 283
    return-void
.end method

.method public static a([B)V
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 72
    sget-object v3, Ljl;->h:Ljava/lang/Object;

    monitor-enter v3

    .line 73
    :try_start_0
    sget-object v2, Ljl;->b:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    .line 74
    :cond_0
    const-string/jumbo v2, "SPEECH_TtsWebFileLog"

    const-string/jumbo v4, " writeTtsData file is null"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    monitor-exit v3

    .line 85
    :goto_0
    return-void

    .line 77
    :cond_1
    array-length v1, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .local v1, "len":I
    :try_start_1
    sget-object v2, Ljl;->b:Ljava/io/RandomAccessFile;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 80
    sget v2, Ljl;->c:I

    add-int/2addr v2, v1

    sput v2, Ljl;->c:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
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

    .line 81
    .restart local v1    # "len":I
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "SPEECH_TtsWebFileLog"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Ljl;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Ljl;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Ljl;->i:Ljava/lang/String;

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized b(I)V
    .locals 8
    .param p0, "error"    # I

    .prologue
    .line 207
    const-class v3, Ljl;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lhj;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    sget-object v2, Ljl;->l:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    .line 209
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 210
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "time":Ljava/lang/String;
    sget-object v2, Ljl;->l:Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";endtime:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    sget-object v2, Ljl;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    if-eqz p0, :cond_1

    .line 214
    sget-object v2, Ljl;->l:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ";errorcode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :goto_0
    sget-object v2, Ljl;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhj;->a(Ljava/lang/String;)V

    .line 220
    const/4 v2, 0x0

    sput-object v2, Ljl;->l:Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v0    # "time":Ljava/lang/String;
    :cond_0
    monitor-exit v3

    return-void

    .line 216
    .restart local v0    # "time":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Ljl;->m:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 217
    .local v1, "usertime":I
    sget-object v2, Ljl;->l:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ";usertime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    .end local v0    # "time":Ljava/lang/String;
    .end local v1    # "usertime":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
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
    .line 273
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 274
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 275
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 276
    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 277
    return-void
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 291
    sget-object v1, Ljl;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljl;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/web"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".wav"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static d()V
    .locals 3

    .prologue
    .line 303
    sget-object v1, Ljl;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_0
    invoke-static {}, Ljl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljl;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/web"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".wav"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    sput-object v0, Ljl;->j:Ljava/lang/String;

    .line 308
    const/4 v0, 0x0

    sput-object v0, Ljl;->i:Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    sput-object v0, Ljl;->k:Ljava/lang/String;

    .line 311
    :cond_0
    monitor-exit v1

    .line 312
    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
