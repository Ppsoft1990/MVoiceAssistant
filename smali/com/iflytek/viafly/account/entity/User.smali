.class public Lcom/iflytek/viafly/account/entity/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x392da4906997c5b5L


# instance fields
.field private extendField:Ljava/lang/String;

.field private phoneNum:Ljava/lang/String;

.field private testAddField:Ljava/lang/String;

.field private token:Lcom/iflytek/viafly/account/entity/UserToken;

.field private userId:Ljava/lang/String;

.field private userLoginState:I

.field private userProfile:Lcom/iflytek/viafly/account/entity/UserProfile;

.field private voicePrintPasswordSetted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/account/entity/User;->userLoginState:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/iflytek/viafly/account/entity/User;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/account/entity/User;

    .line 96
    .local v0, "user":Lcom/iflytek/viafly/account/entity/User;
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/entity/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setUserId(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/entity/User;->getPhoneNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setPhoneNum(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/entity/User;->getUserProfile()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/UserProfile;->clone()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setUserProfile(Lcom/iflytek/viafly/account/entity/UserProfile;)V

    .line 99
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/entity/User;->getToken()Lcom/iflytek/viafly/account/entity/UserToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/UserToken;->clone()Lcom/iflytek/viafly/account/entity/UserToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setToken(Lcom/iflytek/viafly/account/entity/UserToken;)V

    .line 100
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/entity/User;->isVoicePrintPasswordSetted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setVoicePrintPasswordSetted(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/entity/User;->getTestAddField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setTestAddField(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/entity/User;->getUserLoginState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setUserLoginState(I)V

    .line 103
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/entity/User;->getExtendField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setExtendField(Ljava/lang/String;)V

    .line 104
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
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/entity/User;->clone()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    return-object v0
.end method

.method public getExtendField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/account/entity/User;->extendField:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iflytek/viafly/account/entity/User;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getTestAddField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/account/entity/User;->testAddField:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Lcom/iflytek/viafly/account/entity/UserToken;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/account/entity/User;->token:Lcom/iflytek/viafly/account/entity/UserToken;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/account/entity/User;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLoginState()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/account/entity/User;->userLoginState:I

    return v0
.end method

.method public getUserProfile()Lcom/iflytek/viafly/account/entity/UserProfile;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/account/entity/User;->userProfile:Lcom/iflytek/viafly/account/entity/UserProfile;

    return-object v0
.end method

.method public isVoicePrintPasswordSetted()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/iflytek/viafly/account/entity/User;->voicePrintPasswordSetted:Z

    return v0
.end method

.method public setExtendField(Ljava/lang/String;)V
    .locals 0
    .param p1, "extendField"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/iflytek/viafly/account/entity/User;->extendField:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/iflytek/viafly/account/entity/User;->phoneNum:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTestAddField(Ljava/lang/String;)V
    .locals 0
    .param p1, "testAddField"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/iflytek/viafly/account/entity/User;->testAddField:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setToken(Lcom/iflytek/viafly/account/entity/UserToken;)V
    .locals 0
    .param p1, "token"    # Lcom/iflytek/viafly/account/entity/UserToken;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/account/entity/User;->token:Lcom/iflytek/viafly/account/entity/UserToken;

    .line 50
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/iflytek/viafly/account/entity/User;->userId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setUserLoginState(I)V
    .locals 0
    .param p1, "userLoginState"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/iflytek/viafly/account/entity/User;->userLoginState:I

    .line 66
    return-void
.end method

.method public setUserProfile(Lcom/iflytek/viafly/account/entity/UserProfile;)V
    .locals 0
    .param p1, "userProfile"    # Lcom/iflytek/viafly/account/entity/UserProfile;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/iflytek/viafly/account/entity/User;->userProfile:Lcom/iflytek/viafly/account/entity/UserProfile;

    .line 46
    return-void
.end method

.method public setVoicePrintPasswordSetted(Z)V
    .locals 0
    .param p1, "voicePrintPasswordSetted"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/iflytek/viafly/account/entity/User;->voicePrintPasswordSetted:Z

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "User{phoneNum=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/account/entity/User;->phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/account/entity/User;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/account/entity/User;->token:Lcom/iflytek/viafly/account/entity/UserToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/account/entity/User;->userProfile:Lcom/iflytek/viafly/account/entity/UserProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", voicePrintPasswordSetted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/viafly/account/entity/User;->voicePrintPasswordSetted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userLoginState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/account/entity/User;->userLoginState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extendField=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/account/entity/User;->extendField:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", testAddField=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/account/entity/User;->testAddField:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
