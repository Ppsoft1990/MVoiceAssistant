.class public Lcom/iflytek/viafly/ui/reddot/DotEntity;
.super Ljava/lang/Object;
.source "DotEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;
    }
.end annotation


# instance fields
.field private mDotPostion:Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;

.field private mDotType:Ljava/lang/String;

.field private mNeedShow:Z

.field private mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;)V
    .locals 0
    .param p1, "needShowFlag"    # Z
    .param p2, "dotType"    # Ljava/lang/String;
    .param p3, "dotPostion"    # Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mNeedShow:Z

    .line 27
    iput-object p2, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mDotType:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mDotPostion:Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;

    .line 29
    return-void
.end method


# virtual methods
.method public getDotPosition()Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mDotPostion:Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;

    return-object v0
.end method

.method public getDotType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mDotType:Ljava/lang/String;

    return-object v0
.end method

.method public getShowFlag()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mNeedShow:Z

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public setDotPosition(Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;)V
    .locals 0
    .param p1, "dotPostion"    # Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mDotPostion:Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;

    .line 53
    return-void
.end method

.method public setDotType(Ljava/lang/String;)V
    .locals 0
    .param p1, "dotType"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mDotType:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setShowFlag(Z)V
    .locals 0
    .param p1, "showFlag"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mNeedShow:Z

    .line 33
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mTag:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DotEntity [NeedShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mNeedShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", DotType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mDotType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", DotPostion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mDotPostion:Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/reddot/DotEntity;->mTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
