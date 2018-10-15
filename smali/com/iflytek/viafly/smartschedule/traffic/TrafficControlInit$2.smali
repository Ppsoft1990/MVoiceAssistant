.class Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$2;
.super Ljava/lang/Object;
.source "TrafficControlInit.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->getTrafficWarningListener()Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;
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
    .line 128
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$2;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$2;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->access$200(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->start()V

    .line 132
    return-void
.end method

.method public onSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;)V
    .locals 1
    .param p1, "warnConfigInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit$2;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;->access$200(Lcom/iflytek/viafly/smartschedule/traffic/TrafficControlInit;)Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficDataHelper;->start()V

    .line 137
    return-void
.end method
