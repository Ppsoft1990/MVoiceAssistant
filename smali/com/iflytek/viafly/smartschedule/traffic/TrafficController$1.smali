.class Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$1;
.super Lcom/iflytek/viafly/smartschedule/traffic/TrafficRemindForUIAdapter;
.source "TrafficController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficRemindForUIAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissTotalTrafficFloatWin()V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "TrafficController"

    const-string/jumbo v1, "onDismissTotalTrafficFloatWin"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;I)V

    .line 63
    return-void
.end method

.method public onTotalTrafficRemind()V
    .locals 2

    .prologue
    .line 55
    const-string/jumbo v0, "TrafficController"

    const-string/jumbo v1, "onTotalTrafficRemind"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;I)V

    .line 57
    return-void
.end method
