.class public Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;
.source "SamsungG9208SimInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private getNetworkType:Ljava/lang/reflect/Method;

.field private getSimState:Ljava/lang/reflect/Method;

.field private getSubscriberId:Ljava/lang/reflect/Method;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;-><init>(Landroid/content/Context;)V

    .line 20
    const-string/jumbo v0, "SamsungG9208SimInfo"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->TAG:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->initReflectMethod(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private getFirstSimId()I
    .locals 6

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, "simId":I
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->reflectSubscriptionManager(I)[I

    move-result-object v2

    .line 93
    .local v2, "subIds":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 94
    const/4 v3, 0x0

    aget v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v2    # "subIds":[I
    :cond_0
    :goto_0
    const-string/jumbo v3, "SamsungG9208SimInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFirstSimId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SamsungG9208SimInfo"

    const-string/jumbo v4, "SubscriptionManager reflect occur error"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSecondSimId()I
    .locals 6

    .prologue
    .line 104
    const/4 v1, 0x1

    .line 106
    .local v1, "simId":I
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->reflectSubscriptionManager(I)[I

    move-result-object v2

    .line 107
    .local v2, "subIds":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 108
    const/4 v3, 0x0

    aget v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v2    # "subIds":[I
    :cond_0
    :goto_0
    const-string/jumbo v3, "SamsungG9208SimInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSecondSimId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SamsungG9208SimInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SubscriptionManager reflect occur error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->getFirstSimId()I

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->getSecondSimId()I

    move-result v0

    goto :goto_0
.end method

.method private getSimStateByReflect(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->getSimState:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, v0}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v0

    return v0
.end method

.method private initReflectMethod(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 36
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 37
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSimState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->getSimState:Ljava/lang/reflect/Method;

    .line 39
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSubscriberId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->getSubscriberId:Ljava/lang/reflect/Method;

    .line 41
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getNetworkType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->getNetworkType:Ljava/lang/reflect/Method;
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
    const-string/jumbo v1, "SamsungG9208SimInfo"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokeWithIntReturn(ILjava/lang/reflect/Method;)I
    .locals 6
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 138
    invoke-static {p2, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 143
    :goto_0
    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungG9208SimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reflectSubscriptionManager(I)[I
    .locals 8
    .param p1, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 120
    const-string/jumbo v3, "android.telephony.SubscriptionManager"

    invoke-static {v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "getSubId"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v0, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 122
    .local v1, "getSubId":Ljava/lang/reflect/Method;
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v0, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 123
    .local v2, "subIds":[I
    return-object v2
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    .line 71
    .local v0, "simId":I
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->getNetworkType:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v1

    return v1
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 85
    :goto_0
    return v2

    .line 80
    :cond_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_1

    const/4 v1, 0x0

    .line 81
    .local v1, "simId":I
    :goto_1
    invoke-direct {p0, v1}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->getSimStateByReflect(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 80
    .end local v1    # "simId":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungG9208SimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 6
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 56
    const-string/jumbo v1, "SamsungG9208SimInfo"

    const-string/jumbo v2, "getSubscriberId"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->getSubscriberId:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9208SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 59
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SamsungG9208SimInfo"

    const-string/jumbo v2, "getSubscriberId occur exception"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
