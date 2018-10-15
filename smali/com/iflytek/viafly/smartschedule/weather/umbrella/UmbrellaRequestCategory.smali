.class public Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;
.super Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;
.source "UmbrellaRequestCategory.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory",
        "<",
        "Lbbs;",
        ">;",
        "Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMESPAN:Ljava/lang/String; = "18:00~24:00"

.field private static final SECOND_SUBFIX:Ljava/lang/String; = ":00"

.field private static final SPACE:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "Weather_UmbrellaRequestCategory"

.field public static final UMBRELLA_RETRY:Ljava/lang/String; = "Weather_UmbrellaRequestCategory.UMBRELLA_RETRY"

.field public static final UMBRELLA_SCHEDULE:Ljava/lang/String; = "Weather_UmbrellaRequestCategory.UMBRELLA_SCHEDULE"

.field private static mInstance:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;


# instance fields
.field private mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private mExtra:Ljava/lang/String;

.field private volatile mInitFlag:Z

.field private mLastHandleTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mInstance:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mInitFlag:Z

    .line 78
    new-instance v0, Lbbs;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setListener()Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lbbs;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mBizRequest:Lvx;

    .line 79
    return-void
.end method

.method private cancelAlarm()V
    .locals 4

    .prologue
    .line 503
    const-string/jumbo v1, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v2, "cancelAlarm"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "9001"

    invoke-interface {v1, v2, v3}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v2, "cancelAlarm() error!"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mInstance:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mInstance:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    .line 70
    :cond_0
    return-void
.end method

.method private getAlarmTime([J)J
    .locals 18
    .param p1, "dateSpan"    # [J

    .prologue
    .line 449
    const-string/jumbo v7, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v14, "getAlarmTime"

    invoke-static {v7, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v7, v0

    const/4 v14, 0x2

    if-ge v7, v14, :cond_1

    .line 452
    :cond_0
    const-wide/16 v14, -0x1

    .line 467
    :goto_0
    return-wide v14

    .line 456
    :cond_1
    const/4 v7, 0x0

    aget-wide v14, p1, v7

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const-wide/16 v16, 0x3c

    div-long v12, v14, v16

    .line 457
    .local v12, "startTime":J
    const/4 v7, 0x1

    aget-wide v14, p1, v7

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const-wide/16 v16, 0x3c

    div-long v2, v14, v16

    .line 458
    .local v2, "endTime":J
    cmp-long v7, v2, v12

    if-lez v7, :cond_2

    .line 459
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 460
    .local v6, "random":Ljava/util/Random;
    sub-long v10, v2, v12

    .line 461
    .local v10, "randomRange":J
    const-string/jumbo v7, "Weather_UmbrellaRequestCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "randomSpan is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    .line 463
    .local v4, "nextRandom":J
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    rem-long v8, v14, v10

    .line 464
    .local v8, "randomNum":J
    const-string/jumbo v7, "Weather_UmbrellaRequestCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "randomNum is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    add-long v14, v12, v8

    const-wide/16 v16, 0x3c

    mul-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    goto :goto_0

    .line 467
    .end local v4    # "nextRandom":J
    .end local v6    # "random":Ljava/util/Random;
    .end local v8    # "randomNum":J
    .end local v10    # "randomRange":J
    :cond_2
    const-wide/16 v14, -0x1

    goto :goto_0
.end method

.method private getCoolingCache(Lcom/iflytek/viafly/weather/Weather;)Ljava/lang/String;
    .locals 13
    .param p1, "weather"    # Lcom/iflytek/viafly/weather/Weather;

    .prologue
    const/4 v11, 0x0

    .line 532
    if-nez p1, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-object v11

    .line 536
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_0

    const/4 v12, 0x2

    if-ge v6, v12, :cond_0

    .line 537
    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/weather/Forecast;

    .line 538
    .local v4, "forecast":Lcom/iflytek/viafly/weather/Forecast;
    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/Weather;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "city":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 536
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 542
    :cond_3
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getCoolingRemind()Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "coolingRemind":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 546
    const/4 v3, 0x0

    .line 547
    .local v3, "detailDesc":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getDate()Ljava/lang/String;

    move-result-object v9

    .line 548
    .local v9, "tmpDateStr":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getLowTemp()Ljava/lang/String;

    move-result-object v7

    .line 549
    .local v7, "lowTempStr":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getHighTemp()Ljava/lang/String;

    move-result-object v5

    .line 550
    .local v5, "highTempStr":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getDescription()Ljava/lang/String;

    move-result-object v10

    .line 552
    .local v10, "weatherDesc":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 553
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 554
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 555
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u00b0C/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u00b0C"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 556
    .local v8, "tempRangeDesc":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 558
    .end local v8    # "tempRangeDesc":Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;

    invoke-direct {v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;-><init>()V

    .line 559
    .local v2, "data":Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;
    invoke-virtual {v2, v9}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->setDate(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->setTipText(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->setContent(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->toJson()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0
.end method

.method private getDateSpan(Ljava/lang/String;)[J
    .locals 22
    .param p1, "timeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 345
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 346
    const/16 v18, 0x0

    .line 407
    :goto_0
    return-object v18

    .line 348
    :cond_0
    const-string/jumbo v18, "~"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 349
    .local v13, "timeArr":[Ljava/lang/String;
    if-eqz v13, :cond_1

    array-length v0, v13

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 350
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 352
    :cond_2
    const/16 v18, 0x0

    aget-object v18, v13, v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    const/16 v18, 0x1

    aget-object v18, v13, v18

    .line 353
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 354
    :cond_3
    const/16 v18, 0x0

    goto :goto_0

    .line 357
    :cond_4
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v18, "yyyy-MM-dd"

    sget-object v19, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 358
    .local v5, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v18, "yyyy-MM-dd HH:mm:ss"

    sget-object v19, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 361
    .local v6, "dateTimeFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 362
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 363
    .local v3, "currDate":Ljava/util/Date;
    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "currDateStr":Ljava/lang/String;
    const/16 v18, 0x5

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 367
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    .line 368
    .local v14, "tommorrowDate":Ljava/util/Date;
    invoke-virtual {v5, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 371
    .local v15, "tommorrowDateStr":Ljava/lang/String;
    const/16 v18, 0x5

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 372
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 373
    .local v10, "thirdDayDate":Ljava/util/Date;
    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 375
    .local v11, "thirdDayDateStr":Ljava/lang/String;
    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    aget-object v20, v13, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ":00"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v13, v18

    .line 376
    const/16 v18, 0x1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x1

    aget-object v20, v13, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ":00"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v13, v18

    .line 378
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v13, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 379
    .local v9, "startTime":Ljava/util/Date;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v19, v13, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 380
    .local v7, "endTime":Ljava/util/Date;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v13, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    .line 381
    .local v17, "tomorrowStartTime":Ljava/util/Date;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v19, v13, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    .line 382
    .local v16, "tomorrowEndTime":Ljava/util/Date;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v19, v13, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 384
    .local v12, "thirdDayEndTime":Ljava/util/Date;
    const/16 v18, 0x0

    aget-object v18, v13, v18

    const/16 v19, 0x1

    aget-object v19, v13, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    .line 385
    .local v8, "result":I
    if-gtz v8, :cond_6

    .line 386
    const-string/jumbo v18, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v19, "getDateSpan, same day"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v3, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 390
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    aput-wide v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    aput-wide v20, v18, v19

    goto/16 :goto_0

    .line 393
    :cond_5
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    aput-wide v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    aput-wide v20, v18, v19

    goto/16 :goto_0

    .line 396
    :cond_6
    const-string/jumbo v18, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v19, "getDateSpan, different day"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v3, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 400
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    aput-wide v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    aput-wide v20, v18, v19

    goto/16 :goto_0

    .line 401
    :cond_7
    invoke-virtual {v3, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 402
    invoke-virtual {v3, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 404
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    aput-wide v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    aput-wide v20, v18, v19

    goto/16 :goto_0

    .line 407
    :cond_8
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    aput-wide v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    aput-wide v20, v18, v19

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mInstance:Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;

    return-object v0
.end method

.method private isBetweenTimeSpan()Z
    .locals 14

    .prologue
    .line 305
    const-string/jumbo v11, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v12, "isBetweenTimeSpan"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    const-string/jumbo v12, "com.iflytek.cmcc.FLOAT_WEATHER_CACHE_RANDOM_TIMESPAN"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 308
    .local v10, "timeSpanStr":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 309
    const-string/jumbo v10, "18:00~24:00"

    .line 311
    :cond_0
    const-string/jumbo v11, "~"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 313
    .local v9, "timeArr":[Ljava/lang/String;
    array-length v11, v9

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 314
    const/4 v11, 0x0

    aget-object v11, v9, v11

    const-string/jumbo v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 315
    .local v8, "startStr":[Ljava/lang/String;
    const/4 v7, -0x1

    .line 316
    .local v7, "start":I
    const/4 v1, -0x1

    .line 317
    .local v1, "end":I
    array-length v11, v8

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 318
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    mul-int/lit8 v11, v11, 0x3c

    const/4 v12, 0x1

    aget-object v12, v8, v12

    .line 319
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v11, v12

    .line 318
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 320
    .local v4, "integerStart":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 322
    .end local v4    # "integerStart":Ljava/lang/Integer;
    :cond_1
    const/4 v11, 0x1

    aget-object v11, v9, v11

    const-string/jumbo v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "endStr":[Ljava/lang/String;
    array-length v11, v2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 324
    const/4 v11, 0x0

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    mul-int/lit8 v11, v11, 0x3c

    const/4 v12, 0x1

    aget-object v12, v2, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v1, v11, v12

    .line 325
    if-ge v1, v7, :cond_2

    .line 326
    add-int/lit16 v1, v1, 0x5a0

    .line 330
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 331
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 332
    .local v3, "hour":I
    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 333
    .local v5, "minute":I
    mul-int/lit8 v11, v3, 0x3c

    add-int v6, v11, v5

    .line 334
    .local v6, "minuteOfDay":I
    const-string/jumbo v11, "Weather_UmbrellaRequestCategory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isBetweenTimeSpan, start is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ";end is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ";minuteOfDay is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-ltz v7, :cond_3

    if-ltz v1, :cond_3

    if-lt v6, v7, :cond_3

    if-gt v6, v1, :cond_3

    .line 336
    const/4 v11, 0x1

    .line 339
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "end":I
    .end local v2    # "endStr":[Ljava/lang/String;
    .end local v3    # "hour":I
    .end local v5    # "minute":I
    .end local v6    # "minuteOfDay":I
    .end local v7    # "start":I
    .end local v8    # "startStr":[Ljava/lang/String;
    :goto_0
    return v11

    :cond_3
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private isHandled()Z
    .locals 4

    .prologue
    .line 520
    .line 521
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 520
    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v2

    const-string/jumbo v3, "BadWeatherReminder"

    .line 521
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isRunningController(Ljava/lang/String;)Z

    move-result v1

    .line 523
    .local v1, "isRunningUmbrella":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 522
    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v2

    const-string/jumbo v3, "CoolingController"

    .line 523
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isRunningController(Ljava/lang/String;)Z

    move-result v0

    .line 524
    .local v0, "isRunningCooling":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 525
    :cond_0
    const/4 v2, 0x1

    .line 528
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setAlarm(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 420
    const-string/jumbo v6, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v7, "setAlarm"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.FLOAT_WEATHER_CACHE_RANDOM_TIMESPAN"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "timeSpanStr":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 424
    const-string/jumbo v6, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v7, "setAlarm, set DEFAULT_TIMESPAN"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string/jumbo v3, "18:00~24:00"

    .line 427
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.FLOAT_WEATHER_CACHE_RANDOM_TIMESPAN"

    invoke-virtual {v6, v7, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    const/4 v0, 0x0

    .line 431
    .local v0, "dateSpan":[J
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 432
    .local v1, "dateTimeFormat":Ljava/text/SimpleDateFormat;
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getDateSpan(Ljava/lang/String;)[J

    move-result-object v0

    .line 433
    const-string/jumbo v6, "Weather_UmbrellaRequestCategory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dateSpan0 is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    const/4 v9, 0x0

    aget-wide v10, v0, v9

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string/jumbo v6, "Weather_UmbrellaRequestCategory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dateSpan1 is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    const/4 v9, 0x1

    aget-wide v10, v0, v9

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v1    # "dateTimeFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    if-eqz v0, :cond_1

    .line 439
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getAlarmTime([J)J

    move-result-wide v4

    .line 440
    .local v4, "nextAlarmTime":J
    const-string/jumbo v6, "Weather_UmbrellaRequestCategory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAlarm, nextAlarmTime is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 442
    invoke-direct {p0, p1, v4, v5}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setAlarm(Landroid/content/Context;J)V

    .line 445
    .end local v4    # "nextAlarmTime":J
    :cond_1
    return-void

    .line 435
    :catch_0
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v7, "parse exception"

    invoke-static {v6, v7, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setAlarm(Landroid/content/Context;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # J

    .prologue
    .line 473
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 474
    .local v2, "dateTimeFormat":Ljava/text/SimpleDateFormat;
    const-string/jumbo v3, "Weather_UmbrellaRequestCategory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAlarm, nextAlarmTime is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 485
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "com.iflytek.cmcc.SMART_SCHEDULE_NAME"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getCacheConfig()Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string/jumbo v3, "com.iflytek.cmcc.SMART_SCHEDULE_EXTRA"

    const-string/jumbo v4, "Weather_UmbrellaRequestCategory.UMBRELLA_SCHEDULE"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    new-instance v3, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const-string/jumbo v4, "9001"

    .line 488
    invoke-virtual {v3, v4}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    .line 489
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    .line 490
    invoke-virtual {v3, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    .line 491
    invoke-virtual {v3, p2, p3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    const/4 v4, 0x2

    .line 492
    invoke-virtual {v3, v4}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    .line 493
    invoke-virtual {v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 494
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v3, :cond_0

    .line 495
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v3, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 498
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.FLOAT_WEATHER_CACHE_NEXT_ALARM_TIME"

    invoke-virtual {v3, v4, p2, p3}, Lil;->a(Ljava/lang/String;J)V

    .line 499
    return-void
.end method

.method private setRetryCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 414
    const-string/jumbo v0, "Weather_UmbrellaRequestCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRetryCount, count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.FLOAT_WEATHER_CACHE_RETRY_COUNT"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;I)V

    .line 416
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "Weather_UmbrellaRequestCategory"

    return-object v0
.end method

.method public handleBackgroundIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x3

    .line 218
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const-string/jumbo v1, "com.iflytek.cmcc.SMART_SCHEDULE_EXTRA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "extra":Ljava/lang/String;
    const-string/jumbo v1, "Weather_UmbrellaRequestCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleBackgroundIntent extra = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string/jumbo v1, "Weather_UmbrellaRequestCategory.UMBRELLA_SCHEDULE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mExtra:Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setAlarm(Landroid/content/Context;)V

    .line 225
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqe;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mBizRequest:Lvx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mBizRequest:Lvx;

    check-cast v1, Lbbs;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 227
    invoke-static {}, Loa;->a()Loa;

    move-result-object v4

    invoke-virtual {v4}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v4

    const-string/jumbo v5, "1"

    .line 226
    invoke-virtual {v1, v2, v3, v4, v5}, Lbbs;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/lbs/XAddress;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 228
    invoke-direct {p0, v6}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    .line 236
    .end local v0    # "extra":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 232
    .restart local v0    # "extra":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v6}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    goto :goto_0
.end method

.method public handlePushReceive()V
    .locals 6

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->isHandled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    const-string/jumbo v1, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v2, "handlePushReceive not running"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.FLOAT_WEATHER_CACHE_RETRY_COUNT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 97
    .local v0, "retryCount":I
    const-string/jumbo v1, "Weather_UmbrellaRequestCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlePushReceiver, retryCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-lez v0, :cond_0

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mLastHandleTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 100
    const-string/jumbo v1, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v2, "handlePushReceive time too short"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mLastHandleTime:J

    .line 105
    add-int/lit8 v0, v0, -0x1

    .line 106
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    .line 109
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 110
    const-string/jumbo v1, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v2, "handlePushReceiver, network error"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :cond_3
    invoke-static {}, Loa;->a()Loa;

    move-result-object v1

    invoke-virtual {v1}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v1

    if-nez v1, :cond_4

    .line 114
    const-string/jumbo v1, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v2, "handlePushReceiver, address null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_4
    const-string/jumbo v1, "Weather_UmbrellaRequestCategory.UMBRELLA_RETRY"

    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mExtra:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mBizRequest:Lvx;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mBizRequest:Lvx;

    check-cast v1, Lbbs;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 121
    invoke-static {}, Loa;->a()Loa;

    move-result-object v4

    invoke-virtual {v4}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v4

    const-string/jumbo v5, "1"

    .line 120
    invoke-virtual {v1, v2, v3, v4, v5}, Lbbs;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/lbs/XAddress;Ljava/lang/String;)J

    goto/16 :goto_0
.end method

.method public varargs handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 240
    return-void
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 8
    .param p1, "realTriggerTime"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    const/4 v7, 0x3

    .line 570
    if-eqz p3, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAlarmTrigger alarmData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->isHandled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 574
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "com.iflytek.cmcc.SMART_SCHEDULE_EXTRA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "extra":Ljava/lang/String;
    const-string/jumbo v2, "Weather_UmbrellaRequestCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleBackgroundIntent extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string/jumbo v2, "Weather_UmbrellaRequestCategory.UMBRELLA_SCHEDULE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mExtra:Ljava/lang/String;

    .line 579
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setAlarm(Landroid/content/Context;)V

    .line 580
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lqe;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mBizRequest:Lvx;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mBizRequest:Lvx;

    check-cast v2, Lbbs;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    .line 582
    invoke-static {}, Loa;->a()Loa;

    move-result-object v5

    invoke-virtual {v5}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v5

    const-string/jumbo v6, "1"

    .line 581
    invoke-virtual {v2, v3, v4, v5, v6}, Lbbs;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/lbs/XAddress;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 583
    invoke-direct {p0, v7}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    .line 592
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "extra":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 587
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "extra":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v7}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    goto :goto_0
.end method

.method protected onClose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->isHandled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->cancelAlarm()V

    .line 192
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    .line 193
    iput-boolean v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mInitFlag:Z

    .line 195
    :cond_0
    return-void
.end method

.method protected onDelete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->isHandled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->cancelAlarm()V

    .line 201
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    .line 202
    iput-boolean v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mInitFlag:Z

    .line 204
    :cond_0
    return-void
.end method

.method protected onFail(IJI)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "requestId"    # J
    .param p4, "requestType"    # I

    .prologue
    .line 297
    const-string/jumbo v0, "Weather_UmbrellaRequestCategory.UMBRELLA_SCHEDULE"

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    .line 301
    :cond_0
    return-void
.end method

.method public onGrayChanged(Z)V
    .locals 4
    .param p1, "isSupport"    # Z

    .prologue
    const/4 v3, 0x0

    .line 208
    const-string/jumbo v0, "Weather_UmbrellaRequestCategory"

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

    .line 209
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->isHandled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->cancelAlarm()V

    .line 211
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    .line 212
    iput-boolean v3, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mInitFlag:Z

    .line 214
    :cond_0
    return-void
.end method

.method protected onInit()V
    .locals 14

    .prologue
    .line 128
    iget-boolean v5, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mInitFlag:Z

    if-eqz v5, :cond_0

    .line 129
    const-string/jumbo v5, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v10, "onInit already inited"

    invoke-static {v5, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->isHandled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    const-string/jumbo v5, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v10, "onInit not running"

    invoke-static {v5, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 138
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v5, :cond_2

    .line 139
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 142
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v10, "com.iflytek.cmcc.FLOAT_WEATHER_CACHE_NEXT_ALARM_TIME"

    const-wide/16 v12, -0x1

    invoke-virtual {v5, v10, v12, v13}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v8

    .line 144
    .local v8, "nextAlarmTime":J
    const-string/jumbo v5, "Weather_UmbrellaRequestCategory"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "nextAlarmTime is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_8

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 147
    .local v0, "currentTime":J
    cmp-long v5, v8, v0

    if-gez v5, :cond_7

    .line 149
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setAlarm(Landroid/content/Context;)V

    .line 152
    sub-long v2, v0, v8

    .line 153
    .local v2, "duration":J
    const-wide/16 v10, 0x3e8

    div-long v10, v2, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    div-long v6, v10, v12

    .line 154
    .local v6, "hours":J
    const-wide/16 v10, 0x2

    cmp-long v5, v6, v10

    if-gez v5, :cond_4

    .line 155
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    .line 180
    .end local v0    # "currentTime":J
    .end local v2    # "duration":J
    .end local v6    # "hours":J
    :cond_3
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mInitFlag:Z

    goto :goto_0

    .line 156
    .restart local v0    # "currentTime":J
    .restart local v2    # "duration":J
    .restart local v6    # "hours":J
    :cond_4
    const-wide/16 v10, 0x4

    cmp-long v5, v6, v10

    if-gez v5, :cond_5

    .line 157
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    goto :goto_1

    .line 158
    :cond_5
    const-wide/16 v10, 0x6

    cmp-long v5, v6, v10

    if-gez v5, :cond_6

    .line 159
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    goto :goto_1

    .line 161
    :cond_6
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    goto :goto_1

    .line 167
    .end local v2    # "duration":J
    .end local v6    # "hours":J
    :cond_7
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->cancelAlarm()V

    .line 168
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v8, v9}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setAlarm(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 169
    :catch_0
    move-exception v4

    .line 170
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v10, "handleLingxiStart"

    invoke-static {v5, v10, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 174
    .end local v0    # "currentTime":J
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setAlarm(Landroid/content/Context;)V

    .line 176
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->isBetweenTimeSpan()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 177
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    goto :goto_1
.end method

.method protected onOpen()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->onInit()V

    .line 186
    return-void
.end method

.method protected onSuccess(Lcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 15
    .param p1, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p2, "requestId"    # J
    .param p4, "requestType"    # I

    .prologue
    .line 244
    const/16 v3, 0x18

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    move-object/from16 v9, p1

    .line 245
    check-cast v9, Lwa;

    .line 246
    .local v9, "bres":Lwa;
    invoke-virtual {v9}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v8

    .line 247
    .local v8, "resultStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 248
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    const-string/jumbo v6, "weather"

    const-string/jumbo v7, ""

    invoke-direct/range {v2 .. v8}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .local v2, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    new-instance v12, Lbbr;

    invoke-direct {v12}, Lbbr;-><init>()V

    .line 252
    .local v12, "mFilter":Lbbr;
    invoke-virtual {v12, v2}, Lbbr;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v14

    check-cast v14, Lcom/iflytek/viafly/weather/Weather;

    .line 253
    .local v14, "weather":Lcom/iflytek/viafly/weather/Weather;
    if-eqz v14, :cond_4

    const-string/jumbo v3, "000000"

    invoke-virtual {v14}, Lcom/iflytek/viafly/weather/Weather;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    invoke-virtual {v14}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 256
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

    move-result-object v13

    .line 257
    .local v13, "serializePath":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "SCHEDULE_WEATHER_SAVED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lil;->i(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "SCHEDULE_WEATHER_SAVED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v14}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccSCHEDULE_WEATHER_UPDATE_TIME"

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 261
    invoke-virtual {v3, v4, v6, v7}, Lil;->a(Ljava/lang/String;J)V

    .line 263
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.FLOAT_WEATHER_CACHE_RANDOM_TIMESPAN"

    .line 265
    invoke-virtual {v14}, Lcom/iflytek/viafly/weather/Weather;->getTimeSpan()Ljava/lang/String;

    move-result-object v5

    .line 263
    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v14}, Lcom/iflytek/viafly/weather/Weather;->getDetailUrl()Ljava/lang/String;

    move-result-object v11

    .line 267
    .local v11, "detailUrl":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    const-string/jumbo v3, "Weather_UmbrellaRequestCategory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "save detailUrl, url is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "BLC_ADDRESS_CONFIG010001"

    invoke-virtual {v3, v4, v11}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    invoke-direct {p0, v14}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->getCoolingCache(Lcom/iflytek/viafly/weather/Weather;)Ljava/lang/String;

    move-result-object v10

    .line 275
    .local v10, "coolingCache":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 276
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "COOLING_SCHEDULE_CACHE"

    invoke-virtual {v3, v4, v10}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_1
    const-string/jumbo v3, "Weather_UmbrellaRequestCategory.UMBRELLA_RETRY"

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mExtra:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "Weather_UmbrellaRequestCategory.UMBRELLA_SCHEDULE"

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mExtra:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 281
    :cond_2
    const-string/jumbo v3, "Weather_UmbrellaRequestCategory"

    const-string/jumbo v4, "set retry count 0"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    .line 293
    .end local v2    # "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .end local v8    # "resultStr":Ljava/lang/String;
    .end local v9    # "bres":Lwa;
    .end local v10    # "coolingCache":Ljava/lang/String;
    .end local v11    # "detailUrl":Ljava/lang/String;
    .end local v12    # "mFilter":Lbbr;
    .end local v13    # "serializePath":Ljava/lang/String;
    .end local v14    # "weather":Lcom/iflytek/viafly/weather/Weather;
    :cond_3
    :goto_0
    return-void

    .line 287
    .restart local v2    # "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v8    # "resultStr":Ljava/lang/String;
    .restart local v9    # "bres":Lwa;
    .restart local v12    # "mFilter":Lbbr;
    .restart local v14    # "weather":Lcom/iflytek/viafly/weather/Weather;
    :cond_4
    const-string/jumbo v3, "Weather_UmbrellaRequestCategory.UMBRELLA_SCHEDULE"

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->mExtra:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 289
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/smartschedule/weather/umbrella/UmbrellaRequestCategory;->setRetryCount(I)V

    goto :goto_0
.end method
