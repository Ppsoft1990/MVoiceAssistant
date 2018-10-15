.class public abstract Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;
.super Ljava/lang/Object;
.source "IExecuteLooper.java"


# instance fields
.field private trafficLooperStrategy:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/ITrafficLooperStrategy;

.field private volatile trafficRemindForUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->trafficRemindForUIList:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public addRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V
    .locals 1
    .param p1, "trafficRemindForUI"    # Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    .prologue
    .line 25
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->trafficRemindForUIList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->trafficRemindForUIList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->trafficRemindForUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    return-void
.end method

.method public abstract dismissWin()V
.end method

.method public getTrafficLooperStrategy()Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/ITrafficLooperStrategy;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->trafficLooperStrategy:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/ITrafficLooperStrategy;

    return-object v0
.end method

.method public getTrafficRemindForUIList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->trafficRemindForUIList:Ljava/util/List;

    return-object v0
.end method

.method public abstract isSwitchOpen()Z
.end method

.method public abstract onBeginCalTraffic(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V
.end method

.method public abstract onEndCalTraffic(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V
.end method

.method public removeRemindListener(Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;)V
    .locals 1
    .param p1, "trafficRemindForUI"    # Lcom/iflytek/viafly/smartschedule/traffic/ITrafficRemindForUI;

    .prologue
    .line 31
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->trafficRemindForUIList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->trafficRemindForUIList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
.end method

.method public setTrafficLooperStrategy(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/ITrafficLooperStrategy;)V
    .locals 0
    .param p1, "trafficLooperStrategy"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/ITrafficLooperStrategy;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->trafficLooperStrategy:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/ITrafficLooperStrategy;

    .line 42
    return-void
.end method
