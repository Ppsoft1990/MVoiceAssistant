.class public Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
.super Ljava/lang/Object;
.source "DailyWarnInfo.java"


# instance fields
.field private mEndTime:J

.field private mImsi:Ljava/lang/String;

.field private mLeftTraffic:F

.field private mPhoneNum:Ljava/lang/String;

.field private mTodayTraffic:J

.field private mTotalTraffic:F

.field private mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mEndTime:J

    return-wide v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftTraffic()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mLeftTraffic:F

    return v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getTodayTraffic()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mTodayTraffic:J

    return-wide v0
.end method

.method public getTotalTraffic()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mTotalTraffic:F

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mUpdateTime:J

    return-wide v0
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "mEndTime"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mEndTime:J

    .line 31
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "mImsi"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mImsi:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setLeftTraffic(F)V
    .locals 0
    .param p1, "leftTraffic"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mLeftTraffic:F

    .line 63
    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPhoneNum"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mPhoneNum:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTodayTraffic(J)V
    .locals 1
    .param p1, "mTodayTraffic"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mTodayTraffic:J

    .line 71
    return-void
.end method

.method public setTotalTraffic(F)V
    .locals 0
    .param p1, "mTotalTraffic"    # F

    .prologue
    .line 54
    iput p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mTotalTraffic:F

    .line 55
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 1
    .param p1, "mUpdateTime"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mUpdateTime:J

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DailyWarnInfo{mUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPhoneNum=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mImsi=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTotalTraffic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mTotalTraffic:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLeftTraffic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mLeftTraffic:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTodayTraffic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->mTodayTraffic:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
