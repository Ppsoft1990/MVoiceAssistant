.class public Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.super Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
.source "DefaultCallAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 23
    return-void
.end method


# virtual methods
.method public detect()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public filterPhoneStateChangeReceiver(Landroid/content/Intent;)Lgy;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "callIntent":Lgy;
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->isPhoneAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v1, Lgy;

    .end local v1    # "callIntent":Lgy;
    invoke-direct {v1}, Lgy;-><init>()V

    .line 48
    .restart local v1    # "callIntent":Lgy;
    iput-object v0, v1, Lgy;->a:Ljava/lang/String;

    .line 49
    const-string/jumbo v2, "incoming_number"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lgy;->b:Ljava/lang/String;

    .line 50
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lgy;->c:Ljava/lang/String;

    .line 51
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    iput-object v2, v1, Lgy;->d:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 54
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    const-string/jumbo v3, "tel"

    .line 28
    invoke-static {v3, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x34000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    const-string/jumbo v2, "tel"

    invoke-static {v2, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 35
    :cond_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    .line 36
    .local v1, "simid":I
    :goto_0
    const-string/jumbo v2, "DefaultCallAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string/jumbo v2, "com.android.phone.extra.slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    return-object v0

    .line 35
    .end local v1    # "simid":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
