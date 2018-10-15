.class public abstract Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;
.source "HTCDualSimInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private getDeviceIdExt:Ljava/lang/reflect/Method;

.field protected getIccState:Ljava/lang/reflect/Method;

.field private getNetworkTypeExt:Ljava/lang/reflect/Method;

.field private getSubscriberIdExt:Ljava/lang/reflect/Method;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;-><init>(Landroid/content/Context;)V

    .line 15
    const-string/jumbo v0, "HTCDualSimInfo"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->TAG:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "phone"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 50
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->initMethod()V

    .line 51
    return-void
.end method

.method private getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getPhoneType()I

    move-result v0

    .line 155
    .local v0, "simId":I
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getSubPhoneType()I

    move-result v0

    .line 159
    :cond_0
    return v0
.end method

.method private initMethod()V
    .locals 6

    .prologue
    .line 55
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSubscriberIdExt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getSubscriberIdExt:Ljava/lang/reflect/Method;

    .line 58
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getNetworkTypeExt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getNetworkTypeExt:Ljava/lang/reflect/Method;

    .line 61
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getIccState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getIccState:Ljava/lang/reflect/Method;

    .line 64
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getDeviceIdExt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getDeviceIdExt:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HTCDualSimInfo"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 5
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 89
    .local v1, "simId":I
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getDeviceIdExt:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "imei":Ljava/lang/String;
    const-string/jumbo v2, "HTCDualSimInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDeviceId |simId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", imei = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 5
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 108
    .local v1, "simId":I
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getSubPhoneType()I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getNetworkTypeExt:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v0

    .line 110
    .local v0, "networkType":I
    const-string/jumbo v2, "HTCDualSimInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSubscriberId |simId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", networkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v0
.end method

.method protected abstract getPhoneType()I
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "imsi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 131
    :cond_0
    const/4 v1, 0x0

    .line 133
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    .line 150
    .local v0, "simId":I
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getIccState:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v1

    return v1
.end method

.method protected abstract getSubPhoneType()I
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 5
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 79
    .local v1, "simId":I
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getSubscriberIdExt:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "imsi":Ljava/lang/String;
    const-string/jumbo v2, "HTCDualSimInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSubscriberId |simId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v0
.end method

.method protected invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 169
    const/4 v2, 0x0

    .line 172
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

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

    .line 176
    :goto_0
    return-object v2

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HTCDualSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected invokeWithIntReturn(ILjava/lang/reflect/Method;)I
    .locals 6
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 182
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 182
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 187
    :goto_0
    return v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HTCDualSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract isDoubleSimReady()Z
.end method

.method protected isSimReady(I)Z
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v0, 0x1

    .line 165
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->getIccState:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, v1}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
