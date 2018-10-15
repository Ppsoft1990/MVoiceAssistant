.class public Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DailyWarnExecuteLooper;
.super Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;
.source "DailyWarnExecuteLooper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DailyWarnExecuteLooper"


# instance fields
.field private mDailyWarnManager:Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;-><init>()V

    .line 21
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DailyWarnExecuteLooper;->getTrafficRemindForUIList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DailyWarnExecuteLooper;->mDailyWarnManager:Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;

    .line 22
    return-void
.end method


# virtual methods
.method public dismissWin()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DailyWarnExecuteLooper;->isDailyWarnOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DailyWarnExecuteLooper;->mDailyWarnManager:Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->dismissTrafficWin()V

    .line 58
    :cond_0
    return-void
.end method

.method public isDailyWarnOpen()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getDailyTrafficScheduleGrayCtrlFlag()Z

    move-result v0

    .line 41
    .local v0, "isOpen":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DailyWarnExecuteLooper;->isSwitchOpen()Z

    move-result v1

    .line 42
    .local v1, "isSwitchOn":Z
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_TRAFFIC_DAILY_IS_TOUCH"

    invoke-virtual {v4, v5, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v2

    .line 43
    .local v2, "isTouch":Z
    const-string/jumbo v4, "DailyWarnExecuteLooper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDailyWarnOpen isSwitchOn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public isSwitchOpen()Z
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v0

    const-string/jumbo v1, "TrafficDailyController"

    .line 50
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isRunningController(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onBeginCalTraffic(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V
    .locals 1
    .param p1, "localTrafficLooper"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DailyWarnExecuteLooper;->isDailyWarnOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DailyWarnExecuteLooper;->mDailyWarnManager:Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->onBeginCalTraffic()V

    .line 30
    :cond_0
    return-void
.end method

.method public onEndCalTraffic(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V
    .locals 1
    .param p1, "localTrafficLooper"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DailyWarnExecuteLooper;->isDailyWarnOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DailyWarnExecuteLooper;->mDailyWarnManager:Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnManager;->onEndCalTraffic()V

    .line 37
    :cond_0
    return-void
.end method
