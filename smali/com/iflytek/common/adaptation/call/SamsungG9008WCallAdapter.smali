.class public Lcom/iflytek/common/adaptation/call/SamsungG9008WCallAdapter;
.super Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;
.source "SamsungG9008WCallAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 20
    const-string/jumbo v0, "SamsungSM9008WCallAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungG9008WCallAdapter;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 14
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 30
    invoke-super/range {p0 .. p2}, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 32
    .local v5, "intent":Landroid/content/Intent;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_0

    .line 33
    sget-object v10, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v10, :cond_1

    .line 35
    .local v7, "simId":I
    :goto_0
    :try_start_0
    const-string/jumbo v9, "android.telephony.SubscriptionManager"

    .line 36
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 38
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v9, "getSubId"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 39
    .local v4, "getSubId":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 40
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    move-object v0, v9

    check-cast v0, [J

    move-object v8, v0

    .line 41
    .local v8, "subIds":[J
    const-string/jumbo v9, "setDefaultVoiceSubId"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 43
    .local v6, "setDefaultVoiceSubId":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-wide v12, v8, v11

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getSubId":Ljava/lang/reflect/Method;
    .end local v6    # "setDefaultVoiceSubId":Ljava/lang/reflect/Method;
    .end local v7    # "simId":I
    .end local v8    # "subIds":[J
    :cond_0
    :goto_1
    return-object v5

    :cond_1
    move v7, v9

    .line 33
    goto :goto_0

    .line 45
    .restart local v7    # "simId":I
    :catch_0
    move-exception v3

    .line 46
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SamsungSM9008WCallAdapter"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
