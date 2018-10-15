.class public Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;
.source "HuaweiM100TL00DualSimInfo.java"


# instance fields
.field private final SIM1:I

.field private final SIM2:I

.field private final TAG:Ljava/lang/String;

.field private getDeviceId:Ljava/lang/reflect/Method;

.field private getNetworkType:Ljava/lang/reflect/Method;

.field private getSimOperator:Ljava/lang/reflect/Method;

.field private getSimState:Ljava/lang/reflect/Method;

.field private getSubscriberId:Ljava/lang/reflect/Method;

.field private isDualSim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->SIM1:I

    .line 22
    iput v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->SIM2:I

    .line 30
    iput-boolean v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->isDualSim:Z

    .line 34
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->initMethod()V

    .line 35
    return-void
.end method

.method private initMethod()V
    .locals 6

    .prologue
    .line 39
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSimState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->getSimState:Ljava/lang/reflect/Method;

    .line 40
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getNetworkType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->getNetworkType:Ljava/lang/reflect/Method;

    .line 41
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getDeviceId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->getDeviceId:Ljava/lang/reflect/Method;

    .line 42
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSubscriberId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->getSubscriberId:Ljava/lang/reflect/Method;

    .line 43
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSimOperator"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->getSimOperator:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 100
    const/4 v2, 0x0

    .line 102
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v2

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokeWithIntReturn(ILjava/lang/reflect/Method;)I
    .locals 6
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "simId":I
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->getDeviceId:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "simId":I
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->getNetworkType:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v1

    return v1
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "simId":I
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->getSimOperator:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "simId":I
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->getSimState:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v1

    return v1
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "simId":I
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->getSubscriberId:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/iflytek/common/adaptation/siminfo/HuaweiM100TL00DualSimInfo;->isDualSim:Z

    return v0
.end method
