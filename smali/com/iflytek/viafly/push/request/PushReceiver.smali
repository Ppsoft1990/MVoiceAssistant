.class public Lcom/iflytek/viafly/push/request/PushReceiver;
.super Lcom/iflytek/viafly/AbsBroadcastReceiver;
.source "PushReceiver.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/iflytek/viafly/AbsBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/iflytek/viafly/push/request/PushReceiver;->a:Landroid/content/Context;

    .line 29
    const-string/jumbo v7, "PushReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive| intent.getAction = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string/jumbo v7, "com.iflytek.cmcc.ACTION_REQUEST_PUSH_START"

    .line 33
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 32
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 37
    const-string/jumbo v7, "PushReceiver"

    const-string/jumbo v10, "\u5f00\u59cb\u8bf7\u6c42\u63a8\u9001"

    invoke-static {v7, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v7

    invoke-virtual {v7}, Lhl;->c()Z

    move-result v7

    if-nez v7, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-static {}, Loa;->a()Loa;

    move-result-object v7

    invoke-virtual {v7}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    .local v0, "currentTime":J
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v10, "com.iflytek.cmccSCHEDULE_WEATHER_UPDATE_TIME"

    .line 48
    invoke-virtual {v7, v10}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v2

    .line 49
    .local v2, "lastestWeatherUpdateTime":J
    cmp-long v7, v2, v0

    if-lez v7, :cond_2

    .line 50
    const-wide/16 v2, 0x0

    .line 51
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v10, "com.iflytek.cmccSCHEDULE_WEATHER_UPDATE_TIME"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lil;->a(Ljava/lang/String;I)V

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/iflytek/viafly/push/request/PushReceiver;->a:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    .line 54
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "serializePath":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "SCHEDULE_WEATHER_SAVED"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lil;->i(Ljava/lang/String;)V

    .line 61
    .end local v5    # "serializePath":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v7

    sget-object v10, Lcom/iflytek/framework/business/entities/SystemEvent;->push_receive:Lcom/iflytek/framework/business/entities/SystemEvent;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v11}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->handleEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 65
    invoke-static {p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v7

    const/4 v10, 0x2

    new-array v10, v10, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    const/4 v11, 0x0

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Pure_Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getLatestTrigger([Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v4

    .line 68
    .local v4, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v4, :cond_0

    .line 69
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v8

    .line 70
    .local v8, "triggerTime":J
    cmp-long v7, v8, v0

    if-lez v7, :cond_0

    sub-long v10, v8, v0

    const-wide/32 v12, 0x36ee800

    cmp-long v7, v10, v12

    if-gez v7, :cond_0

    sub-long v10, v8, v2

    const-wide/32 v12, 0x36ee800

    cmp-long v7, v10, v12

    if-lez v7, :cond_0

    .line 73
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/iflytek/viafly/push/request/PushReceiver;->a:Landroid/content/Context;

    const-class v10, Lcom/iflytek/viafly/weather/WeatherCacheService;

    invoke-direct {v6, v7, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v6, "service":Landroid/content/Intent;
    const-string/jumbo v7, "ACTION_WEATHER_SCHEDULE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v7, p0, Lcom/iflytek/viafly/push/request/PushReceiver;->a:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
