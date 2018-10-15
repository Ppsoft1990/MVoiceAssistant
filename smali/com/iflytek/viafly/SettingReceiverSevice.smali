.class public Lcom/iflytek/viafly/SettingReceiverSevice;
.super Landroid/app/Service;
.source "SettingReceiverSevice.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    const-string/jumbo v0, "SettingReceiverSevice"

    iput-object v0, p0, Lcom/iflytek/viafly/SettingReceiverSevice;->a:Ljava/lang/String;

    return-void
.end method

.method private a(ZZ)V
    .locals 2
    .param p1, "callFlag"    # Z
    .param p2, "smsFlag"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/iflytek/viafly/SettingReceiverSevice;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.CALL_NOTIFY_ACTION"

    .line 95
    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "SettingReceiverSevice"

    const-string/jumbo v1, "updateNotification | set call notification"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    if-eqz p2, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/iflytek/viafly/SettingReceiverSevice;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.SMS_NOTIFY_ACTION"

    .line 105
    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "SettingReceiverSevice"

    const-string/jumbo v1, "updateNotification | set sms notification"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_1
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/SettingReceiverSevice;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.CANCEL_CALL_NOTIFY_ACTION"

    .line 99
    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "SettingReceiverSevice"

    const-string/jumbo v1, "updateNotification | cancel call notification"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/SettingReceiverSevice;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.CANCEL_SMS_NOTIFY_ACTION"

    .line 109
    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v0, "SettingReceiverSevice"

    const-string/jumbo v1, "updateNotification | cancel sms notification"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    .line 35
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v7

    .line 39
    :cond_1
    const-string/jumbo v3, "com.iflytek.cmcc.action.LINGXI_SETTING"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    const-string/jumbo v3, "CALL_NOTIFY"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 43
    .local v0, "callFlag":Z
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "CALL_NOTIFY"

    invoke-virtual {v3, v4, v0}, Lil;->a(Ljava/lang/String;Z)V

    .line 55
    :try_start_0
    invoke-static {v0, v0}, Laaz;->a(ZZ)V

    .line 56
    const-string/jumbo v3, "SettingReceiverSevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStartCommand call flag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string/jumbo v3, "SMS_NOTIFY"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 61
    .local v2, "smsFlag":Z
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "SMS_NOTIFY"

    invoke-virtual {v3, v4, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 70
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_AUTO_SMS_RECEIVE"

    invoke-virtual {v3, v4, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 72
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    invoke-virtual {v3, v4, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 74
    const-string/jumbo v3, "SettingReceiverSevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStartCommand sms flag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/iflytek/viafly/SettingReceiverSevice;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "SMS_NOTIFY"

    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    invoke-virtual {v5, v6}, Lil;->c(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {p0}, Lcom/iflytek/viafly/SettingReceiverSevice;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "CALL_NOTIFY"

    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    invoke-virtual {v5, v6}, Lil;->c(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 79
    invoke-direct {p0, v0, v2}, Lcom/iflytek/viafly/SettingReceiverSevice;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 80
    .end local v2    # "smsFlag":Z
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
