.class public Lcom/iflytek/base/newalarm/adapter/MiuiAlarmAdapter;
.super Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;
.source "MiuiAlarmAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiAlarmAdapter"

.field private static final WAKEUP_TIME:I = 0x493e0


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/iflytek/base/newalarm/adapter/AbsAlarmAdapter;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "MiuiAlarmAdapter"

    return-object v0
.end method

.method protected handleExact(ILcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 31
    if-eqz p2, :cond_1

    .line 32
    invoke-virtual {p2}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmTriggerTime()J

    move-result-wide v0

    .line 33
    .local v0, "triggerTime":J
    invoke-virtual {p0, p2}, Lcom/iflytek/base/newalarm/adapter/MiuiAlarmAdapter;->parseData(Lcom/iflytek/base/newalarm/entities/AlarmData;)Landroid/content/Intent;

    move-result-object v2

    .line 34
    .local v2, "wakeIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/iflytek/base/newalarm/adapter/MiuiAlarmAdapter;->setRTCAlarm(IJLandroid/content/Intent;)V

    .line 37
    :cond_0
    const-string/jumbo v3, "MiuiAlarmAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "exact alarm = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/iflytek/base/newalarm/adapter/MiuiAlarmAdapter;->printAlarmData(JLcom/iflytek/base/newalarm/entities/AlarmData;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v0    # "triggerTime":J
    .end local v2    # "wakeIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected handleWakeExact(ILcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    const-wide/32 v8, 0x493e0

    .line 43
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p2}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmTriggerTime()J

    move-result-wide v0

    .line 45
    .local v0, "triggerTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v0, v6

    .line 46
    cmp-long v3, v6, v8

    if-gtz v3, :cond_1

    .line 47
    const-string/jumbo v3, "MiuiAlarmAdapter"

    const-string/jumbo v6, "handleWakeExact | wakeup time <= currenttime, wakeup alarm not trigger"

    invoke-static {v3, v6}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v0    # "triggerTime":J
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0    # "triggerTime":J
    :cond_1
    invoke-virtual {p0, p2}, Lcom/iflytek/base/newalarm/adapter/MiuiAlarmAdapter;->getWakeIntent(Lcom/iflytek/base/newalarm/entities/AlarmData;)Landroid/content/Intent;

    move-result-object v2

    .line 52
    .local v2, "wakeIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 53
    sub-long v4, v0, v8

    .line 54
    .local v4, "wakeupTime":J
    invoke-virtual {p0, p1, v4, v5, v2}, Lcom/iflytek/base/newalarm/adapter/MiuiAlarmAdapter;->setNormalAlarmImpl(IJLandroid/content/Intent;)V

    .line 55
    const-string/jumbo v3, "MiuiAlarmAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "wake alarm = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5, p2}, Lcom/iflytek/base/newalarm/adapter/MiuiAlarmAdapter;->printAlarmData(JLcom/iflytek/base/newalarm/entities/AlarmData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
