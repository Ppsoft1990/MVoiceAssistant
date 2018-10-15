.class public Lcom/iflytek/viafly/account/entity/UserToken;
.super Ljava/lang/Object;
.source "UserToken.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x3f33234aae940dd8L


# instance fields
.field private token:Ljava/lang/String;

.field private tokenExpireTime:Ljava/lang/String;

.field private tokenSource:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenExpireTime"    # Ljava/lang/String;
    .param p3, "tokenSource"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iflytek/viafly/account/entity/UserToken;->token:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/iflytek/viafly/account/entity/UserToken;->tokenExpireTime:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/iflytek/viafly/account/entity/UserToken;->tokenSource:I

    .line 26
    return-void
.end method


# virtual methods
.method public clone()Lcom/iflytek/viafly/account/entity/UserToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/account/entity/UserToken;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/entity/UserToken;->clone()Lcom/iflytek/viafly/account/entity/UserToken;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iflytek/viafly/account/entity/UserToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenExpireTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/account/entity/UserToken;->tokenExpireTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSource()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/iflytek/viafly/account/entity/UserToken;->tokenSource:I

    return v0
.end method

.method public isTokenExpire()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/iflytek/viafly/account/entity/UserToken;->token:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTokenExpireTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenExpireTime"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/iflytek/viafly/account/entity/UserToken;->tokenExpireTime:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTokenSource(I)V
    .locals 0
    .param p1, "tokenSource"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/iflytek/viafly/account/entity/UserToken;->tokenSource:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UserToken{token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/account/entity/UserToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tokenExpireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/account/entity/UserToken;->tokenExpireTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tokenSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/account/entity/UserToken;->tokenSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
