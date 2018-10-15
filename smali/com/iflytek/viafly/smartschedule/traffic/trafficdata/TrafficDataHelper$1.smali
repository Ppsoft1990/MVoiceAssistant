.class Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$1;
.super Ljava/lang/Object;
.source "TrafficDataHelper.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->getAlarmCallback(Landroid/content/Context;)Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 4
    .param p1, "l"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 94
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->isTrafficInfoUpdated()Z

    move-result v1

    .line 95
    .local v1, "isUpdate":Z
    if-eqz v1, :cond_1

    .line 96
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;)Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;)Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    move-result-object v2

    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;->onSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficTriesLimit;->isSatisfyCondition(Landroid/content/Context;)Z

    move-result v0

    .line 101
    .local v0, "isSafe":Z
    if-eqz v0, :cond_2

    .line 103
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->access$100(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;)Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficData;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficData;->request()V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->access$200(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;)V

    goto :goto_0
.end method
