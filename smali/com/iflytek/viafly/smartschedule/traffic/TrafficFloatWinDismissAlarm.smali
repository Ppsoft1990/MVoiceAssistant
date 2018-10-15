.class public Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;
.super Ljava/lang/Object;
.source "TrafficFloatWinDismissAlarm.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm$OnTrafficAlarmListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "TrafficFloatWinDismissAlarm"


# instance fields
.field private ALARM_ID:Ljava/lang/String;

.field private alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private alarmTag:Ljava/lang/String;

.field private mListener:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm$OnTrafficAlarmListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm$OnTrafficAlarmListener;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "onTrafficAlarmListener"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm$OnTrafficAlarmListener;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "TrafficSchedule"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->ALARM_ID:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "TrafficSchedule"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->alarmTag:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v0, p1, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->alarmTag:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->mListener:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm$OnTrafficAlarmListener;

    .line 40
    return-void
.end method


# virtual methods
.method public addAlarm(J)V
    .locals 9
    .param p1, "time"    # J

    .prologue
    .line 50
    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-nez v3, :cond_0

    .line 72
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->alarmTag:Ljava/lang/String;

    .line 55
    .local v1, "alarmId":Ljava/lang/String;
    const-string/jumbo v3, "TrafficFloatWinDismissAlarm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addAlarm | module = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    move-wide v4, p1

    .line 58
    .local v4, "warnTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 59
    .local v2, "triggerTime":Ljava/util/Calendar;
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 63
    new-instance v3, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    iget-object v6, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->alarmTag:Ljava/lang/String;

    .line 64
    invoke-virtual {v3, v6}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 65
    invoke-virtual {v3, v6}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    iget-object v6, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->alarmTag:Ljava/lang/String;

    .line 66
    invoke-virtual {v3, v6}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    .line 67
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    const/4 v6, 0x2

    .line 68
    invoke-virtual {v3, v6}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 71
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v3, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    goto :goto_0
.end method

.method public cancelAlarm()V
    .locals 3

    .prologue
    .line 43
    const-string/jumbo v0, "TrafficFloatWinDismissAlarm"

    const-string/jumbo v1, "cancelAlarm"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->alarmManager:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "TrafficFloatWinDismissAlarm"

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->ALARM_ID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 2
    .param p1, "realTriggerTime"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 76
    const-string/jumbo v0, "TrafficFloatWinDismissAlarm"

    const-string/jumbo v1, "onAlarmTrigger"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->mListener:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm$OnTrafficAlarmListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm;->mListener:Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm$OnTrafficAlarmListener;

    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm$OnTrafficAlarmListener;->onAlarmTrigger()V

    .line 80
    :cond_0
    return-void
.end method
