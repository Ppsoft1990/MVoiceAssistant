.class public Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;
.super Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;
.source "UmbrellaEffectCategory.java"

# interfaces
.implements Lyn;


# static fields
.field private static final DISMISS_ALARM_ID:Ljava/lang/String; = "umbrella_dismiss"

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

.field private static final TAG:Ljava/lang/String; = "Weather_UmbrellaEffectCategory"


# instance fields
.field private mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private mBizHelper:Lbbs;

.field private mContext:Landroid/content/Context;

.field private mRequestWeatherId:J

.field private mUmbrella:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;

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

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mRequestWeatherId:J

    .line 96
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lbbs;

    invoke-direct {v0, p1, p0}, Lbbs;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mBizHelper:Lbbs;

    .line 98
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory$1;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory$1;-><init>(Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;)V

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;IIILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->requestWeatherInfo()V

    return-void
.end method

.method private cancelWeatherInfoRetryAlarm()V
    .locals 2

    .prologue
    .line 485
    const-string/jumbo v0, "Weather_UmbrellaEffectCategory"

    const-string/jumbo v1, "cancelWeatherInfoRetryAlarm"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mWeatherFloatWindowRetryAlarm:Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mWeatherFloatWindowRetryAlarm:Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->cancelAlarm()V

    .line 489
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mWeatherFloatWindowRetryAlarm:Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    .line 490
    return-void
.end method

.method private createWeatherInfoRetryAlarm()V
    .locals 2

    .prologue
    .line 505
    const-string/jumbo v0, "Weather_UmbrellaEffectCategory"

    const-string/jumbo v1, "createRetryAlarm()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mWeatherFloatWindowRetryAlarm:Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mWeatherFloatWindowRetryAlarm:Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    .line 508
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mWeatherFloatWindowRetryAlarm:Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    new-instance v1, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory$2;-><init>(Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->addAlarm(Lcom/iflytek/viafly/smartschedule/weather/OnNoOperateAlarmListener;)V

    .line 518
    :cond_0
    return-void
.end method

.method private handleScreenOnImpl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->isWeatherInfoCached(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    const-string/jumbo v2, "Weather_UmbrellaEffectCategory"

    const-string/jumbo v3, "isWeatherInfoCached"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->loadWeatherInfoCache()Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;

    move-result-object v1

    .line 299
    .local v1, "umbrellaData":Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;
    if-eqz v1, :cond_0

    .line 300
    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mUmbrella:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;

    .line 301
    const/16 v2, 0x67

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mUmbrella:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 314
    .end local v1    # "umbrellaData":Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 305
    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Lhl;->c()Z

    move-result v0

    .line 307
    .local v0, "isNetAvailable":Z
    if-eqz v0, :cond_2

    .line 309
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->requestWeatherInfo()V

    goto :goto_0

    .line 311
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->createWeatherInfoRetryAlarm()V

    goto :goto_0
.end method

.method private loadWeatherInfoCache()Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;
    .locals 6

    .prologue
    .line 317
    const-string/jumbo v3, "Weather_UmbrellaEffectCategory"

    const-string/jumbo v4, "loadWeatherInfoCache"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getContext()Landroid/content/Context;

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

    .line 320
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

    .line 322
    .local v2, "weatherObject":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/iflytek/viafly/weather/Weather;

    if-nez v3, :cond_1

    .line 323
    :cond_0
    const/4 v3, 0x0

    .line 327
    :goto_0
    return-object v3

    :cond_1
    move-object v1, v2

    .line 326
    check-cast v1, Lcom/iflytek/viafly/weather/Weather;

    .line 327
    .local v1, "weather":Lcom/iflytek/viafly/weather/Weather;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->transferUmbrella(Lcom/iflytek/viafly/weather/Weather;)Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;

    move-result-object v3

    goto :goto_0
.end method

.method private registDefaultDismiss()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/4 v4, 0x0

    .line 441
    const-string/jumbo v2, "Weather_UmbrellaEffectCategory"

    const-string/jumbo v3, "WeatherFloatWindowDismissAlarm: registDefaultDismiss"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 443
    .local v1, "date":Ljava/util/GregorianCalendar;
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 444
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 445
    invoke-virtual {v1, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 447
    new-instance v2, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    .line 448
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 449
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 450
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const-string/jumbo v3, "umbrella_dismiss"

    .line 451
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 452
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 455
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 468
    :cond_0
    return-void
.end method

.method private requestWeatherInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 493
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mRequestWeatherId:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mBizHelper:Lbbs;

    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mRequestWeatherId:J

    invoke-virtual {v0, v2, v3}, Lbbs;->cancelRequest(J)V

    .line 495
    iput-wide v4, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mRequestWeatherId:J

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mBizHelper:Lbbs;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {}, Loa;->a()Loa;

    move-result-object v3

    invoke-virtual {v3}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lbbs;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/lbs/XAddress;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mRequestWeatherId:J

    .line 498
    return-void
.end method

.method private transferUmbrella(Lcom/iflytek/viafly/weather/Weather;)Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;
    .locals 18
    .param p1, "weather"    # Lcom/iflytek/viafly/weather/Weather;

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    const/4 v11, 0x0

    .line 380
    :goto_0
    return-object v11

    .line 335
    :cond_0
    const/4 v3, 0x0

    .line 336
    .local v3, "detailDesc":Ljava/lang/String;
    const/4 v13, 0x0

    .line 337
    .local v13, "weatherSuggestion":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_3

    const/4 v14, 0x2

    if-ge v6, v14, :cond_3

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/weather/Forecast;

    .line 339
    .local v4, "forecast":Lcom/iflytek/viafly/weather/Forecast;
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/weather/Weather;->getCity()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "city":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 337
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 343
    :cond_2
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getDate()Ljava/lang/String;

    move-result-object v10

    .line 344
    .local v10, "tmpDateStr":Ljava/lang/String;
    new-instance v9, Ljava/util/Date;

    const/4 v14, 0x0

    invoke-static {v10, v14}, Lbaa;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    invoke-direct {v9, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 346
    .local v9, "tmpDate":Ljava/util/Date;
    new-instance v14, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v14, v9}, Lbaa;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v14

    if-nez v14, :cond_1

    .line 348
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getLowTemp()Ljava/lang/String;

    move-result-object v7

    .line 349
    .local v7, "lowTempStr":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getHighTemp()Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "highTempStr":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getDescription()Ljava/lang/String;

    move-result-object v12

    .line 352
    .local v12, "weatherDesc":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getBadWeatheRemind()Ljava/lang/String;

    move-result-object v13

    .line 353
    const-string/jumbo v14, "Weather_UmbrellaEffectCategory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "transferUmbrella Suggestion: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getBadWeatheRemind()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 356
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 357
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 358
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 359
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\u00b0C/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\u00b0C"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 360
    .local v8, "tempRangeDesc":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    .end local v2    # "city":Ljava/lang/String;
    .end local v4    # "forecast":Lcom/iflytek/viafly/weather/Forecast;
    .end local v5    # "highTempStr":Ljava/lang/String;
    .end local v7    # "lowTempStr":Ljava/lang/String;
    .end local v8    # "tempRangeDesc":Ljava/lang/String;
    .end local v9    # "tmpDate":Ljava/util/Date;
    .end local v10    # "tmpDateStr":Ljava/lang/String;
    .end local v12    # "weatherDesc":Ljava/lang/String;
    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 367
    new-instance v11, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;

    invoke-direct {v11}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;-><init>()V

    .line 368
    .local v11, "umbrellaData":Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;->setWeather(Lcom/iflytek/viafly/weather/Weather;)V

    .line 369
    const-string/jumbo v14, "\u6076\u52a3\u5929\u6c14\u63d0\u9192"

    invoke-virtual {v11, v14}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;->setTitle(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v11, v13}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;->setContent(Ljava/lang/String;)V

    .line 371
    const-string/jumbo v14, "\u8be6\u60c5"

    invoke-virtual {v11, v14}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;->setBottomText(Ljava/lang/String;)V

    .line 372
    const-string/jumbo v14, "image.ic_smart_card_bad_weather"

    invoke-virtual {v11, v14}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;->setCardIconUrl(Ljava/lang/String;)V

    .line 373
    const-string/jumbo v14, "image.ic_smart_float_bad_weather"

    invoke-virtual {v11, v14}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;->setFloatIconUrl(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getCacheConfig()Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;->setType(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v11, v3}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;->setTipText(Ljava/lang/String;)V

    .line 376
    const-string/jumbo v14, "80001"

    invoke-virtual {v11, v14}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    .end local v11    # "umbrellaData":Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private unRedistDefaultDismiss()V
    .locals 3

    .prologue
    .line 474
    const-string/jumbo v0, "Weather_UmbrellaEffectCategory"

    const-string/jumbo v1, "WeatherFloatWindowDismissAlarm: unRegistDefaultDismiss"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "umbrella_dismiss"

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "Weather_UmbrellaEffectCategory"

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
    .line 565
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.setting.card.WEATHER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 567
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 570
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 571
    return-void
.end method

.method protected handleMessageImpl(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x0

    .line 176
    const-string/jumbo v3, "Weather_UmbrellaEffectCategory"

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

    instance-of v3, v3, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;

    .line 183
    .local v1, "umbrellaData":Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->addData(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 185
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->registDefaultDismiss()V

    .line 186
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->cancelWeatherInfoRetryAlarm()V

    .line 189
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "abnormalWeather"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .end local v1    # "umbrellaData":Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;
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
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->transferUmbrella(Lcom/iflytek/viafly/weather/Weather;)Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;

    move-result-object v1

    .line 197
    .restart local v1    # "umbrellaData":Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;
    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mUmbrella:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;

    .line 199
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->addData(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 202
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->registDefaultDismiss()V

    .line 203
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->cancelWeatherInfoRetryAlarm()V

    .line 206
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "abnormalWeather"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v1    # "umbrellaData":Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;
    .end local v2    # "weather":Lcom/iflytek/viafly/weather/Weather;
    :pswitch_2
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mUmbrella:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaData;

    if-nez v3, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->createWeatherInfoRetryAlarm()V

    goto :goto_0

    .line 216
    :pswitch_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getCacheConfig()Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

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
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .line 223
    .local v0, "data":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->unRedistDefaultDismiss()V

    .line 225
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_1

    .line 242
    :goto_1
    :pswitch_5
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataByType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :pswitch_6
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->launchHomeOpenWeather(Landroid/content/Context;)V

    goto :goto_1

    .line 233
    :pswitch_7
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->launchHomeOpenWeather(Landroid/content/Context;)V

    goto :goto_1

    .line 236
    :pswitch_8
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->handleEditTask()V

    goto :goto_1

    .line 248
    .end local v0    # "data":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    :pswitch_9
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->cancelWeatherInfoRetryAlarm()V

    .line 249
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->unRedistDefaultDismiss()V

    .line 250
    iget-wide v4, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mRequestWeatherId:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mBizHelper:Lbbs;

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mBizHelper:Lbbs;

    iget-wide v4, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mRequestWeatherId:J

    invoke-virtual {v3, v4, v5}, Lbbs;->cancelRequest(J)V

    .line 252
    iput-wide v6, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mRequestWeatherId:J

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getCacheConfig()Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

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

    const-string/jumbo v6, "com.iflytek.cmcc.LATEST_SCREEN_ON_TIME"

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
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->handleScreenOnImpl()V

    .line 290
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.LATEST_SCREEN_ON_TIME"

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 290
    invoke-virtual {v5, v6, v8, v9}, Lil;->a(Ljava/lang/String;J)V

    .line 293
    return-void
.end method

.method public varargs handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 269
    const-string/jumbo v0, "Weather_UmbrellaEffectCategory"

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
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->handleScreeOn()V

    .line 273
    :cond_0
    return-void
.end method

.method protected isWeatherInfoCached(Landroid/content/Context;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 389
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

    .line 391
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

    .line 393
    .local v10, "weatherObject":Ljava/lang/Object;
    if-eqz v10, :cond_0

    instance-of v11, v10, Lcom/iflytek/viafly/weather/Weather;

    if-nez v11, :cond_1

    .line 394
    :cond_0
    const-string/jumbo v11, "Weather_UmbrellaEffectCategory"

    const-string/jumbo v12, "weatherObject is null"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v11, 0x0

    .line 434
    :goto_0
    return v11

    :cond_1
    move-object v9, v10

    .line 398
    check-cast v9, Lcom/iflytek/viafly/weather/Weather;

    .line 399
    .local v9, "weatherCache":Lcom/iflytek/viafly/weather/Weather;
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 400
    const-string/jumbo v11, "Weather_UmbrellaEffectCategory"

    const-string/jumbo v12, "weatherCache is null"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v11, 0x0

    goto :goto_0

    .line 406
    :cond_2
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 407
    .local v0, "currentDate":Ljava/util/GregorianCalendar;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    const-string/jumbo v12, "com.iflytek.cmccSCHEDULE_WEATHER_UPDATE_TIME"

    invoke-virtual {v11, v12}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v4

    .line 409
    .local v4, "latestCacheWeatherInfoTime":J
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 410
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getExpires()Ljava/lang/String;

    move-result-object v11

    .line 409
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-lez v11, :cond_3

    .line 411
    const-string/jumbo v11, "Weather_UmbrellaEffectCategory"

    const-string/jumbo v12, "WeatherInfo is out of date"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    const/4 v11, 0x0

    goto :goto_0

    .line 414
    .end local v0    # "currentDate":Ljava/util/GregorianCalendar;
    .end local v4    # "latestCacheWeatherInfoTime":J
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "Weather_UmbrellaEffectCategory"

    const-string/jumbo v12, "isWeatherInfoCached, getExpires error"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v11, 0x0

    goto :goto_0

    .line 419
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

    .line 420
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/weather/Forecast;

    .line 421
    .local v2, "forecast":Lcom/iflytek/viafly/weather/Forecast;
    if-nez v2, :cond_5

    .line 419
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 424
    :cond_5
    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/Forecast;->getDate()Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, "tmpDateStr":Ljava/lang/String;
    new-instance v7, Ljava/util/Date;

    const/4 v11, 0x0

    invoke-static {v8, v11}, Lbaa;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct {v7, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 427
    .local v7, "tmpDate":Ljava/util/Date;
    new-instance v11, Ljava/util/Date;

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 427
    invoke-static {v11, v7}, Lbaa;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v11

    if-nez v11, :cond_4

    .line 429
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 433
    .end local v2    # "forecast":Lcom/iflytek/viafly/weather/Forecast;
    .end local v7    # "tmpDate":Ljava/util/Date;
    .end local v8    # "tmpDateStr":Ljava/lang/String;
    :cond_6
    const-string/jumbo v11, "Weather_UmbrellaEffectCategory"

    const-string/jumbo v12, "isWeatherInfoCached, date error"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method protected launchHomeOpenWeather(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 550
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 552
    .local v0, "intentToHome":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_OPEN_WEATHER_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 555
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 556
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100023"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 558
    const-string/jumbo v1, "Weather_UmbrellaEffectCategory"

    const-string/jumbo v2, "launchHomeOpenWeather()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
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

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 172
    :cond_0
    return-void
.end method

.method protected onClose()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->unRedistDefaultDismiss()V

    .line 129
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->cancelWeatherInfoRetryAlarm()V

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

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->sendMessage(IIILjava/lang/Object;)V

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

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 158
    :cond_0
    return-void
.end method

.method protected onDelete()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->unRedistDefaultDismiss()V

    .line 135
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->cancelWeatherInfoRetryAlarm()V

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

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->sendMessage(IIILjava/lang/Object;)V

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
    const-string/jumbo v0, "Weather_UmbrellaEffectCategory"

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

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->sendMessage(IIILjava/lang/Object;)V

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
    .line 522
    const-string/jumbo v1, "Weather_UmbrellaEffectCategory"

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

    .line 524
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->mRequestWeatherId:J

    .line 525
    if-nez p2, :cond_1

    .line 526
    const/16 v1, 0x66

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const/16 v1, 0x18

    if-ne p5, v1, :cond_0

    move-object v7, p2

    .line 530
    check-cast v7, Lwa;

    .line 531
    .local v7, "bres":Lwa;
    invoke-virtual {v7}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v6

    .line 532
    .local v6, "resultStr":Ljava/lang/String;
    const-string/jumbo v1, "Weather_UmbrellaEffectCategory"

    invoke-static {v1, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 535
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    const-string/jumbo v4, "weather"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .local v0, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    new-instance v8, Lbbr;

    invoke-direct {v8}, Lbbr;-><init>()V

    .line 540
    .local v8, "mFilter":Lbbr;
    invoke-virtual {v8, v0}, Lbbr;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v9

    check-cast v9, Lcom/iflytek/viafly/weather/Weather;

    .line 541
    .local v9, "weather":Lcom/iflytek/viafly/weather/Weather;
    if-eqz v9, :cond_2

    const-string/jumbo v1, "000000"

    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    const/16 v1, 0x65

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v9}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 544
    :cond_2
    const/16 v1, 0x66

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaEffectCategory;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method
