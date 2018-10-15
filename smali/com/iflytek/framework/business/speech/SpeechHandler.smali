.class Lcom/iflytek/framework/business/speech/SpeechHandler;
.super Landroid/os/Handler;
.source "SpeechHandler.java"

# interfaces
.implements Lcom/iflytek/yd/speech/ISpeechHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;
    }
.end annotation


# static fields
.field public static final EXTRA_NEED_SAVE_RECORD_FILE:Ljava/lang/String; = "EXTRA_NEED_SAVE_RECORD_FILE"

.field public static final EXTRA_SCENE:Ljava/lang/String; = "EXTRA_SCENE"

.field private static final MODE_IDLE:I = 0x0

.field private static final MODE_INIT:I = 0x1

.field private static final MODE_RECORDING:I = 0x3

.field private static final MODE_START_RECO_REFER:I = 0x2

.field private static final MODE_WAITING_RESULT:I = 0x4

.field private static final MSG_CANCEL_RECOGIZE:I = 0x9

.field private static final MSG_ERROR:I = 0x8

.field private static final MSG_HOLD_MIC_TIMEOUT:I = 0xf

.field private static final MSG_IAT_RESULT:I = 0x6

.field private static final MSG_INIT:I = 0x0

.field private static final MSG_INIT_RECO:I = 0xb

.field private static final MSG_PART_RESULT:I = 0x7

.field private static final MSG_RECORDING:I = 0x3

.field private static final MSG_RECORDOVER:I = 0x4

.field private static final MSG_START_RECO:I = 0x2

.field private static final MSG_START_RECO_REFER:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SpeechHandler"


# instance fields
.field private mAudioFile:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mEncode:Lcom/iflytek/yd/audio/AmrWbEncode;

.field private mIATStatus:I

.field private mITtsListener:Lju;

.field private mIsSaveingRecordFile:Z

.field private mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

.field private mNeedSaveRecordFile:Z

.field private mRecognizer:Lpp;

.field private mRecordFileSize:I

.field private mSpeechEndFlag:Z

.field private mSpeechIntent:Landroid/content/Intent;

.field private mSpeechListener:Ljt;

.field private mSpeechType:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

.field private mStartListener:Lcom/iflytek/yd/speech/SpeechHandlerCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 85
    iput-boolean v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mNeedSaveRecordFile:Z

    .line 90
    iput v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecordFileSize:I

    .line 92
    iput-boolean v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIsSaveingRecordFile:Z

    .line 107
    sget-object v0, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;->speech:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechType:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    .line 121
    iput v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    .line 374
    new-instance v0, Lcom/iflytek/yd/audio/AmrWbEncode;

    invoke-direct {v0}, Lcom/iflytek/yd/audio/AmrWbEncode;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mEncode:Lcom/iflytek/yd/audio/AmrWbEncode;

    .line 379
    new-instance v0, Lcom/iflytek/framework/business/speech/SpeechHandler$2;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/business/speech/SpeechHandler$2;-><init>(Lcom/iflytek/framework/business/speech/SpeechHandler;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechListener:Ljt;

    .line 502
    new-instance v0, Lcom/iflytek/framework/business/speech/SpeechHandler$3;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/business/speech/SpeechHandler$3;-><init>(Lcom/iflytek/framework/business/speech/SpeechHandler;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mITtsListener:Lju;

    .line 131
    iput-object p1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mContext:Landroid/content/Context;

    .line 132
    new-instance v0, Lpp;

    invoke-direct {v0, p1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/business/speech/SpeechHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/framework/business/speech/SpeechHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mNeedSaveRecordFile:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/iflytek/framework/business/speech/SpeechHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->createAudioFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/iflytek/framework/business/speech/SpeechHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mNeedSaveRecordFile:Z

    return p1
.end method

.method static synthetic access$200(Lcom/iflytek/framework/business/speech/SpeechHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 46
    iget v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecordFileSize:I

    return v0
.end method

.method static synthetic access$202(Lcom/iflytek/framework/business/speech/SpeechHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecordFileSize:I

    return p1
.end method

.method static synthetic access$300(Lcom/iflytek/framework/business/speech/SpeechHandler;)Lcom/iflytek/yd/audio/AmrWbEncode;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mEncode:Lcom/iflytek/yd/audio/AmrWbEncode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/framework/business/speech/SpeechHandler;)Lcom/iflytek/yd/speech/SpeechHandlerCallback;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iflytek/framework/business/speech/SpeechHandler;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/iflytek/framework/business/speech/SpeechHandler;)Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechType:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iflytek/framework/business/speech/SpeechHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechEndFlag:Z

    return v0
.end method

.method static synthetic access$702(Lcom/iflytek/framework/business/speech/SpeechHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechEndFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/iflytek/framework/business/speech/SpeechHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 46
    iget v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    return v0
.end method

.method static synthetic access$802(Lcom/iflytek/framework/business/speech/SpeechHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    return p1
.end method

.method static synthetic access$900(Lcom/iflytek/framework/business/speech/SpeechHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIsSaveingRecordFile:Z

    return v0
.end method

.method static synthetic access$902(Lcom/iflytek/framework/business/speech/SpeechHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/SpeechHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIsSaveingRecordFile:Z

    return p1
.end method

.method private createAudioFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    const-string/jumbo v0, ""

    .line 546
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {}, Lhl;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->createAudioFileInSDCard()Ljava/lang/String;

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    .line 549
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->createAudioFileInInternalStorage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createAudioFileInInternalStorage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 581
    invoke-static {}, Lcom/iflytek/framework/business/speech/SpeechHandler;->getAudioFileName()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "fileName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->createAudioFileInInternalStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createAudioFileInInternalStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 586
    const-string/jumbo v0, ""

    .line 587
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {}, Lhl;->q()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "\u751f\u6210\u5f69\u4fe1\u6587\u4ef6\u5931\u8d25"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 591
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 598
    :cond_0
    :goto_0
    return-object v0

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u591f"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 595
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private createAudioFileInSDCard()Ljava/lang/String;
    .locals 7

    .prologue
    .line 559
    invoke-static {}, Lhl;->s()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "dir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 562
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 565
    :cond_0
    const-string/jumbo v4, ""

    .line 566
    .local v4, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/framework/business/speech/SpeechHandler;->getAudioFileName()Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mAudioFile:Ljava/io/File;

    .line 570
    :try_start_0
    iget-object v5, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mAudioFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 577
    :goto_0
    return-object v4

    .line 572
    :catch_0
    move-exception v1

    .line 573
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "SpeechHandler"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    invoke-direct {p0, v3}, Lcom/iflytek/framework/business/speech/SpeechHandler;->createAudioFileInInternalStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private enterStartRecoSpeechState()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mStartListener:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    instance-of v0, v0, Lapa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mStartListener:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eq v0, v1, :cond_0

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mStartListener:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    .line 371
    :goto_0
    return-void

    .line 361
    :cond_0
    iget v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 362
    const-string/jumbo v0, "SpeechHandler"

    const-string/jumbo v1, "iat status not init"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    .line 367
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInSNState()V

    .line 370
    :cond_2
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private static getAudioFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MmsAudioFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".amr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initRecognize()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mStartListener:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    instance-of v0, v0, Lapa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mStartListener:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eq v0, v1, :cond_0

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mStartListener:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    .line 347
    :goto_0
    return-void

    .line 334
    :cond_0
    iget v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 335
    const-string/jumbo v0, "SpeechHandler"

    const-string/jumbo v1, "speech mode is not right "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :cond_1
    const-string/jumbo v0, "SpeechHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSpeechListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechListener:Ljt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v0

    invoke-virtual {v0}, Lig;->acquireDelayWakeLock()V

    .line 344
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechListener:Ljt;

    invoke-virtual {v0, v1, v2}, Lpp;->a(Landroid/content/Intent;Ljt;)V

    .line 346
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lwh;->a(Landroid/content/Context;)Lwh;

    move-result-object v0

    invoke-virtual {v0}, Lwh;->a()V

    goto :goto_0
.end method


# virtual methods
.method public cancelTextSearch()V
    .locals 2

    .prologue
    .line 758
    const-string/jumbo v0, "SpeechHandler"

    const-string/jumbo v1, " cancelTextSearch and set to idle "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    .line 761
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechListener:Ljt;

    invoke-virtual {v0, v1}, Lpp;->b(Ljt;)V

    .line 765
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 766
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 602
    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mAudioFile:Ljava/io/File;

    .line 603
    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mContext:Landroid/content/Context;

    .line 604
    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mEncode:Lcom/iflytek/yd/audio/AmrWbEncode;

    .line 605
    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mITtsListener:Lju;

    .line 606
    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    .line 607
    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    .line 608
    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    .line 609
    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechListener:Ljt;

    .line 610
    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechType:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    .line 611
    return-void
.end method

.method public closeRecordFile()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 721
    iput-boolean v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mNeedSaveRecordFile:Z

    .line 722
    iput-boolean v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIsSaveingRecordFile:Z

    .line 723
    iput v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecordFileSize:I

    .line 724
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mEncode:Lcom/iflytek/yd/audio/AmrWbEncode;

    invoke-virtual {v0}, Lcom/iflytek/yd/audio/AmrWbEncode;->close()I

    .line 725
    return-void
.end method

.method public deleteRecordFile()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 729
    iput-boolean v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mNeedSaveRecordFile:Z

    .line 730
    iput-boolean v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIsSaveingRecordFile:Z

    .line 731
    iput v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecordFileSize:I

    .line 732
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mAudioFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mAudioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mAudioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 737
    :cond_0
    return-void
.end method

.method protected enterErrorState(III)V
    .locals 2
    .param p1, "errTitleId"    # I
    .param p2, "errDetailId"    # I
    .param p3, "errId"    # I

    .prologue
    .line 311
    const-string/jumbo v0, "SpeechHandler"

    const-string/jumbo v1, "enterErrorState and set to idle "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v0

    invoke-virtual {v0}, Lauy;->b()V

    .line 315
    iget v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->stop()V

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInErrorState(III)V

    .line 322
    :cond_1
    return-void
.end method

.method protected enterInitState(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 248
    const-string/jumbo v3, "SpeechHandler"

    const-string/jumbo v4, "enterInitState"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v3, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mStartListener:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    instance-of v3, v3, Lapa;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mStartListener:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    iget-object v4, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eq v3, v4, :cond_0

    .line 253
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mStartListener:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    .line 273
    :goto_0
    return-void

    .line 257
    :cond_0
    iget v3, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    if-eqz v3, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->stop()V

    .line 260
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_OPEN_SPEECHTEST_SERVICE"

    invoke-virtual {v3, v4, v1}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 261
    invoke-static {}, Lpu;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    move v0, v2

    .line 262
    .local v0, "currOpenState":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 264
    iget-object v3, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v4, "web_scene"

    const-string/jumbo v5, "all"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    :cond_3
    iput v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    .line 267
    iput-boolean v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechEndFlag:Z

    .line 268
    sget-object v1, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;->speech:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    iput-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechType:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    .line 269
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v1, :cond_4

    .line 270
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInInitState(Landroid/content/Intent;)V

    .line 272
    :cond_4
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/business/speech/SpeechHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v0    # "currOpenState":Z
    :cond_5
    move v0, v1

    .line 261
    goto :goto_1
.end method

.method protected enterRecordingState()V
    .locals 2

    .prologue
    .line 279
    const-string/jumbo v0, "SpeechHandler"

    const-string/jumbo v1, "enterRecordState and set to record "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 281
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    .line 282
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInRecodingState()V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const-string/jumbo v0, "SpeechHandler"

    const-string/jumbo v1, "enterRecordingState status is not start reco refer"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->stop()V

    goto :goto_0
.end method

.method protected enterWaitingResultState()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 295
    iput v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    .line 296
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechListener:Ljt;

    .line 297
    invoke-virtual {v0, v1}, Lpp;->d(Ljt;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechListener:Ljt;

    invoke-virtual {v0, v1}, Lpp;->a(Ljt;)V

    .line 300
    :cond_0
    invoke-virtual {p0, v2}, Lcom/iflytek/framework/business/speech/SpeechHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 301
    return-void
.end method

.method public getSpeechHandlerMode()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 150
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 241
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 152
    :pswitch_1
    const-string/jumbo v7, "SpeechHandler"

    const-string/jumbo v8, "MSG_INIT ----------------- "

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/business/speech/SpeechHandler;->enterInitState(Landroid/os/Message;)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setInteractionStartTime(J)V

    goto :goto_0

    .line 158
    :pswitch_2
    const-string/jumbo v7, "SpeechHandler"

    const-string/jumbo v8, "MSG_START_REFER ---------------- "

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->enterStartRecoSpeechState()V

    goto :goto_0

    .line 162
    :pswitch_3
    const-string/jumbo v7, "SpeechHandler"

    const-string/jumbo v8, "MSG_INIT_RECO ----------------- "

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->initRecognize()V

    goto :goto_0

    .line 166
    :pswitch_4
    const-string/jumbo v7, "SpeechHandler"

    const-string/jumbo v8, "MSG_START_RECO ---------------- "

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->enterRecordingState()V

    goto :goto_0

    .line 170
    :pswitch_5
    const-string/jumbo v7, "SpeechHandler"

    const-string/jumbo v8, "MSG_PART_RESULT"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 172
    .local v3, "partList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v4, 0x0

    .line 173
    .local v4, "partResults":[Lcom/iflytek/yd/speech/ViaAsrResult;
    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v7, :cond_0

    .line 174
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 175
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 176
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 177
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/yd/speech/ViaAsrResult;

    aput-object v7, v4, v2

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    .end local v2    # "i":I
    :cond_1
    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v7, v4}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto :goto_0

    .line 184
    .end local v3    # "partList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    .end local v4    # "partResults":[Lcom/iflytek/yd/speech/ViaAsrResult;
    :pswitch_6
    const-string/jumbo v7, "SpeechHandler"

    const-string/jumbo v8, "MSG_IAT_RESULT"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lpu;->a(J)V

    .line 186
    const-string/jumbo v7, "SpeechHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mOnResultTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lpu;->h()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v7, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/iflytek/framework/business/speech/SpeechHandler$1;

    invoke-direct {v8, p0}, Lcom/iflytek/framework/business/speech/SpeechHandler$1;-><init>(Lcom/iflytek/framework/business/speech/SpeechHandler;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 194
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 195
    .local v5, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v7, 0x0

    iput v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    .line 196
    const/4 v6, 0x0

    .line 197
    .local v6, "results":[Lcom/iflytek/yd/speech/ViaAsrResult;
    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v7, :cond_0

    .line 198
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 199
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 200
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 201
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/yd/speech/ViaAsrResult;

    aput-object v7, v6, v2

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 204
    .end local v2    # "i":I
    :cond_2
    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v7, v6}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 205
    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v7}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIAfterResult()V

    goto/16 :goto_0

    .line 209
    .end local v5    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    .end local v6    # "results":[Lcom/iflytek/yd/speech/ViaAsrResult;
    :pswitch_7
    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v7, :cond_0

    .line 210
    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v8}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInRecodingState(I)V

    goto/16 :goto_0

    .line 214
    :pswitch_8
    const-string/jumbo v7, "SpeechHandler"

    const-string/jumbo v8, "MSG_RECORDOVER------------------- "

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v7, :cond_0

    .line 216
    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v7}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInWaitingResultState()V

    goto/16 :goto_0

    .line 220
    :pswitch_9
    const-string/jumbo v7, "SpeechHandler"

    const-string/jumbo v8, "MSG_ERROR------------------- "

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Lcom/iflytek/framework/business/speech/ErrorCode;->parseSpeechError(I)Lcom/iflytek/framework/business/speech/ErrorCode;

    move-result-object v1

    .line 222
    .local v1, "errorCode":Lcom/iflytek/framework/business/speech/ErrorCode;
    invoke-virtual {v1}, Lcom/iflytek/framework/business/speech/ErrorCode;->getDetailId()I

    move-result v0

    .line 223
    .local v0, "detailId":I
    const v7, 0x7f0c02ff

    if-ne v0, v7, :cond_3

    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechType:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    sget-object v8, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;->text:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    if-ne v7, v8, :cond_3

    .line 224
    const v0, 0x7f0c02fc

    .line 226
    :cond_3
    invoke-virtual {v1}, Lcom/iflytek/framework/business/speech/ErrorCode;->getResId()I

    move-result v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v7, v0, v8}, Lcom/iflytek/framework/business/speech/SpeechHandler;->enterErrorState(III)V

    goto/16 :goto_0

    .line 229
    .end local v0    # "detailId":I
    .end local v1    # "errorCode":Lcom/iflytek/framework/business/speech/ErrorCode;
    :pswitch_a
    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v7, :cond_0

    .line 230
    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v7}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInCancelState()V

    goto/16 :goto_0

    .line 234
    :pswitch_b
    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v7, :cond_0

    .line 235
    iget-object v7, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v7}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInTimeout()V

    goto/16 :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportOffLine()Z
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    invoke-virtual {v0}, Lpp;->a()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 741
    iput-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    .line 742
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    invoke-virtual {v0}, Lpp;->c()V

    .line 743
    invoke-virtual {p0, v1}, Lcom/iflytek/framework/business/speech/SpeechHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 744
    return-void
.end method

.method public setCallback(Lcom/iflytek/yd/speech/SpeechHandlerCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    .line 616
    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 1
    .param p1, "speechIntent"    # Landroid/content/Intent;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mListenner:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    iput-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mStartListener:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    .line 621
    iput-object p1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 623
    return-void
.end method

.method public startTextSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "focus"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "entry"    # Ljava/lang/String;

    .prologue
    .line 628
    invoke-static {}, Lpu;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lpu;->b(J)V

    .line 631
    const-string/jumbo v2, "SpeechHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startTextSearch  mStartTextSearchTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lpu;->i()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v0

    .line 634
    .local v0, "wakeupHelper":Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;
    if-eqz v0, :cond_1

    .line 635
    invoke-virtual {v0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->h()V

    .line 637
    :cond_1
    if-eqz p3, :cond_3

    const-string/jumbo v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 638
    const/4 v2, 0x3

    iput v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    .line 640
    sget-object v2, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;->text:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    iput-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechType:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    .line 641
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    .line 642
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v3, "engine_type"

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    const-string/jumbo v1, "website|other"

    .line 645
    .local v1, "webFocus":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 646
    const-string/jumbo p1, "websearch"

    .line 660
    :cond_2
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v3, "web_scene"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v3, "search_text"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v3, "is_play_result_tone"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 663
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v3, "search_entry"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v3, "web_action"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    iget-object v3, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechListener:Ljt;

    invoke-virtual {v2, v3, v4}, Lpp;->b(Landroid/content/Intent;Ljt;)V

    .line 667
    invoke-virtual {p0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->stopRecording()V

    .line 669
    .end local v1    # "webFocus":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 701
    const-string/jumbo v0, "SpeechHandler"

    const-string/jumbo v1, " enterCancelState and set to idle "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    .line 704
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v0

    invoke-virtual {v0}, Lauy;->b()V

    .line 706
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    if-eqz v0, :cond_0

    .line 707
    const-string/jumbo v0, "SpeechHandler"

    const-string/jumbo v1, "cancel Recognize"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechListener:Ljt;

    invoke-virtual {v0, v1}, Lpp;->c(Ljt;)V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    if-eqz v0, :cond_1

    .line 712
    const-string/jumbo v0, "SpeechHandler"

    const-string/jumbo v1, "stopSpeak"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mRecognizer:Lpp;

    iget-object v1, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mITtsListener:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 716
    :cond_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 717
    return-void
.end method

.method public stopRecording()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 674
    :try_start_0
    sget-object v2, Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;->speech:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    iget-object v3, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechType:Lcom/iflytek/framework/business/speech/SpeechHandler$SpeechType;

    if-ne v2, v3, :cond_1

    .line 675
    iget-boolean v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechEndFlag:Z

    if-nez v2, :cond_0

    .line 677
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v2

    const-string/jumbo v3, "1014"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lvr;->a(Ljava/lang/String;I)V

    .line 681
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechEndFlag:Z

    .line 684
    :cond_1
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    if-nez v2, :cond_2

    .line 685
    .local v1, "isReUpload":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 686
    invoke-virtual {p0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->enterWaitingResultState()V

    .line 697
    .end local v1    # "isReUpload":Z
    :goto_1
    return-void

    .line 684
    :cond_2
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v3, "is_reupload"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 688
    .restart local v1    # "isReUpload":Z
    :cond_3
    iget v2, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 689
    invoke-virtual {p0}, Lcom/iflytek/framework/business/speech/SpeechHandler;->enterWaitingResultState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 694
    .end local v1    # "isReUpload":Z
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SpeechHandler"

    const-string/jumbo v3, "\u7ed3\u675f\u5f55\u97f3\u51fa\u9519"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 691
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isReUpload":Z
    :cond_4
    :try_start_1
    const-string/jumbo v2, "SpeechHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIATStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/iflytek/framework/business/speech/SpeechHandler;->mIATStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
