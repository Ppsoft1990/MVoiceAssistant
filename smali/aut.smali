.class public Laut;
.super Ljava/lang/Object;
.source "ScheduleManager.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 42
    :cond_0
    const-string/jumbo v3, "ScheduleManager"

    const-string/jumbo v4, "handleWakeupAlarm | context or intent is null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 46
    :cond_2
    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "time":Ljava/lang/String;
    const-string/jumbo v3, "ScheduleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleWakeupAlarm | currentTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p0, p1}, Lawh;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    .line 50
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    const-string/jumbo v3, "ScheduleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleWakeupAlarm | schedule = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-eqz v0, :cond_1

    .line 54
    invoke-static {p0}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v3

    invoke-virtual {v3, v0}, Lawa;->c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 56
    invoke-static {}, Lavm;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 57
    const-string/jumbo v3, "ScheduleManager"

    const-string/jumbo v4, "handleWakeupAlarm | it doesnot need handle"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_3
    const-string/jumbo v3, "handle_type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "type":Ljava/lang/String;
    invoke-static {}, Lavm;->a()Lavm;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v2}, Lavm;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmBundle()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    .line 67
    :cond_0
    const-string/jumbo v4, "ScheduleManager"

    const-string/jumbo v5, "handleAlertAlarm | alarmData is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    invoke-static {p0, p1}, Lawh;->a(Landroid/content/Context;Lcom/iflytek/base/newalarm/entities/AlarmData;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v2

    .line 72
    .local v2, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    const-string/jumbo v4, "ScheduleManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleAlertAlarm | schedule = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz v2, :cond_1

    .line 78
    invoke-static {p0}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v4

    invoke-virtual {v4}, Lauw;->a()V

    .line 79
    invoke-static {p0}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v4

    invoke-virtual {v4}, Lauw;->c()V

    .line 80
    invoke-static {}, Lavm;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    invoke-static {}, Lavm;->a()Lavm;

    move-result-object v4

    invoke-virtual {v4, v2}, Lavm;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 83
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "handle_type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "type":Ljava/lang/String;
    invoke-static {p0}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v4

    invoke-virtual {v4}, Lauw;->c()V

    .line 86
    invoke-static {p0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccACTION_ALARM_ALERT"

    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v4

    sget-object v5, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_schedule:Lcom/iflytek/framework/business/entities/SystemEvent;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d()V

    .line 92
    invoke-static {p0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.iflytek.cmccACTION_STOP_STORY_NOTICE_AUDIO_PLAYING"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Landroid/content/Intent;)V

    .line 94
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "closeDialogs":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    invoke-static {p0, v3, v2}, Laut;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 98
    invoke-static {p0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v4

    invoke-virtual {v4}, Lbbp;->d()V

    .line 99
    const-string/jumbo v4, "ScheduleManager"

    const-string/jumbo v5, "Ivw|handleWakeupAlarm"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string/jumbo v4, "ScheduleManager"

    const-string/jumbo v5, "-------->> handleAlertSchedule()| start..."

    invoke-static {v4, v5}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 157
    const-string/jumbo v4, "ScheduleTest"

    const-string/jumbo v5, "\u4f9d\u9760\u539f\u6709\u63d0\u9192\u903b\u8f91\u89e6\u53d1\u4e86\u63d0\u9192"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, "it":Landroid/content/Intent;
    const-string/jumbo v4, "handle_type"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string/jumbo v4, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 167
    .local v2, "scheduleTriggerTimeMillus":J
    invoke-static {p0, v2, v3}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "scheduleTriggerTime":Ljava/lang/String;
    const-string/jumbo v4, "schedule_broadcast_trigger_time"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 171
    const-string/jumbo v4, "ScheduleManager"

    const-string/jumbo v5, "start schedule service..."

    invoke-static {v4, v5}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public static a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 3
    .param p0, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 186
    const-string/jumbo v0, "ScheduleManager"

    const-string/jumbo v1, "saveLastRingtone"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-nez p0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getScheduleType()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_ALARM_CLOCK_LAST_RINGTYPE"

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 195
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_ALARM_CLOCK_LAST_MODIFY_RING_PATH"

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_ALARM_CLOCK_LAST_MODIFY_RING_NAME"

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_2
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 198
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_ALARM_CLOCK_LAST_MODIFY_RING_PATH"

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_ALARM_CLOCK_LAST_MODIFY_RING_NAME"

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_TONE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_3
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getScheduleType()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 209
    :cond_4
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_MODIFY_RING_PATH"

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_MODIFY_RING_NAME"

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_5
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 214
    :cond_6
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_RINGTYPE"

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 112
    :cond_0
    const-string/jumbo v3, "ScheduleManager"

    const-string/jumbo v4, "handleAlertAlarm | context or intent is null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    const-string/jumbo v3, "ScheduleManager"

    const-string/jumbo v4, "handleAlertAlarm"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p0}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v3

    invoke-virtual {v3}, Lauw;->f()V

    .line 119
    invoke-static {p0, p1}, Lawh;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    .line 120
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    const-string/jumbo v3, "ScheduleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAlertAlarm | schedule = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-eqz v1, :cond_1

    .line 125
    invoke-static {p0}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v3

    invoke-virtual {v3, v1}, Lawa;->d(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 126
    const-string/jumbo v3, "handle_type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "type":Ljava/lang/String;
    invoke-static {p0}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v3

    invoke-virtual {v3}, Lauw;->a()V

    .line 130
    invoke-static {p0}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v3

    invoke-virtual {v3}, Lauw;->c()V

    .line 131
    invoke-static {}, Lavm;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    invoke-static {}, Lavm;->a()Lavm;

    move-result-object v3

    invoke-virtual {v3, v1}, Lavm;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 134
    :cond_3
    invoke-static {p0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccACTION_ALARM_ALERT"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v3

    sget-object v4, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_schedule:Lcom/iflytek/framework/business/entities/SystemEvent;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d()V

    .line 140
    invoke-static {p0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.iflytek.cmccACTION_STOP_STORY_NOTICE_AUDIO_PLAYING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Landroid/content/Intent;)V

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "closeDialogs":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    invoke-static {p0, v2, v1}, Laut;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 148
    const-string/jumbo v3, "ScheduleManager"

    const-string/jumbo v4, "-------->> handleAlertSchedule()| start..."

    invoke-static {v3, v4}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
