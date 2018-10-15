.class public Lcom/iflytek/blc/jni/JniBlc;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string/jumbo v0, "Blc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "JniBlc"

    const-string/jumbo v2, "JniBlc | error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method


# virtual methods
.method public native destroy()V
.end method

.method public native enterForeground()V
.end method

.method public native forceLogUpload()V
.end method

.method public native getVersion()Ljava/lang/String;
.end method

.method public native initializeByContent(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public native saveCachedLogs()V
.end method

.method public native setAndroidid(Ljava/lang/String;)V
.end method

.method public native setCellid(Ljava/lang/String;)V
.end method

.method public native setClientCtrlCodeDefaultValue([Ljava/lang/String;[I)V
.end method

.method public native setConnTimeout(I)V
.end method

.method public native setCpu(Ljava/lang/String;)V
.end method

.method public native setDebugable(Z)V
.end method

.method public native setLanguage(Ljava/lang/String;)V
.end method

.method public native setMac(Ljava/lang/String;)V
.end method

.method public native setNetworkStateProvider(Lcom/iflytek/blc/core/NetworkStateProvider;)V
.end method

.method public native setPlatformInfoProvider(Lcom/iflytek/blc/core/PlatformInfoProvider;)V
.end method

.method public native setRecvTimeout(I)V
.end method

.method public native setSendTimeout(I)V
.end method

.method public native setUid(Ljava/lang/String;)V
.end method

.method public native setUserId(Ljava/lang/String;)V
.end method

.method public native setUuid(Ljava/lang/String;)V
.end method

.method public native triggerLogUpload()V
.end method
