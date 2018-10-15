.class public Lcom/iflytek/viafly/account/entity/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x21923666f2706562L


# instance fields
.field private isUserProfileComplete:Z

.field private nickName:Ljava/lang/String;

.field private portraitLocalPath:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/iflytek/viafly/account/entity/UserProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/account/entity/UserProfile;

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
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/entity/UserProfile;->clone()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/account/entity/UserProfile;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/account/entity/UserProfile;->portraitLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/account/entity/UserProfile;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isUserProfileComplete()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/iflytek/viafly/account/entity/UserProfile;->isUserProfileComplete:Z

    return v0
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/account/entity/UserProfile;->nickName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPortraitLocalPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "portraitLocalPath"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iflytek/viafly/account/entity/UserProfile;->portraitLocalPath:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "portraitUrl"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/iflytek/viafly/account/entity/UserProfile;->portraitUrl:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setUserProfileComplete(Z)V
    .locals 0
    .param p1, "userProfileComplete"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/iflytek/viafly/account/entity/UserProfile;->isUserProfileComplete:Z

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UserProfile{portraitUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/account/entity/UserProfile;->portraitUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", portraitLocalPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/account/entity/UserProfile;->portraitLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isUserProfileComplete=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/viafly/account/entity/UserProfile;->isUserProfileComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nickName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/account/entity/UserProfile;->nickName:Ljava/lang/String;

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
