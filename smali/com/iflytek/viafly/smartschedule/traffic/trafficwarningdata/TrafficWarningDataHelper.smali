.class public Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;
.super Ljava/lang/Object;
.source "TrafficWarningDataHelper.java"


# static fields
.field private static final ALARM_FLAG:Ljava/lang/String; = "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

.field private static final ALARM_GET_STRATEGY:I = 0xa

.field private static final ALARM_TYPE:Ljava/lang/String; = "alarm_type"

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"


# instance fields
.field private mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private mFaildCount:I

.field private mLastFaildTime:J

.field private mStrategyRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningData;

.field private trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trafficWarningListener"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mFaildCount:I

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mLastFaildTime:J

    .line 44
    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    .line 45
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->getAlarmCallback()Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 49
    :cond_0
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->getTrafficWarningListener()Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mStrategyRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningData;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->onStrategyRequestFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->onStrategyRequestSuccessed()V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;)Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->handleStrategyRequest()V

    return-void
.end method

.method private getAlarmCallback()Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper$2;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;)V

    return-object v0
.end method

.method public static getTomorrowRandomTime()J
    .locals 16

    .prologue
    .line 262
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd"

    sget-object v13, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 264
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss"

    sget-object v13, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 267
    .local v2, "dateTimeFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 268
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v12, 0x5

    const/4 v13, 0x1

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 269
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 270
    .local v8, "tommorrowDate":Ljava/util/Date;
    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 272
    .local v9, "tommorrowDateStr":Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "00:00:00"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 274
    .local v11, "tomorrowStartTime":Ljava/util/Date;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "23:59:59"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 277
    .local v10, "tomorrowEndTime":Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    div-long v6, v12, v14

    .line 278
    .local v6, "startTime":J
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    div-long v4, v12, v14

    .line 279
    .local v4, "endTime":J
    cmp-long v12, v4, v6

    if-lez v12, :cond_0

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    div-long/2addr v12, v14

    cmp-long v12, v6, v12

    if-lez v12, :cond_0

    .line 281
    invoke-static {v6, v7, v4, v5}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->random(JJ)J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 286
    .end local v4    # "endTime":J
    .end local v6    # "startTime":J
    .end local v10    # "tomorrowEndTime":Ljava/util/Date;
    .end local v11    # "tomorrowStartTime":Ljava/util/Date;
    :goto_0
    return-wide v12

    .line 283
    :catch_0
    move-exception v3

    .line 284
    .local v3, "e":Ljava/text/ParseException;
    const-string/jumbo v12, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v13, "\u83b7\u53d6\u7b2c\u4e8c\u5929\u65f6\u95f4\u5931\u8d25\uff1a"

    invoke-static {v12, v13, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_0
    const-wide/16 v12, -0x1

    goto :goto_0
.end method

.method private getTrafficWarningListener()Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper$1;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;)V

    return-object v0
.end method

.method private handleStrategyRequest()V
    .locals 10

    .prologue
    .line 118
    const-string/jumbo v0, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v1, "\u8c03\u7528\u544a\u8b66\u7b56\u7565\u63a5\u53e3\u68c0\u67e5\u662f\u5426\u4eca\u5929\u662f\u5426\u67e5\u8be2\u8fc7"

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->needRequest()Z

    move-result v7

    .line 120
    .local v7, "isNeedRequest":Z
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mLastFaildTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lbaa;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mFaildCount:I

    .line 123
    :cond_0
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mStrategyRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningData;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mFaildCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 125
    const-string/jumbo v0, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v1, "\u5f00\u59cb\u8c03\u7528\u67e5\u8be2\u544a\u8b66\u7b56\u7565\u63a5\u53e3"

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string/jumbo v0, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFaildCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mFaildCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mStrategyRequest:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningData;

    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningData;->request()V

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->getTomorrowRandomTime()J

    move-result-wide v4

    .line 130
    .local v4, "delay":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 131
    const-string/jumbo v9, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    new-instance v0, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;

    const/16 v1, 0xa

    const-string/jumbo v2, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v3, ""

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v9, v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->registerModuleAlarm(Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;)V

    .line 133
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 135
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "date":Ljava/lang/String;
    const-string/jumbo v0, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6ce8\u518c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u67e5\u8be2\u544a\u8b66\u7b56\u7565\u63a5\u53e3\u95f9\u949f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private needRequest()Z
    .locals 6

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "isNeedRequest":Z
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getLastWarnConfigSuccessTime()J

    move-result-wide v2

    .line 105
    .local v2, "successTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    .line 109
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lbaa;->b(JJ)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onStrategyRequestFailed()V
    .locals 9

    .prologue
    .line 199
    const-string/jumbo v0, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v1, "\u544a\u8b66\u7b56\u7565\u8bf7\u6c42\u5931\u8d25\u6216\u8005\u6570\u636e\u89e3\u6790\u5931\u8d25"

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mLastFaildTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mLastFaildTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lbaa;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mFaildCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mFaildCount:I

    .line 205
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mLastFaildTime:J

    .line 206
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->updateFailInfo()V

    .line 207
    const-wide/16 v4, 0x0

    .line 208
    .local v4, "delay":J
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mFaildCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0xea60

    .line 210
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long v4, v0, v2

    .line 218
    :cond_1
    :goto_1
    const-wide/16 v0, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 226
    :goto_2
    return-void

    .line 203
    .end local v4    # "delay":J
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mFaildCount:I

    goto :goto_0

    .line 212
    .restart local v4    # "delay":J
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->getTomorrowRandomTime()J

    move-result-wide v4

    .line 214
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;->onFailed()V

    goto :goto_1

    .line 221
    :cond_4
    const-string/jumbo v8, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    new-instance v0, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;

    const/16 v1, 0xa

    const-string/jumbo v2, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v3, ""

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v8, v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->registerModuleAlarm(Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;)V

    .line 223
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 224
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "date":Ljava/lang/String;
    const-string/jumbo v0, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5931\u8d25\uff1a\u6ce8\u518c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u67e5\u8be2\u544a\u8b66\u7b56\u7565\u63a5\u53e3\u95f9\u949f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private onStrategyRequestSuccessed()V
    .locals 9

    .prologue
    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mFaildCount:I

    .line 233
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->updateFailInfo()V

    .line 234
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->getTomorrowRandomTime()J

    move-result-wide v4

    .line 235
    .local v4, "delay":J
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 236
    :cond_0
    const-string/jumbo v8, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    new-instance v0, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;

    const/16 v1, 0xa

    const-string/jumbo v2, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v3, ""

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v8, v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->registerModuleAlarm(Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;)V

    .line 238
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 240
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "date":Ljava/lang/String;
    const-string/jumbo v0, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6210\u529f\uff1a\u6ce8\u518c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u67e5\u8be2\u544a\u8b66\u7b56\u7565\u63a5\u53e3\u95f9\u949f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static random(JJ)J
    .locals 6
    .param p0, "begin"    # J
    .param p2, "end"    # J

    .prologue
    .line 291
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sub-long v4, p2, p0

    long-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long v0, p0, v2

    .line 293
    .local v0, "rtn":J
    cmp-long v2, v0, p0

    if-eqz v2, :cond_0

    cmp-long v2, v0, p2

    if-nez v2, :cond_1

    .line 294
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->random(JJ)J

    move-result-wide v0

    .line 296
    .end local v0    # "rtn":J
    :cond_1
    return-wide v0
.end method

.method private reSetNextDayAlarm()V
    .locals 9

    .prologue
    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    invoke-interface {v0, v1}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelModuleAlarms(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v2, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->getTomorrowRandomTime()J

    move-result-wide v4

    .line 185
    .local v4, "delay":J
    const-wide/16 v0, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 193
    :goto_0
    return-void

    .line 188
    :cond_1
    const-string/jumbo v8, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    new-instance v0, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;

    const/16 v1, 0xa

    const-string/jumbo v2, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v3, ""

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v8, v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->registerModuleAlarm(Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;)V

    .line 190
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 191
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "date":Ljava/lang/String;
    const-string/jumbo v0, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4e0b\u4e00\u5929\uff1a\u6ce8\u518c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u67e5\u8be2\u544a\u8b66\u7b56\u7565\u63a5\u53e3\u95f9\u949f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readFailInfo()V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getCurrentWarnConfigRequestFailNum()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mFaildCount:I

    .line 257
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getLastWarnConfigRequestFailTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mLastFaildTime:J

    .line 258
    return-void
.end method

.method private registerModuleAlarm(Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "simpleData"    # Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;

    .prologue
    .line 142
    if-eqz p2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v3, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    iget-object v4, p2, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mAlarmId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "alarm_type"

    iget v3, p2, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    new-instance v2, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const/4 v3, 0x2

    .line 148
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    iget-object v3, p2, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mAlarmId:Ljava/lang/String;

    .line 149
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    iget-wide v4, p2, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mStartTime:J

    .line 150
    invoke-virtual {v2, v4, v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const-string/jumbo v3, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    .line 151
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 152
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 155
    .end local v0    # "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private removeAllAlarm()V
    .locals 2

    .prologue
    .line 161
    const-string/jumbo v0, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v1, "\u5173\u95ed\u7b56\u7565\u67e5\u8be2\u903b\u8f91"

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string/jumbo v0, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v1, "\u79fb\u9664\u6240\u6709\u95f9\u949f"

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    invoke-interface {v0, v1}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelModuleAlarms(Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method private updateFailInfo()V
    .locals 4

    .prologue
    .line 248
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mFaildCount:I

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->setCurrentWarnConfigRequestFailNum(I)V

    .line 249
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->mLastFaildTime:J

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->setLastWarnConfigRequestFailTime(J)V

    .line 250
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 172
    const-string/jumbo v0, "SMART_SCHEDULE_WARNING_TAFFIC_TrafficWarningDataHelper"

    const-string/jumbo v1, "\u6d41\u91cf\u76d1\u63a7\u5173\u95ed"

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->removeAllAlarm()V

    .line 174
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->readFailInfo()V

    .line 54
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->needRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->handleStrategyRequest()V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->reSetNextDayAlarm()V

    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnConfigInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;->onSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;)V

    goto :goto_0
.end method
