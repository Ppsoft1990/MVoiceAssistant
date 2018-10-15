.class public Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;
.super Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.source "SamsungGTI8558CallAdapter.java"


# instance fields
.field private MGetITelephony:Ljava/lang/reflect/Method;

.field private final SIM_ID:Ljava/lang/String;

.field private final SIM_SLOT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mSecondTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 21
    const-string/jumbo v0, "SamsungI909CallAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->TAG:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "simId"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->SIM_ID:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "simSlot"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->SIM_SLOT:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private endCall(Landroid/telephony/TelephonyManager;)V
    .locals 4
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->MGetITelephony:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ITelephony;

    .line 74
    .local v1, "mTelephony":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "mTelephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initTelephonyManager(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    iget-object v4, p0, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_0

    .line 68
    :goto_0
    return-void

    .line 53
    :cond_0
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 54
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getFirst"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 55
    .local v2, "getFirst":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 56
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 58
    const-string/jumbo v4, "getSecondary"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 59
    .local v3, "getSecondary":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 60
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 61
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 63
    const-class v4, Landroid/telephony/TelephonyManager;

    const-string/jumbo v5, "getITelephony"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->MGetITelephony:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getFirst":Ljava/lang/reflect/Method;
    .end local v3    # "getSecondary":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SamsungI909CallAdapter"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public detect()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 90
    :try_start_0
    const-class v5, Landroid/telephony/TelephonyManager;

    const-string/jumbo v6, "getSecondary"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 91
    .local v1, "getSecondary":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 92
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 93
    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .local v2, "secondTelephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 100
    .end local v1    # "getSecondary":Ljava/lang/reflect/Method;
    .end local v2    # "secondTelephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return v3

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SamsungI909CallAdapter"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v4

    .line 100
    goto :goto_0
.end method

.method public endCall(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->initTelephonyManager(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->mFirstTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->endCall(Landroid/telephony/TelephonyManager;)V

    .line 84
    iget-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->mSecondTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;->endCall(Landroid/telephony/TelephonyManager;)V

    .line 85
    return-void
.end method

.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    .line 38
    .local v1, "simId":I
    :goto_0
    const-string/jumbo v2, "simId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    const-string/jumbo v2, "simSlot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    return-object v0

    .line 37
    .end local v1    # "simId":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
