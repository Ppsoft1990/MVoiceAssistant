.class public Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;
.super Ljava/lang/Object;
.source "TrafficDataHelper.java"


# static fields
.field private static final ALARM_FLAG:Ljava/lang/String; = "SMART_SCHEDULE_TAFFIC"

.field private static final ALARM_NET_ID:Ljava/lang/String; = "SMART_SCHEDULE_TAFFIC_GET_TRAFFIC_AFTER_30MIN"

.field private static final ALARM_TRAFFIC_ID:Ljava/lang/String; = "traffic"

.field private static final ALARM_TYPE:Ljava/lang/String; = "alarm_type"

.field private static final MSG_GET_TRAFFIC:I = 0xb

.field private static final TAG:Ljava/lang/String; = "SMART_SCHEDULE_TAFFIC_TrafficDataHelper"

.field private static final TRAFFIC_REQUEST_WAITTING:I = 0x1b7740


# instance fields
.field private mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private trafficData:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficData;

.field private trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trafficListener"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    .line 36
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;)Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;)Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficData;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->trafficData:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->registerReqAlarm()V

    return-void
.end method

.method private getAlarmCallback(Landroid/content/Context;)Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$1;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method private getTrafficListener()Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$2;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "SMART_SCHEDULE_TAFFIC_TrafficDataHelper"

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->getAlarmCallback(Landroid/content/Context;)Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 59
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->getTrafficListener()Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->trafficData:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficData;

    .line 60
    return-void
.end method

.method private registerModuleAlarm(Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "simpleData"    # Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;

    .prologue
    .line 73
    if-eqz p2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_0

    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "traffic"

    iget-object v3, p2, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mMsgId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v2, "alarm_type"

    iget v3, p2, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    new-instance v2, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const/4 v3, 0x2

    .line 79
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    iget-object v3, p2, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mAlarmId:Ljava/lang/String;

    .line 80
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    iget-wide v4, p2, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;->mStartTime:J

    .line 81
    invoke-virtual {v2, v4, v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const-string/jumbo v3, "SMART_SCHEDULE_TAFFIC_TrafficDataHelper"

    .line 82
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 84
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 87
    .end local v0    # "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private registerReqAlarm()V
    .locals 10

    .prologue
    .line 67
    const-string/jumbo v6, "SMART_SCHEDULE_TAFFIC_GET_TRAFFIC_AFTER_30MIN"

    new-instance v0, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;

    const/16 v1, 0xb

    const-string/jumbo v2, "SMART_SCHEDULE_TAFFIC_GET_TRAFFIC_AFTER_30MIN"

    const-string/jumbo v3, ""

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v8, 0x1b7740

    add-long/2addr v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    .line 67
    invoke-direct {p0, v6, v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->registerModuleAlarm(Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/expensestraffic/AlarmSimpleData;)V

    .line 70
    return-void
.end method

.method private request()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v0

    .line 41
    .local v0, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    if-nez v0, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->registerReqAlarm()V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper;->isTrafficInfoAvailable(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    invoke-interface {v1, v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;->onSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->clearTrafficInfo()V

    .line 51
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->registerReqAlarm()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->mAlarm:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "SMART_SCHEDULE_TAFFIC_TrafficDataHelper"

    invoke-interface {v0, v1}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelModuleAlarms(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->request()V

    .line 131
    return-void
.end method
