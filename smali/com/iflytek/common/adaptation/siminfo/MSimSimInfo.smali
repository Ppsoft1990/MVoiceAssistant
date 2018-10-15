.class public Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;
.source "MSimSimInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mClsMSimTelephonyManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mGetDeviceId:Ljava/lang/reflect/Method;

.field private mGetNetworkType:Ljava/lang/reflect/Method;

.field private mGetSimOperator:Ljava/lang/reflect/Method;

.field private mGetSimState:Ljava/lang/reflect/Method;

.field private mGetSubscriberId:Ljava/lang/reflect/Method;

.field private mMSimTelephonyManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;-><init>(Landroid/content/Context;)V

    .line 22
    const-string/jumbo v0, "MSimSimInfoAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->TAG:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 37
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->initMethod()V

    .line 38
    return-void
.end method

.method private varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MSimSimInfoAdapter"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initMethod()V
    .locals 6

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone_msim"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mMSimTelephonyManager:Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mMSimTelephonyManager:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 46
    const-string/jumbo v1, "MSimSimInfoAdapter"

    const-string/jumbo v2, "initMethod | phone_msim is null"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mMSimTelephonyManager:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mClsMSimTelephonyManager:Ljava/lang/Class;

    .line 50
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mClsMSimTelephonyManager:Ljava/lang/Class;

    const-string/jumbo v2, "getSubscriberId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mGetSubscriberId:Ljava/lang/reflect/Method;

    .line 52
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mClsMSimTelephonyManager:Ljava/lang/Class;

    const-string/jumbo v2, "getNetworkType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mGetNetworkType:Ljava/lang/reflect/Method;

    .line 54
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mClsMSimTelephonyManager:Ljava/lang/Class;

    const-string/jumbo v2, "getSimState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mGetSimState:Ljava/lang/reflect/Method;

    .line 56
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mClsMSimTelephonyManager:Ljava/lang/Class;

    const-string/jumbo v2, "getSimOperator"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mGetSimOperator:Ljava/lang/reflect/Method;

    .line 58
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mClsMSimTelephonyManager:Ljava/lang/Class;

    const-string/jumbo v2, "getDeviceId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mGetDeviceId:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MSimSimInfoAdapter"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 127
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mMSimTelephonyManager:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 127
    invoke-static {p2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-object v2

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MSimSimInfoAdapter"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mMSimTelephonyManager:Ljava/lang/Object;

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
    const-string/jumbo v2, "MSimSimInfoAdapter"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 149
    const-string/jumbo v0, ""

    .line 150
    .local v0, "imei":Ljava/lang/String;
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 151
    .local v1, "simId":I
    :goto_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mGetDeviceId:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 152
    return-object v0

    .line 150
    .end local v1    # "simId":I
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v1

    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "netWorkType":I
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 89
    .local v1, "simId":I
    :goto_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mGetNetworkType:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v0

    .line 90
    return v0

    .line 88
    .end local v1    # "simId":I
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v1

    goto :goto_0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 6
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x5

    .line 95
    iget-object v4, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mGetSimOperator:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    .line 97
    invoke-virtual {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "imsi":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 113
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 101
    .restart local v1    # "imsi":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_2
    if-nez p1, :cond_3

    move v2, v3

    .line 105
    .local v2, "simId":I
    :goto_1
    iget-object v4, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mGetSimOperator:Ljava/lang/reflect/Method;

    if-nez v4, :cond_4

    .line 106
    invoke-virtual {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .restart local v1    # "imsi":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 110
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v2    # "simId":I
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v2

    goto :goto_1

    .line 112
    .restart local v2    # "simId":I
    :cond_4
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mGetSimOperator:Ljava/lang/reflect/Method;

    invoke-direct {p0, v2, v3}, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "hni":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "state":I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 120
    .local v0, "simId":I
    :goto_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mGetSimState:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v2}, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v1

    .line 121
    return v1

    .line 119
    .end local v0    # "simId":I
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 79
    const-string/jumbo v0, ""

    .line 80
    .local v0, "imsi":Ljava/lang/String;
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 81
    .local v1, "simId":I
    :goto_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->mGetSubscriberId:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/common/adaptation/siminfo/MSimSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0

    .line 80
    .end local v1    # "simId":I
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v1

    goto :goto_0
.end method
