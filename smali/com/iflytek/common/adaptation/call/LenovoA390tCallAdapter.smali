.class public Lcom/iflytek/common/adaptation/call/LenovoA390tCallAdapter;
.super Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.source "LenovoA390tCallAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 21
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 22
    .local v1, "simId":I
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_0

    .line 23
    const/4 v1, 0x1

    .line 26
    :cond_0
    const-string/jumbo v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    const-string/jumbo v2, "phone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const-string/jumbo v2, "Bluetooth"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string/jumbo v2, "com.android.phone.extra.SIM_SELECTED"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    return-object v0
.end method
