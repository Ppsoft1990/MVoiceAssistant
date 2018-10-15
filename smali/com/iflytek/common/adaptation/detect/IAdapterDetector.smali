.class public interface abstract Lcom/iflytek/common/adaptation/detect/IAdapterDetector;
.super Ljava/lang/Object;
.source "IAdapterDetector.java"


# virtual methods
.method public abstract getCallAdapter()Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
.end method

.method public abstract getDataMsgAdapter()Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
.end method

.method public abstract getDetectType()Lcom/iflytek/common/adaptation/detect/DetectType;
.end method

.method public abstract getModeColumnName()Ljava/lang/String;
.end method

.method public abstract getSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
.end method

.method public abstract getTextMsgAdapter()Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
.end method

.method public abstract setOutBoxValue(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;J)V
.end method
