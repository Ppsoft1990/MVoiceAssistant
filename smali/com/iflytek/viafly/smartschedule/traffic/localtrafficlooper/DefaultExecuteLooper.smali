.class public Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;
.super Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;
.source "DefaultExecuteLooper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultExecuteLooper"


# instance fields
.field private mWarnStrategyManager:Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;-><init>()V

    .line 23
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->getTrafficRemindForUIList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->mWarnStrategyManager:Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;

    .line 24
    return-void
.end method

.method private isTotalTrafficWarnOpen()Z
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->isTotalTrafficSwitchOpen()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dismissWin()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->isTotalTrafficSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->mWarnStrategyManager:Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->dismissTrafficWin()V

    .line 73
    :cond_0
    return-void
.end method

.method public handleWarn(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V
    .locals 1
    .param p1, "trafficInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .param p2, "source"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->isTotalTrafficSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->mWarnStrategyManager:Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->handleWarn(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V

    .line 60
    :cond_0
    return-void
.end method

.method public isSwitchOpen()Z
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v0

    const-string/jumbo v1, "TrafficController"

    .line 65
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isRunningController(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTotalTrafficSwitchOpen()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficScheduleGrayCtrlFlag()Z

    move-result v0

    .line 50
    .local v0, "isOpen":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->isSwitchOpen()Z

    move-result v1

    .line 51
    .local v1, "isSwitchOn":Z
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_TRAFFIC_MONTH_IS_TOUCH"

    invoke-virtual {v4, v5, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v2

    .line 52
    .local v2, "isTouch":Z
    const-string/jumbo v4, "DefaultExecuteLooper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isWarnOpen isSwitchOn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public onBeginCalTraffic(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V
    .locals 2
    .param p1, "localTrafficLooper"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    .prologue
    .line 28
    const-string/jumbo v0, "DefaultExecuteLooper"

    const-string/jumbo v1, "onBeginCalTraffic"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->isTotalTrafficWarnOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->mWarnStrategyManager:Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->onBeginCalTraffic()V

    .line 33
    :cond_0
    return-void
.end method

.method public onEndCalTraffic(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V
    .locals 2
    .param p1, "localTrafficLooper"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    .prologue
    .line 37
    const-string/jumbo v0, "DefaultExecuteLooper"

    const-string/jumbo v1, "onEndCalTraffic"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->isTotalTrafficWarnOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->mWarnStrategyManager:Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->onEndCalTraffic()V

    .line 41
    :cond_0
    return-void
.end method
