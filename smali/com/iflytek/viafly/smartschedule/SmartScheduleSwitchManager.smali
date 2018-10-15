.class public Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;
.super Ljava/lang/Object;
.source "SmartScheduleSwitchManager.java"


# static fields
.field private static instance:Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, "SmartScheduleSwitchManager"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private getController(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "controller":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 100
    :goto_0
    :pswitch_0
    return-object v0

    .line 77
    :pswitch_1
    const-string/jumbo v0, "TrafficController"

    .line 78
    goto :goto_0

    .line 80
    :pswitch_2
    const-string/jumbo v0, "TrafficDailyController"

    .line 81
    goto :goto_0

    .line 86
    :pswitch_3
    const-string/jumbo v0, "HotEventController"

    .line 87
    goto :goto_0

    .line 89
    :pswitch_4
    const-string/jumbo v0, "CoolingController"

    .line 90
    goto :goto_0

    .line 92
    :pswitch_5
    const-string/jumbo v0, "BadWeatherReminder"

    .line 93
    goto :goto_0

    .line 95
    :pswitch_6
    const-string/jumbo v0, "AirPollutionReminder"

    .line 96
    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->instance:Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->instance:Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->instance:Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->instance:Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public isForbiddenGray(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 47
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v0

    .line 47
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getController(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isForbiddenGray(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isScheduleSwitchOpen(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 37
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v0

    .line 37
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getController(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isRunningController(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startScheduleDetailActivity(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 57
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v0

    .line 57
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getController(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->startScheduleDetailActivity(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public updateScheduleSwitch(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "isOpenOperation"    # Z

    .prologue
    .line 67
    const-string/jumbo v0, "SmartScheduleSwitchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScheduleSwitch  type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isOpenOperation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getController(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->updateScheduleState(Ljava/lang/String;Z)V

    .line 69
    return-void
.end method
