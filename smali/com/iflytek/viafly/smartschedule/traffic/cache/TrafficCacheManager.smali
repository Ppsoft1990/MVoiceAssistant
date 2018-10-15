.class public Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;
.super Ljava/lang/Object;
.source "TrafficCacheManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficCacheManager"

.field private static mInstance:Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->mInstance:Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->mInstance:Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->mInstance:Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->mInstance:Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->mInstance:Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearCurrentTrafficInterfaceCount()V
    .locals 3

    .prologue
    .line 329
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_REQUEST_COUNT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V

    .line 330
    return-void
.end method

.method public clearCurrentWarnConfigRequestFailNum()V
    .locals 3

    .prologue
    .line 280
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CURRENT_WARNCONFIG_REQUEST_FAIL_NUM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V

    .line 281
    return-void
.end method

.method public clearDailyWarnInfo()V
    .locals 3

    .prologue
    .line 325
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_DAILY_WARNED_INFO_CACHE"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public clearLastTrafficAdjustTime()V
    .locals 4

    .prologue
    .line 333
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_LAST_TRAFFIC_ADJUST_REQUEST_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lil;->a(Ljava/lang/String;J)V

    .line 334
    return-void
.end method

.method public clearLastWarnConfigRequestFailTime()V
    .locals 4

    .prologue
    .line 284
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_LAST_WARNCONFIG_REQUEST_FAIL_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lil;->a(Ljava/lang/String;J)V

    .line 285
    return-void
.end method

.method public clearTrafficInfo()V
    .locals 3

    .prologue
    .line 313
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_INFO_CACHE"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public clearTrafficRelativeInfo()V
    .locals 0

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->clearTrafficInfo()V

    .line 307
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->clearWarnedInfo()V

    .line 308
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->clearCurrentTrafficInterfaceCount()V

    .line 310
    return-void
.end method

.method public clearWarnConfigInfo()V
    .locals 3

    .prologue
    .line 317
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_WARN_CONFIG_CACHE"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public clearWarnedInfo()V
    .locals 3

    .prologue
    .line 321
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_WARNED_INFO_CACHE"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public getCurrentTrafficInterfaceCount()I
    .locals 3

    .prologue
    .line 169
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_TRAFFIC_REQUEST_COUNT"

    invoke-virtual {v1, v2}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, "count":I
    return v0
.end method

.method public getCurrentWarnConfigRequestFailNum()I
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CURRENT_WARNCONFIG_REQUEST_FAIL_NUM"

    invoke-virtual {v0, v1}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDailyTrafficScheduleGrayCtrlFlag()Z
    .locals 3

    .prologue
    .line 234
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_DAILY_WARN_GRAY_CONTROL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDailyWarnInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    .locals 5

    .prologue
    .line 123
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_DAILY_WARNED_INFO_CACHE"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "dailyWarnInfoString":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;->jsonToDailyWarnInfo(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;

    move-result-object v0

    .line 126
    .local v0, "dailyWarnInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;
    return-object v0
.end method

.method public getFirstWarnScaleSwitchState()Z
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_FIRST_LEVEL_SWITCH_STATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastDailyTrafficTriggerTime()J
    .locals 4

    .prologue
    .line 217
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_LAST_DAILY_WARN_TRIGGER_TIME"

    invoke-virtual {v2, v3}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    .line 218
    .local v0, "time":J
    return-wide v0
.end method

.method public getLastTrafficAdjustRequestTime()J
    .locals 4

    .prologue
    .line 205
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_LAST_TRAFFIC_ADJUST_REQUEST_TIME"

    invoke-virtual {v2, v3}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    .line 206
    .local v0, "time":J
    return-wide v0
.end method

.method public getLastTrafficSuccessTime()J
    .locals 4

    .prologue
    .line 181
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_LAST_TRAFFIC_REQUEST_SUCCESS_TIME"

    invoke-virtual {v2, v3}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    .line 182
    .local v0, "time":J
    return-wide v0
.end method

.method public getLastWarnConfigRequestFailTime()J
    .locals 2

    .prologue
    .line 245
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_LAST_WARNCONFIG_REQUEST_FAIL_TIME"

    invoke-virtual {v0, v1}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastWarnConfigSuccessTime()J
    .locals 4

    .prologue
    .line 193
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_LAST_WARNCONFIG_REQUEST_SUCCESS_TIME"

    invoke-virtual {v2, v3}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    .line 194
    .local v0, "time":J
    return-wide v0
.end method

.method public getSecondWarnScaleSwitchState()Z
    .locals 3

    .prologue
    .line 150
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_SECOND_LEVEL_SWITCH_STATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getThirdWarnScaleSwitchState()Z
    .locals 3

    .prologue
    .line 158
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_THIRD_LEVEL_SWITCH_STATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTrafficDailyScheduleLocalThreshold()I
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_DAILY_SCHEDULE_LOCAL_THRESHOLD"

    invoke-virtual {v0, v1}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTrafficDailyScheduleThreshold()I
    .locals 2

    .prologue
    .line 268
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_DAILY_SCHEDULE_THRESHOLD_V6"

    invoke-virtual {v0, v1}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .locals 5

    .prologue
    .line 41
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_TRAFFIC_INFO_CACHE"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;->jsonToTrafficInfo(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v1

    .line 44
    .local v1, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    const-string/jumbo v2, "TrafficCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6d41\u91cf\u6570\u636e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-object v1
.end method

.method public getTrafficInterfaceMaxCount()I
    .locals 2

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "maxCount":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnConfigInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    move-result-object v1

    .line 293
    .local v1, "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getMaxAccess()I

    move-result v0

    .line 298
    :goto_0
    return v0

    .line 296
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public getTrafficScheduleGrayCtrlFlag()Z
    .locals 3

    .prologue
    .line 226
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_SCHEDULE_GRAY_CTRL_FLAG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getWarnConfigInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    .locals 5

    .prologue
    .line 67
    const-string/jumbo v2, "TrafficCacheManager"

    const-string/jumbo v3, " getWarnConfigInfo "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_WARN_CONFIG_CACHE"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "cacheInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const-string/jumbo v2, "{\"scale\": [{\"level\":\"0\",\"value\":\"0\",\"tip\":\"\u672c\u6708\u6d41\u91cf\u4e0d\u8db30%\uff0c\u8bf7\u6ce8\u610f\u4f7f\u7528\u54e6~\"},{\"level\":\"1\",\"value\":\"0.1\",\"tip\":\"\u672c\u6708\u6d41\u91cf\u4e0d\u8db310%\uff0c\u8bf7\u6ce8\u610f\u4f7f\u7528\u54e6~\"},{\"level\":\"2\",\"value\":\"0.5\",\"tip\":\"\u672c\u6708\u6d41\u91cf\u4e0d\u8db350%\uff0c\u8bf7\u6ce8\u610f\u4f7f\u7528\u54e6~\"}], \"maxAccess\": \"5\"}"

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;->jsonToWarnConfigInfo(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    move-result-object v1

    .line 75
    .local v1, "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    :goto_0
    return-object v1

    .line 73
    .end local v1    # "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    :cond_0
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;->jsonToWarnConfigInfo(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    move-result-object v1

    .restart local v1    # "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    goto :goto_0
.end method

.method public getWarnedInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    .locals 5

    .prologue
    .line 97
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_WARNED_INFO_CACHE"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;->jsonToWarnedInfo(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;

    move-result-object v1

    .line 100
    .local v1, "warnedInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;
    const-string/jumbo v2, "TrafficCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5df2\u89e6\u53d1\u7684\u544a\u8b66\u4fe1\u606f:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-object v1
.end method

.method public setCurrentWarnConfigRequestFailNum(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 260
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CURRENT_WARNCONFIG_REQUEST_FAIL_NUM"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;I)V

    .line 261
    return-void
.end method

.method public setDailyTrafficScheduleGrayCtrlFlag(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 238
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_DAILY_WARN_GRAY_CONTROL"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 239
    return-void
.end method

.method public setLastWarnConfigRequestFailTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 249
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_LAST_WARNCONFIG_REQUEST_FAIL_TIME"

    invoke-virtual {v0, v1, p1, p2}, Lil;->a(Ljava/lang/String;J)V

    .line 250
    return-void
.end method

.method public setTrafficDailyScheduleLocalThreshold(I)V
    .locals 2
    .param p1, "threshold"    # I

    .prologue
    .line 272
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_DAILY_SCHEDULE_LOCAL_THRESHOLD"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;I)V

    .line 273
    return-void
.end method

.method public setTrafficDailyScheduleThreshold(I)V
    .locals 2
    .param p1, "threshold"    # I

    .prologue
    .line 264
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_DAILY_SCHEDULE_THRESHOLD_V6"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;I)V

    .line 265
    return-void
.end method

.method public setTrafficScheduleGrayCtrlFlag(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 230
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_SCHEDULE_GRAY_CTRL_FLAG"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 231
    return-void
.end method

.method public updateCurrentTrafficInterfaceCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 174
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_REQUEST_COUNT"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method public updateDailyWarnInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;)V
    .locals 3
    .param p1, "dailyWarnInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;->dailyWarnInfoToJson(Lcom/iflytek/viafly/smartschedule/traffic/entity/DailyWarnInfo;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "jsonString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_DAILY_WARNED_INFO_CACHE"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v0    # "jsonString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local v0    # "jsonString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "TrafficCacheManager"

    const-string/jumbo v2, " transfer to json error"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateFirstWarnScaleSwitchState(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 146
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_FIRST_LEVEL_SWITCH_STATE"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 147
    return-void
.end method

.method public updateLastDailyTrafficTriggerTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 222
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_LAST_DAILY_WARN_TRIGGER_TIME"

    invoke-virtual {v0, v1, p1, p2}, Lil;->a(Ljava/lang/String;J)V

    .line 223
    return-void
.end method

.method public updateLastTrafficAdjustRequestTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 210
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_LAST_TRAFFIC_ADJUST_REQUEST_TIME"

    invoke-virtual {v0, v1, p1, p2}, Lil;->a(Ljava/lang/String;J)V

    .line 211
    return-void
.end method

.method public updateLastTrafficSuccessTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 186
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_LAST_TRAFFIC_REQUEST_SUCCESS_TIME"

    invoke-virtual {v0, v1, p1, p2}, Lil;->a(Ljava/lang/String;J)V

    .line 187
    return-void
.end method

.method public updateLastWarnConfigSuccessTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 198
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_LAST_WARNCONFIG_REQUEST_SUCCESS_TIME"

    invoke-virtual {v0, v1, p1, p2}, Lil;->a(Ljava/lang/String;J)V

    .line 199
    return-void
.end method

.method public updateSecondWarnScaleSwitchState(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 154
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_SECOND_LEVEL_SWITCH_STATE"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 155
    return-void
.end method

.method public updateThirdWarnScaleSwitchState(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 162
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_THIRD_LEVEL_SWITCH_STATE"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 163
    return-void
.end method

.method public updateTrafficInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)V
    .locals 4
    .param p1, "trafficInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    .prologue
    .line 52
    const-string/jumbo v1, "TrafficCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " updateTrafficInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;->trafficInfoToJson(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "jsonString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_TRAFFIC_INFO_CACHE"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v0    # "jsonString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local v0    # "jsonString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "TrafficCacheManager"

    const-string/jumbo v2, " transfer to json error"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateWarnConfigInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;)V
    .locals 4
    .param p1, "warnConfigInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    .prologue
    .line 82
    const-string/jumbo v1, "TrafficCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " updateWarnConfigInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;->warnConfigInfoToJson(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "jsonString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_WARN_CONFIG_CACHE"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v0    # "jsonString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local v0    # "jsonString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "TrafficCacheManager"

    const-string/jumbo v2, " transfer to json error"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateWarnedInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;)V
    .locals 4
    .param p1, "warnedInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;

    .prologue
    .line 108
    const-string/jumbo v1, "TrafficCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " updateWarnConfigInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficJsonUtil;->warnedInfoToJson(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnedInfo;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "jsonString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_WARNED_INFO_CACHE"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v0    # "jsonString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local v0    # "jsonString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "TrafficCacheManager"

    const-string/jumbo v2, " transfer to json error"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
