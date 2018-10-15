.class Laxe;
.super Laxf;
.source "BusinessTrafficLogger.java"


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V
    .locals 0
    .param p1, "type"    # Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Laxf;-><init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

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
    const-wide/16 v12, 0x0

    .line 29
    const-string/jumbo v0, "BusinessTrafficLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordLog(), StatsData= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    .line 32
    .local v9, "item":Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;
    invoke-virtual {v9}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getBizType()Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getStartTime()J

    move-result-wide v0

    cmp-long v0, v0, v12

    if-lez v0, :cond_1

    invoke-virtual {v9}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getEndTime()J

    move-result-wide v0

    cmp-long v0, v0, v12

    if-lez v0, :cond_1

    .line 33
    invoke-virtual {v9}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getUpTraffic()J

    move-result-wide v0

    cmp-long v0, v0, v12

    if-gez v0, :cond_0

    invoke-virtual {v9}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getDownTraffic()J

    move-result-wide v0

    cmp-long v0, v0, v12

    if-ltz v0, :cond_1

    .line 34
    :cond_0
    const-string/jumbo v0, "BusinessTrafficLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "record a new traffic log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->a()Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;

    move-result-object v0

    .line 36
    invoke-virtual {v9}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getBizType()Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getUpTraffic()J

    move-result-wide v4

    invoke-virtual {v9}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getDownTraffic()J

    move-result-wide v6

    invoke-virtual {v9}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getNetType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->a(Ljava/lang/String;JJJLjava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    const-string/jumbo v0, "BusinessTrafficLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "discard a traffic stat data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 42
    .end local v9    # "item":Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;
    :cond_2
    return-void
.end method
