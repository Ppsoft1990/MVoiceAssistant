.class Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$1;
.super Ljava/lang/Object;
.source "TrafficControlInit.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper$INotificationCard;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->init()V
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
    .line 67
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficInfoAvailable(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V
    .locals 1
    .param p1, "trafficInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .param p2, "source"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->startLoop()V

    .line 73
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->access$100(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->access$100(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    move-result-object v0

    instance-of v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->access$100(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/DefaultExecuteLooper;->handleWarn(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V

    .line 76
    :cond_0
    return-void
.end method
