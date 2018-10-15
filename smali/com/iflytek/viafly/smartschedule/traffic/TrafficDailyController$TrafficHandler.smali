.class Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;
.super Landroid/os/Handler;
.source "TrafficDailyController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;


# direct methods
.method private constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;
    .param p2, "x1"    # Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$1;

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 260
    const-string/jumbo v1, "TrafficDailyController"

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

    .line 261
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->access$300(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;)Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 264
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 267
    :pswitch_0
    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v1

    invoke-virtual {v1}, Lzn;->p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    const-string/jumbo v1, "TrafficDailyController"

    const-string/jumbo v2, "auth fail , not show float win"

    invoke-static {v1, v2}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v2, "dayFlow"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j(Ljava/lang/String;)V

    .line 273
    const-string/jumbo v1, "TrafficDailyController"

    const-string/jumbo v2, "handleMessage show daily float win"

    invoke-static {v1, v2}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/dailywarn/DailyWarnInfoHelper;->getScheduleData()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    move-result-object v0

    .line 275
    .local v0, "dailySmartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->access$400(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;)Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->addData(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 276
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficUtil;->getTomorrowZeroTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->access$500(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;J)V

    goto :goto_0

    .line 280
    .end local v0    # "dailySmartData":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController$TrafficHandler;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;

    const-string/jumbo v2, "DailyTrafficSchedule"

    invoke-static {v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;->access$600(Lcom/iflytek/viafly/smartschedule/traffic/TrafficDailyController;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
