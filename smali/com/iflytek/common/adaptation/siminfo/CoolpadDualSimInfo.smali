.class public Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;
.source "CoolpadDualSimInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CoolpadDualSimInfo"


# instance fields
.field private getDualDeviceId:Ljava/lang/reflect/Method;

.field private getDualNetworkType:Ljava/lang/reflect/Method;

.field private getDualSimOperator:Ljava/lang/reflect/Method;

.field private getDualSimState:Ljava/lang/reflect/Method;

.field private getDualSubscriberId:Ljava/lang/reflect/Method;

.field private mCPTelephonyManager:Ljava/lang/Object;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;-><init>(Landroid/content/Context;)V

    .line 37
    :try_start_0
    const-string/jumbo v3, "phone"

    .line 38
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 46
    const-string/jumbo v3, "com.yulong.android.telephony.CPTelephonyManager"

    .line 47
    invoke-static {v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, "clsCPTelephonyManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 50
    .local v2, "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->mCPTelephonyManager:Ljava/lang/Object;

    .line 55
    const-string/jumbo v3, "getDualSubscriberId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->getDualSubscriberId:Ljava/lang/reflect/Method;

    .line 57
    const-string/jumbo v3, "getDualNetworkType"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->getDualNetworkType:Ljava/lang/reflect/Method;

    .line 59
    const-string/jumbo v3, "getDualDeviceId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 60
    invoke-static {v0, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->getDualDeviceId:Ljava/lang/reflect/Method;

    .line 62
    const-string/jumbo v3, "getDualSimState"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->getDualSimState:Ljava/lang/reflect/Method;

    .line 64
    const-string/jumbo v3, "getDualSimOperator"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->getDualSimOperator:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "clsCPTelephonyManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "CoolpadDualSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 103
    const/4 v2, 0x0

    .line 106
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->mCPTelephonyManager:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 106
    invoke-static {p2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-object v2

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "CoolpadDualSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokeWithIntReturn(ILjava/lang/reflect/Method;)I
    .locals 6
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->mCPTelephonyManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 118
    invoke-static {p2, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :goto_0
    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CoolpadDualSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 75
    .local v0, "simId":I
    :goto_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->getDualDeviceId:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 74
    .end local v0    # "simId":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 87
    .local v0, "simId":I
    :goto_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->getDualNetworkType:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v1

    return v1

    .line 86
    .end local v0    # "simId":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 93
    .local v0, "simId":I
    :goto_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->getDualSimOperator:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    .end local v0    # "simId":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 99
    .local v0, "simId":I
    :goto_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->getDualSimState:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v1

    return v1

    .line 98
    .end local v0    # "simId":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 81
    .local v0, "simId":I
    :goto_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->getDualSubscriberId:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 80
    .end local v0    # "simId":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
