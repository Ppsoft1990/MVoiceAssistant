.class Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$2;
.super Ljava/lang/Object;
.source "TrafficDailyController.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/traffic/TrafficFloatWinDismissAlarm$OnTrafficAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->initOperation()V
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
    .line 84
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$2;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarmTrigger()V
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, "TrafficDailyController"

    const-string/jumbo v1, "TrafficFloatWinDismissAlarm time is triggerred to dismiss daily traffic float win"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$2;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->access$200(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;)Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;->sendEmptyMessage(I)Z

    .line 89
    return-void
.end method
