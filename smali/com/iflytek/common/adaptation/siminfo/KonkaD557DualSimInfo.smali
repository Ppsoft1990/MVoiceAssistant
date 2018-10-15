.class public Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;
.source "KonkaD557DualSimInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KonkaD557DualSimInfo"


# instance fields
.field private mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->initMethod(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private getTelephonyManager(Ljava/lang/String;)Landroid/telephony/TelephonyManager;
    .locals 7
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v4, 0x0

    .line 55
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 56
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 57
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 58
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

    .line 62
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "KonkaD557DualSimInfo"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getTelephonyManager(Ljava/lang/String;I)Landroid/telephony/TelephonyManager;
    .locals 8
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "simid"    # I

    .prologue
    .line 66
    const/4 v4, 0x0

    .line 68
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 69
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 70
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 71
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "KonkaD557DualSimInfo"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initMethod(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-string/jumbo v0, "phone"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 36
    const-string/jumbo v0, "KonkaD557DualSimInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTelephonyManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string/jumbo v0, "getDefault"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->getTelephonyManager(Ljava/lang/String;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 38
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 39
    const-string/jumbo v0, "phone"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 42
    :cond_0
    const-string/jumbo v0, "KonkaD557DualSimInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFirstTelephonyManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string/jumbo v0, "phone2"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 45
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 46
    const-string/jumbo v0, "getDefault"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->getTelephonyManager(Ljava/lang/String;I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 48
    :cond_1
    const-string/jumbo v0, "KonkaD557DualSimInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSecondTelephonyManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method private isDualSim()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

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
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->isDualSim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 121
    :goto_0
    return v1

    .line 111
    :cond_0
    const/4 v1, 0x0

    .line 113
    .local v1, "netWorkType":I
    :try_start_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KonkaD557DualSimInfo"

    const-string/jumbo v3, "getSubscriberId | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->isDualSim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    .line 130
    :cond_0
    const-string/jumbo v1, ""

    .line 132
    .local v1, "hni":Ljava/lang/String;
    if-eqz p1, :cond_1

    :try_start_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_2

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KonkaD557DualSimInfo"

    const-string/jumbo v3, "getSubscriberId | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->isDualSim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 164
    :goto_0
    return v1

    .line 154
    :cond_0
    const/4 v1, 0x0

    .line 156
    .local v1, "state":I
    if-eqz p1, :cond_1

    :try_start_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_2

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    goto :goto_0

    .line 159
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KonkaD557DualSimInfo"

    const-string/jumbo v3, "getSubscriberId | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->isDualSim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    .line 92
    :cond_0
    const-string/jumbo v1, ""

    .line 94
    .local v1, "imsi":Ljava/lang/String;
    if-eqz p1, :cond_1

    :try_start_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_2

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/KonkaD557DualSimInfo;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KonkaD557DualSimInfo"

    const-string/jumbo v3, "getSubscriberId | error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
