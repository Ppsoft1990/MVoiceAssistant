.class public Lavf;
.super Ljava/lang/Object;
.source "NoOperateAlarm.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lavf$a;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private c:Lavf$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lavf;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lavf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lavf;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 34
    iget-object v0, p0, Lavf;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lavf;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    sget-object v1, Lavf;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 37
    :cond_0
    return-void
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;I)Lcom/iflytek/base/newalarm/entities/AlarmData;
    .locals 10
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "retryCount"    # I

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDelaySetting()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v2, v4

    .line 82
    .local v2, "noOperateInterval":J
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "ALARM_SCHEDULE_KEY"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    new-instance v4, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v4}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    sget-object v5, Lavf;->a:Ljava/lang/String;

    .line 86
    invoke-virtual {v4, v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v4

    const/4 v5, 0x2

    .line 87
    invoke-virtual {v4, v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v4

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v8, p2

    mul-long/2addr v8, v2

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v4

    .line 90
    invoke-virtual {v4, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 93
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 98
    sget-object v0, Lavf;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelAlarm(), id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lavf;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lavf;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    sget-object v1, Lavf;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelModuleAlarms(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lavf$a;)V
    .locals 5
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "listener"    # Lavf$a;

    .prologue
    .line 41
    sget-object v2, Lavf;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addAlarm(), schedule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iput-object p2, p0, Lavf;->c:Lavf$a;

    .line 48
    iget-object v2, p0, Lavf;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_0

    .line 49
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lavf;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;I)Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 50
    .local v0, "alarmData1":Lcom/iflytek/base/newalarm/entities/AlarmData;
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lavf;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;I)Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v1

    .line 52
    .local v1, "alarmData2":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v2, p0, Lavf;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 53
    iget-object v2, p0, Lavf;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v1}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    goto :goto_0
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 4
    .param p1, "realTrigger"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 107
    if-eqz p3, :cond_1

    sget-object v1, Lavf;->a:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 110
    sget-object v1, Lavf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAlarmTrigger() Id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ALARM_SCHEDULE_KEY"

    .line 111
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lavf;->c:Lavf$a;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lavf;->c:Lavf$a;

    invoke-interface {v1}, Lavf$a;->a()V

    .line 119
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    sget-object v1, Lavf;->a:Ljava/lang/String;

    const-string/jumbo v2, "onAlarmTrigger but alarm data is empty"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
