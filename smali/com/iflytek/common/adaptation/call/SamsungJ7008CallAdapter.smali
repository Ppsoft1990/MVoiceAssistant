.class public Lcom/iflytek/common/adaptation/call/SamsungJ7008CallAdapter;
.super Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;
.source "SamsungJ7008CallAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 21
    const-string/jumbo v0, "SamsungJ7008CallAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/SamsungJ7008CallAdapter;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 30
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 32
    .local v4, "intent":Landroid/content/Intent;
    sget-object v9, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v9, :cond_0

    .line 34
    .local v6, "simId":I
    :goto_0
    :try_start_0
    const-string/jumbo v8, "android.telephony.SubscriptionManager"

    .line 35
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 37
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "getSubId"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 38
    .local v3, "getSubId":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 39
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    move-object v0, v8

    check-cast v0, [I

    move-object v7, v0

    .line 40
    .local v7, "subIds":[I
    const-string/jumbo v8, "setDefaultVoiceSubId"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 42
    .local v5, "setDefaultVoiceSubId":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 43
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getSubId":Ljava/lang/reflect/Method;
    .end local v5    # "setDefaultVoiceSubId":Ljava/lang/reflect/Method;
    .end local v7    # "subIds":[I
    :goto_1
    return-object v4

    .end local v6    # "simId":I
    :cond_0
    move v6, v8

    .line 32
    goto :goto_0

    .line 44
    .restart local v6    # "simId":I
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "SamsungJ7008CallAdapter"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
