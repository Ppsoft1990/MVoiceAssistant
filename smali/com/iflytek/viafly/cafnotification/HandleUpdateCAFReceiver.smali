.class public Lcom/iflytek/viafly/cafnotification/HandleUpdateCAFReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HandleUpdateCAFReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "action":Ljava/lang/String;
    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v0

    .line 43
    .local v0, "cafManager":Lzn;
    const-string/jumbo v9, "com.iflytek.viafly.cafnotification.ACTION_RECEIVE_CAF_DATA_FROM_CARD"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 44
    invoke-virtual {v0}, Lzn;->o()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 45
    const-string/jumbo v9, "HandleUpdateCAFReceiver"

    const-string/jumbo v10, "received caf data from caf card in home page."

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string/jumbo v9, "callfees"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "callfees":Ljava/lang/String;
    const-string/jumbo v9, "flow"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "flow":Ljava/lang/String;
    const-string/jumbo v9, "url"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v9, "update_time_in_millis"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 50
    .local v4, "updateTime":J
    invoke-virtual {v0}, Lzn;->i()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Lzn;->b()Z

    move-result v9

    if-nez v9, :cond_0

    .line 51
    invoke-virtual {v0}, Lzn;->c()V

    .line 53
    :cond_0
    invoke-virtual/range {v0 .. v5}, Lzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 76
    .end local v1    # "callfees":Ljava/lang/String;
    .end local v2    # "flow":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "updateTime":J
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    const-string/jumbo v9, "HandleUpdateCAFReceiver"

    const-string/jumbo v10, "api level or download id is wrong, ignore caf data from card."

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_3
    const-string/jumbo v9, "com.iflytek.viafly.cafnotification.ACTION_UPDATE_CAF_DATA_MANUAL"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 58
    const-string/jumbo v9, "HandleUpdateCAFReceiver"

    const-string/jumbo v10, "update caf data manually."

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Lzn;->f()Z

    move-result v9

    if-nez v9, :cond_4

    .line 61
    invoke-static {p1}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v9

    sget-object v10, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->bill_notify_content_refresh:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v10}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lxb;->a(Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v9

    const-string/jumbo v10, "LX_100016"

    invoke-virtual {v9, v10}, Lwz;->a(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lzn;->e()V

    .line 66
    const-string/jumbo v9, "is_manual"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 67
    .local v8, "isManual":Z
    new-instance v7, Landroid/content/Intent;

    const-class v9, Lcom/iflytek/viafly/cafnotification/CAFService;

    invoke-direct {v7, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v7, "intent2":Landroid/content/Intent;
    const-string/jumbo v9, "is_manual"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 71
    .end local v7    # "intent2":Landroid/content/Intent;
    .end local v8    # "isManual":Z
    :cond_4
    const-string/jumbo v9, "HandleUpdateCAFReceiver"

    const-string/jumbo v10, "updating caf data, ignore this operation."

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_5
    const-string/jumbo v9, "com.iflytek.viafly.cafnotification.ACTION_UPDATE_TIME"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 74
    invoke-virtual {v0}, Lzn;->d()V

    goto :goto_0
.end method
