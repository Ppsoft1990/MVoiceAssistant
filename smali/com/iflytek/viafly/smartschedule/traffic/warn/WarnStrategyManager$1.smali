.class Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager$1;
.super Ljava/lang/Object;
.source "WarnStrategyManager.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/traffic/warn/TrafficRandomRequestAlarm$OnRandomRequestAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->randomTimeTrafficRequest()V
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
    .line 161
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarmTrigger()V
    .locals 2

    .prologue
    .line 164
    const-string/jumbo v0, "WarnStrategyManager"

    const-string/jumbo v1, "onAlarmTrigger "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnStrategyManager;)V

    .line 166
    return-void
.end method
