.class public Lcom/iflytek/common/adaptation/call/MSimCallAdapter;
.super Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.source "MSimCallAdapter.java"


# static fields
.field private static final SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 21
    const-string/jumbo v0, "MSimCallAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/MSimCallAdapter;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private endCallByPhoneId(I)V
    .locals 11
    .param p1, "phoneId"    # I

    .prologue
    .line 68
    :try_start_0
    iget-object v7, p0, Lcom/iflytek/common/adaptation/call/MSimCallAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone_msim"

    .line 69
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 71
    .local v6, "objMSimTelephonyManager":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 72
    .local v1, "clsMSimTelephonyManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "getITelephonyMSim"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v1, v7, v8}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 75
    .local v4, "mdGetITelephonyMSim":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 82
    .local v5, "objITelephonyMSim":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, "clsITelephonyMSim":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "endCall"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 85
    .local v3, "mdEndCall":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "clsITelephonyMSim":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clsMSimTelephonyManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "mdEndCall":Ljava/lang/reflect/Method;
    .end local v4    # "mdGetITelephonyMSim":Ljava/lang/reflect/Method;
    .end local v5    # "objITelephonyMSim":Ljava/lang/Object;
    .end local v6    # "objMSimTelephonyManager":Ljava/lang/Object;
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public detect()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 94
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/common/adaptation/call/MSimCallAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone_msim"

    .line 95
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 97
    .local v2, "objMSimTelephonyManager":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 98
    .local v0, "clsMSimTelephonyManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getITelephonyMSim"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-static {v0, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    const/4 v3, 0x1

    .line 104
    .end local v0    # "clsMSimTelephonyManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "objMSimTelephonyManager":Ljava/lang/Object;
    :goto_0
    return v3

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MSimCallAdapter"

    const-string/jumbo v5, "detect"

    invoke-static {v4, v5, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public endCall(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string/jumbo v1, "subscription"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, "phoneId":I
    const-string/jumbo v1, "MSimCallAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "endCall | phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-ne v0, v4, :cond_2

    .line 53
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/iflytek/common/adaptation/call/MSimCallAdapter;->endCallByPhoneId(I)V

    .line 54
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/common/adaptation/call/MSimCallAdapter;->endCallByPhoneId(I)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/call/MSimCallAdapter;->endCallByPhoneId(I)V

    goto :goto_0
.end method

.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 34
    .local v1, "simId":I
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_0

    .line 35
    const/4 v1, 0x1

    .line 37
    :cond_0
    const-string/jumbo v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    const-string/jumbo v2, "SPECIFIED_SUB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    const-string/jumbo v2, "com.android.phone.force.slot"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    const-string/jumbo v2, "com.android.phone.extra.slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string/jumbo v2, "Bluetooth"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    return-object v0
.end method
