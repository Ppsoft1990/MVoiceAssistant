.class public Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;
.source "SPSimInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SPSimInfo"


# instance fields
.field private mTelephonyManager1:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 28
    :try_start_0
    const-string/jumbo v1, "phone0"

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    .line 30
    const-string/jumbo v1, "phone1"

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SPSimInfo"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 50
    :cond_1
    :try_start_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    .line 59
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SPSimInfo"

    const-string/jumbo v2, "getDeviceId | error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 101
    :try_start_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 113
    :goto_0
    return v1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SPSimInfo"

    const-string/jumbo v2, "getNetWorkType | error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 83
    :try_start_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SPSimInfo"

    const-string/jumbo v2, "getSimOperator | error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 119
    :try_start_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SPSimInfo"

    const-string/jumbo v2, "getSimState | error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 65
    :try_start_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SPSimInfo"

    const-string/jumbo v2, "getSubscriberId | error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SPSimInfo;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
