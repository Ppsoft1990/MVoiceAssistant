.class public Lazs;
.super Ljava/lang/Object;
.source "PicUploadManager.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Lcom/iflytek/viafly/im/ImageUtils;

.field private e:Landroid/os/AsyncTask;
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

.field private f:Lazd$a;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private final m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lazd$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lazd$a;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v0, "PicUploadManager"

    iput-object v0, p0, Lazs;->a:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "x%73h"

    iput-object v0, p0, Lazs;->g:Ljava/lang/String;

    .line 69
    const/16 v0, 0x400

    iput v0, p0, Lazs;->m:I

    .line 72
    iput-object p1, p0, Lazs;->c:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/iflytek/viafly/im/ImageUtils;

    invoke-direct {v0}, Lcom/iflytek/viafly/im/ImageUtils;-><init>()V

    iput-object v0, p0, Lazs;->d:Lcom/iflytek/viafly/im/ImageUtils;

    .line 74
    iput-object p2, p0, Lazs;->f:Lazd$a;

    .line 75
    return-void
.end method

.method static synthetic a(Lazs;)Lcom/iflytek/viafly/im/ImageUtils;
    .locals 1
    .param p0, "x0"    # Lazs;

    .prologue
    .line 47
    iget-object v0, p0, Lazs;->d:Lcom/iflytek/viafly/im/ImageUtils;

    return-object v0
.end method

.method static synthetic a(Lazs;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lazs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lazs;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lazs;->f:Lazd$a;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lazs;->f:Lazd$a;

    invoke-interface {v0, p1}, Lazd$a;->onFailed(I)V

    .line 434
    :cond_0
    return-void
.end method

.method static synthetic a(Lazs;I)V
    .locals 0
    .param p0, "x0"    # Lazs;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lazs;->a(I)V

    return-void
.end method

.method private a(J)[B
    .locals 7
    .param p1, "value"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 330
    new-array v0, v6, [B

    .line 331
    .local v0, "targets":[B
    const/4 v1, 0x7

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 332
    const/4 v1, 0x6

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 333
    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 334
    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 335
    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 336
    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 337
    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 338
    const/4 v1, 0x0

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 340
    return-object v0
.end method

.method static synthetic b(Lazs;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lazs;

    .prologue
    .line 47
    iget-object v0, p0, Lazs;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lazs;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lazs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lazs;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lazs;->e:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazs;->e:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 118
    const-string/jumbo v0, "PicUploadManager"

    const-string/jumbo v1, "AsyncTask is running!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const v0, 0x35b6b

    invoke-direct {p0, v0}, Lazs;->a(I)V

    .line 199
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Lazs$2;

    invoke-direct {v0, p0, p1}, Lazs$2;-><init>(Lazs;Ljava/lang/String;)V

    iput-object v0, p0, Lazs;->e:Landroid/os/AsyncTask;

    .line 197
    const-string/jumbo v0, "PicUploadManager"

    const-string/jumbo v1, "start pic upload"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lazs;->e:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 268
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 269
    .local v0, "config":Lcom/iflytek/yd/business/AppConfig;
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lazs;->i:Ljava/lang/String;

    .line 271
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-static {}, Lbaa;->b()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lazs;->h:Ljava/lang/String;

    .line 272
    const-string/jumbo v1, "PicUploadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "currentTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lazs;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://file.voicecloud.cn/LXFileUpload/uploadfile?&v=1.0&t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lazs;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lazs;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic c(Lazs;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lazs;

    .prologue
    .line 47
    invoke-direct {p0}, Lazs;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 219
    const-string/jumbo v2, "x%73h"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 221
    .local v1, "ssbyte":[B
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 223
    .local v0, "secretKey":[B
    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 226
    const/4 v2, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 227
    const/4 v2, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 228
    const-string/jumbo v2, "PicUploadManager"

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

    .line 229
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method static synthetic c(Lazs;Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Lazs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lazs;->e(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lazs;)Lazd$a;
    .locals 1
    .param p0, "x0"    # Lazs;

    .prologue
    .line 47
    iget-object v0, p0, Lazs;->f:Lazd$a;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 345
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "base"

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lvy;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string/jumbo v2, "param"

    invoke-direct {p0}, Lazs;->e()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "PicUploadManager"

    const-string/jumbo v3, "package json request exception"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)[B
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v3, p0, Lazs;->h:Ljava/lang/String;

    invoke-direct {p0, v3}, Lazs;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lazs;->a(Ljava/lang/String;)V

    .line 235
    const-string/jumbo v3, "PicUploadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getKey "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lazs;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 238
    .local v0, "content":[B
    invoke-virtual {p0}, Lazs;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Ltb;->a([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 243
    .end local v0    # "content":[B
    :goto_0
    return-object v2

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PicUploadManager"

    const-string/jumbo v4, "encrypt"

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private e()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 361
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 364
    .local v1, "param":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "source"

    iget-object v3, p0, Lazs;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string/jumbo v2, "filetype"

    iget-object v3, p0, Lazs;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-object v1

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PicUploadManager"

    const-string/jumbo v3, "getParamNode error "

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)[B
    .locals 12
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 280
    :try_start_0
    invoke-direct {p0}, Lazs;->d()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "baseNode":Ljava/lang/String;
    const-string/jumbo v8, "PicUploadManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPicData, baseNode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0, v0}, Lazs;->d(Ljava/lang/String;)[B

    move-result-object v1

    .line 283
    .local v1, "baseNodeBytes":[B
    const-string/jumbo v8, "PicUploadManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPicData, encryptBase "

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

    .line 285
    if-nez v1, :cond_0

    move-object v6, v7

    .line 320
    .end local v0    # "baseNode":Ljava/lang/String;
    .end local v1    # "baseNodeBytes":[B
    :goto_0
    return-object v6

    .line 290
    .restart local v0    # "baseNode":Ljava/lang/String;
    .restart local v1    # "baseNodeBytes":[B
    :cond_0
    array-length v5, v1

    .line 292
    .local v5, "length":I
    int-to-long v8, v5

    invoke-direct {p0, v8, v9}, Lazs;->a(J)[B

    move-result-object v4

    .line 295
    .local v4, "headBytes":[B
    const/4 v3, 0x0

    .line 296
    .local v3, "fileBytes":[B
    const-string/jumbo v8, "PicUploadManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "compress pic, uploadType =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lazs;->b:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget v8, p0, Lazs;->b:I

    if-nez v8, :cond_3

    .line 298
    invoke-direct {p0, p1}, Lazs;->f(Ljava/lang/String;)[B

    move-result-object v3

    .line 303
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    array-length v8, v3

    if-nez v8, :cond_4

    :cond_2
    move-object v6, v7

    .line 304
    goto :goto_0

    .line 299
    :cond_3
    iget v8, p0, Lazs;->b:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 300
    iget-object v8, p0, Lazs;->d:Lcom/iflytek/viafly/im/ImageUtils;

    const/16 v9, 0x64

    invoke-virtual {v8, v9, p1}, Lcom/iflytek/viafly/im/ImageUtils;->compressBitmap(ILjava/lang/String;)[B

    move-result-object v3

    goto :goto_1

    .line 308
    :cond_4
    add-int/lit8 v8, v5, 0x8

    array-length v9, v3

    add-int/2addr v8, v9

    new-array v6, v8, [B

    .line 309
    .local v6, "reqBytes":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static {v4, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v1, v8, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    const/4 v8, 0x0

    add-int/lit8 v9, v5, 0x8

    array-length v10, v3

    invoke-static {v3, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    invoke-static {v6}, Lwb;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 316
    goto :goto_0

    .line 317
    .end local v0    # "baseNode":Ljava/lang/String;
    .end local v1    # "baseNodeBytes":[B
    .end local v3    # "fileBytes":[B
    .end local v4    # "headBytes":[B
    .end local v5    # "length":I
    .end local v6    # "reqBytes":[B
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "PicUploadManager"

    const-string/jumbo v9, "getPicData error"

    invoke-static {v8, v9, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 320
    goto :goto_0
.end method

.method private f(Ljava/lang/String;)[B
    .locals 8
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-static {p1}, Lbab;->b(Ljava/lang/String;)I

    move-result v2

    .line 377
    .local v2, "degree":I
    const-string/jumbo v5, "PicUploadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "compressBitmapToBytes degree="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 379
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 380
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 382
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lbab;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 383
    const/16 v3, 0x64

    .line 384
    .local v3, "options":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 385
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v5, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 388
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    div-int/lit16 v5, v5, 0x400

    const/16 v6, 0x400

    if-le v5, v6, :cond_0

    .line 389
    add-int/lit8 v3, v3, -0xa

    .line 390
    const-string/jumbo v5, "PicUploadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "compressBitmapToBytes options="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-gtz v3, :cond_1

    .line 397
    :cond_0
    const-string/jumbo v5, "PicUploadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pic size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    array-length v7, v7

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 394
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 395
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v5, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0
.end method


# virtual methods
.method public a([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "content"    # [B
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 247
    const-string/jumbo v2, "PicUploadManager"

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

    .line 248
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const/4 v2, 0x0

    .line 259
    :goto_0
    return-object v2

    .line 253
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {p1, v2}, Ltb;->b([B[B)[B

    move-result-object v1

    .line 254
    .local v1, "result":[B
    const-string/jumbo v2, "PicUploadManager"

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

    .line 255
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    .end local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PicUploadManager"

    const-string/jumbo v3, "decrypt"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lazs;->e:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lazs;->e:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 206
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lazs;->c:Landroid/content/Context;

    .line 207
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uploadType"    # I
    .param p2, "localId"    # Ljava/lang/String;
    .param p3, "appid"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const-string/jumbo v0, "PicUploadManager"

    const-string/jumbo v1, "no network error"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const v0, 0x35b6a

    invoke-direct {p0, v0}, Lazs;->a(I)V

    .line 113
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-object p3, p0, Lazs;->l:Ljava/lang/String;

    .line 85
    iput p1, p0, Lazs;->b:I

    .line 86
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lazs$1;

    invoke-direct {v1, p0, p2}, Lazs$1;-><init>(Lazs;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .param p1, "encryptKey"    # Ljava/lang/String;

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lazs;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lazs;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
