.class public Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;
.super Ljava/lang/Object;
.source "TrafficStatsData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x75606e0357e375c3L


# instance fields
.field private mBizType:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

.field private mDownTraffic:J

.field private mEndTime:J

.field private mNetType:Ljava/lang/String;

.field private mStartTime:J

.field private mUpTraffic:J


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V
    .locals 4
    .param p1, "type"    # Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .prologue
    const-wide/16 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->All:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    iput-object v0, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mBizType:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .line 17
    iput-wide v2, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mStartTime:J

    .line 18
    iput-wide v2, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mEndTime:J

    .line 20
    iput-wide v2, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mUpTraffic:J

    .line 21
    iput-wide v2, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mDownTraffic:J

    .line 24
    iput-object p1, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mBizType:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .line 25
    return-void
.end method


# virtual methods
.method public getBizType()Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mBizType:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    return-object v0
.end method

.method public getDownTraffic()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mDownTraffic:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mEndTime:J

    return-wide v0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mNetType:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mStartTime:J

    return-wide v0
.end method

.method public getUpTraffic()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mUpTraffic:J

    return-wide v0
.end method

.method public setBizType(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V
    .locals 0
    .param p1, "type"    # Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mBizType:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .line 33
    return-void
.end method

.method public setDownTraffic(J)V
    .locals 1
    .param p1, "downTraffic"    # J

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mDownTraffic:J

    .line 73
    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mEndTime:J

    .line 49
    return-void
.end method

.method public setNetType(Ljava/lang/String;)V
    .locals 0
    .param p1, "netType"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mNetType:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mStartTime:J

    .line 41
    return-void
.end method

.method public setUpTraffic(J)V
    .locals 1
    .param p1, "upTraffic"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mUpTraffic:J

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BizType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mBizType:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", StartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    iget-wide v2, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mStartTime:J

    .line 78
    invoke-static {v1, v2, v3}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", EndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    iget-wide v2, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mEndTime:J

    .line 79
    invoke-static {v1, v2, v3}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", NetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mNetType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", UpTraffic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mUpTraffic:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", DownTraffic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->mDownTraffic:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
