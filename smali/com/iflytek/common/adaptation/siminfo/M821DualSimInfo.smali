.class public Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;
.source "M821DualSimInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private getNetworkType:Ljava/lang/reflect/Method;

.field private getSimOperator:Ljava/lang/reflect/Method;

.field private getSimState:Ljava/lang/reflect/Method;

.field private getSubscriberId:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;-><init>(Landroid/content/Context;)V

    .line 15
    const-string/jumbo v0, "M821DualSimInfo"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->TAG:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "phone"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 26
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->initMethod(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private getFirstSimId()J
    .locals 7

    .prologue
    .line 121
    const-wide/16 v2, 0x0

    .line 123
    .local v2, "simId":J
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v4}, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->reflectSubscriptionManager(I)[J

    move-result-object v1

    .line 124
    .local v1, "subIds":[J
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 125
    const/4 v4, 0x0

    aget-wide v2, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "subIds":[J
    :cond_0
    :goto_0
    const-string/jumbo v4, "M821DualSimInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFirstSimId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-wide v2

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "M821DualSimInfo"

    const-string/jumbo v5, "SubscriptionManager reflect occur error"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSecondSimId()J
    .locals 7

    .prologue
    .line 135
    const-wide/16 v2, 0x1

    .line 137
    .local v2, "simId":J
    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v4}, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->reflectSubscriptionManager(I)[J

    move-result-object v1

    .line 138
    .local v1, "subIds":[J
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 139
    const/4 v4, 0x0

    aget-wide v2, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1    # "subIds":[J
    :cond_0
    :goto_0
    const-string/jumbo v4, "M821DualSimInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSecondSimId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-wide v2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "M821DualSimInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SubscriptionManager reflect occur error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)J
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 158
    if-eqz p1, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getFirstSimId()J

    move-result-wide v0

    .line 159
    :goto_0
    return-wide v0

    :cond_1
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getSecondSimId()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getSimStateByReflect(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getSimState:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, v0}, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v0

    return v0
.end method

.method private initMethod(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 33
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSimState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getSimState:Ljava/lang/reflect/Method;

    .line 35
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSubscriberId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getSubscriberId:Ljava/lang/reflect/Method;

    .line 37
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getNetworkType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getNetworkType:Ljava/lang/reflect/Method;

    .line 39
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSimOperator"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getSimOperator:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "M821DualSimInfo"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokeWithIntReturn(ILjava/lang/reflect/Method;)I
    .locals 6
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 169
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 169
    invoke-static {p2, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 174
    :goto_0
    return v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "M821DualSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokeWithLongReturn(JLjava/lang/reflect/Method;)I
    .locals 7
    .param p1, "simId"    # J
    .param p3, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 180
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 181
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 180
    invoke-static {p3, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 185
    :goto_0
    return v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "M821DualSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokeWithStringReturn(ILjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 189
    const-string/jumbo v2, ""

    .line 191
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 192
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

    .line 196
    :goto_0
    return-object v2

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "M821DualSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokeWithStringReturn(JLjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7
    .param p1, "simId"    # J
    .param p3, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 200
    const-string/jumbo v2, ""

    .line 202
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 203
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p3, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-object v2

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "M821DualSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reflectSubscriptionManager(I)[J
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

    .line 151
    const-string/jumbo v3, "android.telephony.SubscriptionManager"

    invoke-static {v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 152
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "getSubId"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v0, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 153
    .local v1, "getSubId":Ljava/lang/reflect/Method;
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v0, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    move-object v2, v3

    check-cast v2, [J

    .line 154
    .local v2, "subIds":[J
    return-object v2
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)J

    move-result-wide v0

    .line 75
    .local v0, "simId":J
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getNetworkType:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->invokeWithLongReturn(JLjava/lang/reflect/Method;)I

    move-result v2

    return v2
.end method

.method public getOpenDataSimCard()Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 99
    :try_start_0
    const-string/jumbo v7, "android.telephony.SubscriptionManager"

    invoke-static {v7}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "getDefaultDataSubId"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v0, v7, v8}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 102
    .local v4, "getDefaultDataSubId":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v0, v7}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 103
    .local v2, "defaultDataSubId":J
    const-string/jumbo v7, "M821DualSimInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getOpenDataSimCard defaultDataSubId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string/jumbo v7, "getSlotId"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 105
    .local v5, "getSlotId":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v0, v7}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 106
    .local v6, "slotId":I
    const-string/jumbo v7, "M821DualSimInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getOpenDataSimCard getSlotId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-nez v6, :cond_0

    .line 108
    sget-object v7, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 116
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "defaultDataSubId":J
    .end local v4    # "getDefaultDataSubId":Ljava/lang/reflect/Method;
    .end local v5    # "getSlotId":Ljava/lang/reflect/Method;
    .end local v6    # "slotId":I
    :goto_0
    return-object v7

    .line 109
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "defaultDataSubId":J
    .restart local v4    # "getDefaultDataSubId":Ljava/lang/reflect/Method;
    .restart local v5    # "getSlotId":Ljava/lang/reflect/Method;
    .restart local v6    # "slotId":I
    :cond_0
    if-ne v11, v6, :cond_1

    .line 110
    sget-object v7, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "defaultDataSubId":J
    .end local v4    # "getDefaultDataSubId":Ljava/lang/reflect/Method;
    .end local v5    # "getSlotId":Ljava/lang/reflect/Method;
    .end local v6    # "slotId":I
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "M821DualSimInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDataSimCard occur error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v7, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)J

    move-result-wide v0

    .line 69
    .local v0, "simId":J
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getSimOperator:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->invokeWithStringReturn(JLjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 89
    :goto_0
    return v2

    .line 84
    :cond_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_1

    const/4 v1, 0x0

    .line 85
    .local v1, "simId":I
    :goto_1
    invoke-direct {p0, v1}, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getSimStateByReflect(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 84
    .end local v1    # "simId":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "M821DualSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 8
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 54
    const-string/jumbo v1, "M821DualSimInfo"

    const-string/jumbo v2, "getSubscriberId"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getSubscriberId:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/M821DualSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "M821DualSimInfo"

    const-string/jumbo v2, "getSubscriberId occur exception"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
