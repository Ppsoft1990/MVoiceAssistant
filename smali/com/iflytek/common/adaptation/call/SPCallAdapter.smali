.class public Lcom/iflytek/common/adaptation/call/SPCallAdapter;
.super Lcom/iflytek/common/adaptation/call/SCCallAdapter;
.source "SPCallAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/SCCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 24
    const-string/jumbo v0, "HaierHTI600CallAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/SPCallAdapter;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/common/adaptation/call/SPCallAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/adaptation/call/SPCallAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/call/SPCallAdapter;->setDefaultSim(I)V

    return-void
.end method

.method private changeDefaultSim(I)V
    .locals 9
    .param p1, "simId"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 50
    const-string/jumbo v6, "HaierHTI600CallAdapter"

    const-string/jumbo v7, "changeDefaultSim"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v6, p0, Lcom/iflytek/common/adaptation/call/SPCallAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    sget-object v7, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-interface {v6, v7}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v3

    .line 52
    .local v3, "simState1":I
    iget-object v6, p0, Lcom/iflytek/common/adaptation/call/SPCallAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    sget-object v7, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-interface {v6, v7}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v4

    .line 57
    .local v4, "simState2":I
    if-ne v3, v8, :cond_1

    move v1, v2

    .line 58
    .local v1, "sim1Ready":Z
    :goto_0
    if-ne v4, v8, :cond_2

    .line 59
    .local v2, "sim2Ready":Z
    :goto_1
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 60
    const-string/jumbo v5, "HaierHTI600CallAdapter"

    const-string/jumbo v6, "changeDefaultSim | double sim is ready"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/call/SPCallAdapter;->getDefaultSim()I

    move-result v0

    .line 62
    .local v0, "defaultSimId":I
    if-ne p1, v0, :cond_3

    .line 63
    const-string/jumbo v5, "HaierHTI600CallAdapter"

    const-string/jumbo v6, "changeDefaultSim | simId == defaultSimId"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "defaultSimId":I
    :cond_0
    :goto_2
    return-void

    .end local v1    # "sim1Ready":Z
    .end local v2    # "sim2Ready":Z
    :cond_1
    move v1, v5

    .line 57
    goto :goto_0

    .restart local v1    # "sim1Ready":Z
    :cond_2
    move v2, v5

    .line 58
    goto :goto_1

    .line 67
    .restart local v0    # "defaultSimId":I
    .restart local v2    # "sim2Ready":Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/call/SPCallAdapter;->setDefaultSim(I)V

    .line 68
    const-string/jumbo v5, "HaierHTI600CallAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "changeDefaultSim | defaultSimId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", set new simId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/call/SPCallAdapter;->restoreDefaultSim(I)V

    goto :goto_2
.end method

.method private getDefaultSim()I
    .locals 8

    .prologue
    .line 98
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 99
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, -0x1

    .line 101
    .local v1, "defaultSimId":I
    :try_start_0
    const-string/jumbo v4, "getDefaultSim"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 103
    .local v3, "getDefaultSim":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/iflytek/common/adaptation/call/SPCallAdapter;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 104
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 103
    invoke-static {v3, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    .end local v3    # "getDefaultSim":Ljava/lang/reflect/Method;
    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "HaierHTI600CallAdapter"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private restoreDefaultSim(I)V
    .locals 2
    .param p1, "defaultSimId"    # I

    .prologue
    .line 117
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/common/adaptation/call/SPCallAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/common/adaptation/call/SPCallAdapter$1;-><init>(Lcom/iflytek/common/adaptation/call/SPCallAdapter;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    return-void
.end method

.method private setDefaultSim(I)V
    .locals 7
    .param p1, "simId"    # I

    .prologue
    .line 82
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 84
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string/jumbo v3, "setDefaultSim"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 86
    .local v2, "setDefaultSim":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/iflytek/common/adaptation/call/SPCallAdapter;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v2    # "setDefaultSim":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HaierHTI600CallAdapter"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 34
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v3, :cond_0

    move v1, v2

    .line 37
    .local v1, "simId":I
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/SCCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.phone.extra.SIM_SELECTED"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    const-string/jumbo v3, "phone_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    const-string/jumbo v3, "Bluetooth"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    return-object v0

    .line 34
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "simId":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
