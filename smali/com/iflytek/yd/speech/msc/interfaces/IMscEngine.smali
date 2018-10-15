.class public interface abstract Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;
.super Ljava/lang/Object;


# virtual methods
.method public abstract endPutData()Z
.end method

.method public abstract getDownTrafficFlow()I
.end method

.method public abstract getErrorCode()I
.end method

.method public abstract getResult()[B
.end method

.method public abstract getResultStatus()Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;
.end method

.method public abstract getSessionParams(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUpTrafficFlow()I
.end method

.method public abstract initialize(Ljava/lang/String;I)Z
.end method

.method public abstract putAudioData([BI)Z
.end method

.method public abstract putText(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract sessionBegin(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract sessionEnd(Ljava/lang/String;)V
.end method

.method public abstract setMspParams(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setSessionParams(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract unInitialize()V
.end method
