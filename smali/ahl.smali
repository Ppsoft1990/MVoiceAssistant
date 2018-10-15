.class public Lahl;
.super Laht;
.source "HomeRestartManager.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# static fields
.field private static a:I


# instance fields
.field private c:Lcom/iflytek/base/newalarm/interfaces/IAlarm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lahl;->a:I

    return-void
.end method

.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 41
    return-void
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lahl;->a:I

    return v0
.end method


# virtual methods
.method public a(J)V
    .locals 5
    .param p1, "startTime"    # J

    .prologue
    .line 112
    const-string/jumbo v0, "ApplicationLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "home onCreate begin timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lahl;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v1

    invoke-virtual {p0}, Lahl;->p()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 115
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ViaFlyApp;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ViaFlyApp;->e()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/iflytek/viafly/Home$b;->i:J

    .line 116
    const-string/jumbo v0, "ApplicationLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "from process onCreate begin to home onCreate begin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Lahl;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v2

    iget-wide v2, v2, Lcom/iflytek/viafly/Home$b;->i:J

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lahl;->a:I

    .line 65
    invoke-super {p0}, Laht;->a()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-virtual {p0}, Lahl;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v0

    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_FLAG_AUTO_RESTART"

    .line 46
    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/iflytek/viafly/Home$b;->h:Z

    .line 48
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lahl;->c:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 49
    iget-object v0, p0, Lahl;->c:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lahl;->c:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "HomeRestartManager"

    invoke-interface {v0, v1, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 53
    :cond_0
    invoke-super {p0, p1}, Laht;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lahl;->a:I

    .line 59
    invoke-super {p0, p1}, Laht;->a(Z)Z

    move-result v0

    return v0
.end method

.method public b(Z)Z
    .locals 3
    .param p1, "isFirst"    # Z

    .prologue
    .line 124
    invoke-virtual {p0}, Lahl;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    const-string/jumbo v0, "HomeRestartManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResumeDelayedInWorkThread | getHomeState().mIsActivityByAutoRestart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lahl;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/iflytek/viafly/Home$b;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lahl;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/iflytek/viafly/Home$b;->h:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_FLAG_AUTO_RESTART"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 133
    :cond_0
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    const-string/jumbo v2, "HomeRestartManager"

    const-string/jumbo v3, "no restart process, activity destroy normally"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lahl;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/iflytek/viafly/Home$b;->h:Z

    if-eqz v2, :cond_0

    .line 75
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_FLAG_AUTO_RESTART"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lil;->a(Ljava/lang/String;Z)V

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_FLAG_AUTO_RESTART"

    invoke-virtual {v2, v3, v1}, Lil;->a(Ljava/lang/String;Z)V

    .line 85
    new-instance v1, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const-string/jumbo v2, "HomeRestartManager"

    .line 86
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 87
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 88
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x15e

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    const-string/jumbo v2, "RESTART_ALARM_ID"

    .line 90
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 93
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v1, p0, Lahl;->c:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v1, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 101
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lahl$1;

    invoke-direct {v2, p0}, Lahl$1;-><init>(Lahl;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    invoke-super {p0}, Laht;->c()Z

    move-result v1

    goto :goto_0
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 3
    .param p1, "realTrigger"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 138
    if-eqz p3, :cond_0

    const-string/jumbo v0, "HomeRestartManager"

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string/jumbo v0, "HomeRestartManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAlarmTrigger alarm data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string/jumbo v0, "HomeRestartManager"

    const-string/jumbo v1, "onAlarmTrigger but alarm data is empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
