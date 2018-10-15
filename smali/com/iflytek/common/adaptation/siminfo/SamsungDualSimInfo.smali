.class public Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;
.source "SamsungDualSimInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SamsungI909SimInfo"


# instance fields
.field private mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mSecondTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->initMethod(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private getTelephonyManager(Ljava/lang/String;)Landroid/telephony/TelephonyManager;
    .locals 7
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v4, 0x0

    .line 53
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 54
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 55
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 56
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SamsungI909SimInfo"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isDualSim()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->isDualSim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 69
    :cond_0
    const-string/jumbo v1, ""

    .line 71
    .local v1, "imei":Ljava/lang/String;
    if-eqz p1, :cond_1

    :try_start_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_2

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungI909SimInfo"

    const-string/jumbo v3, "getDeviceId | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->isDualSim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 117
    :goto_0
    return v1

    .line 107
    :cond_0
    const/4 v1, 0x0

    .line 109
    .local v1, "netWorkType":I
    :try_start_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungI909SimInfo"

    const-string/jumbo v3, "getSubscriberId | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->isDualSim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 136
    :goto_0
    return-object v1

    .line 126
    :cond_0
    const-string/jumbo v1, ""

    .line 128
    .local v1, "hni":Ljava/lang/String;
    if-eqz p1, :cond_1

    :try_start_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_2

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 131
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungI909SimInfo"

    const-string/jumbo v3, "getSubscriberId | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->isDualSim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 160
    :goto_0
    return v1

    .line 150
    :cond_0
    const/4 v1, 0x0

    .line 152
    .local v1, "state":I
    if-eqz p1, :cond_1

    :try_start_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_2

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    goto :goto_0

    .line 155
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungI909SimInfo"

    const-string/jumbo v3, "getSubscriberId | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->isDualSim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    .line 88
    :cond_0
    const-string/jumbo v1, ""

    .line 90
    .local v1, "imsi":Ljava/lang/String;
    if-eqz p1, :cond_1

    :try_start_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_2

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungI909SimInfo"

    const-string/jumbo v3, "getSubscriberId | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected initMethod(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-string/jumbo v0, "phone"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 33
    const-string/jumbo v0, "getFirst"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->getTelephonyManager(Ljava/lang/String;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 34
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 35
    const-string/jumbo v0, "getDefault"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->getTelephonyManager(Ljava/lang/String;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 39
    const-string/jumbo v0, "phone"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 43
    :cond_1
    const-string/jumbo v0, "phone2"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 45
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2

    .line 46
    const-string/jumbo v0, "getSecondary"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->getTelephonyManager(Ljava/lang/String;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 48
    :cond_2
    return-void
.end method
