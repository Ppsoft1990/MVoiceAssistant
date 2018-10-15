.class public final Lazg;
.super Ljava/lang/Object;
.source "CpuUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lazg$a;,
        Lazg$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Lazg$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "devices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cpu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lazg;->a:Ljava/lang/String;

    .line 221
    const-string/jumbo v0, ""

    sput-object v0, Lazg;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lazg;->b:I

    .line 33
    iput v0, p0, Lazg;->c:I

    .line 34
    iput v0, p0, Lazg;->d:I

    .line 38
    invoke-direct {p0}, Lazg;->f()V

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "ret":I
    invoke-static {p0}, Lazg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 116
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "CpuUtil"

    const-string/jumbo v4, "readSystemFileAsInt()"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0}, Lazg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    const-string/jumbo v5, ""

    .line 217
    :cond_0
    :goto_0
    return-object v5

    .line 196
    :cond_1
    const/4 v0, 0x0

    .line 198
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "text":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_2

    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 209
    if-eqz v1, :cond_0

    .line 211
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "CpuUtil"

    const-string/jumbo v7, "readDeviceFile()"

    invoke-static {v6, v7, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 206
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "text":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "CpuUtil"

    const-string/jumbo v6, "readDeviceFile()"

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    if-eqz v0, :cond_3

    .line 211
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 217
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    const-string/jumbo v5, ""

    goto :goto_0

    .line 212
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 213
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "CpuUtil"

    const-string/jumbo v6, "readDeviceFile()"

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 209
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v0, :cond_4

    .line 211
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 214
    :cond_4
    :goto_5
    throw v5

    .line 212
    :catch_3
    move-exception v2

    .line 213
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "CpuUtil"

    const-string/jumbo v7, "readDeviceFile()"

    invoke-static {v6, v7, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 209
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 206
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static declared-synchronized e()Ljava/lang/String;
    .locals 12

    .prologue
    .line 240
    const-class v10, Lazg;

    monitor-enter v10

    :try_start_0
    sget-object v9, Lazg;->f:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 241
    const-string/jumbo v7, "/proc/cpuinfo"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    .local v7, "str1":Ljava/lang/String;
    const/4 v8, 0x0

    .line 243
    .local v8, "str2":Ljava/lang/String;
    const/4 v5, 0x0

    .line 244
    .local v5, "localBufferedReader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 245
    .local v0, "fr":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 250
    .local v3, "input":Ljava/io/LineNumberReader;
    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    .end local v0    # "fr":Ljava/io/FileReader;
    .local v1, "fr":Ljava/io/FileReader;
    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v6, v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 252
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .local v6, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v4, Ljava/io/LineNumberReader;

    invoke-direct {v4, v6}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 254
    .end local v3    # "input":Ljava/io/LineNumberReader;
    .local v4, "input":Ljava/io/LineNumberReader;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v9, 0x64

    if-ge v2, v9, :cond_0

    .line 255
    :try_start_4
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 256
    if-eqz v8, :cond_0

    .line 258
    const-string/jumbo v9, "Serial"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-le v9, v11, :cond_4

    .line 260
    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 262
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lazg;->f:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 272
    :cond_0
    if-eqz v6, :cond_1

    .line 274
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 278
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 280
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 284
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 286
    :try_start_7
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 293
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "i":I
    .end local v4    # "input":Ljava/io/LineNumberReader;
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_3
    :goto_3
    :try_start_8
    sget-object v9, Lazg;->f:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit v10

    return-object v9

    .line 254
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "i":I
    .restart local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "i":I
    .end local v4    # "input":Ljava/io/LineNumberReader;
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "fr":Ljava/io/FileReader;
    .restart local v3    # "input":Ljava/io/LineNumberReader;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v9

    .line 272
    :goto_4
    if-eqz v5, :cond_5

    .line 274
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 278
    :cond_5
    :goto_5
    if-eqz v0, :cond_6

    .line 280
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 284
    :cond_6
    :goto_6
    if-eqz v3, :cond_3

    .line 286
    :try_start_b
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 287
    :catch_1
    move-exception v9

    goto :goto_3

    .line 272
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v5, :cond_7

    .line 274
    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 278
    :cond_7
    :goto_8
    if-eqz v0, :cond_8

    .line 280
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 284
    :cond_8
    :goto_9
    if-eqz v3, :cond_9

    .line 286
    :try_start_e
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 288
    :cond_9
    :goto_a
    :try_start_f
    throw v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 240
    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v3    # "input":Ljava/io/LineNumberReader;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9

    .line 275
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "i":I
    .restart local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v9

    goto :goto_1

    .line 281
    :catch_3
    move-exception v9

    goto :goto_2

    .line 287
    :catch_4
    move-exception v9

    goto :goto_3

    .line 275
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "i":I
    .end local v4    # "input":Ljava/io/LineNumberReader;
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "fr":Ljava/io/FileReader;
    .restart local v3    # "input":Ljava/io/LineNumberReader;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v9

    goto :goto_5

    .line 281
    :catch_6
    move-exception v9

    goto :goto_6

    .line 275
    :catch_7
    move-exception v11

    goto :goto_8

    .line 281
    :catch_8
    move-exception v11

    goto :goto_9

    .line 287
    :catch_9
    move-exception v11

    goto :goto_a

    .line 272
    .end local v0    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v0    # "fr":Ljava/io/FileReader;
    goto :goto_7

    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v9

    move-object v0, v1

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v0    # "fr":Ljava/io/FileReader;
    move-object v5, v6

    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v3    # "input":Ljava/io/LineNumberReader;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "i":I
    .restart local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v9

    move-object v3, v4

    .end local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v3    # "input":Ljava/io/LineNumberReader;
    move-object v0, v1

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v0    # "fr":Ljava/io/FileReader;
    move-object v5, v6

    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 270
    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v2    # "i":I
    .restart local v1    # "fr":Ljava/io/FileReader;
    :catch_a
    move-exception v9

    move-object v0, v1

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v0    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_b
    move-exception v9

    move-object v0, v1

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v0    # "fr":Ljava/io/FileReader;
    move-object v5, v6

    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v3    # "input":Ljava/io/LineNumberReader;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "i":I
    .restart local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_c
    move-exception v9

    move-object v3, v4

    .end local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v3    # "input":Ljava/io/LineNumberReader;
    move-object v0, v1

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v0    # "fr":Ljava/io/FileReader;
    move-object v5, v6

    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private f()V
    .locals 4

    .prologue
    .line 91
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "localFile":Ljava/io/File;
    new-instance v2, Lazg$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lazg$a;-><init>(Lazg$1;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    iput v2, p0, Lazg;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "localFile":Ljava/io/File;
    :goto_0
    :try_start_1
    const-string/jumbo v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v2}, Lazg;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lazg;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :goto_1
    :try_start_2
    const-string/jumbo v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v2}, Lazg;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lazg;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    :goto_2
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CpuUtil"

    const-string/jumbo v3, "readInfo()"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const/4 v2, 0x1

    iput v2, p0, Lazg;->b:I

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CpuUtil"

    const-string/jumbo v3, "read MaxFrequency exception"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 106
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CpuUtil"

    const-string/jumbo v3, "read MinFrequency exception"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lazg;->b:I

    return v0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0}, Lazg;->b()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 70
    iget v1, p0, Lazg;->c:I

    if-lez v1, :cond_0

    iget v1, p0, Lazg;->c:I

    const v2, 0x10c8e0

    if-ge v1, v2, :cond_0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lazg;->e:Lazg$b;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lazg$b;

    invoke-direct {v0}, Lazg$b;-><init>()V

    iput-object v0, p0, Lazg;->e:Lazg$b;

    .line 86
    :cond_0
    iget-object v0, p0, Lazg;->e:Lazg$b;

    invoke-virtual {v0}, Lazg$b;->a()J

    move-result-wide v0

    return-wide v0
.end method
