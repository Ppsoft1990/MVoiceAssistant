.class public Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;
.source "LeadcoreSimInfo.java"


# instance fields
.field private final SIM1ID:I

.field private final SIM2ID:I

.field private final TAG:Ljava/lang/String;

.field private getDeviceIdMSMS:Ljava/lang/reflect/Method;

.field private getNetworkTypeMSMS:Ljava/lang/reflect/Method;

.field private getPhoneCount:Ljava/lang/reflect/Method;

.field private getSimOperatorMSMS:Ljava/lang/reflect/Method;

.field private getSimStateMSMS:Ljava/lang/reflect/Method;

.field private getSubscriberIdMSMS:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 19
    const-string/jumbo v0, "LeadcoreSimInfo"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->SIM1ID:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->SIM2ID:I

    .line 37
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->initMethod()V

    .line 38
    return-void
.end method

.method private getPhoneCount()I
    .locals 5

    .prologue
    .line 79
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getPhoneCount:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 80
    const/4 v1, 0x1

    .line 89
    :goto_0
    return v1

    .line 83
    :cond_0
    const/4 v1, 0x1

    .line 85
    .local v1, "phoneCount":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getPhoneCount:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LeadcoreSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initMethod()V
    .locals 6

    .prologue
    .line 42
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSubscriberIdMSMS"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSubscriberIdMSMS:Ljava/lang/reflect/Method;

    .line 45
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSimOperatorMSMS"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSimOperatorMSMS:Ljava/lang/reflect/Method;

    .line 48
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getNetworkTypeMSMS"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getNetworkTypeMSMS:Ljava/lang/reflect/Method;

    .line 51
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSimStateMSMS"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSimStateMSMS:Ljava/lang/reflect/Method;

    .line 54
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getPhoneCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getPhoneCount:Ljava/lang/reflect/Method;

    .line 64
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getDeviceIdMSMS"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getDeviceIdMSMS:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "LeadcoreSimInfo"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 150
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 151
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

    .line 156
    :goto_0
    return-object v2

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LeadcoreSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokeWithIntReturn(ILjava/lang/reflect/Method;)I
    .locals 6
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 162
    invoke-static {p2, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    :goto_0
    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LeadcoreSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getDeviceIdMSMS:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 101
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    .line 105
    .local v0, "simId":I
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getDeviceIdMSMS:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getNetworkTypeMSMS:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 131
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 134
    :goto_0
    return v1

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    .line 134
    .local v0, "simId":I
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getNetworkTypeMSMS:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v1

    goto :goto_0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSimOperatorMSMS:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 121
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    .line 125
    .local v0, "simId":I
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSimOperatorMSMS:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSimStateMSMS:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 140
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 143
    :goto_0
    return v1

    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    .line 143
    .local v0, "simId":I
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSimStateMSMS:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v1

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSubscriberIdMSMS:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 111
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 114
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    .line 115
    .local v0, "simId":I
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSubscriberIdMSMS:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/LeadcoreSimInfo;->getSimStateMSMS:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
