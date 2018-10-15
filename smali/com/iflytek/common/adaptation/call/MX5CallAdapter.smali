.class public Lcom/iflytek/common/adaptation/call/MX5CallAdapter;
.super Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.source "MX5CallAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 2
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramISimInfoAdaptation"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 9
    const-string/jumbo v0, "MX5CallAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/MX5CallAdapter;->TAG:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "MX5CallAdapter"

    const-string/jumbo v1, "MX5CallAdapter"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method


# virtual methods
.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 21
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    .line 22
    .local v1, "simid":I
    :goto_0
    const-string/jumbo v2, "MX5CallAdapter"

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

    .line 23
    const-string/jumbo v2, "com.android.phone.extra.slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    return-object v0

    .line 21
    .end local v1    # "simid":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
