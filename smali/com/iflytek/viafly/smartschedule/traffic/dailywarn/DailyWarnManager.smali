.class public Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;
.super Ljava/lang/Object;
.source "DailyWarnManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DailyWarnManager"


# instance fields
.field private mLocalTraffic:J

.field private mTrafficRemindForUILiteners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "trafficRemindForUI":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mLocalTraffic:J

    .line 31
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    .line 32
    return-void
.end method

.method private getDailyTrafficThreshold(F)F
    .locals 5
    .param p1, "totalTraffic"    # F

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficDailyScheduleThreshold()I

    move-result v1

    int-to-float v0, v1

    .line 149
    .local v0, "threshold":F
    const-string/jumbo v1, "DailyWarnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDailyTrafficThreshold threshold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    cmpg-float v1, v0, v4

    if-gtz v1, :cond_0

    .line 153
    cmpl-float v1, p1, v4

    if-lez v1, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->getCurrentMonthDay()I

    move-result v1

    int-to-float v1, v1

    div-float v0, p1, v1

    .line 155
    const-string/jumbo v1, "DailyWarnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDailyTrafficThreshold return total traffic , threshold"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->setTrafficDailyScheduleLocalThreshold(I)V

    .line 164
    :cond_0
    :goto_0
    const-string/jumbo v1, "DailyWarnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDailyTrafficThreshold threshold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v0

    .line 159
    :cond_1
    const/high16 v0, 0x42480000    # 50.0f

    .line 161
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->setTrafficDailyScheduleLocalThreshold(I)V

    goto :goto_0
.end method

.method private isTodayTrigger()Z
    .locals 4

    .prologue
    .line 140
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getLastDailyTrafficTriggerTime()J

    move-result-wide v0

    .line 141
    .local v0, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lbaa;->b(JJ)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public dismissTrafficWin()V
    .locals 3

    .prologue
    .line 244
    const-string/jumbo v1, "DailyWarnManager"

    const-string/jumbo v2, "dismissTrafficWin"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    .line 247
    .local v0, "tempRemind":Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;
    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;->onDismissDailyTrafficFloatWin()V

    goto :goto_0

    .line 250
    .end local v0    # "tempRemind":Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;
    :cond_0
    return-void
.end method

.method public getCurrentMonthDay()I
    .locals 1

    .prologue
    .line 208
    const/16 v0, 0x1e

    return v0
.end method

.method public getDay()I
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 216
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public onBeginCalTraffic()V
    .locals 6

    .prologue
    .line 38
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getDailyWarnInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;

    move-result-object v0

    .line 39
    .local v0, "dailyWarnInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    const-string/jumbo v2, "DailyWarnManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBeginCalTraffic dailyWarnInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;

    .end local v0    # "dailyWarnInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;-><init>()V

    .line 45
    .restart local v0    # "dailyWarnInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDataAPIReader;->getAllGPRSTraffic()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mLocalTraffic:J

    .line 47
    const-string/jumbo v2, "DailyWarnManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBeginCalTraffic mLocalTraffic  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mLocalTraffic:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v1

    .line 51
    .local v1, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    if-nez v1, :cond_1

    .line 52
    const-string/jumbo v2, "DailyWarnManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBeginCalTraffic dailyWarnInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateDailyWarnInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;)V

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setImsi(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setPhoneNum(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getTotalTraffic()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setTotalTraffic(F)V

    .line 63
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateDailyWarnInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;)V

    goto :goto_0
.end method

.method public onEndCalTraffic()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 70
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getDailyWarnInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;

    move-result-object v4

    .line 71
    .local v4, "dailyWarnInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    const-string/jumbo v7, "DailyWarnManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onEndCalTraffic dailyWarnInfo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-nez v4, :cond_0

    .line 74
    new-instance v4, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;

    .end local v4    # "dailyWarnInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    invoke-direct {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;-><init>()V

    .line 78
    .restart local v4    # "dailyWarnInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    :cond_0
    iget-wide v10, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mLocalTraffic:J

    cmp-long v7, v10, v12

    if-gez v7, :cond_2

    .line 79
    const-string/jumbo v7, "DailyWarnManager"

    const-string/jumbo v10, "mLocalTraffic \u672a\u521d\u59cb\u5316 \u8fd4\u56de"

    invoke-static {v7, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->updateDailyWarnInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;)V

    .line 85
    const-string/jumbo v7, "DailyWarnManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "after updateDailyWarnInfo dailyWarnInfo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 88
    .local v2, "currentTime":J
    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getUpdateTime()J

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Lbaa;->b(JJ)Z

    move-result v7

    if-nez v7, :cond_3

    .line 89
    const-string/jumbo v7, "DailyWarnManager"

    const-string/jumbo v10, "\u8de8\u5929 \u7edf\u8ba1\u6d41\u91cf\u6e05\u96f6"

    invoke-static {v7, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v4, v12, v13}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setTodayTraffic(J)V

    .line 98
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDataAPIReader;->getAllGPRSTraffic()J

    move-result-wide v0

    .line 99
    .local v0, "currentReadTraffic":J
    const-string/jumbo v7, "DailyWarnManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u672c\u6b21\u8bfb\u53d6\u7684\u503c\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string/jumbo v7, "DailyWarnManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onEndCalTraffic \u672c\u5730\u7edf\u8ba1\u503c\uff1a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mLocalTraffic:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-wide v10, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mLocalTraffic:J

    sub-long v8, v0, v10

    .line 104
    .local v8, "trafficIncrement":J
    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getTodayTraffic()J

    move-result-wide v10

    add-long/2addr v10, v8

    invoke-virtual {v4, v10, v11}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setTodayTraffic(J)V

    .line 105
    const-string/jumbo v7, "DailyWarnManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onEndCalTraffic \u4eca\u65e5\u6d88\u8017\u6d41\u91cf\uff1a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getTodayTraffic()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mLocalTraffic:J

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setUpdateTime(J)V

    .line 111
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateDailyWarnInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;)V

    .line 113
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->isTodayTrigger()Z

    move-result v7

    if-nez v7, :cond_6

    .line 114
    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getTotalTraffic()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->getDailyTrafficThreshold(F)F

    move-result v6

    .line 115
    .local v6, "threshold":F
    const-string/jumbo v7, "DailyWarnManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onEndCalTraffic threshold "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getTodayTraffic()J

    move-result-wide v10

    long-to-float v7, v10

    cmpl-float v7, v7, v6

    if-ltz v7, :cond_1

    .line 118
    const-string/jumbo v7, "DailyWarnManager"

    const-string/jumbo v10, "trigger daily schedule  "

    invoke-static {v7, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v7, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 121
    iget-object v7, p0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->mTrafficRemindForUILiteners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    .line 122
    .local v5, "tempRemind":Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;
    const-string/jumbo v10, "DailyWarnManager"

    const-string/jumbo v11, "trigger daily schedule callback  "

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-interface {v5}, Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;->onDailyTrafficRemind()V

    goto :goto_1

    .line 126
    .end local v5    # "tempRemind":Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;
    :cond_4
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficUtil;->getTomorrowZeroTime()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setEndTime(J)V

    .line 128
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateDailyWarnInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;)V

    .line 129
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateLastDailyTrafficTriggerTime(J)V

    goto/16 :goto_0

    .line 131
    :cond_5
    const-string/jumbo v7, "DailyWarnManager"

    const-string/jumbo v10, "trigger listener is null  "

    invoke-static {v7, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 135
    .end local v6    # "threshold":F
    :cond_6
    const-string/jumbo v7, "DailyWarnManager"

    const-string/jumbo v10, "today has triggered  "

    invoke-static {v7, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateDailyWarnInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;)V
    .locals 8
    .param p1, "dailyWarnInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;

    .prologue
    const-wide/16 v6, 0x0

    .line 221
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v1

    .line 222
    .local v1, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "dailyWarnImsi":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "trafficInfoImsi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    const-string/jumbo v3, "DailyWarnManager"

    const-string/jumbo v4, "updateDailyWarnInfo imsi is diff, clear it"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setImsi(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setPhoneNum(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1, v6, v7}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setTodayTraffic(J)V

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setUpdateTime(J)V

    .line 233
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateLastDailyTrafficTriggerTime(J)V

    .line 235
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->dismissTrafficWin()V

    .line 238
    :cond_0
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getTotalTraffic()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setTotalTraffic(F)V

    .line 241
    .end local v0    # "dailyWarnImsi":Ljava/lang/String;
    .end local v2    # "trafficInfoImsi":Ljava/lang/String;
    :cond_1
    return-void
.end method
