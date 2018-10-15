.class public interface abstract Lcom/iflytek/common/adaptation/ISimInfoAdaptation;
.super Ljava/lang/Object;
.source "ISimInfoAdaptation.java"


# virtual methods
.method public abstract getCellLocation(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
.end method

.method public abstract getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
.end method

.method public abstract getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
.end method

.method public abstract getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
.end method

.method public abstract getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
.end method

.method public abstract getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
.end method

.method public abstract getSystemCallSetting()Lcom/iflytek/common/adaptation/entity/SystemSettings;
.end method

.method public abstract getSystemSmsSetting()Lcom/iflytek/common/adaptation/entity/SystemSettings;
.end method

.method public abstract isDoubleCard()Z
.end method

.method public abstract isSameAsSystemSettings()Z
.end method
