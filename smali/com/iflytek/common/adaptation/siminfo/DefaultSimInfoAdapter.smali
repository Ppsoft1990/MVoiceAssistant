.class public Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;
.super Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
.source "DefaultSimInfoAdapter.java"


# static fields
.field private static final SPLIT:Ljava/lang/String; = "|"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;-><init>()V

    .line 17
    const-string/jumbo v0, "DefaultSimInfoAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->TAG:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "phone"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 26
    iput-object p1, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getCellLocation(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 14
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x3

    .line 121
    const-string/jumbo v2, ""

    .line 122
    .local v2, "cellLocation":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v11

    if-ne v11, v13, :cond_1

    .line 123
    iget-object v11, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "operator":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 125
    .local v6, "mcc":I
    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 126
    .local v7, "mnc":I
    const/4 v5, 0x0

    .line 127
    .local v5, "lac":I
    const/4 v3, 0x0

    .line 128
    .local v3, "cid":I
    const/4 v10, 0x0

    .line 130
    .local v10, "type":I
    iget-object v11, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 131
    .local v1, "cellLoc":Landroid/telephony/CellLocation;
    if-eqz v1, :cond_0

    .line 132
    instance-of v11, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v11, :cond_2

    move-object v4, v1

    .line 133
    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 134
    .local v4, "gsmCellLoc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v5

    .line 135
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 143
    .end local v4    # "gsmCellLoc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string/jumbo v11, "|"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v11, "|"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string/jumbo v11, "|"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v11, "|"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .end local v1    # "cellLoc":Landroid/telephony/CellLocation;
    .end local v3    # "cid":I
    .end local v5    # "lac":I
    .end local v6    # "mcc":I
    .end local v7    # "mnc":I
    .end local v8    # "operator":Ljava/lang/String;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "type":I
    :cond_1
    return-object v2

    .restart local v1    # "cellLoc":Landroid/telephony/CellLocation;
    .restart local v3    # "cid":I
    .restart local v5    # "lac":I
    .restart local v6    # "mcc":I
    .restart local v7    # "mnc":I
    .restart local v8    # "operator":Ljava/lang/String;
    .restart local v10    # "type":I
    :cond_2
    move-object v0, v1

    .line 137
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 138
    .local v0, "cdmaCellLoc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v5

    .line 139
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    goto :goto_0
.end method

.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 36
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_0

    .line 37
    const-string/jumbo v1, ""

    .line 48
    :goto_0
    return-object v1

    .line 40
    :cond_0
    const-string/jumbo v1, ""

    .line 42
    .local v1, "imei":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 43
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    goto :goto_0

    :cond_1
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DefaultSimInfoAdapter"

    const-string/jumbo v3, "getDeviceId | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/4 v2, 0x0

    .line 87
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v3, :cond_0

    .line 99
    :goto_0
    return v2

    .line 91
    :cond_0
    const/4 v1, 0x0

    .line 93
    .local v1, "networkType":I
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 94
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 99
    goto :goto_0

    :cond_1
    move v1, v2

    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DefaultSimInfoAdapter"

    const-string/jumbo v3, "getNetWorkType | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 70
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_0

    .line 71
    const-string/jumbo v1, ""

    .line 82
    :goto_0
    return-object v1

    .line 74
    :cond_0
    const-string/jumbo v1, ""

    .line 76
    .local v1, "simOperator":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 77
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    :goto_1
    goto :goto_0

    :cond_1
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DefaultSimInfoAdapter"

    const-string/jumbo v3, "getSubscriberId | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 104
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_0

    .line 105
    const/4 v1, 0x1

    .line 116
    :goto_0
    return v1

    .line 108
    :cond_0
    const/4 v1, 0x1

    .line 110
    .local v1, "simState":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 111
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DefaultSimInfoAdapter"

    const-string/jumbo v3, "getSimState | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 53
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_0

    .line 54
    const-string/jumbo v1, ""

    .line 65
    :goto_0
    return-object v1

    .line 57
    :cond_0
    const-string/jumbo v1, ""

    .line 59
    .local v1, "imsi":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 60
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    goto :goto_0

    :cond_1
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DefaultSimInfoAdapter"

    const-string/jumbo v3, "getSubscriberId | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
