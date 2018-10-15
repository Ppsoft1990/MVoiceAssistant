.class public Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;
.super Ljava/lang/Object;
.source "NotificationCardUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationCafUpdateHelper"

.field private static mInstance:Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;


# instance fields
.field private isTrafficUpdated:Z

.field private notificationCard:Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->isTrafficUpdated:Z

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->mInstance:Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->mInstance:Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->mInstance:Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->mInstance:Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getNotificationCard()Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->notificationCard:Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;

    return-object v0
.end method

.method public isTrafficInfoUpdated()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->isTrafficUpdated:Z

    return v0
.end method

.method public resetTrafficInfoUpdateFlag()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->isTrafficUpdated:Z

    .line 79
    return-void
.end method

.method public setNotificationCard(Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;)V
    .locals 0
    .param p1, "notificationCard"    # Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->notificationCard:Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;

    .line 27
    return-void
.end method

.method public updateTrafficInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V
    .locals 3
    .param p1, "trafficInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .param p2, "source"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    .prologue
    .line 52
    const-string/jumbo v0, "NotificationCafUpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTrafficInfo  trafficInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-nez p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAvailableHelper;->isTrafficInfoAvailable(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateTrafficInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->isTrafficUpdated:Z

    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->notificationCard:Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->notificationCard:Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;->onTrafficInfoAvailable(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V

    goto :goto_0

    .line 66
    :cond_2
    const-string/jumbo v0, "NotificationCafUpdateHelper"

    const-string/jumbo v1, "updateTrafficInfo  trafficInfo is unavailable "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
