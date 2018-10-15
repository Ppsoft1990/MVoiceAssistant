.class public Lcom/iflytek/viafly/schedule/framework/ScheduleService;
.super Landroid/app/Service;
.source "ScheduleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;,
        Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;,
        Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;

.field private b:Landroid/content/Context;

.field private c:Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;

.field private d:Landroid/os/Looper;

.field private e:Lcom/iflytek/yd/base/ProcessListener;

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;

    .line 53
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->e:Lcom/iflytek/yd/base/ProcessListener;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->f:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ScheduleService;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V
    .locals 16
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "scheduleBroadcastTriggerTime"    # Ljava/lang/String;

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .line 290
    invoke-static {}, Lavm;->b()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 291
    invoke-static {}, Lavm;->a()Lavm;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Lavm;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 292
    const-string/jumbo v12, "ScheduleService"

    const-string/jumbo v13, "handleScheduleAlert | \u63d0\u9192\u5df2\u7ecf\u89e6\u53d1\u6216\u88ab\u4fee\u6539\uff0c\u5524\u9192\u63d0\u9192\u5b9a\u65f6\u5668\u7684\u63d0\u9192\uff0c\u4e0d\u9700\u8981\u518d\u4fee\u6539"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    .line 298
    .local v9, "time":Ljava/lang/String;
    const-string/jumbo v12, "ScheduleService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleScheduleAlert | current time\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string/jumbo v12, "ScheduleService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleScheduleAlert | schedule = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->b:Landroid/content/Context;

    invoke-static {v12}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    .line 302
    .local v3, "scheduleLogHelper":Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;
    const-string/jumbo v12, "IC00001"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v3, v12, v14, v15}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;J)V

    .line 303
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 304
    const-string/jumbo v12, "schedule_broadcast_trigger_time"

    move-object/from16 v0, p2

    invoke-virtual {v3, v12, v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v2

    .line 307
    .local v2, "baseDateInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    if-eqz v2, :cond_3

    .line 308
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->toString()Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "schedule_date_time_infor":Ljava/lang/String;
    const-string/jumbo v12, "schedule_date_time_infor"

    invoke-virtual {v3, v12, v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .end local v5    # "schedule_date_time_infor":Ljava/lang/String;
    :cond_3
    const-wide/16 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_4

    .line 312
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->b:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 313
    .local v8, "schedule_trigger_time":Ljava/lang/String;
    const-string/jumbo v12, "schedule_trigger_time"

    invoke-virtual {v3, v12, v8}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .end local v8    # "schedule_trigger_time":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "schedule_real_trigger_time":Ljava/lang/String;
    const-string/jumbo v12, "schedule_real_trigger_time"

    invoke-virtual {v3, v12, v6}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-wide/16 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDelayTime()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_5

    .line 319
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDelayTime()J

    move-result-wide v14

    long-to-int v13, v14

    div-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\u79d2"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 320
    .local v7, "schedule_trigger_delay_time":Ljava/lang/String;
    const-string/jumbo v12, "schedule_trigger_delay_time"

    invoke-virtual {v3, v12, v7}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v7    # "schedule_trigger_delay_time":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->name()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "schedule_business":Ljava/lang/String;
    const-string/jumbo v12, "schedule_business"

    invoke-virtual {v3, v12, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v14

    sub-long v10, v12, v14

    .line 326
    .local v10, "timeDelayed":J
    const-string/jumbo v12, "schedule_trigger_real_delay_time"

    const-wide/16 v14, 0x3e8

    div-long v14, v10, v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-wide/32 v12, 0xea60

    cmp-long v12, v10, v12

    if-lez v12, :cond_6

    .line 328
    const-string/jumbo v12, "schedule_trigger_result"

    const-string/jumbo v13, "0"

    invoke-virtual {v3, v12, v13}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_1
    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->b()Z

    .line 335
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->b:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v13

    invoke-static {v12, v13}, Lavg;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)Lave;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lave;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto/16 :goto_0

    .line 330
    :cond_6
    const-string/jumbo v12, "schedule_trigger_result"

    const-string/jumbo v13, "1"

    invoke-virtual {v3, v12, v13}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 3
    .param p1, "isSet"    # Z

    .prologue
    .line 87
    const-string/jumbo v0, "ScheduleService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProcessListener(), isSet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->e:Lcom/iflytek/yd/base/ProcessListener;

    invoke-static {v0}, Lcom/iflytek/viafly/ViaFlyApp;->a(Lcom/iflytek/yd/base/ProcessListener;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->e:Lcom/iflytek/yd/base/ProcessListener;

    invoke-static {v0}, Lcom/iflytek/viafly/ViaFlyApp;->b(Lcom/iflytek/yd/base/ProcessListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->c:Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string/jumbo v0, "ScheduleService"

    const-string/jumbo v1, "checkExitService() | message queue has msg -> return"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lavg;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    const-string/jumbo v0, "ScheduleService"

    const-string/jumbo v1, "checkExitService() | schedule cach != null -> return"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    const-string/jumbo v0, "ScheduleService"

    const-string/jumbo v1, "checkExitService() | stop service!"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->stopSelf()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 156
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;-><init>(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)V

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;

    invoke-virtual {v1, p0, v2, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 164
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;

    invoke-virtual {v0, p0, v1}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;

    .line 174
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 71
    const-string/jumbo v1, "ScheduleService"

    const-string/jumbo v2, "onCreate()"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p0, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->b:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a()V

    .line 74
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a(Z)V

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ScheduleService"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 77
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->d:Landroid/os/Looper;

    .line 79
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->d:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;-><init>(Lcom/iflytek/viafly/schedule/framework/ScheduleService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->c:Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 99
    const-string/jumbo v3, "ScheduleService"

    const-string/jumbo v4, "onDestroy()"

    invoke-static {v3, v4}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->b()V

    .line 101
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->d:Landroid/os/Looper;

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->d:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 104
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a(Z)V

    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->b:Landroid/content/Context;

    invoke-static {v3}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v3

    invoke-interface {v3}, Lave;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ScheduleService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 110
    .local v2, "outOfMemoryError":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "ScheduleService"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v2    # "outOfMemoryError":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 113
    .local v1, "error":Ljava/lang/StackOverflowError;
    const-string/jumbo v3, "ScheduleService"

    invoke-virtual {v1}, Ljava/lang/StackOverflowError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 120
    const-string/jumbo v1, "ScheduleService"

    const-string/jumbo v2, "onStartCommand()"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-nez p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->stopSelf()V

    .line 132
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->c:Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 127
    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
