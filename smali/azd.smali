.class public Lazd;
.super Ljava/lang/Object;
.source "AudioUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lazd$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lazd$a;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, "AudioUploadManager"

    iput-object v0, p0, Lazd;->a:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "x%73h"

    iput-object v0, p0, Lazd;->d:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic a(Lazd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lazd;

    .prologue
    .line 38
    invoke-direct {p0}, Lazd;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lazd;->c:Lazd$a;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lazd;->c:Lazd$a;

    invoke-interface {v0, p1}, Lazd$a;->onFailed(I)V

    .line 387
    :cond_0
    return-void
.end method

.method static synthetic a(Lazd;I)V
    .locals 0
    .param p0, "x0"    # Lazd;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lazd;->a(I)V

    return-void
.end method

.method private a(J)[B
    .locals 7
    .param p1, "value"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 313
    new-array v0, v6, [B

    .line 314
    .local v0, "targets":[B
    const/4 v1, 0x7

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 315
    const/4 v1, 0x6

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 316
    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 317
    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 318
    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 319
    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 320
    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 321
    const/4 v1, 0x0

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 323
    return-object v0
.end method

.method static synthetic a(Lazd;Ljava/io/File;)[B
    .locals 1
    .param p0, "x0"    # Lazd;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lazd;->a(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;)[B
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 255
    :try_start_0
    invoke-direct {p0}, Lazd;->d()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "baseNode":Ljava/lang/String;
    const-string/jumbo v8, "AudioUploadManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getAudioData, baseNode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0, v0}, Lazd;->d(Ljava/lang/String;)[B

    move-result-object v1

    .line 258
    .local v1, "baseNodeBytes":[B
    const-string/jumbo v8, "AudioUploadManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getAudioData, encryptBase "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v10, v1, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-nez v1, :cond_0

    move-object v6, v7

    .line 289
    .end local v0    # "baseNode":Ljava/lang/String;
    .end local v1    # "baseNodeBytes":[B
    :goto_0
    return-object v6

    .line 265
    .restart local v0    # "baseNode":Ljava/lang/String;
    .restart local v1    # "baseNodeBytes":[B
    :cond_0
    array-length v5, v1

    .line 267
    .local v5, "length":I
    int-to-long v8, v5

    invoke-direct {p0, v8, v9}, Lazd;->a(J)[B

    move-result-object v4

    .line 270
    .local v4, "headBytes":[B
    invoke-direct {p0, p1}, Lazd;->b(Ljava/io/File;)[B

    move-result-object v3

    .line 272
    .local v3, "fileBytes":[B
    if-nez v3, :cond_1

    move-object v6, v7

    .line 273
    goto :goto_0

    .line 277
    :cond_1
    add-int/lit8 v8, v5, 0x8

    array-length v9, v3

    add-int/2addr v8, v9

    new-array v6, v8, [B

    .line 278
    .local v6, "reqBytes":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static {v4, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v1, v8, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    const/4 v8, 0x0

    add-int/lit8 v9, v5, 0x8

    array-length v10, v3

    invoke-static {v3, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    invoke-static {v6}, Lwb;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 285
    goto :goto_0

    .line 286
    .end local v0    # "baseNode":Ljava/lang/String;
    .end local v1    # "baseNodeBytes":[B
    .end local v3    # "fileBytes":[B
    .end local v4    # "headBytes":[B
    .end local v5    # "length":I
    .end local v6    # "reqBytes":[B
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "AudioUploadManager"

    const-string/jumbo v9, "getAudioData error"

    invoke-static {v8, v9, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 289
    goto :goto_0
.end method

.method static synthetic b(Lazd;)Lazd$a;
    .locals 1
    .param p0, "x0"    # Lazd;

    .prologue
    .line 38
    iget-object v0, p0, Lazd;->c:Lazd$a;

    return-object v0
.end method

.method private b(Ljava/io/File;)[B
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 358
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 359
    :cond_0
    const/4 v0, 0x0

    .line 380
    :cond_1
    :goto_0
    return-object v0

    .line 361
    :cond_2
    const/4 v0, 0x0

    .line 362
    .local v0, "data":[B
    const/4 v2, 0x0

    .line 364
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 366
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 372
    if-eqz v3, :cond_4

    .line 374
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 377
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 375
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "AudioUploadManager"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 377
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 368
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    .line 370
    :try_start_3
    const-string/jumbo v4, "AudioUploadManager"

    const-string/jumbo v5, "encodeFileToBytes"

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 372
    if-eqz v2, :cond_1

    .line 374
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 375
    :catch_2
    move-exception v1

    .line 376
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "AudioUploadManager"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 372
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_3

    .line 374
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 377
    :cond_3
    :goto_3
    throw v4

    .line 375
    :catch_3
    move-exception v1

    .line 376
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "AudioUploadManager"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 372
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 368
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_1

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_4
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 70
    .local v0, "config":Lcom/iflytek/yd/business/AppConfig;
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lazd;->f:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-static {}, Lbaa;->b()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lazd;->e:Ljava/lang/String;

    .line 73
    const-string/jumbo v1, "AudioUploadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "currentTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lazd;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://file.voicecloud.cn/LXFileUpload/uploadfile?&v=1.0&t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lazd;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lazd;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 203
    const-string/jumbo v2, "x%73h"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 205
    .local v1, "ssbyte":[B
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 207
    .local v0, "secretKey":[B
    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 210
    const/4 v2, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 211
    const/4 v2, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 212
    const-string/jumbo v2, "AudioUploadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "secretKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 328
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 331
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "base"

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lvy;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string/jumbo v2, "param"

    invoke-direct {p0}, Lazd;->e()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "AudioUploadManager"

    const-string/jumbo v3, "package json request exception"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)[B
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v3, p0, Lazd;->e:Ljava/lang/String;

    invoke-direct {p0, v3}, Lazd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lazd;->b(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v3, "AudioUploadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getKey "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lazd;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 222
    .local v0, "content":[B
    invoke-virtual {p0}, Lazd;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Ltb;->a([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 227
    .end local v0    # "content":[B
    :goto_0
    return-object v2

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AudioUploadManager"

    const-string/jumbo v4, "encrypt"

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private e()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 343
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 346
    .local v1, "param":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "source"

    iget-object v3, p0, Lazd;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string/jumbo v2, "filetype"

    const-string/jumbo v3, "mp3"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-object v1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AudioUploadManager"

    const-string/jumbo v3, "getParamNode error "

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "content"    # [B
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string/jumbo v2, "AudioUploadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decrypt, key is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    const/4 v2, 0x0

    .line 243
    :goto_0
    return-object v2

    .line 237
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {p1, v2}, Ltb;->b([B[B)[B

    move-result-object v1

    .line 238
    .local v1, "result":[B
    const-string/jumbo v2, "AudioUploadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decrypt, result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    .end local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AudioUploadManager"

    const-string/jumbo v3, "decrypt"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lazd;->b:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lazd;->b:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 191
    :cond_0
    return-void
.end method

.method public a(Ljava/io/File;Lazd$a;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lazd$a;

    .prologue
    .line 89
    iput-object p2, p0, Lazd;->c:Lazd$a;

    .line 91
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const v0, 0x30d46

    invoke-direct {p0, v0}, Lazd;->a(I)V

    .line 185
    :goto_0
    return-void

    .line 96
    :cond_0
    if-nez p1, :cond_1

    .line 97
    const v0, 0x30d43

    invoke-direct {p0, v0}, Lazd;->a(I)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lazd;->b:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lazd;->b:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 102
    const-string/jumbo v0, "AudioUploadManager"

    const-string/jumbo v1, "AsyncTask is running!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const v0, 0x30d47

    invoke-direct {p0, v0}, Lazd;->a(I)V

    goto :goto_0

    .line 107
    :cond_2
    new-instance v0, Lazd$1;

    invoke-direct {v0, p0, p1}, Lazd$1;-><init>(Lazd;Ljava/io/File;)V

    iput-object v0, p0, Lazd;->b:Landroid/os/AsyncTask;

    .line 183
    const-string/jumbo v0, "AudioUploadManager"

    const-string/jumbo v1, "start audio upload..."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lazd;->b:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lazd;->h:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lazd;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1
    .param p1, "encryptKey"    # Ljava/lang/String;

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lazd;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
