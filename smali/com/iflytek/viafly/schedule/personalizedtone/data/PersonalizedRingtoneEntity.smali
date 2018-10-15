.class public Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
.super Ljava/lang/Object;
.source "PersonalizedRingtoneEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x764bfb4572c374ceL


# instance fields
.field private mAudioPath:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mImgUrl:Ljava/lang/String;

.field private mRole:Ljava/lang/String;

.field private mRoleName:Ljava/lang/String;

.field private mWording:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "role"    # Ljava/lang/String;
    .param p3, "roleName"    # Ljava/lang/String;
    .param p4, "wording"    # Ljava/lang/String;
    .param p5, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mRole:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mRoleName:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mWording:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mImgUrl:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    if-nez v1, :cond_1

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 88
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 84
    check-cast v0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 85
    .local v0, "data":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const/4 v1, 0x1

    goto :goto_0

    .line 88
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAudioPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mAudioPath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mRole:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mRoleName:Ljava/lang/String;

    return-object v0
.end method

.method public getWording()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mWording:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "audioPath"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mAudioPath:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mImgUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mRole:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mRoleName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setWording(Ljava/lang/String;)V
    .locals 0
    .param p1, "wording"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mWording:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PersonalizedRingtoneEntity [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mRole:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", roleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mRoleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", wording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mWording:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", audioPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->mAudioPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
