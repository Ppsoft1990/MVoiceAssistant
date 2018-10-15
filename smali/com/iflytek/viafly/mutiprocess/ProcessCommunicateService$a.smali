.class Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;
.super Landroid/os/Handler;
.source "ProcessCommunicateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

.field private b:J


# direct methods
.method private constructor <init>(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)V
    .locals 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;
    .param p2, "x1"    # Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;-><init>(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 110
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 111
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 112
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "ProcessCommunicateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "system event action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string/jumbo v6, "com.iflytek.cmccACTION_CONNECTION_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v6

    invoke-virtual {v6}, Ltd;->g()V

    .line 117
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lare;->a(Landroid/content/Context;)Lare;

    move-result-object v6

    const-string/jumbo v7, "net_change"

    invoke-virtual {v6, v7}, Lare;->c(Ljava/lang/String;)V

    .line 200
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v6, "com.iflytek.cmccACTION_SCREEN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    const-string/jumbo v6, "com.iflytek.cmccKEY_ACTION_SCREEN"

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 127
    .local v3, "screenState":I
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v6

    invoke-virtual {v6, v3}, Ltd;->a(I)V

    .line 128
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lare;->a(Landroid/content/Context;)Lare;

    move-result-object v6

    const-string/jumbo v7, "screen"

    invoke-virtual {v6, v7}, Lare;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v3    # "screenState":I
    :cond_2
    const-string/jumbo v6, "com.iflytek.cmcc.schedule.WAKE_UP_ALARM_ALERT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 133
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Laut;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    :cond_3
    const-string/jumbo v6, "com.iflytek.cmcc.schedule.ALARM_ALERT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 137
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Laut;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    :cond_4
    const-string/jumbo v6, "com.iflytek.cmcc.ACTION_REQUEST_PUSH_ALARM_TRIGGER"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 143
    const-string/jumbo v6, "com.iflytek.cmccACTION_PACKAGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 144
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v6

    invoke-virtual {v6, v2}, Ltd;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 147
    :cond_5
    const-string/jumbo v6, "com.iflytek.cmccACTION_CONTACT_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 148
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v6

    invoke-virtual {v6}, Ltd;->h()V

    goto/16 :goto_0

    .line 155
    :cond_6
    const-string/jumbo v6, "com.iflytek.cmcc.ACTION_PROCESS_HEART"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 159
    const-string/jumbo v6, "com.iflytek.cmccACTION_SIM_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 161
    .local v4, "now":J
    iget-wide v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->b:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0xbb8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 162
    iput-wide v4, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->b:J

    .line 163
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getNewDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    .line 164
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v6

    sget-object v7, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v6, v7}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->d(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 166
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v6

    invoke-virtual {v6}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/iflytek/yd/business/AppConfig;->setIMSI(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.IFLY_CMCC_NOVEL_URL"

    invoke-virtual {v6, v7, v10}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v6

    invoke-virtual {v6}, Lzn;->w()V

    goto/16 :goto_0

    .line 174
    .end local v4    # "now":J
    :cond_7
    const-string/jumbo v6, "com.iflytek.cmcc.ACTION_UPDATE_NOTIFICATION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 175
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->b(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)V

    goto/16 :goto_0

    .line 178
    :cond_8
    const-string/jumbo v6, "com.iflytek.cmcc.ACTION_CLOSE_NOTIFICATION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 179
    const-string/jumbo v6, "ProcessCommunicateService"

    const-string/jumbo v7, "clear notification, stop service foreground."

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->stopForeground(Z)V

    goto/16 :goto_0

    .line 183
    :cond_9
    const-string/jumbo v6, "com.iflytek.cmcc.SMART_SCHEDULE_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 184
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->handleBackgroundIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 187
    :cond_a
    const-string/jumbo v6, "com.iflytek.cmcc.ACTION_AUTO_DOWNLOAD_ALARM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 188
    iget-object v6, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-static {v6}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Luo;->a(Landroid/content/Context;)Luo;

    move-result-object v6

    invoke-virtual {v6, v2}, Luo;->b(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 190
    :cond_b
    const-string/jumbo v6, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 191
    const-string/jumbo v6, "ProcessCommunicateService"

    const-string/jumbo v7, "BluetoothHeadset event"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Lagv;->r()Lahc;

    move-result-object v1

    .line 195
    .local v1, "headsetHelper":Lahc;
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1}, Lahc;->g()V

    goto/16 :goto_0
.end method
