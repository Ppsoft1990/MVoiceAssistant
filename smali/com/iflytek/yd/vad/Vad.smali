.class public Lcom/iflytek/yd/vad/Vad;
.super Ljava/lang/Object;


# static fields
.field private static final ERROR_JNILOAD:I = -0x2

.field private static final TAG:Ljava/lang/String; = "SPEECH_Vad"

.field private static final VAD_DEF_SAMPLE:I = 0x3e80

.field private static final VAD_PARAM_APP_KEY:I = 0x100

.field private static final VAD_PARAM_EARLYSTARTENABLE:I = 0x6

.field private static final VAD_PARAM_FEATUREENABLE:I = 0x5

.field private static final VAD_PARAM_RESPONSETIMEOUT:I = 0x0

.field private static final VAD_PARAM_SPEECHTAIL:I = 0x1

.field private static final VAD_PARAM_SPEECHTIMEOUT:I = 0x3

.field private static final VAD_PARAM_VADENABLE:I = 0x4

.field private static mIsJniLoad:Z

.field private static mVadHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    sput-boolean v0, Lcom/iflytek/yd/vad/Vad;->mIsJniLoad:Z

    :try_start_0
    const-string/jumbo v0, "vad2_yd_v4"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/yd/vad/Vad;->mIsJniLoad:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native JniAppendData(I[BI)I
.end method

.method private static native JniCalcVolum()I
.end method

.method private static native JniEndAudioData(I)I
.end method

.method private static native JniFixFetchData(I)I
.end method

.method private static native JniGetCmpFeatureData()[B
.end method

.method private static native JniGetFeatureData()[B
.end method

.method private static native JniGetLastSpeechFirstOut(I)I
.end method

.method private static native JniGetLastSpeechPosEnd(I)I
.end method

.method private static native JniGetLastSpeechPosStart(I)I
.end method

.method private static native JniGetLastSpeechQuality(I)I
.end method

.method private static native JniGetParam(I)I
.end method

.method private static native JniGetWavData()[B
.end method

.method private static native JniInitialize(I)I
.end method

.method private static native JniReset(I)V
.end method

.method private static native JniSetParam(IIILjava/lang/String;)I
.end method

.method private static native JniUninitialize(I)V
.end method

.method public static checkVAD([BILcom/iflytek/yd/speech/vad/VadData;)I
    .locals 2

    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    invoke-static {v0, p0, p1}, Lcom/iflytek/yd/vad/Vad;->JniAppendData(I[BI)I

    move-result v0

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->JniCalcVolum()I

    move-result v1

    iput v1, p2, Lcom/iflytek/yd/speech/vad/VadData;->volumeLevel:I

    goto :goto_0
.end method

.method public static endData()I
    .locals 1

    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    invoke-static {v0}, Lcom/iflytek/yd/vad/Vad;->JniEndAudioData(I)I

    move-result v0

    goto :goto_0
.end method

.method public static fixFetchData(Lcom/iflytek/yd/speech/vad/VadData;)I
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/iflytek/yd/speech/vad/VadData;->wavData:[B

    iput-object v2, p0, Lcom/iflytek/yd/speech/vad/VadData;->feaData:[B

    iput-object v2, p0, Lcom/iflytek/yd/speech/vad/VadData;->cmpFeaData:[B

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    invoke-static {v0}, Lcom/iflytek/yd/vad/Vad;->JniFixFetchData(I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/vad/VadData;->status:I

    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    invoke-static {v0}, Lcom/iflytek/yd/vad/Vad;->JniGetLastSpeechPosStart(I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechStart:I

    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    invoke-static {v0}, Lcom/iflytek/yd/vad/Vad;->JniGetLastSpeechPosEnd(I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechEnd:I

    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    invoke-static {v0}, Lcom/iflytek/yd/vad/Vad;->JniGetLastSpeechQuality(I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechQuality:I

    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    invoke-static {v0}, Lcom/iflytek/yd/vad/Vad;->JniGetLastSpeechFirstOut(I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechFirstOut:I

    const/16 v0, 0xb

    iget v1, p0, Lcom/iflytek/yd/speech/vad/VadData;->status:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->JniGetWavData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/vad/VadData;->wavData:[B

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->JniGetFeatureData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/vad/VadData;->feaData:[B

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->JniGetCmpFeatureData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/vad/VadData;->cmpFeaData:[B

    :goto_1
    iget v0, p0, Lcom/iflytek/yd/speech/vad/VadData;->status:I

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/iflytek/yd/speech/vad/VadData;->wavData:[B

    iput-object v2, p0, Lcom/iflytek/yd/speech/vad/VadData;->feaData:[B

    iput-object v2, p0, Lcom/iflytek/yd/speech/vad/VadData;->cmpFeaData:[B

    goto :goto_1
.end method

.method public static getAppParam()I
    .locals 1

    sget-boolean v0, Lcom/iflytek/yd/vad/Vad;->mIsJniLoad:Z

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/iflytek/yd/vad/Vad;->JniGetParam(I)I

    move-result v0

    goto :goto_0
.end method

.method public static initialize()Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/iflytek/yd/vad/Vad;->mIsJniLoad:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x3e80

    invoke-static {v1}, Lcom/iflytek/yd/vad/Vad;->JniInitialize(I)I

    move-result v1

    sput v1, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    if-eqz v1, :cond_2

    const/16 v1, 0xbb8

    invoke-static {v1}, Lcom/iflytek/yd/vad/Vad;->setBeginPointParam(I)I

    const/16 v1, 0x5dc

    invoke-static {v1}, Lcom/iflytek/yd/vad/Vad;->setEndPointParam(I)I

    const/16 v1, 0x7530

    invoke-static {v1}, Lcom/iflytek/yd/vad/Vad;->setSpeechTimeout(I)I

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->setFeatrueEnable()I

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->setVadEnable()I

    invoke-static {}, Lcom/iflytek/yd/vad/Vad;->setEarlyStartEnable()I

    :cond_2
    const-string/jumbo v1, "SPEECH_Vad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initialize handle="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    invoke-static {v0}, Lcom/iflytek/yd/vad/Vad;->JniReset(I)V

    goto :goto_0
.end method

.method public static setAppParam(Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/iflytek/yd/vad/Vad;->setParam(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setBeginPointParam(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/iflytek/yd/vad/Vad;->setParam(II)I

    move-result v0

    return v0
.end method

.method public static setEarlyStartDisable()I
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/yd/vad/Vad;->setParam(II)I

    move-result v0

    return v0
.end method

.method public static setEarlyStartEnable()I
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/yd/vad/Vad;->setParam(II)I

    move-result v0

    return v0
.end method

.method public static setEndPointParam(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/iflytek/yd/vad/Vad;->setParam(II)I

    move-result v0

    return v0
.end method

.method public static setFeatrueDisable()I
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/yd/vad/Vad;->setParam(II)I

    move-result v0

    return v0
.end method

.method public static setFeatrueEnable()I
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/yd/vad/Vad;->setParam(II)I

    move-result v0

    return v0
.end method

.method private static setParam(II)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/iflytek/yd/vad/Vad;->setParam(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static setParam(IILjava/lang/String;)I
    .locals 4

    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    invoke-static {v0, p0, p1, p2}, Lcom/iflytek/yd/vad/Vad;->JniSetParam(IIILjava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "SPEECH_Vad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setParam id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setSpeechTimeout(I)I
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/iflytek/yd/vad/Vad;->setParam(II)I

    move-result v0

    return v0
.end method

.method public static setVadDisable()I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/yd/vad/Vad;->setParam(II)I

    move-result v0

    return v0
.end method

.method public static setVadEnable()I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/yd/vad/Vad;->setParam(II)I

    move-result v0

    return v0
.end method

.method public static uninitialize()V
    .locals 1

    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    if-eqz v0, :cond_0

    sget v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    invoke-static {v0}, Lcom/iflytek/yd/vad/Vad;->JniUninitialize(I)V

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/iflytek/yd/vad/Vad;->mVadHandle:I

    return-void
.end method
