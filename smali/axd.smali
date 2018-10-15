.class Laxd;
.super Laxf;
.source "AppTrafficLogger.java"


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V
    .locals 0
    .param p1, "type"    # Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Laxf;-><init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "statsDatas":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;>;"
    const-wide/16 v10, 0x0

    .line 25
    const-string/jumbo v1, "AppTrafficLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recordLog(), StatsData= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    .line 28
    .local v0, "item":Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;
    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getStartTime()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getEndTime()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-lez v1, :cond_1

    .line 29
    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getUpTraffic()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getDownTraffic()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-ltz v1, :cond_1

    .line 30
    :cond_0
    const-string/jumbo v1, "AppTrafficLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "record a new traffic log: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->a()Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getUpTraffic()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getDownTraffic()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getNetType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->a(JJJLjava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_1
    const-string/jumbo v1, "AppTrafficLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "discard a traffic stat data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    .end local v0    # "item":Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;
    :cond_2
    return-void
.end method
