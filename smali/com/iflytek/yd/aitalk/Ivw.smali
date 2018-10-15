.class public Lcom/iflytek/yd/aitalk/Ivw;
.super Ljava/lang/Object;
.source "Ivw.java"

# interfaces
.implements Lcom/iflytek/yd/aitalk/IIvwAccessor;


# static fields
.field private static mIsInited:Z

.field private static mIsJniLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    sput-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsJniLoaded:Z

    .line 23
    sput-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsInited:Z

    .line 31
    :try_start_0
    const-string/jumbo v1, "ivw3_yd_v4"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x1

    sput-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsJniLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 33
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 34
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native JniAppendData([BI)I
.end method

.method public static native JniCreate([BILjava/lang/String;)I
.end method

.method public static native JniDestroy()I
.end method

.method public static native JniGetResult()I
.end method

.method public static native JniGetResultCm()I
.end method

.method public static native JniReset()I
.end method

.method public static native JniSetParam(II)I
.end method

.method public static isJniLoaded()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/iflytek/yd/aitalk/Ivw;->mIsJniLoaded:Z

    return v0
.end method

.method public static loadLibrary(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-boolean v0, Lcom/iflytek/yd/aitalk/Ivw;->mIsJniLoaded:Z

    return v0
.end method

.method public static onCallMessage(I)I
    .locals 1
    .param p0, "msgType"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public static onCallResult(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public appendData([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 128
    const/4 v0, -0x1

    .line 129
    .local v0, "ret":I
    sget-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsJniLoaded:Z

    if-eqz v1, :cond_0

    .line 130
    sget-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsInited:Z

    if-eqz v1, :cond_0

    .line 131
    invoke-static {p1, p2}, Lcom/iflytek/yd/aitalk/Ivw;->JniAppendData([BI)I

    move-result v0

    .line 134
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public getResult()I
    .locals 2

    .prologue
    .line 139
    const/4 v0, -0x1

    .line 140
    .local v0, "ret":I
    sget-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsJniLoaded:Z

    if-eqz v1, :cond_0

    .line 141
    sget-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsInited:Z

    if-eqz v1, :cond_0

    .line 142
    invoke-static {}, Lcom/iflytek/yd/aitalk/Ivw;->JniGetResult()I

    move-result v0

    .line 145
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public getResultCm()I
    .locals 1

    .prologue
    .line 182
    sget-boolean v0, Lcom/iflytek/yd/aitalk/Ivw;->mIsJniLoaded:Z

    if-eqz v0, :cond_0

    .line 183
    sget-boolean v0, Lcom/iflytek/yd/aitalk/Ivw;->mIsInited:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/iflytek/yd/aitalk/Ivw;->JniGetResultCm()I

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init([BILjava/lang/String;)I
    .locals 2
    .param p1, "res"    # [B
    .param p2, "resLength"    # I
    .param p3, "cacheFilePath"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v0, -0x1

    .line 151
    .local v0, "ret":I
    sget-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsJniLoaded:Z

    if-eqz v1, :cond_1

    .line 152
    sget-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsInited:Z

    if-eqz v1, :cond_0

    .line 153
    invoke-static {}, Lcom/iflytek/yd/aitalk/Ivw;->JniDestroy()I

    .line 155
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/iflytek/yd/aitalk/Ivw;->JniCreate([BILjava/lang/String;)I

    move-result v0

    .line 156
    invoke-static {}, Lcom/iflytek/yd/aitalk/Ivw;->JniReset()I

    .line 157
    if-nez v0, :cond_2

    .line 158
    const/4 v1, 0x1

    sput-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsInited:Z

    .line 163
    :cond_1
    :goto_0
    return v0

    .line 160
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsInited:Z

    goto :goto_0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 168
    sget-boolean v0, Lcom/iflytek/yd/aitalk/Ivw;->mIsInited:Z

    return v0
.end method

.method public release()I
    .locals 2

    .prologue
    .line 103
    const/4 v0, -0x1

    .line 104
    .local v0, "ret":I
    sget-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsJniLoaded:Z

    if-eqz v1, :cond_0

    .line 105
    sget-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsInited:Z

    if-eqz v1, :cond_0

    .line 106
    invoke-static {}, Lcom/iflytek/yd/aitalk/Ivw;->JniDestroy()I

    move-result v0

    .line 107
    const/4 v1, 0x0

    sput-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsInited:Z

    .line 110
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 173
    sget-boolean v0, Lcom/iflytek/yd/aitalk/Ivw;->mIsJniLoaded:Z

    if-eqz v0, :cond_0

    .line 174
    sget-boolean v0, Lcom/iflytek/yd/aitalk/Ivw;->mIsInited:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/iflytek/yd/aitalk/Ivw;->JniReset()I

    .line 178
    :cond_0
    return-void
.end method

.method public setParamer(III)I
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # I
    .param p3, "wordId"    # I

    .prologue
    .line 115
    const/4 v0, -0x1

    .line 116
    .local v0, "ret":I
    sget-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsJniLoaded:Z

    if-eqz v1, :cond_0

    .line 117
    sget-boolean v1, Lcom/iflytek/yd/aitalk/Ivw;->mIsInited:Z

    if-eqz v1, :cond_0

    .line 118
    invoke-static {p1, p2}, Lcom/iflytek/yd/aitalk/Ivw;->JniSetParam(II)I

    move-result v0

    .line 121
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method
