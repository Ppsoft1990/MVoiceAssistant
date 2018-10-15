.class Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager$2;
.super Ljava/lang/Object;
.source "WarnStrategyManager.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager$2;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficFail()V
    .locals 2

    .prologue
    .line 194
    const-string/jumbo v0, "WarnStrategyManager"

    const-string/jumbo v1, "onFail "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public onTrafficSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)V
    .locals 4
    .param p1, "trafficInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    .prologue
    .line 185
    const-string/jumbo v1, "WarnStrategyManager"

    const-string/jumbo v2, "onTrafficSuccess "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager$2;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;

    sget-object v2, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->local_monitor:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->handleWarn(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_traffic_schedule_adjust_time"

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2}, Ljava/text/SimpleDateFormat;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxp;->a(Landroid/content/Context;)Lxp;

    move-result-object v1

    const-string/jumbo v2, "FT24002"

    invoke-virtual {v1, v2, v0}, Lxp;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 190
    return-void
.end method
