.class public Lcom/iflytek/common/adaptation/call/HTCD826tCallAdapter;
.super Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.source "HTCD826tCallAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 16
    const-string/jumbo v0, "HTCD826tCallAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/HTCD826tCallAdapter;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    .line 28
    .local v1, "simId":I
    :goto_0
    const-string/jumbo v2, "slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    return-object v0

    .line 27
    .end local v1    # "simId":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
