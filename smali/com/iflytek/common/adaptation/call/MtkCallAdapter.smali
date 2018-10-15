.class public Lcom/iflytek/common/adaptation/call/MtkCallAdapter;
.super Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.source "MtkCallAdapter.java"


# instance fields
.field private final EXTRA_SLOT_ID:Ljava/lang/String;

.field private final SIM_ID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 17
    const-string/jumbo v0, "com.android.phone.extra.slot"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/MtkCallAdapter;->EXTRA_SLOT_ID:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "simId"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/MtkCallAdapter;->SIM_ID:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/high16 v5, 0x10000000

    const/4 v3, 0x1

    .line 27
    iget-object v4, p0, Lcom/iflytek/common/adaptation/call/MtkCallAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v4}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v4

    if-nez v4, :cond_0

    .line 29
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 32
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .local v1, "sdk":I
    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v4, :cond_1

    move v2, v3

    .line 35
    .local v2, "simId":I
    :goto_1
    const/4 v0, 0x0

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const/16 v4, 0x10

    if-lt v1, v4, :cond_2

    .line 38
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    const-string/jumbo v3, "com.android.phone.extra.slot"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string/jumbo v3, "simId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 33
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "simId":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 44
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "simId":I
    :cond_2
    const/16 v4, 0xe

    if-lt v1, v4, :cond_3

    .line 46
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.phone.OutgoingCallReceiver"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.phone.extra.slot"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    const-string/jumbo v4, "simId"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    const-string/jumbo v4, "com.android.phone.force.slot"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.OutgoingCallReceiver"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 54
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "out_going_call_to_phone_app"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v4, "number"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string/jumbo v4, "simId"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string/jumbo v4, "com.android.phone.extra.slot"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string/jumbo v4, "launch_from_dialer"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method
