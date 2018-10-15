.class public Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;
.source "OppoN5207SimInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoN5207SimInfo"


# instance fields
.field private getDeviceIdGemini:Ljava/lang/reflect/Method;

.field private getNetworkTypeGemini:Ljava/lang/reflect/Method;

.field private getSimOperatorGemini:Ljava/lang/reflect/Method;

.field private getSimStateGemini:Ljava/lang/reflect/Method;

.field private getSubscriberIdGemini:Ljava/lang/reflect/Method;

.field private mTel:Ljava/lang/Object;

.field private mTelephonyManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->initMethodInLevel(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private getFirstSimId()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method private getSecondSimId()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method private getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 163
    if-eqz p1, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getFirstSimId()I

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSecondSimId()I

    move-result v0

    goto :goto_0
.end method

.method private initMethodInLevel(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    :try_start_0
    const-string/jumbo v1, "android.telephony.ColorOSTelephonyManager"

    .line 28
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTelephonyManager:Ljava/lang/Class;

    .line 29
    const-string/jumbo v1, "OppoN5207SimInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTelephonyManager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTelephonyManager:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTelephonyManager:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTel:Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTelephonyManager:Ljava/lang/Class;

    const-string/jumbo v2, "getSimStateGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSimStateGemini:Ljava/lang/reflect/Method;

    .line 33
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTelephonyManager:Ljava/lang/Class;

    const-string/jumbo v2, "getDeviceIdGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getDeviceIdGemini:Ljava/lang/reflect/Method;

    .line 35
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTelephonyManager:Ljava/lang/Class;

    const-string/jumbo v2, "getSubscriberIdGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSubscriberIdGemini:Ljava/lang/reflect/Method;

    .line 37
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTelephonyManager:Ljava/lang/Class;

    const-string/jumbo v2, "getNetworkTypeGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getNetworkTypeGemini:Ljava/lang/reflect/Method;

    .line 39
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTelephonyManager:Ljava/lang/Class;

    const-string/jumbo v2, "getSimOperatorGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSimOperatorGemini:Ljava/lang/reflect/Method;

    .line 42
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSimStateGemini:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 43
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getDeviceIdGemini:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSubscriberIdGemini:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 45
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getNetworkTypeGemini:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSimOperatorGemini:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "OppoN5207SimInfo"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 8
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    :try_start_0
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 59
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    .line 60
    .local v2, "simId":I
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getDeviceIdGemini:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTel:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, "debiceId":Ljava/lang/String;
    const-string/jumbo v3, "OppoN5207SimInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDeviceId |simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", debiceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 65
    .end local v0    # "debiceId":Ljava/lang/String;
    .end local v2    # "simId":I
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "OppoN5207SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 71
    :goto_1
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 69
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OppoN5207SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 8
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    :try_start_0
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 126
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    .line 127
    .local v2, "simId":I
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getNetworkTypeGemini:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTel:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 127
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 129
    .local v1, "nettype":I
    const-string/jumbo v3, "OppoN5207SimInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getNetworkType |simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", nettype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 132
    .end local v1    # "nettype":I
    .end local v2    # "simId":I
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "OppoN5207SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 138
    :goto_1
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OppoN5207SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 10
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    :try_start_0
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 116
    :goto_0
    return-object v1

    .line 103
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    .line 104
    .local v2, "simId":I
    const-string/jumbo v3, "OppoN5207SimInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "opera="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSimStateGemini:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTel:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string/jumbo v3, "OppoN5207SimInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "opera2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSimStateGemini:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTel:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSimStateGemini:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTel:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "opera":Ljava/lang/String;
    const-string/jumbo v3, "OppoN5207SimInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSimOperator |simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", opera = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 110
    .end local v1    # "opera":Ljava/lang/String;
    .end local v2    # "simId":I
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "OppoN5207SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :goto_1
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OppoN5207SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 8
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    :try_start_0
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 159
    :goto_0
    return v2

    .line 148
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 149
    .local v1, "simId":I
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSimStateGemini:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTel:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 150
    .local v2, "simState":I
    const-string/jumbo v3, "OppoN5207SimInfo"

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

    .line 153
    .end local v1    # "simId":I
    .end local v2    # "simState":I
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "OppoN5207SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    :goto_1
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 157
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OppoN5207SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 8
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    :try_start_0
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 81
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    .line 82
    .local v2, "simId":I
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->getSubscriberIdGemini:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/iflytek/common/adaptation/siminfo/OppoN5207SimInfo;->mTel:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    .local v1, "imsi":Ljava/lang/String;
    const-string/jumbo v3, "OppoN5207SimInfo"

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

    .line 87
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v2    # "simId":I
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "OppoN5207SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 93
    :goto_1
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OppoN5207SimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method
