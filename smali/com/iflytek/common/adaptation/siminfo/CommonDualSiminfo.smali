.class public Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;
.super Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;
.source "CommonDualSiminfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bDualSim:Z

.field private tm1:Ljava/lang/Object;

.field private tm2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 17
    const-string/jumbo v1, "CommonDualSimW2Siminfo"

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->TAG:Ljava/lang/String;

    .line 21
    iput-boolean v0, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->bDualSim:Z

    .line 27
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm1:Ljava/lang/Object;

    .line 28
    const-string/jumbo v1, "phone2"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm2:Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm1:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm2:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->bDualSim:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 7
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->isDoubleCard()Z

    move-result v4

    if-nez v4, :cond_1

    .line 42
    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v4, :cond_0

    .line 43
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v2

    .line 57
    :goto_0
    return-object v2

    .line 45
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0

    .line 49
    :cond_1
    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v4, :cond_2

    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm2:Ljava/lang/Object;

    .line 50
    .local v3, "obj":Ljava/lang/Object;
    :goto_1
    const-string/jumbo v2, ""

    .line 52
    .local v2, "imei":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "getDeviceId"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm1:Ljava/lang/Object;

    goto :goto_1

    .line 54
    .restart local v2    # "imei":Ljava/lang/String;
    .restart local v3    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CommonDualSimW2Siminfo"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 6
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->isDoubleCard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v3, :cond_0

    .line 109
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v1

    .line 123
    :goto_0
    return v1

    .line 111
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 115
    :cond_1
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v3, :cond_2

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm2:Ljava/lang/Object;

    .line 116
    .local v2, "obj":Ljava/lang/Object;
    :goto_1
    const/4 v1, 0x0

    .line 118
    .local v1, "networkType":I
    :try_start_0
    const-string/jumbo v3, "getNetworkType"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 115
    .end local v1    # "networkType":I
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm1:Ljava/lang/Object;

    goto :goto_1

    .line 120
    .restart local v1    # "networkType":I
    .restart local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "CommonDualSimW2Siminfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 7
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->isDoubleCard()Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v4, :cond_0

    .line 87
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v3

    .line 101
    :goto_0
    return-object v3

    .line 89
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0

    .line 93
    :cond_1
    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v4, :cond_2

    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm2:Ljava/lang/Object;

    .line 94
    .local v2, "obj":Ljava/lang/Object;
    :goto_1
    const-string/jumbo v3, ""

    .line 96
    .local v3, "simOperator":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "getSimOperator"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "simOperator":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm1:Ljava/lang/Object;

    goto :goto_1

    .line 98
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v3    # "simOperator":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CommonDualSimW2Siminfo"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 6
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->isDoubleCard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v3, :cond_0

    .line 131
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    .line 145
    :goto_0
    return v2

    .line 133
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v3, :cond_2

    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm2:Ljava/lang/Object;

    .line 138
    .local v1, "obj":Ljava/lang/Object;
    :goto_1
    const/4 v2, 0x0

    .line 140
    .local v2, "simState":I
    :try_start_0
    const-string/jumbo v3, "getSimState"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 137
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "simState":I
    :cond_2
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm1:Ljava/lang/Object;

    goto :goto_1

    .line 142
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "simState":I
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "CommonDualSimW2Siminfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 7
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->isDoubleCard()Z

    move-result v4

    if-nez v4, :cond_1

    .line 64
    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v4, :cond_0

    .line 65
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v2

    .line 79
    :goto_0
    return-object v2

    .line 67
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0

    .line 71
    :cond_1
    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v4, :cond_2

    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm2:Ljava/lang/Object;

    .line 72
    .local v3, "obj":Ljava/lang/Object;
    :goto_1
    const-string/jumbo v2, ""

    .line 74
    .local v2, "imsi":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "getSubscriberId"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->tm1:Ljava/lang/Object;

    goto :goto_1

    .line 76
    .restart local v2    # "imsi":Ljava/lang/String;
    .restart local v3    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CommonDualSimW2Siminfo"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/iflytek/common/adaptation/siminfo/CommonDualSiminfo;->bDualSim:Z

    return v0
.end method
