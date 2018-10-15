.class public Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;
.source "SCSimInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SCSimInfo"


# instance fields
.field private bDualSim:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager0:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager1:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->bDualSim:Z

    .line 30
    const-string/jumbo v0, "phone"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 32
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->initMethod()V

    .line 33
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->checkDualSim()V

    .line 34
    return-void
.end method

.method private checkDualSim()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager0:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->bDualSim:Z

    .line 61
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDeviceId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 4
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 98
    const-string/jumbo v1, ""

    .line 100
    .local v1, "imei":Ljava/lang/String;
    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v1, ""

    .line 105
    :goto_0
    return-object v1

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SCSimInfo"

    const-string/jumbo v3, "getDeviceId"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getNetWorkType(Landroid/telephony/TelephonyManager;)I
    .locals 4
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, "networkType":I
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 163
    :goto_0
    return v1

    .line 159
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SCSimInfo"

    const-string/jumbo v3, "getNetWorkType"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getSimOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 4
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 185
    const-string/jumbo v1, ""

    .line 187
    .local v1, "simOperator":Ljava/lang/String;
    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v1, ""

    .line 192
    :goto_0
    return-object v1

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SCSimInfo"

    const-string/jumbo v3, "getSimOperator"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getSimState(Landroid/telephony/TelephonyManager;)I
    .locals 4
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 214
    const/4 v1, 0x1

    .line 216
    .local v1, "simState":I
    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 221
    :goto_0
    return v1

    .line 217
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SCSimInfo"

    const-string/jumbo v3, "getSimState"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getSubscriberId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 4
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 127
    const-string/jumbo v1, ""

    .line 130
    .local v1, "imsi":Ljava/lang/String;
    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v1, ""

    .line 134
    :goto_0
    return-object v1

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SCSimInfo"

    const-string/jumbo v3, "getSubscriberId"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initMethod()V
    .locals 7

    .prologue
    .line 38
    :try_start_0
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getDefault"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 40
    .local v1, "getDefaultMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 40
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager0:Landroid/telephony/TelephonyManager;

    .line 42
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 42
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "getDefaultMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SCSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_2

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager0:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getDeviceId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getDeviceId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getNetWorkType(Landroid/telephony/TelephonyManager;)I

    move-result v0

    .line 152
    :goto_0
    return v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_3

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager0:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getNetWorkType(Landroid/telephony/TelephonyManager;)I

    move-result v0

    goto :goto_0

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getNetWorkType(Landroid/telephony/TelephonyManager;)I

    move-result v0

    goto :goto_0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getSimOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 177
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_3

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager0:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getSimOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getSimOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getSimState(Landroid/telephony/TelephonyManager;)I

    move-result v0

    .line 210
    :goto_0
    return v0

    .line 202
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_3

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager0:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getSimState(Landroid/telephony/TelephonyManager;)I

    move-result v0

    goto :goto_0

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getSimState(Landroid/telephony/TelephonyManager;)I

    move-result v0

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getSubscriberId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 115
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 119
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_3

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager0:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getSubscriberId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->mTelephonyManager1:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->getSubscriberId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/iflytek/common/adaptation/siminfo/SCSimInfo;->bDualSim:Z

    return v0
.end method
