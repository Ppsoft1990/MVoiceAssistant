.class public interface abstract Lcom/iflytek/blc/core/BlcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract enterForeground()V
.end method

.method public abstract forceLogUpload()V
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/core/SimInfoHelper;)V
.end method

.method public abstract initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract saveCachedLogs()V
.end method

.method public abstract setAndroidid(Ljava/lang/String;)V
.end method

.method public abstract setCellid(Ljava/lang/String;)V
.end method

.method public abstract setClientCtrlCodeDefaultValue(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setConnTimeout(I)V
.end method

.method public abstract setCpu(Ljava/lang/String;)V
.end method

.method public abstract setDebugable(Z)V
.end method

.method public abstract setLanguage(Ljava/lang/String;)V
.end method

.method public abstract setMac(Ljava/lang/String;)V
.end method

.method public abstract setRecvTimeout(I)V
.end method

.method public abstract setSendTimeout(I)V
.end method

.method public abstract setSimInfoHelper(Landroid/content/Context;Lcom/iflytek/blc/core/SimInfoHelper;)V
.end method

.method public abstract setUid(Ljava/lang/String;)V
.end method

.method public abstract setUserId(Ljava/lang/String;)V
.end method

.method public abstract setUuid(Ljava/lang/String;)V
.end method

.method public abstract triggerLogUpload()V
.end method
