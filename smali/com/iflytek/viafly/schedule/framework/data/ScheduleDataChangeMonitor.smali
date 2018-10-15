.class public Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;
.super Ljava/lang/Object;
.source "ScheduleDataChangeMonitor.java"


# static fields
.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized onDelete(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 4
    .param p0, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 44
    const-class v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 45
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;

    .line 46
    .local v0, "item":Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;
    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p0}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;->onDelete(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 44
    .end local v0    # "item":Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 51
    :cond_1
    monitor-exit v2

    return-void
.end method

.method static declared-synchronized onInsert(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 4
    .param p0, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 34
    const-class v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 35
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;

    .line 36
    .local v0, "item":Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;
    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p0}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;->onInsert(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 34
    .end local v0    # "item":Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 41
    :cond_1
    monitor-exit v2

    return-void
.end method

.method static declared-synchronized onUpdate(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 4
    .param p0, "oldSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p1, "newSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 54
    const-class v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 55
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;

    .line 56
    .local v0, "item":Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;
    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p0, p1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;->onUpdate(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    .end local v0    # "item":Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 61
    :cond_1
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized registerListener(Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;

    .prologue
    .line 18
    const-class v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 19
    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_0
    monitor-exit v1

    return-void

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unregisterListener(Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;

    .prologue
    .line 26
    const-class v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 27
    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    monitor-exit v1

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
