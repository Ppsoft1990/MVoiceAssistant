.class public Lje;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lje$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lid;

.field private e:Lje$a;

.field private f:Landroid/os/Looper;

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x28a

    iput v0, p0, Lje;->c:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lje;->g:I

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lje;->h:J

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lje;->b:Landroid/content/Context;

    .line 90
    return-void
.end method

.method static synthetic a(Lje;)Lid;
    .locals 1
    .param p0, "x0"    # Lje;

    .prologue
    .line 31
    iget-object v0, p0, Lje;->d:Lid;

    return-object v0
.end method

.method static synthetic a(Lje;Lid;)Lid;
    .locals 0
    .param p0, "x0"    # Lje;
    .param p1, "x1"    # Lid;

    .prologue
    .line 31
    iput-object p1, p0, Lje;->d:Lid;

    return-object p1
.end method

.method static synthetic a(Lje;I)[B
    .locals 1
    .param p0, "x0"    # Lje;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lje;->c(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lje;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lje;

    .prologue
    .line 31
    iget-object v0, p0, Lje;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c(I)[B
    .locals 8
    .param p1, "type"    # I

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "buffer":[B
    iget-object v5, p0, Lje;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 326
    .local v4, "resId":Ljava/lang/Integer;
    if-nez v4, :cond_0

    .line 327
    const-string/jumbo v5, "SPEECH_SoundManagerV2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readToneData null type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v5, 0x0

    .line 349
    :goto_0
    return-object v5

    .line 332
    :cond_0
    :try_start_0
    iget-object v5, p0, Lje;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 333
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 332
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 336
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    add-int/lit8 v5, v5, -0x2c

    iget-object v6, p0, Lje;->d:Lid;

    .line 337
    invoke-virtual {v6}, Lid;->f()I

    move-result v6

    add-int v1, v5, v6

    .line 338
    .local v1, "buffer_len":I
    new-array v0, v1, [B

    .line 339
    const/4 v5, 0x0

    const/16 v6, 0x2c

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    .line 340
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 341
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v1    # "buffer_len":I
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :goto_1
    move-object v5, v0

    .line 349
    goto :goto_0

    .line 342
    :catch_0
    move-exception v2

    .line 343
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "SPEECH_SoundManagerV2"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 344
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 345
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v5, "SPEECH_SoundManagerV2"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 346
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v2

    .line 347
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SPEECH_SoundManagerV2"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    .line 210
    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->KUPAI_5880:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->SAMSUNGI909:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->HAIRE_N88W:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->MI_2:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    :cond_0
    const/16 v1, 0x320

    iput v1, p0, Lje;->c:I

    .line 219
    :cond_1
    :goto_0
    invoke-static {}, Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;->getStartToneDelay()I

    move-result v0

    .line 220
    .local v0, "adapterDelay":I
    if-lez v0, :cond_2

    const/16 v1, 0x514

    if-ge v0, v1, :cond_2

    .line 221
    iput v0, p0, Lje;->c:I

    .line 223
    :cond_2
    iget v1, p0, Lje;->c:I

    add-int/lit16 v1, v1, -0x82

    iput v1, p0, Lje;->c:I

    .line 224
    const-string/jumbo v1, "SPEECH_SoundManagerV2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " tone delay time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lje;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 215
    .end local v0    # "adapterDelay":I
    :cond_3
    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->SAMSUNGI9308:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->SAMSUNGN719:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    :cond_4
    const/16 v1, 0x1c2

    iput v1, p0, Lje;->c:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lje;->a:Ljava/util/HashMap;

    .line 99
    invoke-direct {p0}, Lje;->e()V

    .line 100
    iget-object v1, p0, Lje;->b:Landroid/content/Context;

    invoke-static {v1}, Lid;->a(Landroid/content/Context;)Lid;

    move-result-object v1

    iput-object v1, p0, Lje;->d:Lid;

    .line 102
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SPEECH_SoundManagerV2"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "thread":Landroid/os/HandlerThread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 104
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 105
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lje;->f:Landroid/os/Looper;

    .line 106
    new-instance v1, Lje$a;

    iget-object v2, p0, Lje;->f:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lje$a;-><init>(Lje;Landroid/os/Looper;)V

    iput-object v1, p0, Lje;->e:Lje$a;

    .line 107
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 124
    iput p1, p0, Lje;->g:I

    .line 125
    return-void
.end method

.method public a([I)V
    .locals 4
    .param p1, "res"    # [I

    .prologue
    .line 133
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 135
    iget-object v1, p0, Lje;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lje;->c:I

    return v0
.end method

.method public b(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 148
    .local v1, "tone":Ljava/lang/Integer;
    iget-object v2, p0, Lje;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 149
    .local v0, "resId":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 150
    const-string/jumbo v2, "SPEECH_SoundManagerV2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "playSound not res type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 153
    :cond_0
    iget v2, p0, Lje;->g:I

    if-nez v2, :cond_1

    .line 154
    const-string/jumbo v2, "SPEECH_SoundManagerV2"

    const-string/jumbo v3, "playSound not play,PLAY_FLAG_NONE"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_1
    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_3

    .line 158
    :cond_2
    iget v2, p0, Lje;->g:I

    if-ne v2, v3, :cond_3

    .line 159
    const-string/jumbo v2, "SPEECH_SoundManagerV2"

    const-string/jumbo v3, "playSound not play,PLAY_FLAG_RESULT"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_3
    iget-object v2, p0, Lje;->e:Lje$a;

    invoke-virtual {v2, p1}, Lje$a;->a(I)V

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lje;->h:J

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lje;->e:Lje$a;

    invoke-virtual {v0}, Lje$a;->a()V

    .line 173
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    .line 188
    iget v2, p0, Lje;->g:I

    if-eqz v2, :cond_0

    iget v2, p0, Lje;->g:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x0

    .line 193
    .local v0, "count":I
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lje;->h:J

    sub-long/2addr v2, v4

    iget v4, p0, Lje;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 195
    const-wide/16 v2, 0x14

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 196
    add-int/lit8 v0, v0, 0x14

    .line 197
    iget v2, p0, Lje;->c:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, v2, :cond_2

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
