.class final Lcom/iflytek/base/newalarm/AlarmService$a;
.super Landroid/os/Handler;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/newalarm/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/newalarm/AlarmService;


# direct methods
.method private constructor <init>(Lcom/iflytek/base/newalarm/AlarmService;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/iflytek/base/newalarm/AlarmService$a;->a:Lcom/iflytek/base/newalarm/AlarmService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/base/newalarm/AlarmService;B)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/base/newalarm/AlarmService;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/iflytek/base/newalarm/AlarmService$a;-><init>(Lcom/iflytek/base/newalarm/AlarmService;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 65
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Landroid/content/Intent;

    if-eqz v5, :cond_0

    .line 66
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 67
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "AlarmService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onStartCommand action = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    const-string/jumbo v5, "EXTRA_ALARM_DATA"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 72
    .local v1, "alarmBundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 73
    const-string/jumbo v5, "AlarmService"

    const-string/jumbo v6, "alarm bundle is null"

    invoke-static {v5, v6}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "alarmBundle":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "alarmBundle":Landroid/os/Bundle;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {v1}, Lcom/iflytek/base/newalarm/AlarmHelper;->parseBundleData(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v2

    .line 78
    .local v2, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    const-string/jumbo v5, "com.iflytek.cmcc.ACTION_HANDLE_ALARM"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    iget-object v5, p0, Lcom/iflytek/base/newalarm/AlarmService$a;->a:Lcom/iflytek/base/newalarm/AlarmService;

    invoke-virtual {v5}, Lcom/iflytek/base/newalarm/AlarmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/base/newalarm/c;->a(Landroid/content/Context;)Lcom/iflytek/base/newalarm/c;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/iflytek/base/newalarm/c;->c(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v1    # "alarmBundle":Landroid/os/Bundle;
    .end local v2    # "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    :catch_0
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AlarmService"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v3}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 83
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "alarmBundle":Landroid/os/Bundle;
    .restart local v2    # "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    :cond_2
    :try_start_1
    const-string/jumbo v5, "com.iflytek.cmcc.ACTION_HANDLE_WAKE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    iget-object v5, p0, Lcom/iflytek/base/newalarm/AlarmService$a;->a:Lcom/iflytek/base/newalarm/AlarmService;

    invoke-virtual {v5}, Lcom/iflytek/base/newalarm/AlarmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/base/newalarm/c;->a(Landroid/content/Context;)Lcom/iflytek/base/newalarm/c;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/iflytek/base/newalarm/c;->a(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
