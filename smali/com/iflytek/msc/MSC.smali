.class public Lcom/iflytek/msc/MSC;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    sput-boolean v4, Lcom/iflytek/msc/MSC;->a:Z

    invoke-static {}, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->getLibName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/iflytek/msc/MSC;->a:Z

    const-string/jumbo v1, "MSC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadLibrary "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " OK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v1, "MSC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadLibrary "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " UnsatisfiedLinkError"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/iflytek/msc/MSC;->a:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native DebugLog(Z)I
.end method

.method public static native QHCRDataWrite([C[B[BII)I
.end method

.method public static native QHCRFini()I
.end method

.method public static native QHCRGetResult([C[BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QHCRInit([B)I
.end method

.method public static native QHCRLogEvent([C[B[B)I
.end method

.method public static native QHCRSessionBegin([BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static native QHCRSessionEnd([C[B)I
.end method

.method public static native QISEAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static native QISEFini()I
.end method

.method public static native QISEGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QISEGetResult([CLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QISEInit([B)I
.end method

.method public static final native QISESessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static native QISESessionEnd([C[B)I
.end method

.method public static native QISETextPut([C[B[B)I
.end method

.method public static native QISRAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static native QISRFini()I
.end method

.method public static native QISRGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QISRGetResult([CLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QISRGrammarActivate([C[B[B)I
.end method

.method public static native QISRInit([B)I
.end method

.method public static native QISRLogEvent([C[B[B)I
.end method

.method public static final native QISRSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static native QISRSessionEnd([C[B)I
.end method

.method public static native QISRSetParam([C[B[B)I
.end method

.method public static native QISRUploadData([C[B[BI[BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QISVAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QISVAudioWrite([C[C[BIILcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static native QISVFini()I
.end method

.method public static final native QISVGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QISVGetResult([C[CLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QISVInit([B)I
.end method

.method public static final native QISVQueDelModel([B[BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static final native QISVQueDelModelRelease([C)I
.end method

.method public static native QISVRGetResult([CLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QISVSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static native QISVSessionEnd([C[B)I
.end method

.method public static native QMSPDownloadData([BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QMSPGetParam([BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QMSPGetVersion([BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QMSPLogOut()I
.end method

.method public static native QMSPLogin([B[B[B)I
.end method

.method public static native QMSPRegisterNotify(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native QMSPSearch([B[BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QMSPSetParam([B[B)I
.end method

.method public static native QMSPUploadData([B[BI[BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QTTSAudioGet([CLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static native QTTSAudioInfo([C)[C
.end method

.method public static native QTTSFini()I
.end method

.method public static native QTTSGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static native QTTSInit([B)I
.end method

.method public static final native QTTSSessionBegin([BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static native QTTSSessionEnd([C[B)I
.end method

.method public static native QTTSTextPut([C[B)I
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/iflytek/msc/MSC;->a:Z

    return v0
.end method
