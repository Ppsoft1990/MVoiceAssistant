.class public Lcom/iflytek/yd/audio/Speex;
.super Ljava/lang/Object;


# static fields
.field private static mIsJniLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/yd/audio/Speex;->mIsJniLoaded:Z

    :try_start_0
    const-string/jumbo v0, "speex_yd_v1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/yd/audio/Speex;->mIsJniLoaded:Z
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

.method public static appendData([BI)I
    .locals 1

    sget-boolean v0, Lcom/iflytek/yd/audio/Speex;->mIsJniLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/iflytek/yd/audio/Speex;->nativeAppendData([BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static create()I
    .locals 1

    sget-boolean v0, Lcom/iflytek/yd/audio/Speex;->mIsJniLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/yd/audio/Speex;->nativeCreate()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static destroy()I
    .locals 1

    sget-boolean v0, Lcom/iflytek/yd/audio/Speex;->mIsJniLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/yd/audio/Speex;->nativeDestroy()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getWavData()[B
    .locals 1

    sget-boolean v0, Lcom/iflytek/yd/audio/Speex;->mIsJniLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/yd/audio/Speex;->nativeGetWavData()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJniLoaded()Z
    .locals 1

    sget-boolean v0, Lcom/iflytek/yd/audio/Speex;->mIsJniLoaded:Z

    return v0
.end method

.method private static native nativeAppendData([BI)I
.end method

.method private static native nativeCreate()I
.end method

.method private static native nativeDestroy()I
.end method

.method private static native nativeGetWavData()[B
.end method
