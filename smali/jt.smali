.class public interface abstract Ljt;
.super Ljava/lang/Object;
.source "ViaAsrListener.java"


# virtual methods
.method public abstract onBeginningOfSpeech()V
.end method

.method public abstract onBufferReceived([B)V
.end method

.method public abstract onDownloadCustomData([BI)V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onPartialResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSearchResults(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onSpeechTimeout()V
.end method

.method public abstract onUploadCustomData(Ljava/lang/String;II)V
.end method

.method public abstract onVolumeChanged(I)V
.end method
