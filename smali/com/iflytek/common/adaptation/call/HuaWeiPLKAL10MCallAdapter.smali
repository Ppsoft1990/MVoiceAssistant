.class public Lcom/iflytek/common/adaptation/call/HuaWeiPLKAL10MCallAdapter;
.super Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.source "HuaWeiPLKAL10MCallAdapter.java"


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
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 12
    const-string/jumbo v0, "HuaWeiPLKAL10MCallAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/HuaWeiPLKAL10MCallAdapter;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 22
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "HuaWeiPLKAL10MCallAdapter"

    const-string/jumbo v3, "getDialCallIntent"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v1, 0x0

    .line 24
    .local v1, "simId":I
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_0

    .line 25
    const/4 v1, 0x1

    .line 27
    :cond_0
    const-string/jumbo v2, "HuaWeiPLKAL10MCallAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string/jumbo v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    const-string/jumbo v2, "SPECIFIED_SUB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    const-string/jumbo v2, "com.android.phone.force.slot"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    const-string/jumbo v2, "com.android.phone.extra.slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string/jumbo v2, "Bluetooth"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    return-object v0
.end method
