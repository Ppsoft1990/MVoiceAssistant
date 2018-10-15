.class public Lcom/iflytek/base/newalarm/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NEWALARM_AlarmReceiver"


# instance fields
.field private isChecked:Z

.field private isRegistService:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/base/newalarm/AlarmReceiver;->isRegistService:Z

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/base/newalarm/AlarmReceiver;->isChecked:Z

    return-void
.end method

.method private handleByInterface(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-static {p3}, Lcom/iflytek/base/newalarm/AlarmHelper;->parseBundleData(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 75
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_ALARM_TRIGGER"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-static {p1}, Lcom/iflytek/base/newalarm/c;->a(Landroid/content/Context;)Lcom/iflytek/base/newalarm/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/base/newalarm/c;->c(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_WAKEUP_ALARM_TRIGGER"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {p1}, Lcom/iflytek/base/newalarm/c;->a(Landroid/content/Context;)Lcom/iflytek/base/newalarm/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/base/newalarm/c;->a(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    goto :goto_0
.end method

.method private handleByService(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/base/newalarm/AlarmService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_ALARM_TRIGGER"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_HANDLE_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :cond_0
    :goto_0
    const-string/jumbo v1, "EXTRA_ALARM_DATA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    return-void

    .line 65
    :cond_1
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_WAKEUP_ALARM_TRIGGER"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_HANDLE_WAKE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private initIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lcom/iflytek/base/newalarm/AlarmReceiver;->initIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    const-string/jumbo v2, "NEWALARM_AlarmReceiver"

    const-string/jumbo v3, "onReceive intent or action is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string/jumbo v2, "NEWALARM_AlarmReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "intent get action = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 33
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 34
    const-string/jumbo v2, "NEWALARM_AlarmReceiver"

    const-string/jumbo v3, "onReceive intent alarm data is null"

    invoke-static {v2, v3}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    :cond_1
    iget-boolean v2, p0, Lcom/iflytek/base/newalarm/AlarmReceiver;->isChecked:Z

    if-nez v2, :cond_2

    .line 39
    invoke-static {p1}, Lcom/iflytek/base/newalarm/AlarmHelper;->isRegisterService(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/iflytek/base/newalarm/AlarmReceiver;->isRegistService:Z

    .line 40
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/iflytek/base/newalarm/AlarmReceiver;->isChecked:Z

    .line 42
    :cond_2
    iget-boolean v2, p0, Lcom/iflytek/base/newalarm/AlarmReceiver;->isRegistService:Z

    if-eqz v2, :cond_3

    .line 43
    invoke-direct {p0, p1, v0, v1}, Lcom/iflytek/base/newalarm/AlarmReceiver;->handleByService(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 45
    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/iflytek/base/newalarm/AlarmReceiver;->handleByInterface(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
