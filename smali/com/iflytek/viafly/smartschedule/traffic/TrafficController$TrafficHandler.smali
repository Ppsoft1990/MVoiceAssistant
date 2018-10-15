.class Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;
.super Landroid/os/Handler;
.source "TrafficController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;


# direct methods
.method private constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;
    .param p2, "x1"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$1;

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 264
    const-string/jumbo v1, "TrafficController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->access$300(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;)Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 270
    :pswitch_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v2, "monthFlow"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v1

    invoke-virtual {v1}, Lzn;->p()Z

    move-result v1

    if-nez v1, :cond_2

    .line 272
    const-string/jumbo v1, "TrafficController"

    const-string/jumbo v2, "auth fail , not show float win"

    invoke-static {v1, v2}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_2
    const-string/jumbo v1, "TrafficController"

    const-string/jumbo v2, "handleMessage show float win"

    invoke-static {v1, v2}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->getScheduleData()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    move-result-object v0

    .line 278
    .local v0, "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    if-eqz v0, :cond_0

    .line 279
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->access$400(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;)Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->addData(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 280
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;

    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->getWarnedInfoTriggerTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficUtil;->getFloatWInDismissTime(J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->access$500(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;J)V

    goto :goto_0

    .line 285
    .end local v0    # "smartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController$TrafficHandler;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;

    const-string/jumbo v2, "TrafficSchedule"

    invoke-static {v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;->access$600(Lcom/iflytek/viafly/smartschedule/traffic/TrafficController;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
