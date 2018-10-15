.class Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;
.super Landroid/os/Handler;
.source "BackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mutiprocess/BackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;


# direct methods
.method private constructor <init>(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/mutiprocess/BackgroundService;Lcom/iflytek/viafly/mutiprocess/BackgroundService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/mutiprocess/BackgroundService;
    .param p2, "x1"    # Lcom/iflytek/viafly/mutiprocess/BackgroundService$1;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;-><init>(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 238
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 239
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 240
    .local v2, "msgIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "BackgroundService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ServiceHandler handle action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_REQUEST_PUSH_ALARM_TRIGGER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_PERIOD_CLOSE_CARMODE"

    .line 244
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_PROCESS_HEART"

    .line 245
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_AUTO_DOWNLOAD_ALARM"

    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    const-class v4, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 248
    iget-object v3, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 269
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "msgIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 249
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "msgIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_BIND_PROCESS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 250
    iget-object v3, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-static {v3}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->b(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)Laqk;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 251
    iget-object v3, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    iget-object v4, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-static {v4}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->c(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 253
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-static {v3}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->d(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "msgIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "msgIntent":Landroid/content/Intent;
    :cond_4
    :try_start_1
    const-string/jumbo v3, "com.iflytek.cmcc.schedule.ALARM_ALERT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "com.iflytek.cmcc.schedule.WAKE_UP_ALARM_ALERT"

    .line 256
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 257
    :cond_5
    iget-object v3, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-static {v3}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v3

    invoke-virtual {v3}, Lauw;->e()V

    .line 258
    iget-object v3, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    const-class v4, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 259
    iget-object v3, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 261
    :cond_6
    const-string/jumbo v3, "com.iflytek.cmcc.SMART_SCHEDULE_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    iget-object v3, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    const-class v4, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 263
    iget-object v3, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$a;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
