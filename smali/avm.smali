.class public Lavm;
.super Ljava/lang/Object;
.source "WakeupScheduleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lavm$a;
    }
.end annotation


# instance fields
.field a:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;

.field private volatile b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            "Ljava/util/concurrent/ScheduledFuture",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Lavm$2;

    invoke-direct {v0, p0}, Lavm$2;-><init>(Lavm;)V

    iput-object v0, p0, Lavm;->a:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;

    .line 50
    iget-object v0, p0, Lavm;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lavm;->c:Ljava/util/Map;

    .line 53
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lavm$1;)V
    .locals 0
    .param p1, "x0"    # Lavm$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lavm;-><init>()V

    return-void
.end method

.method public static a()Lavm;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lavm$a;->a()Lavm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lavm;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lavm;

    .prologue
    .line 37
    iget-object v0, p0, Lavm;->c:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, "it":Landroid/content/Intent;
    const-string/jumbo v4, "handle_type"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string/jumbo v4, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 255
    .local v2, "scheduleTriggerTimeMillus":J
    invoke-static {p1, v2, v3}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "scheduleTriggerTime":Ljava/lang/String;
    const-string/jumbo v4, "schedule_broadcast_trigger_time"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 261
    const-string/jumbo v4, "WakeupScheduleManager"

    const-string/jumbo v5, "startRemindService | start schedule service..."

    invoke-static {v4, v5}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method static synthetic a(Lavm;Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lavm;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lavm;->b(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lavm;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 0
    .param p0, "x0"    # Lavm;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lavm;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string/jumbo v1, "WakeupScheduleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "triggerSchedule | schedule = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 215
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 216
    .local v2, "timeInteval":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 217
    const-string/jumbo v1, "WakeupScheduleManager"

    const-string/jumbo v4, "\u5b9a\u65f6\u5668\u4e0d\u51c6\u63d0\u524d\u89e6\u53d1\u4e86\uff0c\u4e0d\u518d\u4f7f\u7528"

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_2
    invoke-static {p1}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v1

    invoke-virtual {v1, p2}, Lawa;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 224
    invoke-static {p1}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v1

    invoke-virtual {v1}, Lauw;->a()V

    .line 225
    invoke-static {p1}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v1

    invoke-virtual {v1}, Lauw;->c()V

    .line 226
    invoke-static {p1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v1

    const-string/jumbo v4, "com.iflytek.cmccACTION_ALARM_ALERT"

    invoke-virtual {v1, v4}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v1

    sget-object v4, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_schedule:Lcom/iflytek/framework/business/entities/SystemEvent;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 232
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d()V

    .line 235
    invoke-static {p1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.iflytek.cmccACTION_STOP_STORY_NOTICE_AUDIO_PLAYING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Landroid/content/Intent;)V

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "closeDialogs":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    invoke-direct {p0, p1, p3, p2}, Lavm;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 244
    const-string/jumbo v1, "WakeupScheduleManager"

    const-string/jumbo v4, "-------->> handleAlertSchedule()| start..."

    invoke-static {v1, v4}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 5
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v4, 0x0

    .line 302
    if-eqz p1, :cond_1

    iget-object v2, p0, Lavm;->c:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lavm;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    .line 304
    .local v1, "tempFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 305
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 307
    iget-object v2, p0, Lavm;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_0
    iget-object v2, p0, Lavm;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    iget-object v2, p0, Lavm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v2, :cond_1

    .line 313
    :try_start_0
    iget-object v2, p0, Lavm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    iput-object v4, p0, Lavm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 318
    invoke-direct {p0}, Lavm;->d()V

    .line 324
    .end local v1    # "tempFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 314
    .restart local v1    # "tempFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "WakeupScheduleManager"

    const-string/jumbo v3, "\u5173\u95ed\u5524\u9192\u63d0\u9192\u7684\u5b9a\u65f6\u5668\u51fa\u9519"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    iput-object v4, p0, Lavm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 318
    invoke-direct {p0}, Lavm;->d()V

    goto :goto_0

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iput-object v4, p0, Lavm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 318
    invoke-direct {p0}, Lavm;->d()V

    throw v2
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lagm;->q()Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lavm;->a:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;

    .line 288
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->registerListener(Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;)V

    .line 289
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lavm;->a:Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->unregisterListener(Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;)V

    .line 294
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x7d0

    .line 77
    monitor-enter p0

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 78
    :cond_0
    :try_start_0
    const-string/jumbo v4, "WakeupScheduleManager"

    const-string/jumbo v5, "handleWakeupAlarm | context or schedule is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_2
    :try_start_1
    iget-object v4, p0, Lavm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v4, :cond_3

    .line 83
    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v4, p0, Lavm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 84
    invoke-direct {p0}, Lavm;->c()V

    .line 87
    :cond_3
    const-string/jumbo v4, "WakeupScheduleManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleWakeupAlarm | schedule = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lavm;->b(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v4, "WakeupScheduleManager"

    const-string/jumbo v5, "\u5524\u9192\u63d0\u9192\u5ef6\u8fdf\uff0c\u63d0\u9192\u7acb\u5373\u89e6\u53d1"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 92
    :cond_4
    :try_start_2
    invoke-static {p1}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v4

    invoke-virtual {v4}, Lauw;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :try_start_3
    iget-object v4, p0, Lavm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lavm$1;

    invoke-direct {v5, p0, p1, p2, p3}, Lavm$1;-><init>(Lavm;Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long/2addr v6, v10

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 96
    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 107
    .local v1, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v4, v10

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 109
    .local v2, "timeInterval":J
    const-string/jumbo v4, "ScheduleTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5012\u8ba1\u65f6\u7684\u65f6\u957f\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v4, p0, Lavm;->c:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 111
    iget-object v4, p0, Lavm;->c:Ljava/util/Map;

    invoke-interface {v4, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 113
    .end local v1    # "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/String;>;"
    .end local v2    # "timeInterval":J
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v4, "WakeupScheduleManager"

    const-string/jumbo v5, "\u63d0\u9192\u5524\u9192\u5b9a\u65f6\u5668\u6267\u884c\u9519\u8bef"

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 6
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 126
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lavm;->c:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 129
    :cond_1
    :try_start_1
    const-string/jumbo v3, "HH:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "time":Ljava/lang/String;
    const-string/jumbo v3, "ScheduleTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5173\u95ed\u4e86\u5524\u9192\u63d0\u9192\u5b9a\u65f6\u5668,\u65f6\u95f4\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v3, p0, Lavm;->c:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    iget-object v3, p0, Lavm;->c:Ljava/util/Map;

    .line 133
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    .line 134
    .local v1, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 135
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_2

    .line 136
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 139
    :cond_2
    iget-object v3, p0, Lavm;->c:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v1    # "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Lavm;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lavm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 144
    :try_start_2
    iget-object v3, p0, Lavm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Lavm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 149
    invoke-direct {p0}, Lavm;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 126
    .end local v2    # "time":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 145
    .restart local v2    # "time":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "WakeupScheduleManager"

    const-string/jumbo v4, "\u5173\u95ed\u5524\u9192\u63d0\u9192\u7684\u5b9a\u65f6\u5668\u51fa\u9519"

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    const/4 v3, 0x0

    :try_start_5
    iput-object v3, p0, Lavm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 149
    invoke-direct {p0}, Lavm;->d()V

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    iput-object v4, p0, Lavm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 149
    invoke-direct {p0}, Lavm;->d()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v2, 0x0

    .line 159
    if-nez p2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 163
    :cond_1
    invoke-static {p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v3

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    .line 164
    .local v1, "tempSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 170
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 171
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    :cond_2
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v0

    .line 175
    .local v0, "tempRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 177
    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v3, v0, :cond_4

    .line 178
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v3

    .line 179
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 198
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 182
    :cond_4
    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v3, v0, :cond_5

    .line 183
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 184
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 188
    :cond_5
    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v3, v0, :cond_3

    .line 189
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 190
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0
.end method
