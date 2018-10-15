.class Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$2;
.super Ljava/lang/Object;
.source "TrafficDataHelper.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->getTrafficListener()Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$2;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$2;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->access$200(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;)V

    .line 118
    return-void
.end method

.method public onSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)V
    .locals 1
    .param p1, "trafficInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$2;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;)Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper$2;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;)Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;->onSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)V

    .line 125
    :cond_0
    return-void
.end method
