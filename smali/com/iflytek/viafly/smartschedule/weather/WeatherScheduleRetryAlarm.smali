.class public Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;
.super Ljava/lang/Object;
.source "WeatherScheduleRetryAlarm.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# static fields
.field private static final NO_OPERATE_INTERVAL:J = 0x493e0L

.field private static final RETRY_ALARM_ID:Ljava/lang/String; = "retry_alarm"

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mAlarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private mListener:Lcom/iflytek/viafly/smartschedule/weather/OnNoOperateAlarmListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->mAlarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 25
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->mAlarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 26
    return-void
.end method

.method private getRetryAlarmData(I)Lcom/iflytek/base/newalarm/entities/AlarmData;
    .locals 8
    .param p1, "retryCount"    # I

    .prologue
    .line 44
    new-instance v1, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const/4 v2, 0x2

    .line 45
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    int-to-long v6, p1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retry_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 48
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->TAG:Ljava/lang/String;

    .line 49
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 52
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    return-object v0
.end method


# virtual methods
.method public addAlarm(Lcom/iflytek/viafly/smartschedule/weather/OnNoOperateAlarmListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/iflytek/viafly/smartschedule/weather/OnNoOperateAlarmListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->mListener:Lcom/iflytek/viafly/smartschedule/weather/OnNoOperateAlarmListener;

    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->mAlarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->mAlarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->getRetryAlarmData(I)Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->mAlarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->getRetryAlarmData(I)Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->mAlarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->getRetryAlarmData(I)Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 35
    :cond_0
    return-void
.end method

.method public cancelAlarm()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->mAlarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->mAlarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelModuleAlarms(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 1
    .param p1, "realTriggerTime"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->mListener:Lcom/iflytek/viafly/smartschedule/weather/OnNoOperateAlarmListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/WeatherScheduleRetryAlarm;->mListener:Lcom/iflytek/viafly/smartschedule/weather/OnNoOperateAlarmListener;

    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/weather/OnNoOperateAlarmListener;->onAlarmTrigger()V

    .line 60
    :cond_0
    return-void
.end method
