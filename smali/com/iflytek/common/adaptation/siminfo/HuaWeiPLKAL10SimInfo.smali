.class public Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;
.source "HuaWeiPLKAL10SimInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private getDeviceId:Ljava/lang/reflect/Method;

.field private getNetworkType:Ljava/lang/reflect/Method;

.field private getSimOperator:Ljava/lang/reflect/Method;

.field private getSimState:Ljava/lang/reflect/Method;

.field private getSubscriberId:Ljava/lang/reflect/Method;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;-><init>(Landroid/content/Context;)V

    .line 13
    const-string/jumbo v0, "HuaWeiPLKAL10SimInfo"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->TAG:Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->initMethodInLevel21(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private getFirstSimId()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method private getSecondSimId()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method private getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getFirstSimId()I

    move-result v0

    .line 123
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getSecondSimId()I

    move-result v0

    goto :goto_0
.end method

.method private initMethodInLevel21(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const-string/jumbo v1, "HuaWeiPLKAL10SimInfo"

    const-string/jumbo v2, "initMethodInLevel21"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 133
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 134
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSimState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getSimState:Ljava/lang/reflect/Method;

    .line 136
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getDeviceId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getDeviceId:Ljava/lang/reflect/Method;

    .line 138
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSubscriberId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getSubscriberId:Ljava/lang/reflect/Method;

    .line 140
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getNetworkType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getNetworkType:Ljava/lang/reflect/Method;

    .line 142
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSimOperator"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getSimOperator:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HuaWeiPLKAL10SimInfo"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 152
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 153
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

    .line 158
    :goto_0
    return-object v2

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HuaWeiPLKAL10SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 5
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 76
    .local v1, "simId":I
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getDeviceId:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "imei":Ljava/lang/String;
    const-string/jumbo v2, "HuaWeiPLKAL10SimInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDeviceId |simId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", getDeviceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 5
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 86
    .local v1, "simId":I
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getNetworkType:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->invokeNetWork(ILjava/lang/reflect/Method;)I

    move-result v0

    .line 87
    .local v0, "network":I
    const-string/jumbo v2, "HuaWeiPLKAL10SimInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNetWorkType |simId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", getNetWorkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 5
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    .line 107
    .local v0, "simId":I
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getSimOperator:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v2}, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "simOpera":Ljava/lang/String;
    const-string/jumbo v2, "HuaWeiPLKAL10SimInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSimOperator |simId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", getSimOperator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-object v1
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 6
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 47
    :goto_0
    return v2

    .line 35
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 36
    .local v1, "simId":I
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getSimState:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1, v3}, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->invokeNetWork(ILjava/lang/reflect/Method;)I

    move-result v2

    .line 37
    .local v2, "simState":I
    const-string/jumbo v3, "HuaWeiPLKAL10SimInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSimState |simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", getSimState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 40
    .end local v1    # "simId":I
    .end local v2    # "simState":I
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "HuaWeiPLKAL10SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    :goto_1
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 44
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HuaWeiPLKAL10SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 8
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 52
    const-string/jumbo v3, "HuaWeiPLKAL10SimInfo"

    const-string/jumbo v4, "android.telephony.SubscriptionManager"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-nez p1, :cond_0

    .line 55
    :try_start_0
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    .line 58
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    .line 59
    .local v2, "simId":I
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->getSubscriberId:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, "imsi":Ljava/lang/String;
    const-string/jumbo v3, "HuaWeiPLKAL10SimInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSubscriberId |simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", imsi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 64
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v2    # "simId":I
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "HuaWeiPLKAL10SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    :goto_1
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 68
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HuaWeiPLKAL10SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected invokeNetWork(ILjava/lang/reflect/Method;)I
    .locals 6
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/HuaWeiPLKAL10SimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 96
    invoke-static {p2, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 101
    :goto_0
    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HuaWeiPLKAL10SimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
