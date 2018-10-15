.class public Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
.super Ljava/lang/Object;
.source "AuthenticationInfo.java"

# interfaces
.implements Lcom/iflytek/yd/business/OperationInfo;
.implements Ljava/io/Serializable;
.implements Ltf;


# static fields
.field private static final serialVersionUID:J = 0x72fd66e0f45f1188L


# instance fields
.field private loginId:Ljava/lang/String;

.field private loginType:I

.field private mImsi:Ljava/lang/String;

.field private mInValidTime:Ljava/lang/String;

.field private mOperateType:Ljava/lang/String;

.field private mRandomCode:Ljava/lang/String;

.field private mTokenId:Ljava/lang/String;

.field private mTokenType:I

.field private mValidDays:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private mobileKey:Ljava/lang/String;

.field private passid:Ljava/lang/String;

.field private usessionid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x65

    iput v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mTokenType:I

    .line 65
    return-void
.end method


# virtual methods
.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getInvalidTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mInValidTime:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 179
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "mTokenId"

    iget-object v3, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mTokenId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string/jumbo v2, "mInValidTime"

    iget-object v3, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mInValidTime:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string/jumbo v2, "mOperateType"

    iget-object v3, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mOperateType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string/jumbo v2, "mTokenType"

    iget v3, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mTokenType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string/jumbo v2, "mobile"

    iget-object v3, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mobile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string/jumbo v2, "mobileKey"

    iget-object v3, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mobileKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string/jumbo v2, "passid"

    iget-object v3, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->passid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string/jumbo v2, "usessionid"

    iget-object v3, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->usessionid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string/jumbo v2, "loginType"

    iget v3, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->loginType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string/jumbo v2, "loginid"

    iget-object v3, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->loginId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginType()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->loginType:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mobileKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOperateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mOperateType:Ljava/lang/String;

    return-object v0
.end method

.method public getPassid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->passid:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mRandomCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mTokenId:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mTokenType:I

    return v0
.end method

.method public getUsessionid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->usessionid:Ljava/lang/String;

    return-object v0
.end method

.method public getValidDays()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mValidDays:Ljava/lang/String;

    return-object v0
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mImsi:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setInValidTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "inValidTime"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mInValidTime:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginId"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->loginId:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setLoginType(I)V
    .locals 0
    .param p1, "loginType"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->loginType:I

    .line 161
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mobile:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setMobileKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobileKey"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mobileKey:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setOperateType(Ljava/lang/String;)V
    .locals 0
    .param p1, "OperateType"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mOperateType:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setPassid(Ljava/lang/String;)V
    .locals 0
    .param p1, "passid"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->passid:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setRandomCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "randomCode"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mRandomCode:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTokenId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mTokenId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setTokenType(I)V
    .locals 0
    .param p1, "mTokenType"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mTokenType:I

    .line 113
    return-void
.end method

.method public setUsessionid(Ljava/lang/String;)V
    .locals 0
    .param p1, "usessionid"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->usessionid:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setValidDays(Ljava/lang/String;)V
    .locals 0
    .param p1, "validDays"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->mValidDays:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AuthenticationInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
