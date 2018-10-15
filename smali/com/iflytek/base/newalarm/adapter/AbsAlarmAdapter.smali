.class public abstract Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;
.super Ljava/lang/Object;
.source "AbsAlarmAdapter.java"


# instance fields
.field private mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    invoke-direct {v0, p1}, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    .line 29
    return-void
.end method

.method private setAlarmImpl(Landroid/app/PendingIntent;J)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "triggerTime"    # J

    .prologue
    .line 158
    iget-object v0, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->setAlarm(IJLandroid/app/PendingIntent;)V

    .line 162
    :cond_0
    return-void
.end method

.method private setRTCAlarmImpl(Landroid/app/PendingIntent;J)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "triggerTime"    # J

    .prologue
    .line 165
    iget-object v0, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->setAlarm(IJLandroid/app/PendingIntent;)V

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAlarm(ILcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 56
    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cancelAlarm alarmData = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iflytek/base/newalarm/entities/AlarmData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " requestCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->parseData(Lcom/iflytek/base/newalarm/entities/AlarmData;)Landroid/content/Intent;

    move-result-object v1

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mContext:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v5, p1, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 65
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    if-eqz v5, :cond_0

    .line 66
    iget-object v5, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    invoke-virtual {v5, v2}, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->cancelAlarm(Landroid/app/PendingIntent;)V

    .line 69
    :cond_0
    invoke-virtual {p2}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 70
    invoke-virtual {p0, p2}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->getWakeIntent(Lcom/iflytek/base/newalarm/entities/AlarmData;)Landroid/content/Intent;

    move-result-object v3

    .line 71
    .local v3, "wakeIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mContext:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v5, p1, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 74
    .local v4, "wakePendingIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    if-eqz v5, :cond_1

    .line 75
    iget-object v5, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    invoke-virtual {v5, v4}, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->cancelAlarm(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "wakeIntent":Landroid/content/Intent;
    .end local v4    # "wakePendingIntent":Landroid/app/PendingIntent;
    :cond_1
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected getWakeIntent(Lcom/iflytek/base/newalarm/entities/AlarmData;)Landroid/content/Intent;
    .locals 8
    .param p1, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "moduleName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmMode()I

    move-result v0

    .line 136
    .local v0, "alarmMode":I
    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 137
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_1

    .line 138
    :cond_0
    const/4 v2, 0x0

    .line 149
    :goto_0
    return-object v2

    .line 141
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_WAKEUP_ALARM_TRIGGER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string/jumbo v4, "EXTRA_ALARM_MODULE"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v4, "EXTRA_ALARM_MODE"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string/jumbo v4, "EXTRA_ALARM_TRIGGERTIME"

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmTriggerTime()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 146
    const-string/jumbo v4, "EXTRA_ALARM_ID"

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected abstract handleExact(ILcom/iflytek/base/newalarm/entities/AlarmData;)V
.end method

.method protected abstract handleWakeExact(ILcom/iflytek/base/newalarm/entities/AlarmData;)V
.end method

.method protected parseData(Lcom/iflytek/base/newalarm/entities/AlarmData;)Landroid/content/Intent;
    .locals 8
    .param p1, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    const/4 v2, 0x0

    .line 107
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object v2

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "moduleName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmMode()I

    move-result v0

    .line 113
    .local v0, "alarmMode":I
    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 114
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    if-nez v1, :cond_2

    .line 119
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "bundle":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_ALARM_TRIGGER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v4, "EXTRA_ALARM_MODULE"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v4, "EXTRA_ALARM_MODE"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    const-string/jumbo v4, "EXTRA_ALARM_TRIGGERTIME"

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmTriggerTime()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 127
    const-string/jumbo v4, "EXTRA_ALARM_ID"

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected printAlarmData(JLcom/iflytek/base/newalarm/entities/AlarmData;)Ljava/lang/String;
    .locals 3
    .param p1, "triggerTime"    # J
    .param p3, "data"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "triggerTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/iflytek/base/newalarm/AlarmHelper;->fmtDataToMDHM(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExactAlarm(ILcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 32
    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->cancelAlarm(ILcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->handleWakeExact(ILcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->handleExact(ILcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 40
    :cond_0
    return-void
.end method

.method public setNormalAlarm(ILcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 43
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p0, p2}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->parseData(Lcom/iflytek/base/newalarm/entities/AlarmData;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p2}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmTriggerTime()J

    move-result-wide v2

    .line 48
    .local v2, "triggerTime":J
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->cancelAlarm(ILcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 49
    invoke-virtual {p0}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setNormalAlarm alarm = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iflytek/base/newalarm/entities/AlarmData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->setNormalAlarmImpl(IJLandroid/content/Intent;)V

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "triggerTime":J
    :cond_0
    return-void
.end method

.method protected setNormalAlarmImpl(IJLandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "triggerTime"    # J
    .param p4, "alarmIntent"    # Landroid/content/Intent;

    .prologue
    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, p1, p4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 89
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2, p3, v1}, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->setAlarm(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setRTCAlarm(IJLandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "triggerTime"    # J
    .param p4, "alarmIntent"    # Landroid/content/Intent;

    .prologue
    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, p1, p4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 100
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->mAlarmSdk:Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2, p3, v1}, Lcom/iflytek/base/newalarm/adapter/sdk/AlarmSdk;->setAlarm(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
