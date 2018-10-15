.class public Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;
.super Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;
.source "AirPollutionEffectCategory.java"

# interfaces
.implements Lyn;


# static fields
.field private static final DISMISS_ALARM_ID:Ljava/lang/String; = "air_pollution_dismiss"

.field protected static final EXTRA_BOTTOMBTN:I = 0x3ec

.field protected static final EXTRA_CLOSE:I = 0x3e9

.field protected static final EXTRA_CONTENT:I = 0x3eb

.field protected static final EXTRA_EDIT:I = 0x3ea

.field private static final MSG_CLOSE_SHOW:I = 0x69

.field private static final MSG_DESTORY:I = 0x6a

.field private static final MSG_DISMISS:I = 0x68

.field private static final MSG_REQUEST_FAIL:I = 0x66

.field private static final MSG_REQUEST_SUCCESS:I = 0x65

.field private static final MSG_SHOW:I = 0x67

.field private static final TAG:Ljava/lang/String; = "AirPollutionEffectCategory"


# instance fields
.field private mAirPollutionData:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;

.field private mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private mBizHelper:Lbbs;

.field private mContext:Landroid/content/Context;

.field private mRequestWeatherId:J

.field private mWeatherFloatWindowRetryAlarm:Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;-><init>(Landroid/content/Context;)V

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mRequestWeatherId:J

    .line 96
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lbbs;

    invoke-direct {v0, p1, p0}, Lbbs;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mBizHelper:Lbbs;

    .line 98
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory$1;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory$1;-><init>(Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;)V

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;IIILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->requestWeatherInfo()V

    return-void
.end method

.method private cancelWeatherInfoRetryAlarm()V
    .locals 2

    .prologue
    .line 487
    const-string/jumbo v0, "AirPollutionEffectCategory"

    const-string/jumbo v1, "cancelWeatherInfoRetryAlarm"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mWeatherFloatWindowRetryAlarm:Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mWeatherFloatWindowRetryAlarm:Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->cancelAlarm()V

    .line 491
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mWeatherFloatWindowRetryAlarm:Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    .line 492
    return-void
.end method

.method private createWeatherInfoRetryAlarm()V
    .locals 2

    .prologue
    .line 507
    const-string/jumbo v0, "AirPollutionEffectCategory"

    const-string/jumbo v1, "createRetryAlarm()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mWeatherFloatWindowRetryAlarm:Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mWeatherFloatWindowRetryAlarm:Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    .line 510
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mWeatherFloatWindowRetryAlarm:Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    new-instance v1, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory$2;-><init>(Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->addAlarm(Lcom/iflytek/viafly/smartschedule/weather/OnNoOperateAlarmListener;)V

    .line 520
    :cond_0
    return-void
.end method

.method public static filterNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 381
    const-string/jumbo v0, "[^(0-9)]"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 382
    return-object p0
.end method

.method private handleScreenOnImpl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 297
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->isWeatherInfoCached(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    const-string/jumbo v2, "AirPollutionEffectCategory"

    const-string/jumbo v3, "isWeatherInfoCached"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->loadWeatherInfoCache()Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;

    move-result-object v0

    .line 300
    .local v0, "airPollutionDataData":Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;
    if-eqz v0, :cond_0

    .line 301
    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mAirPollutionData:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;

    .line 302
    const/16 v2, 0x67

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mAirPollutionData:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 315
    .end local v0    # "airPollutionDataData":Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 306
    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Lhl;->c()Z

    move-result v1

    .line 308
    .local v1, "isNetAvailable":Z
    if-eqz v1, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->requestWeatherInfo()V

    goto :goto_0

    .line 312
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->createWeatherInfoRetryAlarm()V

    goto :goto_0
.end method

.method private loadWeatherInfoCache()Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;
    .locals 6

    .prologue
    .line 318
    const-string/jumbo v3, "AirPollutionEffectCategory"

    const-string/jumbo v4, "loadWeatherInfoCache"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "serializePath":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "SCHEDULE_WEATHER_SAVED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 323
    .local v2, "weatherObject":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/iflytek/viafly/weather/Weather;

    if-nez v3, :cond_1

    .line 324
    :cond_0
    const/4 v3, 0x0

    .line 328
    :goto_0
    return-object v3

    :cond_1
    move-object v1, v2

    .line 327
    check-cast v1, Lcom/iflytek/viafly/weather/Weather;

    .line 328
    .local v1, "weather":Lcom/iflytek/viafly/weather/Weather;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->transferAirPollution(Lcom/iflytek/viafly/weather/Weather;)Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;

    move-result-object v3

    goto :goto_0
.end method

.method private registDefaultDismiss()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/4 v4, 0x0

    .line 443
    const-string/jumbo v2, "AirPollutionEffectCategory"

    const-string/jumbo v3, "WeatherFloatWindowDismissAlarm: registDefaultDismiss"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 445
    .local v1, "date":Ljava/util/GregorianCalendar;
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 446
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 447
    invoke-virtual {v1, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 449
    new-instance v2, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    .line 450
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 451
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 452
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const-string/jumbo v3, "air_pollution_dismiss"

    .line 453
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 454
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 455
    invoke-virtual {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 457
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 470
    :cond_0
    return-void
.end method

.method private requestWeatherInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 495
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mRequestWeatherId:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mBizHelper:Lbbs;

    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mRequestWeatherId:J

    invoke-virtual {v0, v2, v3}, Lbbs;->cancelRequest(J)V

    .line 497
    iput-wide v4, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mRequestWeatherId:J

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mBizHelper:Lbbs;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {}, Loa;->a()Loa;

    move-result-object v3

    invoke-virtual {v3}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lbbs;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/lbs/XAddress;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mRequestWeatherId:J

    .line 500
    return-void
.end method

.method private transferAirPollution(Lcom/iflytek/viafly/weather/Weather;)Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;
    .locals 12
    .param p1, "weather"    # Lcom/iflytek/viafly/weather/Weather;

    .prologue
    const/4 v0, 0x0

    .line 332
    if-nez p1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-object v0

    .line 336
    :cond_1
    const/4 v3, 0x0

    .line 337
    .local v3, "detailDesc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 338
    .local v1, "aqiRemind":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    const/4 v8, 0x2

    if-ge v5, v8, :cond_4

    .line 339
    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/weather/Forecast;

    .line 340
    .local v4, "forecast":Lcom/iflytek/viafly/weather/Forecast;
    if-nez v4, :cond_3

    .line 338
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 343
    :cond_3
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 344
    .local v7, "tmpDateStr":Ljava/lang/String;
    new-instance v6, Ljava/util/Date;

    invoke-static {v7, v0}, Lbaa;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 346
    .local v6, "tmpDate":Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-static {v8, v6}, Lbaa;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    if-nez v8, :cond_2

    .line 349
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getAqi()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "aqiStr":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getAqiRemind()Ljava/lang/String;

    move-result-object v1

    .line 351
    const-string/jumbo v8, "AirPollutionEffectCategory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AqiRemind: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getAqiRemind()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string/jumbo v8, "AirPollutionEffectCategory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Aqi : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 355
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u7a7a\u6c14\u8d28\u91cf\u6307\u6570\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->filterNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    .end local v2    # "aqiStr":Ljava/lang/String;
    .end local v4    # "forecast":Lcom/iflytek/viafly/weather/Forecast;
    .end local v6    # "tmpDate":Ljava/util/Date;
    .end local v7    # "tmpDateStr":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 362
    new-instance v0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;-><init>()V

    .line 363
    .local v0, "airPollutionData":Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;->setWeather(Lcom/iflytek/viafly/weather/Weather;)V

    .line 364
    const-string/jumbo v8, "\u7a7a\u6c14\u6c61\u67d3\u63d0\u9192"

    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;->setTitle(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;->setContent(Ljava/lang/String;)V

    .line 366
    const-string/jumbo v8, "\u8be6\u60c5"

    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;->setBottomText(Ljava/lang/String;)V

    .line 367
    const-string/jumbo v8, "image.ic_smart_card_air_poluttion"

    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;->setCardIconUrl(Ljava/lang/String;)V

    .line 368
    const-string/jumbo v8, "image.ic_smart_float_air_pollution"

    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;->setFloatIconUrl(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getCacheConfig()Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;->setType(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;->setTipText(Ljava/lang/String;)V

    .line 371
    const-string/jumbo v8, "80003"

    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;->setId(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private unRedistDefaultDismiss()V
    .locals 3

    .prologue
    .line 476
    const-string/jumbo v0, "AirPollutionEffectCategory"

    const-string/jumbo v1, "WeatherFloatWindowDismissAlarm: unRegistDefaultDismiss"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "air_pollution_dismiss"

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "AirPollutionEffectCategory"

    return-object v0
.end method

.method public handleBackgroundIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    return-void
.end method

.method protected handleEditTask()V
    .locals 3

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.setting.card.WEATHER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 569
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 574
    return-void
.end method

.method protected handleMessageImpl(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x0

    .line 176
    const-string/jumbo v3, "AirPollutionEffectCategory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessageImpl message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;

    .line 183
    .local v0, "airPollutionData":Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->addData(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 185
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->registDefaultDismiss()V

    .line 186
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->cancelWeatherInfoRetryAlarm()V

    .line 189
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "airPollution"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .end local v0    # "airPollutionData":Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/iflytek/viafly/weather/Weather;

    if-eqz v3, :cond_0

    .line 195
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/viafly/weather/Weather;

    .line 196
    .local v2, "weather":Lcom/iflytek/viafly/weather/Weather;
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->transferAirPollution(Lcom/iflytek/viafly/weather/Weather;)Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;

    move-result-object v0

    .line 197
    .restart local v0    # "airPollutionData":Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;
    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mAirPollutionData:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;

    .line 199
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mAirPollutionData:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;

    if-eqz v3, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mAirPollutionData:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->addData(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 202
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->registDefaultDismiss()V

    .line 203
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->cancelWeatherInfoRetryAlarm()V

    .line 206
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "airPollution"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v0    # "airPollutionData":Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;
    .end local v2    # "weather":Lcom/iflytek/viafly/weather/Weather;
    :pswitch_2
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mAirPollutionData:Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionData;

    if-nez v3, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->createWeatherInfoRetryAlarm()V

    goto :goto_0

    .line 216
    :pswitch_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getCacheConfig()Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataByType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    if-eqz v3, :cond_0

    .line 222
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .line 223
    .local v1, "data":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->unRedistDefaultDismiss()V

    .line 225
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_1

    .line 242
    :goto_1
    :pswitch_5
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataByType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :pswitch_6
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->launchHomeOpenWeather(Landroid/content/Context;)V

    goto :goto_1

    .line 233
    :pswitch_7
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->launchHomeOpenWeather(Landroid/content/Context;)V

    goto :goto_1

    .line 236
    :pswitch_8
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->handleEditTask()V

    goto :goto_1

    .line 248
    .end local v1    # "data":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    :pswitch_9
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->cancelWeatherInfoRetryAlarm()V

    .line 249
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->unRedistDefaultDismiss()V

    .line 250
    iget-wide v4, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mRequestWeatherId:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mBizHelper:Lbbs;

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mBizHelper:Lbbs;

    iget-wide v4, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mRequestWeatherId:J

    invoke-virtual {v3, v4, v5}, Lbbs;->cancelRequest(J)V

    .line 252
    iput-wide v6, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mRequestWeatherId:J

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getCacheConfig()Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataByType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_9
    .end packed-switch

    .line 225
    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected handleScreeOn()V
    .locals 14

    .prologue
    .line 276
    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-direct {v11}, Ljava/util/GregorianCalendar;-><init>()V

    .line 277
    .local v11, "currentDate":Ljava/util/GregorianCalendar;
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 278
    .local v1, "currentYear":I
    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 279
    .local v2, "currentMonth":I
    const/4 v5, 0x5

    invoke-virtual {v11, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 280
    .local v3, "currentDay":I
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.LATEST_AIR_POLUTION_SCREEN_ON_TIME"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v12

    .line 282
    .local v12, "latestScreenOnTime":J
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 283
    .local v0, "minDate":Ljava/util/GregorianCalendar;
    new-instance v4, Ljava/util/GregorianCalendar;

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-direct/range {v4 .. v10}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 285
    .local v4, "maxDate":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 286
    invoke-virtual {v4, v11}, Ljava/util/GregorianCalendar;->after(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v5, v12, v6

    if-gez v5, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->handleScreenOnImpl()V

    .line 290
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.LATEST_AIR_POLUTION_SCREEN_ON_TIME"

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 290
    invoke-virtual {v5, v6, v8, v9}, Lil;->a(Ljava/lang/String;J)V

    .line 294
    return-void
.end method

.method public varargs handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 269
    const-string/jumbo v0, "AirPollutionEffectCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSystemEvent event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v0, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    if-ne p1, v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->handleScreeOn()V

    .line 273
    :cond_0
    return-void
.end method

.method protected isWeatherInfoCached(Landroid/content/Context;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 391
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, "serializePath":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "SCHEDULE_WEATHER_SAVED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 395
    .local v10, "weatherObject":Ljava/lang/Object;
    if-eqz v10, :cond_0

    instance-of v11, v10, Lcom/iflytek/viafly/weather/Weather;

    if-nez v11, :cond_1

    .line 396
    :cond_0
    const-string/jumbo v11, "AirPollutionEffectCategory"

    const-string/jumbo v12, "weatherObject is null"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v11, 0x0

    .line 436
    :goto_0
    return v11

    :cond_1
    move-object v9, v10

    .line 400
    check-cast v9, Lcom/iflytek/viafly/weather/Weather;

    .line 401
    .local v9, "weatherCache":Lcom/iflytek/viafly/weather/Weather;
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 402
    const-string/jumbo v11, "AirPollutionEffectCategory"

    const-string/jumbo v12, "weatherCache is null"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v11, 0x0

    goto :goto_0

    .line 408
    :cond_2
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 409
    .local v0, "currentDate":Ljava/util/GregorianCalendar;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    const-string/jumbo v12, "com.iflytek.cmccSCHEDULE_WEATHER_UPDATE_TIME"

    invoke-virtual {v11, v12}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v4

    .line 411
    .local v4, "latestCacheWeatherInfoTime":J
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 412
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getExpires()Ljava/lang/String;

    move-result-object v11

    .line 411
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-lez v11, :cond_3

    .line 413
    const-string/jumbo v11, "AirPollutionEffectCategory"

    const-string/jumbo v12, "WeatherInfo is out of date"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    const/4 v11, 0x0

    goto :goto_0

    .line 416
    .end local v0    # "currentDate":Ljava/util/GregorianCalendar;
    .end local v4    # "latestCacheWeatherInfoTime":J
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "AirPollutionEffectCategory"

    const-string/jumbo v12, "isWeatherInfoCached, getExpires error"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v11, 0x0

    goto :goto_0

    .line 421
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentDate":Ljava/util/GregorianCalendar;
    .restart local v4    # "latestCacheWeatherInfoTime":J
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_6

    const/4 v11, 0x2

    if-ge v3, v11, :cond_6

    .line 422
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/weather/Forecast;

    .line 423
    .local v2, "forecast":Lcom/iflytek/viafly/weather/Forecast;
    if-nez v2, :cond_5

    .line 421
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 426
    :cond_5
    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/Forecast;->getDate()Ljava/lang/String;

    move-result-object v8

    .line 427
    .local v8, "tmpDateStr":Ljava/lang/String;
    new-instance v7, Ljava/util/Date;

    const/4 v11, 0x0

    invoke-static {v8, v11}, Lbaa;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct {v7, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 429
    .local v7, "tmpDate":Ljava/util/Date;
    new-instance v11, Ljava/util/Date;

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 429
    invoke-static {v11, v7}, Lbaa;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v11

    if-nez v11, :cond_4

    .line 431
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 435
    .end local v2    # "forecast":Lcom/iflytek/viafly/weather/Forecast;
    .end local v7    # "tmpDate":Ljava/util/Date;
    .end local v8    # "tmpDateStr":Ljava/lang/String;
    :cond_6
    const-string/jumbo v11, "AirPollutionEffectCategory"

    const-string/jumbo v12, "isWeatherInfoCached, date error"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method protected launchHomeOpenWeather(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 552
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 554
    .local v0, "intentToHome":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_OPEN_WEATHER_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 558
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100023"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 560
    const-string/jumbo v1, "AirPollutionEffectCategory"

    const-string/jumbo v2, "launchHomeOpenWeather()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void
.end method

.method protected onBottomBtnClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    const/16 v0, 0x69

    const/16 v1, 0x3ec

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 172
    :cond_0
    return-void
.end method

.method protected onClose()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->unRedistDefaultDismiss()V

    .line 129
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->cancelWeatherInfoRetryAlarm()V

    .line 130
    return-void
.end method

.method protected onCloseClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    const/16 v0, 0x69

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected onContentClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    const/16 v0, 0x69

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 158
    :cond_0
    return-void
.end method

.method protected onDelete()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->unRedistDefaultDismiss()V

    .line 135
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->cancelWeatherInfoRetryAlarm()V

    .line 136
    return-void
.end method

.method protected onEditClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    const/16 v0, 0x69

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 165
    :cond_0
    return-void
.end method

.method protected onGrayChanged(Z)V
    .locals 4
    .param p1, "isSupport"    # Z

    .prologue
    const/4 v3, 0x0

    .line 140
    const-string/jumbo v0, "AirPollutionEffectCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGrayChanged isSupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-nez p1, :cond_0

    .line 142
    const/16 v0, 0x6a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 144
    :cond_0
    return-void
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method protected onOpen()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 10
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 524
    const-string/jumbo v1, "AirPollutionEffectCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResult | errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " requestType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->mRequestWeatherId:J

    .line 527
    if-nez p2, :cond_1

    .line 528
    const/16 v1, 0x66

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    const/16 v1, 0x18

    if-ne p5, v1, :cond_0

    move-object v7, p2

    .line 532
    check-cast v7, Lwa;

    .line 533
    .local v7, "bres":Lwa;
    invoke-virtual {v7}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v6

    .line 534
    .local v6, "resultStr":Ljava/lang/String;
    const-string/jumbo v1, "AirPollutionEffectCategory"

    invoke-static {v1, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 537
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    const-string/jumbo v4, "weather"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .local v0, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    new-instance v8, Lbbr;

    invoke-direct {v8}, Lbbr;-><init>()V

    .line 542
    .local v8, "mFilter":Lbbr;
    invoke-virtual {v8, v0}, Lbbr;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v9

    check-cast v9, Lcom/iflytek/viafly/weather/Weather;

    .line 543
    .local v9, "weather":Lcom/iflytek/viafly/weather/Weather;
    if-eqz v9, :cond_2

    const-string/jumbo v1, "000000"

    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 544
    const/16 v1, 0x65

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v9}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 546
    :cond_2
    const/16 v1, 0x66

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/iflytek/viafly/smartschedule/weather/airpollution/AirPollutionEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method
