.class public interface abstract Lcom/iflytek/yd/speech/SpeechHandlerCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
.end method

.method public abstract handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
.end method

.method public abstract updateUIAfterResult()V
.end method

.method public abstract updateUIInCancelState()V
.end method

.method public abstract updateUIInErrorState(III)V
.end method

.method public abstract updateUIInInitState(Landroid/content/Intent;)V
.end method

.method public abstract updateUIInRecodingState()V
.end method

.method public abstract updateUIInRecodingState(I)V
.end method

.method public abstract updateUIInSNState()V
.end method

.method public abstract updateUIInTimeout()V
.end method

.method public abstract updateUIInWaitingResultState()V
.end method
