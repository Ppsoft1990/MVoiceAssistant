.class public Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;
.source "MtkSimInfo.java"


# instance fields
.field private final DEFAULT_SIM_NOT_SET:I

.field private final DEFAULT_SIM_SETTING_ALWAYS_ASK:I

.field private final SIM1:I

.field private final SIM2:I

.field private final SMS_SIM_SETTING:Ljava/lang/String;

.field private final SMS_SIM_SETTING_AUTO:I

.field private final TAG:Ljava/lang/String;

.field TelephonyManagerExObj:Ljava/lang/Object;

.field TelephonyManagerExcls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final VOICE_CALL_SIM_SETTING:Ljava/lang/String;

.field private bDualSim:Z

.field private getDefaultSim:Ljava/lang/reflect/Method;

.field private getDeviceIdGemini:Ljava/lang/reflect/Method;

.field private getNetworkTypeGemini:Ljava/lang/reflect/Method;

.field private getSimOperatorGemini:Ljava/lang/reflect/Method;

.field private getSimStateGemini:Ljava/lang/reflect/Method;

.field private getSmsDefaultSim:Ljava/lang/reflect/Method;

.field private getSubscriberIdGemini:Ljava/lang/reflect/Method;

.field private mContext:Landroid/content/Context;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 24
    const-string/jumbo v0, "MtkSimInfo"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->TAG:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "voice_call_sim_setting"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->VOICE_CALL_SIM_SETTING:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "sms_sim_setting"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->SMS_SIM_SETTING:Ljava/lang/String;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->DEFAULT_SIM_SETTING_ALWAYS_ASK:I

    .line 29
    const/4 v0, -0x5

    iput v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->DEFAULT_SIM_NOT_SET:I

    .line 30
    const/4 v0, -0x3

    iput v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->SMS_SIM_SETTING_AUTO:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->SIM1:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->SIM2:I

    .line 47
    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->TelephonyManagerExcls:Ljava/lang/Class;

    .line 48
    iput-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->TelephonyManagerExObj:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->mContext:Landroid/content/Context;

    .line 52
    const-string/jumbo v0, "phone"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 54
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->initCls()V

    .line 55
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->initMethod()V

    .line 56
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->checkDualSim()V

    .line 59
    return-void
.end method

.method private checkDualSim()V
    .locals 5

    .prologue
    .line 343
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 344
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "mtkGeminiSupport"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 345
    .local v2, "mtkGeminiSupport":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 346
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->bDualSim:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "mtkGeminiSupport":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MtkSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->bDualSim:Z

    goto :goto_0
.end method

.method private getFirstSimId()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method private getNetworkTypeGeminiByReflect(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getNetworkTypeGemini:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, v0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v0

    return v0
.end method

.method private getSecondSimId()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method private getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getFirstSimId()I

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSecondSimId()I

    move-result v0

    goto :goto_0
.end method

.method private getSimOperatorGeminiByReflect(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSimOperatorGemini:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, v0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSimStateGeminiByReflect(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSimStateGemini:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, v0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v0

    return v0
.end method

.method private getSubscriberIdGeminiByReflect(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSubscriberIdGemini:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, v0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCls()V
    .locals 5

    .prologue
    .line 209
    :try_start_0
    const-string/jumbo v2, "com.mediatek.telephony.TelephonyManagerEx"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->TelephonyManagerExcls:Ljava/lang/Class;

    .line 210
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->TelephonyManagerExcls:Ljava/lang/Class;

    const-string/jumbo v3, "getDefault"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 212
    .local v1, "getDefault":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->TelephonyManagerExObj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v1    # "getDefault":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MtkSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initMethod()V
    .locals 7

    .prologue
    .line 222
    :try_start_0
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getSubscriberIdGemini"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSubscriberIdGemini:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    :try_start_1
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getSimStateGemini"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSimStateGemini:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 249
    :goto_1
    :try_start_2
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getNetworkTypeGemini"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getNetworkTypeGemini:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 262
    :goto_2
    :try_start_3
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getDeviceIdGemini"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getDeviceIdGemini:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 275
    :goto_3
    :try_start_4
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getSimOperatorGemini"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSimOperatorGemini:Ljava/lang/reflect/Method;

    .line 278
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getDefaultSim"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getDefaultSim:Ljava/lang/reflect/Method;

    .line 281
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getSmsDefaultSim"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSmsDefaultSim:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 286
    :goto_4
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->TelephonyManagerExcls:Ljava/lang/Class;

    const-string/jumbo v3, "getSubscriberId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSubscriberIdGemini:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 230
    :catch_1
    move-exception v1

    .line 232
    .local v1, "e1":Ljava/lang/Exception;
    const-string/jumbo v2, "MtkSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 241
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->TelephonyManagerExcls:Ljava/lang/Class;

    const-string/jumbo v3, "getSimState"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSimStateGemini:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 243
    :catch_3
    move-exception v1

    .line 245
    .restart local v1    # "e1":Ljava/lang/Exception;
    const-string/jumbo v2, "MtkSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 254
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_7
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->TelephonyManagerExcls:Ljava/lang/Class;

    const-string/jumbo v3, "getNetworkType"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getNetworkTypeGemini:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_2

    .line 256
    :catch_5
    move-exception v1

    .line 258
    .restart local v1    # "e1":Ljava/lang/Exception;
    const-string/jumbo v2, "MtkSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 267
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_8
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->TelephonyManagerExcls:Ljava/lang/Class;

    const-string/jumbo v3, "getDeviceId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getDeviceIdGemini:Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_3

    .line 269
    :catch_7
    move-exception v1

    .line 271
    .restart local v1    # "e1":Ljava/lang/Exception;
    const-string/jumbo v2, "MtkSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 284
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MtkSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method

.method private invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 8
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 293
    const/4 v3, 0x0

    .line 296
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p2, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-object v3

    .line 297
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSubscriberIdGemini:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v4}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getDeviceIdGemini:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v4}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->TelephonyManagerExObj:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p2, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 302
    :catch_1
    move-exception v2

    .line 304
    .local v2, "e2":Ljava/lang/Exception;
    const-string/jumbo v4, "MtkSimInfo"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 307
    .end local v2    # "e2":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v4, "MtkSimInfo"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokeWithIntReturn(ILjava/lang/reflect/Method;)I
    .locals 7
    .param p1, "simId"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 317
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 318
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 317
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 333
    :goto_0
    return v2

    .line 319
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSimStateGemini:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getNetworkTypeGemini:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->TelephonyManagerExObj:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 323
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 325
    :catch_1
    move-exception v1

    .line 327
    .local v1, "e2":Ljava/lang/Exception;
    const-string/jumbo v3, "MtkSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 330
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v3, "MtkSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isDefaultSim(Lcom/iflytek/common/adaptation/entity/SimCard;)Z
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getDefaultSimId()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDoubleSimReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, v1}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->isSimReady(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->isSimReady(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isSimReady(I)Z
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSimStateGeminiByReflect(I)I

    move-result v0

    .line 164
    .local v0, "sim1State":I
    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->isSimStateReady(I)Z

    move-result v1

    return v1
.end method

.method private isSimStateReady(I)Z
    .locals 1
    .param p1, "simState"    # I

    .prologue
    const/4 v0, 0x1

    .line 159
    if-eq p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDefaultSimId()I
    .locals 5

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 174
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getDefaultSim:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 175
    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 174
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MtkSimInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->isDoubleCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;->getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    .line 69
    .local v0, "simId":I
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getDeviceIdGemini:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->invoke(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNetWorkType(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    if-eqz p1, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 86
    :goto_0
    return v0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->isDoubleSimReady()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->isDefaultSim(Lcom/iflytek/common/adaptation/entity/SimCard;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0

    .line 86
    :cond_4
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSecondSimId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getNetworkTypeGeminiByReflect(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    if-eqz p1, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 96
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 100
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->isDoubleSimReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_3
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSimOperatorGeminiByReflect(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 121
    :goto_0
    return v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :cond_2
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSimStateGeminiByReflect(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 1
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 135
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 139
    :cond_1
    if-nez p1, :cond_2

    .line 140
    iget-object v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_2
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSimId(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSubscriberIdGeminiByReflect(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemCallSetting()Lcom/iflytek/common/adaptation/entity/SystemSettings;
    .locals 4

    .prologue
    .line 388
    const/4 v0, -0x1

    .line 392
    .local v0, "id":I
    iget-object v2, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "voice_call_sim_setting"

    invoke-static {v2, v3}, Lip;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 397
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, -0x5

    if-ne v0, v2, :cond_1

    .line 398
    :cond_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SystemSettings;->alwaysAsk:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    .line 408
    :goto_0
    return-object v2

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getDefaultSimId()I

    move-result v1

    .line 402
    .local v1, "which":I
    if-nez v1, :cond_2

    .line 403
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SystemSettings;->first:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    goto :goto_0

    .line 404
    :cond_2
    const/4 v2, 0x1

    if-ne v2, v1, :cond_3

    .line 405
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SystemSettings;->second:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    goto :goto_0

    .line 408
    :cond_3
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SystemSettings;->alwaysAsk:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    goto :goto_0
.end method

.method public getSystemSmsSetting()Lcom/iflytek/common/adaptation/entity/SystemSettings;
    .locals 6

    .prologue
    .line 355
    const/4 v1, -0x1

    .line 357
    .local v1, "id":I
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->mContext:Landroid/content/Context;

    .line 358
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sms_sim_setting"

    .line 357
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    long-to-int v1, v4

    .line 369
    :goto_0
    const/4 v2, 0x0

    .line 371
    .local v2, "which":I
    :try_start_1
    iget-object v3, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->getSmsDefaultSim:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 377
    :goto_1
    if-nez v2, :cond_0

    .line 378
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SystemSettings;->first:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    .line 383
    :goto_2
    return-object v3

    .line 359
    .end local v2    # "which":I
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "MtkSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 373
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2    # "which":I
    :catch_1
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MtkSimInfo"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    .line 380
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SystemSettings;->second:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    goto :goto_2

    .line 383
    :cond_1
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SystemSettings;->alwaysAsk:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    goto :goto_2
.end method

.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/iflytek/common/adaptation/siminfo/MtkSimInfo;->bDualSim:Z

    return v0
.end method
