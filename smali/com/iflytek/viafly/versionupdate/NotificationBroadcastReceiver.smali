.class public Lcom/iflytek/viafly/versionupdate/NotificationBroadcastReceiver;
.super Lcom/iflytek/viafly/AbsBroadcastReceiver;
.source "NotificationBroadcastReceiver.java"


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
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v6, 0x34000000

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "mAction":Ljava/lang/String;
    const-string/jumbo v4, "com.iflytek.cmcc.CLEAR_VERSION_UPDATE_NOTIFICATION_ACTION"

    .line 24
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 25
    const-string/jumbo v4, "NEED_UPDATE_VERSION"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "updateVersion":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 29
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_NOTIFICATION_HISTORY_PROCESSED_VERSION"

    invoke-virtual {v4, v5, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v3    # "updateVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const-string/jumbo v4, "com.iflytek.cmcc.CLICK_VERSION_UPDATE_NOTIFICATION_ACTION"

    .line 34
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    const-string/jumbo v4, "NEED_UPDATE_VERSION"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .restart local v3    # "updateVersion":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 40
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_NOTIFICATION_HISTORY_PROCESSED_VERSION"

    invoke-virtual {v4, v5, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_2
    invoke-static {p1}, Lazk;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v4, "from_where"

    const/16 v5, 0x1e

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    .end local v0    # "homeIntent":Landroid/content/Intent;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/versionupdate/UpdateDialog;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v2, "mIntent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    const-string/jumbo v4, "launch_type"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
