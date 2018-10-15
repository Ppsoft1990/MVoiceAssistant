.class public Lcom/iflytek/viafly/mms/NotifyReceiver;
.super Lcom/iflytek/viafly/AbsBroadcastReceiver;
.source "NotifyReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/iflytek/viafly/AbsBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const-string/jumbo v0, "NotifyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive| intent.getAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.SMS_NOTIFY_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-static {}, Lcom/iflytek/viafly/mms/NotifyManager;->a()Lcom/iflytek/viafly/mms/NotifyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/mms/NotifyManager;->d(Landroid/content/Context;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.CANCEL_SMS_NOTIFY_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    invoke-static {}, Lcom/iflytek/viafly/mms/NotifyManager;->a()Lcom/iflytek/viafly/mms/NotifyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/mms/NotifyManager;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 31
    :cond_2
    const-string/jumbo v0, "com.iflytek.cmcc.CALL_NOTIFY_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    invoke-static {}, Lcom/iflytek/viafly/mms/NotifyManager;->a()Lcom/iflytek/viafly/mms/NotifyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/mms/NotifyManager;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 33
    :cond_3
    const-string/jumbo v0, "com.iflytek.cmcc.CANCEL_CALL_NOTIFY_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    invoke-static {}, Lcom/iflytek/viafly/mms/NotifyManager;->a()Lcom/iflytek/viafly/mms/NotifyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/mms/NotifyManager;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 35
    :cond_4
    const-string/jumbo v0, "com.iflytek.cmcc.CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
