.class public Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;
.super Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.source "SamsungDualSimCallAdapter.java"


# instance fields
.field private final SIM_ID:Ljava/lang/String;

.field private final SIM_NUM:Ljava/lang/String;

.field private final SIM_SLOT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private getITelephony:Ljava/lang/reflect/Method;

.field private mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mSecondTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 17
    const-string/jumbo v0, "SamsungDualSimCallAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->TAG:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "simnum"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->SIM_NUM:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "simId"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->SIM_ID:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "simSlot"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->SIM_SLOT:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private endCall(Landroid/telephony/TelephonyManager;)V
    .locals 4
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->getITelephony:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ITelephony;

    .line 92
    .local v1, "mTelephony":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v1    # "mTelephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getTelephonyManager(Ljava/lang/String;)Landroid/telephony/TelephonyManager;
    .locals 7
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v4, 0x0

    .line 75
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 76
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 77
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 78
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SamsungDualSimCallAdapter"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initTelephonyManager(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string/jumbo v1, "getFirst"

    invoke-direct {p0, v1}, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->getTelephonyManager(Ljava/lang/String;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 49
    iget-object v1, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    .line 50
    const-string/jumbo v1, "getDefault"

    invoke-direct {p0, v1}, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->getTelephonyManager(Ljava/lang/String;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_3

    .line 54
    const-string/jumbo v1, "phone"

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 58
    :cond_3
    const-string/jumbo v1, "phone2"

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 60
    iget-object v1, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_4

    .line 61
    const-string/jumbo v1, "getSecondary"

    invoke-direct {p0, v1}, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->getTelephonyManager(Ljava/lang/String;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 65
    :cond_4
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getITelephony"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->getITelephony:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SamsungDualSimCallAdapter"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public detect()Z
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone2"

    .line 110
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 111
    .local v0, "secondTelephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 112
    const/4 v1, 0x1

    .line 114
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public endCall(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    const-string/jumbo v0, "SamsungDualSimCallAdapter"

    const-string/jumbo v1, "getDialCallIntent"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->endCall(Landroid/content/Intent;)V

    .line 102
    iget-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->initTelephonyManager(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->endCall(Landroid/telephony/TelephonyManager;)V

    .line 104
    iget-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->endCall(Landroid/telephony/TelephonyManager;)V

    .line 105
    return-void
.end method

.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x2

    .line 36
    .local v1, "simId":I
    :goto_0
    const-string/jumbo v2, "simnum"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    const-string/jumbo v2, "simId"

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    const-string/jumbo v2, "simSlot"

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    return-object v0

    .line 35
    .end local v1    # "simId":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
