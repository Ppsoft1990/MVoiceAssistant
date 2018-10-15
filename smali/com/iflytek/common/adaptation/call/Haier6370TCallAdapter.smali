.class public Lcom/iflytek/common/adaptation/call/Haier6370TCallAdapter;
.super Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.source "Haier6370TCallAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 14
    const-string/jumbo v0, "Haier6370TCallAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/Haier6370TCallAdapter;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 10
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 24
    .local v2, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 26
    .local v4, "simId":I
    :try_start_0
    const-string/jumbo v8, "com.android.internal.telephony.PhoneConstants$SimId"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 27
    .local v5, "simIdClazz":Ljava/lang/Class;
    sget-object v8, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v8, :cond_0

    const-string/jumbo v7, "SIM1"

    .line 29
    .local v7, "simIdStr":Ljava/lang/String;
    :goto_0
    const-string/jumbo v8, "com.android.internal.telephony.PhoneConstants"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 30
    .local v0, "cls":Ljava/lang/Class;
    const-string/jumbo v8, "SIM_ID_KEY"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 31
    .local v6, "simIdKey":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 32
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 33
    .local v3, "key":Ljava/lang/String;
    invoke-static {v5, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 38
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "simIdClazz":Ljava/lang/Class;
    .end local v6    # "simIdKey":Ljava/lang/reflect/Field;
    .end local v7    # "simIdStr":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 27
    .restart local v5    # "simIdClazz":Ljava/lang/Class;
    :cond_0
    const-string/jumbo v7, "SIM2"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    .end local v5    # "simIdClazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "Haier6370TCallAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
