.class public Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;
.super Ljava/lang/Object;
.source "TrafficRandomRequestAlarm.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm$OnRandomRequestAlarmListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "TrafficRandomRequestAlarm"


# instance fields
.field private ALARM_ID:Ljava/lang/String;

.field private alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private mListener:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm$OnRandomRequestAlarmListener;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm$OnRandomRequestAlarmListener;)V
    .locals 2
    .param p1, "onTrafficAlarmListener"    # Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm$OnRandomRequestAlarmListener;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "TrafficRandomRequestAlarm"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;->ALARM_ID:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;->alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;->alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;->alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "TrafficRandomRequestAlarm"

    invoke-interface {v0, v1, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;->mListener:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm$OnRandomRequestAlarmListener;

    .line 41
    return-void
.end method


# virtual methods
.method public addAlarm()V
    .locals 10

    .prologue
    .line 52
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;->ALARM_ID:Ljava/lang/String;

    .line 53
    .local v1, "alarmId":Ljava/lang/String;
    const-string/jumbo v7, "TrafficRandomRequestAlarm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addAlarm | module = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v7, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;

    invoke-direct {v7}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;-><init>()V

    invoke-virtual {v7}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->getRamDate()J

    move-result-wide v4

    .line 55
    .local v4, "requestTime":J
    const-string/jumbo v7, "TrafficRandomRequestAlarm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requestTime  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "requestTimeString":Ljava/lang/String;
    const-string/jumbo v7, "TrafficRandomRequestAlarm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requestTimeString "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 62
    .local v6, "triggerTime":Ljava/util/Calendar;
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 64
    new-instance v7, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v7}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const-string/jumbo v8, "TrafficRandomRequestAlarm"

    .line 65
    invoke-virtual {v7, v8}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-virtual {v7, v8}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v7

    .line 67
    invoke-virtual {v7, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v7

    .line 68
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v7

    const/4 v8, 0x2

    .line 69
    invoke-virtual {v7, v8}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v7

    .line 70
    invoke-virtual {v7}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 72
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v7, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;->alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v7, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 73
    return-void
.end method

.method public cancelAlarm()V
    .locals 3

    .prologue
    .line 44
    const-string/jumbo v0, "TrafficRandomRequestAlarm"

    const-string/jumbo v1, "cancelAlarm"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;->alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;->alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "TrafficRandomRequestAlarm"

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;->ALARM_ID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 2
    .param p1, "realTriggerTime"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 77
    const-string/jumbo v0, "TrafficRandomRequestAlarm"

    const-string/jumbo v1, "onAlarmTrigger"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;->mListener:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm$OnRandomRequestAlarmListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm;->mListener:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm$OnRandomRequestAlarmListener;

    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm$OnRandomRequestAlarmListener;->onAlarmTrigger()V

    .line 81
    :cond_0
    return-void
.end method
