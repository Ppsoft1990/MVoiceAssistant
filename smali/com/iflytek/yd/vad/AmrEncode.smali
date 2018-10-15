.class public Lcom/iflytek/yd/vad/AmrEncode;
.super Ljava/lang/Object;


# static fields
.field private static mIsloaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/yd/vad/AmrEncode;->mIsloaded:Z

    :try_start_0
    const-string/jumbo v0, "audio_yd_v1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/yd/vad/AmrEncode;->mIsloaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dinit()I
    .locals 1

    sget-boolean v0, Lcom/iflytek/yd/vad/AmrEncode;->mIsloaded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/yd/vad/AmrEncode;->nativeDinit()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static init(I)I
    .locals 1

    sget-boolean v0, Lcom/iflytek/yd/vad/AmrEncode;->mIsloaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/iflytek/yd/vad/AmrEncode;->nativeInit(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static input([BI)[B
    .locals 1

    sget-boolean v0, Lcom/iflytek/yd/vad/AmrEncode;->mIsloaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/iflytek/yd/vad/AmrEncode;->nativeInput([BI)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJniLoaded()Z
    .locals 1

    sget-boolean v0, Lcom/iflytek/yd/vad/AmrEncode;->mIsloaded:Z

    return v0
.end method

.method private static native nativeDinit()I
.end method

.method private static native nativeInit(I)I
.end method

.method private static native nativeInput([BI)[B
.end method
