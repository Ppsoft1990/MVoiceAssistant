.class Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$1;
.super Lcom/iflytek/viafly/smartschedule/traffic/TrafficRemindForUIAdapter;
.source "TrafficDailyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficRemindForUIAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDailyTrafficRemind()V
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "onDailyTrafficRemind"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;I)V

    .line 55
    return-void
.end method

.method public onDismissDailyTrafficFloatWin()V
    .locals 2

    .prologue
    .line 59
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "onDismissDailyTrafficFloatWin"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;I)V

    .line 61
    return-void
.end method
