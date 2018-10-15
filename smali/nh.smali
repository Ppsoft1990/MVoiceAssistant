.class public Lnh;
.super Ljava/lang/Object;
.source "VerifyTokenListenerAdapter.java"

# interfaces
.implements Lng;


# instance fields
.field private a:Lnd;


# direct methods
.method public constructor <init>(Lnd;)V
    .locals 0
    .param p1, "authenticationListener"    # Lnd;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lnh;->a:Lnd;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorDes"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string/jumbo v0, "VerifyTokenListenerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVerifyAuthError errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string/jumbo v0, "VerifyTokenListenerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVerifyAuthError errorDes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lnh;->a:Lnd;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lnh;->a:Lnd;

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    const/16 v2, 0x67

    const/16 v3, 0x7d9

    invoke-interface {v0, v1, v2, v3}, Lnd;->onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    .line 60
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 5
    .param p1, "call"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "sim"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/16 v4, 0x67

    .line 28
    invoke-static {}, Lmz;->h()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    .line 30
    .local v0, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "cacheToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    iget-object v2, p0, Lnh;->a:Lnd;

    if-eqz v2, :cond_0

    .line 35
    const-string/jumbo v2, "VerifyTokenListenerAdapter"

    const-string/jumbo v3, "onVerifyAuthResult get result success"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v2, p0, Lnh;->a:Lnd;

    invoke-interface {v2, p3, v4, v0}, Lnd;->onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 50
    .end local v1    # "cacheToken":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 40
    .restart local v1    # "cacheToken":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lnh;->a:Lnd;

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lnh;->a:Lnd;

    const/16 v3, 0x7db

    invoke-interface {v2, p3, v4, v3}, Lnd;->onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto :goto_0

    .line 45
    .end local v1    # "cacheToken":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lnh;->a:Lnd;

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lnh;->a:Lnd;

    const/16 v3, 0x7da

    invoke-interface {v2, p3, v4, v3}, Lnd;->onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto :goto_0
.end method
