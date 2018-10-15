.class public abstract Laxf;
.super Ljava/lang/Object;
.source "TrafficLogger.java"


# instance fields
.field protected a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V
    .locals 1
    .param p1, "type"    # Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Laxf;->a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .line 28
    iput-object p1, p0, Laxf;->a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .line 29
    return-void
.end method

.method public static a(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)Laxf;
    .locals 3
    .param p0, "type"    # Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .prologue
    .line 32
    const-string/jumbo v0, "TrafficLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createLogger(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->All:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    if-ne p0, v0, :cond_1

    .line 37
    new-instance v0, Laxd;

    invoke-direct {v0, p0}, Laxd;-><init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Laxe;

    invoke-direct {v0, p0}, Laxe;-><init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V

    goto :goto_0
.end method

.method private a(Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;)V
    .locals 4
    .param p1, "cache"    # Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;

    .prologue
    .line 96
    const-string/jumbo v1, "TrafficLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveLogCache() cache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    invoke-direct {p0}, Laxf;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TrafficLogger"

    const-string/jumbo v2, "saveLogCache() error"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b()Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;
    .locals 6

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 87
    .local v1, "cache":Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    invoke-direct {p0}, Laxf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    const-string/jumbo v3, "TrafficLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readLogCache(), cache="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v1

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TrafficLogger"

    const-string/jumbo v4, "readLogCache() error"

    invoke-static {v3, v4, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lil;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laxf;->a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    invoke-virtual {v2}, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "path":Ljava/lang/String;
    const-string/jumbo v1, "TrafficLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLogCachePath(), path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 73
    const-string/jumbo v1, "TrafficLogger"

    const-string/jumbo v2, "flush()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0}, Laxf;->b()Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;

    move-result-object v0

    .line 75
    .local v0, "cache":Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;
    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Laxf;->a(Ljava/util/List;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->setRecordTimeStamp(J)V

    .line 80
    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->clear()V

    .line 81
    invoke-direct {p0, v0}, Laxf;->a(Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;)V
    .locals 8
    .param p1, "statData"    # Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    .prologue
    .line 50
    const-string/jumbo v1, "TrafficLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "appendTrafficStat(), data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Laxf;->b()Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;

    move-result-object v0

    .line 53
    .local v0, "cache":Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;
    if-nez v0, :cond_0

    .line 54
    const-string/jumbo v1, "TrafficLogger"

    const-string/jumbo v4, "cache data is null -> new TrafficStatLogCache()"

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;

    .end local v0    # "cache":Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;
    invoke-direct {v0}, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;-><init>()V

    .line 56
    .restart local v0    # "cache":Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->setRecordTimeStamp(J)V

    .line 58
    :cond_0
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->add(Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;)V

    .line 59
    invoke-direct {p0, v0}, Laxf;->a(Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;)V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/log/TrafficStatLogCache;->getRecordTimeStamp()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 63
    .local v2, "interval":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    const-wide/32 v4, 0x6ddd00

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 64
    :cond_1
    const-string/jumbo v1, "TrafficLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trigger record log... interval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v6, 0x36ee80

    div-long v6, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "h"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Laxf;->a()V

    .line 67
    :cond_2
    return-void
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;",
            ">;)V"
        }
    .end annotation
.end method
