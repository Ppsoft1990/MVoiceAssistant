.class public Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
.super Ljava/lang/Object;
.source "WarnedInfo.java"


# instance fields
.field private isChecked:Z

.field private mActualValue:F

.field private mEndTime:J

.field private mPhoneNum:Ljava/lang/String;

.field private mUpdateTime:J

.field private mWarnScaleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mWarnScaleList:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public addWarnScale(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;)V
    .locals 2
    .param p1, "warnScale"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mWarnScaleList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mWarnScaleList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 44
    :cond_0
    return-void
.end method

.method public getActualValue()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mActualValue:F

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mEndTime:J

    return-wide v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mUpdateTime:J

    return-wide v0
.end method

.method public getWarnScaleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mWarnScaleList:Ljava/util/List;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->isChecked:Z

    return v0
.end method

.method public setActualValue(F)V
    .locals 0
    .param p1, "actualValue"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mActualValue:F

    .line 84
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->isChecked:Z

    .line 52
    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "mEndTime"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mEndTime:J

    .line 76
    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPhoneNum"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mPhoneNum:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 1
    .param p1, "mUpdateTime"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mUpdateTime:J

    .line 68
    return-void
.end method

.method public setWarnScaleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "mWarnScaleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mWarnScaleList:Ljava/util/List;

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WarnedInfo{, mWarnScaleList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mWarnScaleList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->isChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPhoneNum=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mActualValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;->mActualValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
