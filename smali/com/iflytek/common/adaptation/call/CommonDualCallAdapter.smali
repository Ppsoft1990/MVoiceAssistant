.class public Lcom/iflytek/common/adaptation/call/CommonDualCallAdapter;
.super Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.source "CommonDualCallAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonDualCallAdapter"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 20
    iput-object p1, p0, Lcom/iflytek/common/adaptation/call/CommonDualCallAdapter;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public detect()Z
    .locals 5

    .prologue
    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/call/CommonDualCallAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone2"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 41
    .local v1, "tm2":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 43
    :try_start_1
    const-string/jumbo v2, "getSubscriberId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    const/4 v2, 0x1

    .line 54
    .end local v1    # "tm2":Ljava/lang/Object;
    :goto_0
    return v2

    .line 46
    .restart local v1    # "tm2":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "CommonDualCallAdapter"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "tm2":Ljava/lang/Object;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CommonDualCallAdapter"

    const-string/jumbo v3, "detect"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne v1, p1, :cond_0

    .line 28
    const-string/jumbo v1, "android.phone.extra.slot2"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string/jumbo v1, "android.phone.extra.slot2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
