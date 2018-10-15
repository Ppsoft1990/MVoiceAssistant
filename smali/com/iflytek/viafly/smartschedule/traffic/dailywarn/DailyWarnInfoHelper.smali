.class public Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnInfoHelper;
.super Ljava/lang/Object;
.source "DailyWarnInfoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DailyWarnInfoHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScheduleData()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getDailyWarnInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;

    move-result-object v0

    .line 52
    .local v0, "dailyWarnInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v4

    .line 53
    .local v4, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    if-eqz v0, :cond_0

    if-nez v4, :cond_2

    .line 54
    :cond_0
    const/4 v2, 0x0

    .line 73
    :cond_1
    :goto_0
    return-object v2

    .line 56
    :cond_2
    const-string/jumbo v5, "DailyWarnInfoHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getScheduleData dailyWarnInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v2, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-direct {v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;-><init>()V

    .line 58
    .local v2, "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    const-string/jumbo v5, "TrafficDailyController"

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setType(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v5, "DailyTrafficSchedule"

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setId(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v5, "\u6d41\u91cf\u63d0\u9192"

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setTitle(Ljava/lang/String;)V

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u4eca\u5929\u5df2\u7528\u6d41\u91cf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getTodayTraffic()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "M\uff0c\u8bf7\u6ce8\u610f\u4f7f\u7528\u54e6~"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setContent(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getLeftTraffic()F

    move-result v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_3

    .line 63
    .local v1, "left":F
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u672c\u6708\u603b\u6d41\u91cf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getTotalTraffic()F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lzr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", \u5269\u4f59\u6d41\u91cf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 64
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lzr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setTipText(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v5, "image.ic_smart_float_flow"

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setFloatIconUrl(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v5, "image.ic_smart_card_flow"

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setCardIconUrl(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v5, "\u8be6\u60c5"

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setBottomText(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficUtil;->formatUpdateTime(J)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "subTitle":Ljava/lang/String;
    const-string/jumbo v5, "DailyWarnInfoHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getScheduleData subTitle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 71
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    .end local v1    # "left":F
    .end local v3    # "subTitle":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getLeftTraffic()F

    move-result v1

    goto :goto_1
.end method

.method public static isDailyWarnInfoAvailable()Z
    .locals 7

    .prologue
    .line 33
    const-string/jumbo v4, "DailyWarnInfoHelper"

    const-string/jumbo v5, "isDailyWarnInfoAvailable "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, "isStillAvailable":Z
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getDailyWarnInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;

    move-result-object v0

    .line 36
    .local v0, "dailyWarnInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->getEndTime()J

    move-result-wide v2

    .line 38
    .local v2, "endTime":J
    const-string/jumbo v4, "DailyWarnInfoHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "daily warnedInfo endTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 41
    const-string/jumbo v4, "DailyWarnInfoHelper"

    const-string/jumbo v5, "daily warned info is available "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v1, 0x1

    .line 47
    .end local v2    # "endTime":J
    :cond_0
    :goto_0
    return v1

    .line 44
    .restart local v2    # "endTime":J
    :cond_1
    const-string/jumbo v4, "DailyWarnInfoHelper"

    const-string/jumbo v5, "daily warned info is unavailable"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setDailyWarnInfoUnavailable()V
    .locals 4

    .prologue
    .line 23
    const-string/jumbo v1, "DailyWarnInfoHelper"

    const-string/jumbo v2, "setDailyWarnInfoUnavailable "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getDailyWarnInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;

    move-result-object v0

    .line 25
    .local v0, "dailyWarnInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;->setEndTime(J)V

    .line 27
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateDailyWarnInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;)V

    .line 29
    :cond_0
    return-void
.end method
