.class public interface abstract Lqu;
.super Ljava/lang/Object;
.source "UpdateUIListener.java"


# virtual methods
.method public abstract handleLastResult(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleParticalResult(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract speechViewUpdateAfterResult()V
.end method

.method public abstract speechViewUpdateInCancelState()V
.end method

.method public abstract speechViewUpdateInErrorState(III)Z
.end method

.method public abstract speechViewUpdateInInitState()V
.end method

.method public abstract speechViewUpdateInRecodingState()V
.end method

.method public abstract speechViewUpdateInSNState()V
.end method

.method public abstract speechViewUpdateInWaitingResultState()V
.end method
