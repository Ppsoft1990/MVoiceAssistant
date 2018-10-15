.class public Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;
.super Ljava/lang/Object;
.source "TrafficStatLogCache.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x38e6e8c1a22a4286L


# instance fields
.field private mRecordLogTimeStamp:J

.field private mStatCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mRecordLogTimeStamp:J

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mStatCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;)V
    .locals 6
    .param p1, "statData"    # Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    .prologue
    .line 27
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getNetType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getNetType()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "netType":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mStatCache:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mStatCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    .line 36
    .local v0, "cache":Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;
    if-nez v0, :cond_2

    .line 37
    iget-object v2, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mStatCache:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getEndTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->setEndTime(J)V

    .line 41
    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getUpTraffic()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getUpTraffic()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->setUpTraffic(J)V

    .line 42
    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getDownTraffic()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getDownTraffic()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->setDownTraffic(J)V

    .line 44
    iget-object v2, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mStatCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v2, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mStatCache:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mStatCache:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mStatCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mStatCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public getAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;>;"
    iget-object v2, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mStatCache:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 61
    :cond_0
    return-object v1

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mStatCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mStatCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    .line 58
    .local v0, "item":Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRecordTimeStamp()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mRecordLogTimeStamp:J

    return-wide v0
.end method

.method public setRecordTimeStamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mRecordLogTimeStamp:J

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[RecordLogTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    iget-wide v2, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mRecordLogTimeStamp:J

    invoke-static {v1, v2, v3}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", StatCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->mStatCache:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
