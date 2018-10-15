.class Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$3;
.super Ljava/lang/Object;
.source "TrafficControlInit.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->getTrafficListener()Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$3;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)V
    .locals 2
    .param p1, "trafficInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$3;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->access$100(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$3;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->access$100(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    move-result-object v0

    instance-of v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$3;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->access$100(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->schedule_init:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->handleWarn(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$3;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->startLoop()V

    .line 156
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$3;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$3;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 158
    return-void
.end method
