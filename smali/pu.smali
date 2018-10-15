.class public final Lpu;
.super Ljava/lang/Object;
.source "SpeechTestFileOperator.java"


# static fields
.field private static a:Ljava/io/RandomAccessFile;

.field private static b:I

.field private static c:Ljava/lang/String;

.field private static d:I

.field private static e:Ljava/lang/String;

.field private static f:Z

.field private static g:J

.field private static h:J

.field private static i:Z

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    sput-object v1, Lpu;->a:Ljava/io/RandomAccessFile;

    .line 40
    sput v0, Lpu;->b:I

    .line 41
    sput-object v1, Lpu;->c:Ljava/lang/String;

    .line 42
    sput v0, Lpu;->d:I

    .line 43
    sput-object v1, Lpu;->e:Ljava/lang/String;

    .line 44
    sput-boolean v0, Lpu;->f:Z

    .line 46
    sput-wide v2, Lpu;->g:J

    .line 47
    sput-wide v2, Lpu;->h:J

    .line 49
    sput-boolean v0, Lpu;->i:Z

    .line 50
    sput-boolean v0, Lpu;->j:Z

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;I)I
    .locals 7
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .prologue
    .line 76
    const-class v4, Lpu;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lpu;->a:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_0

    .line 77
    invoke-static {}, Lpu;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v3, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lpu;->a:Ljava/io/RandomAccessFile;

    .line 81
    const/16 v3, 0x2c

    new-array v0, v3, [B

    .line 82
    .local v0, "buffer":[B
    sget-object v3, Lpu;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 83
    const-string/jumbo v3, "SPEECH_PcmTestFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initFile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v0    # "buffer":[B
    :goto_0
    :try_start_2
    sget-object v3, Lpu;->a:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_2

    .line 93
    sput p1, Lpu;->d:I

    .line 97
    :goto_1
    sget v3, Lpu;->d:I

    if-lez v3, :cond_1

    .line 98
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 99
    .local v1, "df":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lpu;->c:Ljava/lang/String;

    .line 100
    const-string/jumbo v3, "wmtest"

    sget-object v5, Lpu;->c:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v1    # "df":Ljava/text/SimpleDateFormat;
    :cond_1
    sget v3, Lpu;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v3

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    :try_start_3
    sput-object v3, Lpu;->a:Ljava/io/RandomAccessFile;

    .line 86
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 76
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 87
    :catch_1
    move-exception v2

    .line 88
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lpu;->j()V

    .line 89
    const/4 v3, 0x0

    sput-object v3, Lpu;->a:Ljava/io/RandomAccessFile;

    .line 90
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v3, 0x0

    sput v3, Lpu;->d:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static a(ILjava/lang/String;)V
    .locals 5
    .param p0, "errorCode"    # I
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 171
    const-string/jumbo v0, "SPEECH_PcmTestFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTestFinish code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",log="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sput v3, Lpu;->d:I

    .line 173
    sget-object v0, Lpu;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lpu;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpu;->e:Ljava/lang/String;

    .line 175
    sput-object v4, Lpu;->c:Ljava/lang/String;

    .line 176
    sput p0, Lpu;->b:I

    .line 181
    :goto_0
    invoke-static {}, Lpu;->j()V

    .line 182
    return-void

    .line 178
    :cond_0
    sput-object v4, Lpu;->e:Ljava/lang/String;

    .line 179
    sput v3, Lpu;->b:I

    goto :goto_0
.end method

.method public static a(J)V
    .locals 0
    .param p0, "resultTime"    # J

    .prologue
    .line 325
    sput-wide p0, Lpu;->h:J

    .line 326
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 296
    invoke-static {}, Lpu;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    const-string/jumbo v4, "SPEECH_PcmTestFile"

    const-string/jumbo v5, "TEXTTEST "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lpu;->c:Ljava/lang/String;

    invoke-static {v5}, Lpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "text_test_time.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lpu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "olddata":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "StartTextSearchTime =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lpu;->g:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OnResultTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lpu;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "newdata":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lpu;->c:Ljava/lang/String;

    invoke-static {v5}, Lpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "text_test_time.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lpu;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 301
    .local v0, "b":Z
    const-string/jumbo v4, "SPEECH_PcmTestFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeFile text_test_time.txt ---------> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string/jumbo v4, ""

    invoke-static {v8, v4}, Lpu;->a(ILjava/lang/String;)V

    .line 305
    .end local v0    # "b":Z
    .end local v1    # "newdata":Ljava/lang/String;
    .end local v2    # "olddata":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_OPEN_SPEECHTEST_SERVICE"

    invoke-virtual {v4, v5, v8}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    const-string/jumbo v4, "SPEECH_PcmTestFile"

    const-string/jumbo v5, "SPEECHTEST "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lpu;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "speech_test_time.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lpu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .restart local v2    # "olddata":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "EndSpeechTime =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lxn;->c:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OnResultTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lxn;->d:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .restart local v1    # "newdata":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lpu;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "speech_test_time.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lpu;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 311
    .restart local v0    # "b":Z
    const-string/jumbo v4, "SPEECH_PcmTestFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeFile speech_test_time.txt ---------> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v0    # "b":Z
    .end local v1    # "newdata":Ljava/lang/String;
    .end local v2    # "olddata":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lpu;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 315
    const-string/jumbo v4, "SPEECH_PcmTestFile"

    const-string/jumbo v5, "TIMETEST "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOnCreateStart = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 317
    invoke-static {p0}, Lxo;->a(Landroid/content/Context;)Lxo;

    move-result-object v5

    invoke-virtual {v5}, Lxo;->c()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mOnCreateEnd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 318
    invoke-static {p0}, Lxo;->a(Landroid/content/Context;)Lxo;

    move-result-object v5

    invoke-virtual {v5}, Lxo;->d()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "time":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lpu;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "speech_init_time.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lpu;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 320
    .restart local v0    # "b":Z
    const-string/jumbo v4, "SPEECH_PcmTestFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeFile speech_test_time.txt ---------> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v0    # "b":Z
    .end local v3    # "time":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .param p0, "mCurrentTestId"    # Ljava/lang/String;

    .prologue
    .line 148
    sput-object p0, Lpu;->c:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .param p0, "mOpenTextTest"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lpu;->i:Z

    .line 57
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lpu;->i:Z

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 265
    const/4 v5, 0x0

    .line 266
    .local v5, "result":Z
    const/4 v3, 0x0

    .line 267
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    const-string/jumbo v2, ""

    .line 268
    .local v2, "fileName":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 270
    move-object v2, p0

    .line 272
    :cond_0
    const-string/jumbo v6, "SPEECH_PcmTestFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "filename = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    const/4 v5, 0x1

    .line 281
    if-eqz v4, :cond_3

    .line 283
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 289
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return v5

    .line 284
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v6, "SPEECH_PcmTestFile"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 286
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 277
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v5, 0x0

    .line 279
    :try_start_3
    const-string/jumbo v6, "SPEECH_PcmTestFile"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    if-eqz v3, :cond_1

    .line 283
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 284
    :catch_2
    move-exception v1

    .line 285
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string/jumbo v6, "SPEECH_PcmTestFile"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_2

    .line 283
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 286
    :cond_2
    :goto_3
    throw v6

    .line 284
    :catch_3
    move-exception v1

    .line 285
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string/jumbo v7, "SPEECH_PcmTestFile"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 281
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 277
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_3
    move-object v3, v4

    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static a(I)[B
    .locals 6
    .param p0, "length"    # I

    .prologue
    .line 109
    sget-object v3, Lpu;->a:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_0

    .line 110
    const-string/jumbo v3, "SPEECH_PcmTestFile"

    const-string/jumbo v4, "readData NULL "

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 114
    :cond_0
    new-array v0, p0, [B

    .line 115
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 117
    .local v2, "ret":I
    :try_start_0
    sget-object v3, Lpu;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    .line 118
    if-gez v2, :cond_1

    .line 119
    const-string/jumbo v3, "SPEECH_PcmTestFile"

    const-string/jumbo v4, "readData not data will close"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lpu;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_1
    :goto_1
    const-string/jumbo v3, "SPEECH_PcmTestFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readData ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "testfile"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string/jumbo v3, ""

    .line 223
    .local v3, "fileContent":Ljava/lang/String;
    const/4 v5, 0x0

    .line 224
    .local v5, "read":Ljava/io/InputStreamReader;
    const/4 v7, 0x0

    .line 226
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 228
    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v10, "gbk"

    invoke-direct {v6, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v5    # "read":Ljava/io/InputStreamReader;
    .local v6, "read":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 232
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 238
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "read":Ljava/io/InputStreamReader;
    .restart local v5    # "read":Ljava/io/InputStreamReader;
    :cond_1
    if-eqz v5, :cond_2

    .line 240
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 245
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 247
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 253
    .end local v2    # "f":Ljava/io/File;
    :cond_3
    :goto_2
    return-object v3

    .line 241
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v9, "SPEECH_PcmTestFile"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 248
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v9, "SPEECH_PcmTestFile"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    :catch_2
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string/jumbo v9, "SPEECH_PcmTestFile"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    if-eqz v5, :cond_4

    .line 240
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 245
    :cond_4
    :goto_4
    if-eqz v7, :cond_3

    .line 247
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 248
    :catch_3
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v9, "SPEECH_PcmTestFile"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 242
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string/jumbo v9, "SPEECH_PcmTestFile"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v5, :cond_5

    .line 240
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 245
    :cond_5
    :goto_6
    if-eqz v7, :cond_6

    .line 247
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 250
    :cond_6
    :goto_7
    throw v9

    .line 241
    :catch_5
    move-exception v1

    .line 242
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string/jumbo v10, "SPEECH_PcmTestFile"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 248
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v10, "SPEECH_PcmTestFile"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 238
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "read":Ljava/io/InputStreamReader;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v6    # "read":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "read":Ljava/io/InputStreamReader;
    .restart local v5    # "read":Ljava/io/InputStreamReader;
    goto :goto_5

    .end local v5    # "read":Ljava/io/InputStreamReader;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "read":Ljava/io/InputStreamReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "read":Ljava/io/InputStreamReader;
    .restart local v5    # "read":Ljava/io/InputStreamReader;
    goto :goto_5

    .line 235
    .end local v5    # "read":Ljava/io/InputStreamReader;
    .restart local v6    # "read":Ljava/io/InputStreamReader;
    :catch_7
    move-exception v0

    move-object v5, v6

    .end local v6    # "read":Ljava/io/InputStreamReader;
    .restart local v5    # "read":Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v5    # "read":Ljava/io/InputStreamReader;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "read":Ljava/io/InputStreamReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "read":Ljava/io/InputStreamReader;
    .restart local v5    # "read":Ljava/io/InputStreamReader;
    goto :goto_3
.end method

.method public static b(J)V
    .locals 0
    .param p0, "startTime"    # J

    .prologue
    .line 329
    sput-wide p0, Lpu;->g:J

    .line 330
    return-void
.end method

.method public static b(Z)V
    .locals 0
    .param p0, "mOpenTimeTest"    # Z

    .prologue
    .line 64
    sput-boolean p0, Lpu;->j:Z

    .line 65
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lpu;->j:Z

    return v0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 135
    sget v0, Lpu;->d:I

    return v0
.end method

.method public static c(Z)V
    .locals 0
    .param p0, "mode"    # Z

    .prologue
    .line 190
    sput-boolean p0, Lpu;->f:Z

    .line 191
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lpu;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lpu;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 164
    sget v0, Lpu;->b:I

    return v0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 199
    sget-boolean v0, Lpu;->f:Z

    return v0
.end method

.method public static h()J
    .locals 2

    .prologue
    .line 333
    sget-wide v0, Lpu;->h:J

    return-wide v0
.end method

.method public static i()J
    .locals 2

    .prologue
    .line 337
    sget-wide v0, Lpu;->g:J

    return-wide v0
.end method

.method private static j()V
    .locals 2

    .prologue
    .line 206
    sget-object v1, Lpu;->a:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 208
    :try_start_0
    sget-object v1, Lpu;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lpu;->a:Ljava/io/RandomAccessFile;

    .line 214
    :cond_0
    return-void

    .line 209
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 210
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
