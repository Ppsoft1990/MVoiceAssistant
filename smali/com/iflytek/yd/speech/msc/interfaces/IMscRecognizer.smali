.class public interface abstract Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;
.super Ljava/lang/Object;


# virtual methods
.method public abstract abortRecognize(I)V
.end method

.method public abstract beginRecognize(Ljava/lang/String;Ljava/lang/String;IILcom/iflytek/yd/speech/msc/interfaces/MscType;)V
.end method

.method public abstract downloadData(Ljava/lang/String;)V
.end method

.method public abstract getErrCode()I
.end method

.method public abstract getErrDetail()Ljava/lang/String;
.end method

.method public abstract getLoginId()Ljava/lang/String;
.end method

.method public abstract getMspParams(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionToken()I
.end method

.method public abstract initialize(Ljava/lang/String;I)V
.end method

.method public abstract isIdle()Z
.end method

.method public abstract isRuning()Z
.end method

.method public abstract notifyRecordClose()V
.end method

.method public abstract notifyRecordData()V
.end method

.method public abstract notifyRecordOpen()V
.end method

.method public abstract notifyRecordReady()V
.end method

.method public abstract notifyRecordStop(I)V
.end method

.method public abstract notifyUiFirstShow()V
.end method

.method public abstract notifyUiLastShow()V
.end method

.method public abstract notifyVadAppend(I)V
.end method

.method public abstract notifyVadEnd()V
.end method

.method public abstract notifyVadOut(I)V
.end method

.method public abstract notifyVadPos(III)V
.end method

.method public abstract putRecordData([BI)V
.end method

.method public abstract reinitialize()V
.end method

.method public abstract searchText(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMspParams(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract stopRecognize()V
.end method

.method public abstract uninitialize()V
.end method

.method public abstract uploadCantoneseData(Ljava/lang/String;)Z
.end method

.method public abstract uploadData2([Ljava/lang/String;Ljava/lang/String;I)Z
.end method
