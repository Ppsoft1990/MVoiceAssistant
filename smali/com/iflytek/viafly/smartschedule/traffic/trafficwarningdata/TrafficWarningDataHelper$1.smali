.class Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper$1;
.super Ljava/lang/Object;
.source "TrafficWarningDataHelper.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->getTrafficWarningListener()Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;)V

    .line 70
    return-void
.end method

.method public onSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;)V
    .locals 1
    .param p1, "warnConfigInfo"    # Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->access$100(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;)V

    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->access$200(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;)Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;->access$200(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/TrafficWarningDataHelper;)Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;->onSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;)V

    .line 78
    :cond_0
    return-void
.end method
