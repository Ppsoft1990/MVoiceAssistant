.class public Lawa;
.super Ljava/lang/Object;
.source "AlarmHelper.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# static fields
.field private static a:Lawa;


# instance fields
.field private b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lawa;->a:Lawa;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lawa;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 65
    iput-object p1, p0, Lawa;->c:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lawa;->c:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    iget-object v1, p0, Lawa;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lhl;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lawa;->d:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lawa;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lawa;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "SCHEDULE_ALARM"

    invoke-interface {v0, v1, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 70
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lawa;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v0, Lawa;->a:Lawa;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lawa;

    invoke-direct {v0, p0}, Lawa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lawa;->a:Lawa;

    .line 60
    :cond_0
    sget-object v0, Lawa;->a:Lawa;

    return-object v0
.end method

.method private e(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 6
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 88
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "triggertime":Ljava/lang/String;
    const-string/jumbo v2, "ScheduleAlarmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerAlarm | triggertime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Add | ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | \u8bbe\u5b9a\u89e6\u53d1\u65f6\u95f4\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Lhj;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lawa;->f(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 94
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v2, p0, Lawa;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 95
    iget-object v2, p0, Lawa;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 97
    :cond_0
    return-void
.end method

.method private f(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/base/newalarm/entities/AlarmData;
    .locals 9
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v8, 0x1

    .line 100
    iget-object v4, p0, Lawa;->c:Landroid/content/Context;

    invoke-static {v4}, Lavj;->a(Landroid/content/Context;)Lavj;

    move-result-object v4

    .line 101
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->alert:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .line 100
    invoke-virtual {v4, p1, v6, v7, v5}, Lavj;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;JLcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v2

    .line 102
    .local v2, "item":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v3

    .line 103
    .local v3, "tScheduleBusiness":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    if-ne v3, v4, :cond_0

    .line 105
    const-string/jumbo v4, "isAlertFromNews"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    :cond_0
    const-string/jumbo v4, "handle_type"

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v4, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE_UUID"

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getUuid()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string/jumbo v4, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE_JSON"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->toJson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v4, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE_ID"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string/jumbo v4, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE_TRIGGER_TIME"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 114
    new-instance v4, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v4}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const-string/jumbo v5, "SCHEDULE_ALARM"

    .line 115
    invoke-virtual {v4, v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v4

    .line 116
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v4

    .line 117
    invoke-virtual {v4, v8}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v4

    .line 118
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v4

    .line 119
    invoke-virtual {v4, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v4

    .line 120
    invoke-virtual {v4}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 122
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 3
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const-string/jumbo v0, "ScheduleAlarmHelper"

    const-string/jumbo v1, "registerAlarm | context or schedule is null!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string/jumbo v0, "ScheduleAlarmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerAlarm | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " channelId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lawa;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0, p1}, Lawa;->e(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto :goto_0
.end method

.method public b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 4
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    const-string/jumbo v1, "ScheduleAlarmHelper"

    const-string/jumbo v2, "cancelAlarm | context or schedule is null!"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lawa;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lawa;->d:Ljava/lang/String;

    const-string/jumbo v2, "16010000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-direct {p0, p1}, Lawa;->f(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 189
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v1, p0, Lawa;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 190
    iget-object v1, p0, Lawa;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v1, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 193
    .end local v0    # "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    :cond_1
    invoke-virtual {p0, p1}, Lawa;->c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 194
    invoke-virtual {p0, p1}, Lawa;->d(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 195
    iget-object v1, p0, Lawa;->c:Landroid/content/Context;

    invoke-static {v1}, Lavj;->a(Landroid/content/Context;)Lavj;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v2

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->alert:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    invoke-virtual {v1, v2, v3}, Lavj;->a(ILcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;)V

    goto :goto_0
.end method

.method public c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 8
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 199
    iget-object v5, p0, Lawa;->c:Landroid/content/Context;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 200
    :cond_0
    const-string/jumbo v5, "ScheduleAlarmHelper"

    const-string/jumbo v6, "cancelWakeUpAlarm | context or schedule is null!"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string/jumbo v5, "ScheduleAlarmHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cancelWakeUpAlarm | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.iflytek.cmcc.schedule.WAKE_UP_ALARM_ALERT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v3, "wakeupIntent":Landroid/content/Intent;
    iget-object v5, p0, Lawa;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v6

    const/high16 v7, -0x80000000

    add-int/2addr v6, v7

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v3, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 210
    .local v4, "wakeupPendingIntent":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v5, p0, Lawa;->c:Landroid/content/Context;

    const-string/jumbo v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 211
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 212
    iget-object v5, p0, Lawa;->c:Landroid/content/Context;

    invoke-static {v5}, Lavj;->a(Landroid/content/Context;)Lavj;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v6

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->wakeup:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    invoke-virtual {v5, v6, v7}, Lavj;->a(ILcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;)V

    .line 214
    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "triggerTime":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cancel wake up alarm| ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " | \u8bbe\u5b9a\u89e6\u53d1\u65f6\u95f4\u4e3a\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 216
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v2    # "triggerTime":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ScheduleAlarmHelper"

    const-string/jumbo v6, "cancelWakeUpAlarm() error!"

    invoke-static {v5, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public d(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 8
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 222
    iget-object v5, p0, Lawa;->c:Landroid/content/Context;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 223
    :cond_0
    const-string/jumbo v5, "ScheduleAlarmHelper"

    const-string/jumbo v6, "cancelAlertAlarm | context or schedule is null!"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string/jumbo v5, "ScheduleAlarmHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cancelAlertAlarm | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.iflytek.cmcc.schedule.ALARM_ALERT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v2, "it":Landroid/content/Intent;
    iget-object v5, p0, Lawa;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v6

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v2, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 232
    .local v3, "pi":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v5, p0, Lawa;->c:Landroid/content/Context;

    const-string/jumbo v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 233
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 234
    iget-object v5, p0, Lawa;->c:Landroid/content/Context;

    invoke-static {v5}, Lavj;->a(Landroid/content/Context;)Lavj;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v6

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->alert:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    invoke-virtual {v5, v6, v7}, Lavj;->a(ILcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;)V

    .line 236
    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "triggerTime":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cancel alert alarm| ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " | \u8bbe\u5b9a\u89e6\u53d1\u65f6\u95f4\u4e3a\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 238
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v4    # "triggerTime":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ScheduleAlarmHelper"

    const-string/jumbo v6, "cancelAlertAlarm() error!"

    invoke-static {v5, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 3
    .param p1, "realTriggerTime"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 245
    if-eqz p3, :cond_0

    .line 246
    const-string/jumbo v0, "ScheduleAlarmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAlarmTrigger realTriggerTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " alarmData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 247
    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lawa;->c:Landroid/content/Context;

    invoke-static {v0, p3}, Laut;->a(Landroid/content/Context;Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 251
    :cond_0
    return-void
.end method
