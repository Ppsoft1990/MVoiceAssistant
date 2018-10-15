.class public Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;
.super Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.source "MtkCpuAbove6735CallAdapter.java"


# static fields
.field private static final SIM1:I = 0x0

.field private static final SIM2:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private getCallCapablePhoneAccounts:Ljava/lang/reflect/Method;

.field private getId:Ljava/lang/reflect/Method;

.field private getPhoneId:Ljava/lang/reflect/Method;

.field private telecomManagerObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramISimInfoAdaptation"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->TAG:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->initMethod()V

    .line 32
    return-void
.end method

.method private initMethod()V
    .locals 8

    .prologue
    .line 36
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "telecom"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->telecomManagerObj:Ljava/lang/Object;

    .line 37
    iget-object v4, p0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->telecomManagerObj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 38
    .local v3, "telecomManagerCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getCallCapablePhoneAccounts"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->getCallCapablePhoneAccounts:Ljava/lang/reflect/Method;

    .line 39
    const-string/jumbo v4, "android.telephony.SubscriptionManager"

    invoke-static {v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 40
    .local v2, "subscriptionManagerCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getPhoneId"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->getPhoneId:Ljava/lang/reflect/Method;

    .line 41
    const-string/jumbo v4, "android.telecom.PhoneAccountHandle"

    invoke-static {v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 42
    .local v1, "phoneAccountHandleCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-static {v1, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->getId:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "phoneAccountHandleCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "subscriptionManagerCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "telecomManagerCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 18
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 49
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v10}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v10

    if-nez v10, :cond_0

    .line 50
    invoke-super/range {p0 .. p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 74
    :goto_0
    return-object v5

    .line 53
    :cond_0
    invoke-super/range {p0 .. p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 54
    .local v5, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 55
    .local v9, "simId":I
    sget-object v10, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 56
    const/4 v9, 0x1

    .line 58
    :cond_1
    const-string/jumbo v10, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const/4 v8, 0x0

    .line 61
    .local v8, "parcelable":Landroid/os/Parcelable;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->getCallCapablePhoneAccounts:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->telecomManagerObj:Ljava/lang/Object;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 62
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 63
    .local v7, "object":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->getId:Ljava/lang/reflect/Method;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 64
    .local v4, "id":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->getPhoneId:Ljava/lang/reflect/Method;

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v10, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 65
    .local v3, "i":I
    if-ne v3, v9, :cond_2

    .line 66
    move-object v0, v7

    check-cast v0, Landroid/os/Parcelable;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    .end local v3    # "i":I
    .end local v4    # "id":Ljava/lang/Long;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v7    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iflytek/common/adaptation/call/MtkCpuAbove6735CallAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v10, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method
