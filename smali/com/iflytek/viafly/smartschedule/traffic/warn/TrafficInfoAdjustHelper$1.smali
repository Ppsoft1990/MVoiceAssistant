.class Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$1;
.super Ljava/lang/Object;
.source "TrafficInfoAdjustHelper.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "TrafficInfoAdjustHelper"

    const-string/jumbo v1, "onFailed  "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;)Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;)Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;->onTrafficFail()V

    .line 61
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)V
    .locals 3
    .param p1, "trafficInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    .prologue
    .line 65
    const-string/jumbo v0, "TrafficInfoAdjustHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSuccess  trafficInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;)Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper;)Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficInfoAdjustHelper$OnTrafficResultListener;->onTrafficSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)V

    .line 69
    :cond_0
    return-void
.end method
