.class public Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;
.source "SamsungGTI8558SimInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private getDeviceIdDs:Ljava/lang/reflect/Method;

.field private getNetworkTypeDs:Ljava/lang/reflect/Method;

.field private getSimStateDs:Ljava/lang/reflect/Method;

.field private getSubscriberIdDs:Ljava/lang/reflect/Method;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;-><init>(Landroid/content/Context;)V

    .line 19
    const-string/jumbo v0, "SamsungGTI8558SimInfo"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->TAG:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 30
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->initMethod()V

    .line 31
    return-void
.end method

.method private getFirstSimId()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method private getNetworkTypeByReflect(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getNetworkTypeDs:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, v0}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v0

    return v0
.end method

.method private getSecondSimId()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method private getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 97
    if-eqz p1, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getFirstSimId()I

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getSecondSimId()I

    move-result v0

    goto :goto_0
.end method

.method private getSimStateByReflect(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getSimStateDs:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, v0}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v0

    return v0
.end method

.method private getSubscriberIdByReflect(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getSubscriberIdDs:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, v0}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initMethod()V
    .locals 6

    .prologue
    .line 103
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSubscriberIdDs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getSubscriberIdDs:Ljava/lang/reflect/Method;

    .line 106
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getNetworkTypeDs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getNetworkTypeDs:Ljava/lang/reflect/Method;

    .line 109
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getNetworkTypeDs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getNetworkTypeDs:Ljava/lang/reflect/Method;

    .line 112
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSimStateDs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getSimStateDs:Ljava/lang/reflect/Method;

    .line 115
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getDeviceIdDs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getDeviceIdDs:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SamsungGTI8558SimInfo"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 126
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

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

    .line 131
    :goto_0
    return-object v2

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SamsungGTI8558SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokeWithIntReturn(ILjava/lang/reflect/Method;)I
    .locals 6
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 142
    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungGTI8558SimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 37
    .local v1, "simId":I
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getDeviceIdDs:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "imei":Ljava/lang/String;
    return-object v0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getSecondSimId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getNetworkTypeByReflect(I)I

    move-result v0

    return v0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/4 v3, 0x5

    .line 48
    invoke-virtual {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "imsi":Ljava/lang/String;
    const/4 v1, 0x0

    .line 50
    .local v1, "simOperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 51
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_0
    return-object v1
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getSimStateByReflect(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;->getSubscriberIdByReflect(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method
