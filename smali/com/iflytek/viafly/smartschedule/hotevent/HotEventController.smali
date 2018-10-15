.class public Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;
.super Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
.source "HotEventController.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;,
        Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;
    }
.end annotation


# static fields
.field private static final ALARM_HOLIDAY_ID:Ljava/lang/String; = "holiday_id"

.field private static final ALARM_TYPE:Ljava/lang/String; = "alarm_type"


# instance fields
.field private final ALARM_DATA_DATED:I

.field private final ALARM_DATA_SHOW:I

.field private final ALARM_FLAG:Ljava/lang/String;

.field private final CARD_ICON:I

.field private final FLOAT_ICON:I

.field private final MSG_ADD_DATA:I

.field private final MSG_BOTTOM_CLICK:I

.field private final MSG_CONTENT_CLICK:I

.field private final MSG_DOWNLOAD_IMAGE:I

.field private final MSG_EDIT_CLICK:I

.field private final MSG_INIT_DATA:I

.field private final MSG_OPEN_HOTEVENT:I

.field private final MSG_REMOVE_CLICK:I

.field private final SCHEDULE_TYPE:Ljava/lang/String;

.field private final SMART_ID:Ljava/lang/String;

.field private final SMART_TYPE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private mAlarmMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

.field private mLastHandleTime:J

.field private request:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventRequest;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;-><init>()V

    .line 54
    const-string/jumbo v0, "HotEventController"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->TAG:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "HotEventController"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->SMART_TYPE:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "HotEvent"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->SMART_ID:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->ALARM_DATA_SHOW:I

    .line 60
    iput v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->ALARM_DATA_DATED:I

    .line 63
    iput v2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->MSG_ADD_DATA:I

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->MSG_REMOVE_CLICK:I

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->MSG_EDIT_CLICK:I

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->MSG_CONTENT_CLICK:I

    .line 67
    const/4 v0, 0x6

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->MSG_BOTTOM_CLICK:I

    .line 68
    const/4 v0, 0x7

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->MSG_INIT_DATA:I

    .line 69
    const/16 v0, 0x8

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->MSG_DOWNLOAD_IMAGE:I

    .line 70
    const/16 v0, 0x9

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->MSG_OPEN_HOTEVENT:I

    .line 73
    iput v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->FLOAT_ICON:I

    .line 74
    iput v2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->CARD_ICON:I

    .line 76
    const-string/jumbo v0, "SMART_SCHEDULE_HOLIDAY"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->ALARM_FLAG:Ljava/lang/String;

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mLastHandleTime:J

    .line 90
    const-string/jumbo v0, "HotEvent"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->SCHEDULE_TYPE:Ljava/lang/String;

    return-void
.end method

.method private HandleBottomEvent(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "hotEvent"    # Lorg/json/JSONObject;

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 396
    :cond_0
    const-string/jumbo v1, "detailUrl"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "detailUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->launchHomeOpenBrowser(Ljava/lang/String;)V

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->context:Landroid/content/Context;

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100009"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->handleUIMsg(Landroid/os/Message;)V

    return-void
.end method

.method private checkHotEvent(Lorg/json/JSONObject;)Z
    .locals 12
    .param p1, "hotEvent"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 458
    if-eqz p1, :cond_0

    const-string/jumbo v7, "id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "detailUrl"

    .line 459
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "title"

    .line 460
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "content"

    .line 461
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "mFloatIcon"

    .line 462
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "mCardIcon"

    .line 463
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 492
    :cond_0
    :goto_0
    return v6

    .line 467
    :cond_1
    const-string/jumbo v7, "startTime"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "startTime":Ljava/lang/String;
    const-string/jumbo v7, "endTime"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "endTime":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 472
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 474
    .local v3, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 475
    .local v4, "startDate":Ljava/util/Date;
    if-eqz v4, :cond_0

    .line 478
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 479
    .local v1, "endDate":Ljava/util/Date;
    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_0

    .line 485
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 492
    const/4 v6, 0x1

    goto :goto_0

    .line 488
    .end local v1    # "endDate":Ljava/util/Date;
    .end local v4    # "startDate":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "HotEventController"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private controllRequest()V
    .locals 5

    .prologue
    .line 118
    const/4 v1, 0x1

    .line 120
    .local v1, "isRequest":Z
    :try_start_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 124
    :goto_0
    const-string/jumbo v2, "HotEventController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "controllRequest random boolean value is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->handleRequest()V

    .line 128
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HotEventController"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createAlarmId(Ljava/lang/String;)I
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SMART_SCHEDULE_HOLIDAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method private deleteData(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 748
    const-string/jumbo v0, "HotEventController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteData | id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataById(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getHotEventgetTimeInMillis(Ljava/lang/String;)J
    .locals 7
    .param p1, "time_str"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-wide v4

    .line 444
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 446
    .local v1, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 447
    .local v2, "startDate":Ljava/util/Date;
    if-eqz v2, :cond_0

    .line 450
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 451
    .end local v2    # "startDate":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HotEventController"

    const-string/jumbo v6, ""

    invoke-static {v3, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleCommonDeleteTaskById(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 739
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->deleteData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleCommonTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 6
    .param p1, "smartData"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 670
    if-nez p1, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "smartId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 678
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    const-string/jumbo v3, "HotEventController"

    invoke-virtual {v2, v3, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataById(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_2

    .line 682
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v3, "HotEventController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SMART_SCHEDULE_HOLIDAY-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mAlarmMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SMART_SCHEDULE_HOLIDAY-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 690
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string/jumbo v3, "isChecked"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->resetCache()V

    goto :goto_0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HotEventController"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-static {}, Laul;->a()Laul;

    move-result-object v2

    const-string/jumbo v3, "HotEvent"

    invoke-virtual {v2, v3, v1}, Laul;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleHotEventData(Lorg/json/JSONArray;)V
    .locals 19
    .param p1, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 177
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 178
    :cond_0
    const-string/jumbo v3, "HotEventController"

    const-string/jumbo v4, "hotEvent data is null or length is 0"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v18

    .line 182
    .local v18, "originLength":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 183
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 185
    .local v15, "hotEvent":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->checkHotEvent(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    const-string/jumbo v3, "id"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "hotEventId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 189
    const-string/jumbo v3, "startTime"

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->getHotEventgetTimeInMillis(Ljava/lang/String;)J

    move-result-wide v8

    .line 190
    .local v8, "startTime":J
    const-string/jumbo v3, "endTime"

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->getHotEventgetTimeInMillis(Ljava/lang/String;)J

    move-result-wide v12

    .line 191
    .local v12, "endTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 192
    .local v10, "curTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-ltz v3, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-ltz v3, :cond_2

    cmp-long v3, v10, v12

    if-lez v3, :cond_3

    .line 182
    .end local v7    # "hotEventId":Ljava/lang/String;
    .end local v8    # "startTime":J
    .end local v10    # "curTime":J
    .end local v12    # "endTime":J
    :cond_2
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 195
    .restart local v7    # "hotEventId":Ljava/lang/String;
    .restart local v8    # "startTime":J
    .restart local v10    # "curTime":J
    .restart local v12    # "endTime":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v7, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->isForbiddenGray()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->isOpenStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "isChecked"

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 201
    invoke-static {}, Laul;->a()Laul;

    move-result-object v3

    const-string/jumbo v4, "HotEvent"

    invoke-virtual {v3, v4, v7}, Laul;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 202
    .local v14, "haveCache":Z
    if-nez v14, :cond_4

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v17

    .line 204
    .local v17, "message":Landroid/os/Message;
    const/16 v3, 0x8

    move-object/from16 v0, v17

    iput v3, v0, Landroid/os/Message;->what:I

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    .end local v17    # "message":Landroid/os/Message;
    :cond_4
    cmp-long v3, v8, v10

    if-lez v3, :cond_5

    .line 209
    const-string/jumbo v3, "HotEventController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hotEventId -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " startTime > curTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SMART_SCHEDULE_HOLIDAY-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, "alarmName":Ljava/lang/String;
    new-instance v3, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;

    const/4 v5, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;-><init>(Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;ILjava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->registerModuleAlarm(Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 232
    .end local v6    # "alarmName":Ljava/lang/String;
    .end local v7    # "hotEventId":Ljava/lang/String;
    .end local v8    # "startTime":J
    .end local v10    # "curTime":J
    .end local v12    # "endTime":J
    .end local v14    # "haveCache":Z
    .end local v15    # "hotEvent":Lorg/json/JSONObject;
    .end local v16    # "i":I
    .end local v18    # "originLength":I
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HotEventController"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 214
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v7    # "hotEventId":Ljava/lang/String;
    .restart local v8    # "startTime":J
    .restart local v10    # "curTime":J
    .restart local v12    # "endTime":J
    .restart local v14    # "haveCache":Z
    .restart local v15    # "hotEvent":Lorg/json/JSONObject;
    .restart local v16    # "i":I
    .restart local v18    # "originLength":I
    :cond_5
    cmp-long v3, v8, v10

    if-gtz v3, :cond_2

    .line 215
    :try_start_1
    const-string/jumbo v3, "HotEventController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hotEventId -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " startTime < curTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v17

    .line 217
    .restart local v17    # "message":Landroid/os/Message;
    const/4 v3, 0x2

    move-object/from16 v0, v17

    iput v3, v0, Landroid/os/Message;->what:I

    .line 218
    move-object/from16 v0, v17

    iput-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    if-nez v14, :cond_6

    const-wide/16 v4, 0x1388

    add-long/2addr v4, v10

    cmp-long v3, v4, v12

    if-gez v3, :cond_6

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    const-wide/16 v4, 0x1388

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4, v5}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 223
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 231
    .end local v7    # "hotEventId":Ljava/lang/String;
    .end local v8    # "startTime":J
    .end local v10    # "curTime":J
    .end local v12    # "endTime":J
    .end local v14    # "haveCache":Z
    .end local v15    # "hotEvent":Lorg/json/JSONObject;
    .end local v17    # "message":Landroid/os/Message;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->resetCache()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private handleRequest()V
    .locals 18

    .prologue
    .line 131
    const-string/jumbo v14, "HotEventController"

    const-string/jumbo v15, "handleRequest() is called"

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v9, 0x0

    .line 133
    .local v9, "isNeedRequest":Z
    invoke-static {}, Lil;->a()Lil;

    move-result-object v14

    const-string/jumbo v15, "com.iflytek.cmccIFLY_SMART_HOLIDAY_REQUEST_TIME"

    const-wide/16 v16, 0x0

    invoke-virtual/range {v14 .. v17}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v12

    .line 134
    .local v12, "successTime":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_2

    .line 135
    const/4 v9, 0x1

    .line 158
    :goto_0
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->request:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventRequest;

    if-eqz v14, :cond_1

    .line 159
    const-string/jumbo v8, ""

    .line 160
    .local v8, "ids":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 170
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->request:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventRequest;

    invoke-virtual {v14, v8}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventRequest;->sendRequest(Ljava/lang/String;)J

    .line 172
    .end local v8    # "ids":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 137
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 138
    .local v11, "succCal":Ljava/util/Calendar;
    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 139
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 140
    const/16 v14, 0xc

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 141
    const/16 v14, 0xd

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 142
    const/16 v14, 0xe

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 144
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 145
    .local v4, "before":J
    const/4 v14, 0x6

    const/4 v15, 0x1

    invoke-virtual {v11, v14, v15}, Ljava/util/Calendar;->add(II)V

    .line 146
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 147
    .local v2, "after":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 149
    .local v6, "curTime":J
    cmp-long v14, v4, v6

    if-gez v14, :cond_3

    cmp-long v14, v2, v6

    if-lez v14, :cond_3

    .line 150
    const-string/jumbo v14, "HotEventController"

    const-string/jumbo v15, "current time is the same day with last success request time"

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v9, 0x0

    .line 152
    goto :goto_1

    .line 154
    :cond_3
    const/4 v9, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "after":J
    .end local v4    # "before":J
    .end local v6    # "curTime":J
    .end local v11    # "succCal":Ljava/util/Calendar;
    .restart local v8    # "ids":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 163
    .local v10, "key":Ljava/lang/String;
    const-string/jumbo v15, ""

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 164
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 166
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method private handleUIMsg(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 533
    const-string/jumbo v3, "HotEventController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleUIMsg msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    if-nez v3, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 539
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 540
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lorg/json/JSONObject;

    .line 541
    .local v13, "hotEvent":Lorg/json/JSONObject;
    const-string/jumbo v3, "id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 542
    .local v7, "hotEventId":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    const-string/jumbo v4, "HotEventController"

    const-string/jumbo v5, "id"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataById(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-static {}, Laul;->a()Laul;

    move-result-object v3

    const-string/jumbo v4, "HotEvent"

    invoke-virtual {v3, v4, v7}, Laul;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->resetCache()V

    goto :goto_0

    .line 552
    .end local v7    # "hotEventId":Ljava/lang/String;
    .end local v13    # "hotEvent":Lorg/json/JSONObject;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 553
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lorg/json/JSONObject;

    .line 555
    .restart local v13    # "hotEvent":Lorg/json/JSONObject;
    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->isForbiddenGray()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->isOpenStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "isChecked"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 556
    new-instance v15, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-direct {v15}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;-><init>()V

    .line 557
    .local v15, "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    const-string/jumbo v3, "id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 558
    .restart local v7    # "hotEventId":Ljava/lang/String;
    const-string/jumbo v3, "endTime"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->getHotEventgetTimeInMillis(Ljava/lang/String;)J

    move-result-wide v8

    .line 559
    .local v8, "endTime":J
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v3, v8, v4

    if-lez v3, :cond_0

    .line 560
    const-string/jumbo v3, "HotEventController"

    invoke-virtual {v15, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setType(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v15, v7}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setId(Ljava/lang/String;)V

    .line 562
    const-string/jumbo v3, "\u70ed\u95e8\u4e8b\u4ef6\u63d0\u9192"

    invoke-virtual {v15, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setTitle(Ljava/lang/String;)V

    .line 563
    const-string/jumbo v3, "title"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setContent(Ljava/lang/String;)V

    .line 564
    const-string/jumbo v3, "content"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setTipText(Ljava/lang/String;)V

    .line 565
    const/4 v3, 0x2

    invoke-virtual {v15, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setScheduleType(I)V

    .line 570
    invoke-static {}, Laul;->a()Laul;

    move-result-object v3

    const-string/jumbo v4, "HotEvent"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v7, v5}, Laul;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 571
    .local v11, "floatFilePath":Ljava/lang/String;
    invoke-static {}, Laul;->a()Laul;

    move-result-object v3

    const-string/jumbo v4, "HotEvent"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v7, v5}, Laul;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "cardFilePath":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setFloatIcon(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v15, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setCardIcon(Ljava/lang/String;)V

    .line 574
    const-string/jumbo v3, "image.ic_smart_card_hotevent"

    invoke-virtual {v15, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setCardIconUrl(Ljava/lang/String;)V

    .line 575
    const-string/jumbo v3, "image.ic_smart_float_hotevent"

    invoke-virtual {v15, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setFloatIconUrl(Ljava/lang/String;)V

    .line 576
    const-string/jumbo v3, "\u8be6\u60c5"

    invoke-virtual {v15, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setBottomText(Ljava/lang/String;)V

    .line 577
    const-string/jumbo v3, "OPEN_URL"

    invoke-virtual {v15, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->setBottomAction(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-virtual {v3, v15}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->addData(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SMART_SCHEDULE_HOLIDAY-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 581
    .local v6, "alarmName":Ljava/lang/String;
    new-instance v3, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;

    const/4 v5, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;-><init>(Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;ILjava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->registerModuleAlarm(Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;)V

    .line 584
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "hotEvent"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 590
    .end local v2    # "cardFilePath":Ljava/lang/String;
    .end local v6    # "alarmName":Ljava/lang/String;
    .end local v7    # "hotEventId":Ljava/lang/String;
    .end local v8    # "endTime":J
    .end local v11    # "floatFilePath":Ljava/lang/String;
    .end local v13    # "hotEvent":Lorg/json/JSONObject;
    .end local v15    # "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    if-eqz v3, :cond_0

    .line 591
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .line 593
    .restart local v15    # "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->handleCommonTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto/16 :goto_0

    .line 598
    .end local v15    # "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    if-eqz v3, :cond_0

    .line 599
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .line 601
    .restart local v15    # "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->handleCommonTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 607
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v3, "com.iflytek.cmcc.setting.card.NEWS"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->context:Landroid/content/Context;

    const-class v4, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 609
    const/high16 v3, 0x34000000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->context:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->context:Landroid/content/Context;

    invoke-static {v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "LX_100057"

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 618
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    if-eqz v3, :cond_0

    .line 619
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .line 621
    .restart local v15    # "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->handleCommonTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 624
    .restart local v13    # "hotEvent":Lorg/json/JSONObject;
    if-eqz v13, :cond_2

    .line 625
    const-string/jumbo v3, "detailUrl"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 626
    .local v16, "url":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 627
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->launchHomeOpenBrowser(Ljava/lang/String;)V

    .line 631
    .end local v16    # "url":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->context:Landroid/content/Context;

    invoke-static {v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "LX_100009"

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 635
    .end local v13    # "hotEvent":Lorg/json/JSONObject;
    .end local v15    # "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    if-eqz v3, :cond_0

    .line 636
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .line 638
    .restart local v15    # "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->handleCommonTask(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->HandleBottomEvent(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 644
    .end local v15    # "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 645
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lorg/json/JSONObject;

    .line 646
    .restart local v13    # "hotEvent":Lorg/json/JSONObject;
    const-string/jumbo v3, "id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 647
    .restart local v7    # "hotEventId":Ljava/lang/String;
    const-string/jumbo v3, "mFloatIcon"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 648
    .local v12, "floatUrl":Ljava/lang/String;
    const-string/jumbo v3, "mCardIcon"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 649
    .local v10, "cardUrl":Ljava/lang/String;
    invoke-static {}, Laul;->a()Laul;

    move-result-object v3

    const-string/jumbo v4, "HotEvent"

    invoke-virtual {v3, v4, v7, v12, v10}, Laul;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 653
    .end local v7    # "hotEventId":Ljava/lang/String;
    .end local v10    # "cardUrl":Ljava/lang/String;
    .end local v12    # "floatUrl":Ljava/lang/String;
    .end local v13    # "hotEvent":Lorg/json/JSONObject;
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->initCache()V

    goto/16 :goto_0

    .line 656
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->initCache()V

    .line 657
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->handleRequest()V

    goto/16 :goto_0

    .line 537
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private initCache()V
    .locals 6

    .prologue
    .line 238
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_SMART_HOLIDAY_CACHE_DATA"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "hotEventCache":Ljava/lang/String;
    const-string/jumbo v3, "HotEventController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hotEventCache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "array":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->handleHotEventData(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HotEventController"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchHomeOpenBrowser(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 405
    const-string/jumbo v1, "HotEventController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launchHomeOpenBrowser() , url is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .local v0, "intentToHome":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_LUANCH_HOME_TO_CONTTENT_BROWSER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_CODE_SCAN_URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 410
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 411
    return-void
.end method

.method private registerModuleAlarm(Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "simpleData"    # Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;

    .prologue
    .line 277
    if-eqz p2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_0

    .line 279
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 280
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "holiday_id"

    iget-object v3, p2, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;->mHotEventId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v2, "alarm_type"

    iget v3, p2, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;->mType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    new-instance v2, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const/4 v3, 0x2

    .line 283
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    iget-object v3, p2, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;->mAlarmId:Ljava/lang/String;

    .line 284
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 285
    invoke-virtual {v2, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    iget-wide v4, p2, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$AlarmSimpleData;->mStartTime:J

    .line 286
    invoke-virtual {v2, v4, v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const-string/jumbo v3, "HotEventController"

    .line 287
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 288
    invoke-virtual {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 290
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 292
    .end local v0    # "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mAlarmMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_1
    return-void
.end method

.method private resetCache()V
    .locals 5

    .prologue
    .line 703
    const-string/jumbo v3, "HotEventController"

    const-string/jumbo v4, "resetCache()"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v3, :cond_0

    .line 717
    :goto_0
    return-void

    .line 708
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 711
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 712
    .local v2, "value":Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 715
    .end local v2    # "value":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "newCacheStr":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_SMART_HOLIDAY_CACHE_DATA"

    invoke-virtual {v3, v4, v1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 263
    const-string/jumbo v0, "HotEventController"

    const-string/jumbo v1, "HotEventController close "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string/jumbo v0, "HotEvent"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->handleCommonDeleteTaskById(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 270
    const-string/jumbo v0, "HotEventController"

    const-string/jumbo v1, "HotEventController close "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string/jumbo v0, "HotEvent"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->handleCommonDeleteTaskById(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public handleBackgroundIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 336
    return-void
.end method

.method public handleBottomBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 322
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 323
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 324
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 325
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 326
    return-void
.end method

.method public handleBottomLeftBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 0
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 331
    return-void
.end method

.method public handleContent(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 314
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 315
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 316
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 317
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    return-void
.end method

.method public handleEdit(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 306
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 307
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 308
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 309
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    return-void
.end method

.method public handleGrayControlChanged(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 376
    const-string/jumbo v1, "120029"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    const-string/jumbo v2, "HotEventController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Hot Event gray ---- 120029:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v1, "120029"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "120029"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 382
    .local v0, "isSupport":Z
    :goto_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SMART_HOTEVENT_GRAY_CTRL_FALG"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Z)V

    .line 384
    if-nez v0, :cond_0

    .line 386
    const-string/jumbo v1, "HotEvent"

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->handleCommonDeleteTaskById(Ljava/lang/String;)V

    .line 390
    .end local v0    # "isSupport":Z
    :cond_0
    return-void

    .line 380
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleRemove(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 298
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 299
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 300
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 301
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    return-void
.end method

.method public varargs handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 346
    const-string/jumbo v0, "HotEventController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSystemEvent : event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/SystemEvent;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->isForbiddenGray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const-string/jumbo v0, "HotEventController"

    const-string/jumbo v1, "handleBackgroundIntent gray forbidden"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->isOpenStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    const-string/jumbo v0, "HotEventController"

    const-string/jumbo v1, "handleSystemEvent not open status"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$1;->$SwitchMap$com$iflytek$framework$business$entities$SystemEvent:[I

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/SystemEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 361
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mLastHandleTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 362
    const-string/jumbo v0, "HotEventController"

    const-string/jumbo v1, "handlePushReceive time too short"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mLastHandleTime:J

    .line 366
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->controllRequest()V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-nez v0, :cond_2

    .line 96
    :cond_0
    const-string/jumbo v0, "HotEventController"

    const-string/jumbo v1, "init failed context or rundata is empty"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    new-instance v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;-><init>(Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$1;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    .line 101
    new-instance v0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventRequest;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->context:Landroid/content/Context;

    const-string/jumbo v2, "http://ydclient.voicecloud.cn/traffdisp/do?c=1019"

    invoke-direct {v0, v1, v2, p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->request:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventRequest;

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mAlarmMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mAlarmMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 107
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "HotEventController"

    invoke-interface {v0, v1, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->isForbiddenGray()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->isOpenStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public isForbiddenGray()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 340
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_SMART_HOTEVENT_GRAY_CTRL_FALG"

    invoke-virtual {v2, v3, v1}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 341
    .local v0, "cacheSupport":Z
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 9
    .param p1, "realTriggerTime"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    const/4 v7, 0x1

    .line 497
    if-eqz p3, :cond_2

    .line 498
    const-string/jumbo v4, "HotEventController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAlarmTrigger realTrigger = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " alarmdata = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 500
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "holiday_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "hotEventId":Ljava/lang/String;
    const-string/jumbo v4, "alarm_type"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 503
    .local v0, "alarmType":I
    if-nez v0, :cond_1

    .line 504
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 505
    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v3, Landroid/os/Message;->what:I

    .line 506
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 507
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v4, v3}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 519
    .end local v0    # "alarmType":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "hotEventId":Ljava/lang/String;
    .end local v3    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 510
    .restart local v0    # "alarmType":I
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "hotEventId":Ljava/lang/String;
    :cond_1
    if-ne v0, v7, :cond_0

    .line 511
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 512
    .restart local v3    # "message":Landroid/os/Message;
    iput v7, v3, Landroid/os/Message;->what:I

    .line 513
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 514
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    invoke-virtual {v4, v3}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 517
    .end local v0    # "alarmType":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "hotEventId":Ljava/lang/String;
    .end local v3    # "message":Landroid/os/Message;
    :cond_2
    const-string/jumbo v4, "HotEventController"

    const-string/jumbo v5, "onAlarmTrigger but alarm data is empty"

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 8
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 415
    const-string/jumbo v4, "HotEventController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " requestType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-nez p2, :cond_0

    .line 418
    const-string/jumbo v4, "HotEventController"

    const-string/jumbo v5, "request fail : result is empty"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :goto_0
    return-void

    .line 421
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_0
    const/4 v3, 0x0

    .line 423
    .local v3, "resArray":Lorg/json/JSONArray;
    :try_start_0
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "res":Ljava/lang/String;
    const-string/jumbo v4, "HotEventController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request result is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 426
    .local v1, "jsonRes":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    const-string/jumbo v4, "success"

    const-string/jumbo v5, "status"

    const-string/jumbo v6, "fail"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 427
    :cond_1
    const-string/jumbo v4, "HotEventController"

    const-string/jumbo v5, "request fail : status is not success"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    .end local v1    # "jsonRes":Lorg/json/JSONObject;
    .end local v2    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HotEventController"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->handleHotEventData(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 431
    .restart local v1    # "jsonRes":Lorg/json/JSONObject;
    .restart local v2    # "res":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_SMART_HOLIDAY_REQUEST_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lil;->a(Ljava/lang/String;J)V

    .line 433
    const-string/jumbo v4, "holidays"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1
.end method

.method public open()V
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->isForbiddenGray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->isOpenStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    const-string/jumbo v0, "HotEventController"

    const-string/jumbo v1, "open gray not forbidden or status is not open"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 258
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->mHandler:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
