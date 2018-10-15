.class public Lcom/iflytek/viafly/schedule/framework/ScheduleReceiver;
.super Lcom/iflytek/viafly/AbsBroadcastReceiver;
.source "ScheduleReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/iflytek/viafly/AbsBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "ScheduleReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive() | Action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string/jumbo v4, "com.iflytek.cmcc.schedule.REGISTER_AVAILABLE_ALARM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    invoke-static {p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->todo:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    invoke-interface {v4, v5}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)Ljava/util/List;

    move-result-object v3

    .line 63
    .local v3, "scheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 64
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v1, "availableIntent":Landroid/content/Intent;
    const-string/jumbo v4, "handle_type"

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->register_available:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    .line 67
    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->toString()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string/jumbo v4, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    check-cast v3, Ljava/util/ArrayList;

    .end local v3    # "scheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    const-string/jumbo v4, "ScheduleReceiver"

    const-string/jumbo v5, "-------->> registerAvailableSchedule()| start..."

    invoke-static {v4, v5}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v1    # "availableIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v4, "com.iflytek.cmcc.schedule.CHECK_DATED_ALARM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    invoke-static {p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->dated:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    invoke-interface {v4, v5}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)Ljava/util/List;

    move-result-object v3

    .line 78
    .restart local v3    # "scheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 79
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v2, "datedIntent":Landroid/content/Intent;
    const-string/jumbo v4, "handle_type"

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->dated:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    .line 81
    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->toString()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v4, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    check-cast v3, Ljava/util/ArrayList;

    .end local v3    # "scheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    const-string/jumbo v4, "ScheduleReceiver"

    const-string/jumbo v5, "-------->> checkDatedSchedule()| start..."

    invoke-static {v4, v5}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    .end local v2    # "datedIntent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v4, "com.iflytek.cmcc.schedule.CHECK_ALL_ALARM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-static {p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->all:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    .line 90
    invoke-interface {v4, v5}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)Ljava/util/List;

    move-result-object v3

    .line 91
    .restart local v3    # "scheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 92
    :cond_4
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v4

    invoke-virtual {v4}, Lauy;->c()V

    goto/16 :goto_0
.end method
