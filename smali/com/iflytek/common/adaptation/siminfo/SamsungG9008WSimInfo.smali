.class public Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;
.source "SamsungG9008WSimInfo.java"


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
    .line 28
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;-><init>(Landroid/content/Context;)V

    .line 18
    const-string/jumbo v0, "SamsungSM9008WSimInfo"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->TAG:Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->initMethodByLevel(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private getFirstSimId()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method private getSecondSimId()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method private getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 166
    if-eqz p1, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getFirstSimId()I

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getSecondSimId()I

    move-result v0

    goto :goto_0
.end method

.method private initMethodByLevel(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x15

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    .line 172
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->initMethod(Landroid/content/Context;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 174
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->initMethodInLevel21(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private initMethodInLevel21(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 182
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 183
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSimState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getSimState:Ljava/lang/reflect/Method;

    .line 185
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getDeviceId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getDeviceId:Ljava/lang/reflect/Method;

    .line 187
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSubscriberId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getSubscriberId:Ljava/lang/reflect/Method;

    .line 189
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getNetworkType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getNetworkType:Ljava/lang/reflect/Method;

    .line 191
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSimOperator"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getSimOperator:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SamsungSM9008WSimInfo"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 211
    const/4 v2, 0x0

    .line 214
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 215
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

    .line 220
    :goto_0
    return-object v2

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SamsungSM9008WSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokeWithLongReturn(JLjava/lang/reflect/Method;)I
    .locals 7
    .param p1, "simId"    # J
    .param p3, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 158
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 157
    invoke-static {p3, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 162
    :goto_0
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungSM9008WSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokelong(JLjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7
    .param p1, "simId"    # J
    .param p3, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 201
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 202
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

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SamsungSM9008WSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 5
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/16 v3, 0x15

    .line 86
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_0

    .line 87
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 88
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    .line 92
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 93
    .local v1, "simId":I
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getDeviceId:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "imei":Ljava/lang/String;
    const-string/jumbo v2, "SamsungSM9008WSimInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSubscriberId |simId = "

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

    goto :goto_0

    .line 99
    .end local v0    # "imei":Ljava/lang/String;
    .end local v1    # "simId":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/16 v3, 0x15

    .line 104
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_0

    .line 105
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    .line 114
    :goto_0
    return v2

    .line 106
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    .line 110
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    int-to-long v0, v2

    .line 111
    .local v0, "simId":J
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getNetworkType:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->invokeWithLongReturn(JLjava/lang/reflect/Method;)I

    move-result v2

    goto :goto_0

    .line 114
    .end local v0    # "simId":J
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 6
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/16 v4, 0x15

    .line 131
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v4, :cond_0

    .line 132
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v2

    .line 143
    :goto_0
    return-object v2

    .line 133
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_1

    .line 136
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v3

    int-to-long v0, v3

    .line 137
    .local v0, "simId":J
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getSimOperator:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1, v3}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->invokelong(JLjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "simOpera":Ljava/lang/String;
    const-string/jumbo v3, "SamsungSM9008WSimInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSimOperator |simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", getSimOperator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .end local v0    # "simId":J
    .end local v2    # "simOpera":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 6
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/16 v4, 0x15

    .line 34
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v4, :cond_0

    .line 35
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    .line 54
    :goto_0
    return v2

    .line 36
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_2

    .line 38
    if-nez p1, :cond_1

    .line 39
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 42
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 43
    .local v1, "simId":I
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getSimState:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1, v3}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->invokeNetWork(ILjava/lang/reflect/Method;)I

    move-result v2

    .line 44
    .local v2, "simState":I
    const-string/jumbo v3, "SamsungSM9008WSimInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSimState |simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", simState = "

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

    .line 47
    .end local v1    # "simId":I
    .end local v2    # "simState":I
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "SamsungSM9008WSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    goto :goto_0

    .line 50
    :catch_1
    move-exception v0

    .line 51
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SamsungSM9008WSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 12
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/16 v7, 0x15

    .line 59
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v7, :cond_0

    .line 60
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v6

    .line 81
    :goto_0
    return-object v6

    .line 61
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_1

    .line 62
    const-string/jumbo v6, "SamsungSM9008WSimInfo"

    const-string/jumbo v7, "android.telephony.SubscriptionManager"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :try_start_0
    const-string/jumbo v6, "android.telephony.SubscriptionManager"

    .line 65
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 66
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "getSubId"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 67
    .local v4, "getSubId":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 68
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    move-object v0, v6

    check-cast v0, [J

    move-object v5, v0

    .line 70
    .local v5, "subIds":[J
    if-eqz v5, :cond_1

    .line 71
    const-string/jumbo v6, "SamsungSM9008WSimInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "---------------subIds[0] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-wide v8, v5, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string/jumbo v6, "SamsungSM9008WSimInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "---------------subIds[0] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-wide v8, v5, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v6, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->getSubscriberId:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-wide v10, v5, v10

    .line 74
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 73
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 76
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getSubId":Ljava/lang/reflect/Method;
    .end local v5    # "subIds":[J
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SamsungSM9008WSimInfo"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method protected invokeNetWork(ILjava/lang/reflect/Method;)I
    .locals 6
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 121
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SamsungG9008WSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 121
    invoke-static {p2, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 126
    :goto_0
    return v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungSM9008WSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
