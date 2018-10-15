.class public Lcom/iflytek/viafly/homehelper/base/HomeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeReceiver.java"


# instance fields
.field private a:Lcom/iflytek/viafly/Home;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/Home;)V
    .locals 0
    .param p1, "home"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/iflytek/viafly/homehelper/base/HomeReceiver;->a:Lcom/iflytek/viafly/Home;

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "HomeReceiver"

    const-string/jumbo v2, "--------->>> registHomeReceiver()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.FINISH_HOME_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_CARMODE_TIPS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_HOME_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_DOWN_AUTOVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_FORCE_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_DOWN_GREETING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_RECEIVE_NEW_COMMON_PUSH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_MSC_NET_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v1, "com.iflytek.cmccACTION_ALARM_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_LOCKSCREEN_DOWNLOAD_SUCSESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_REFERSH_RED_DOT_FOR_MENU"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "com.iflytek.cmcc.NEWS_TTS_STOP_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v1, "com.iflytek.cmccSHOW_COVER_LAYER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v1, "com.iflytek.cmcc.broadcast_start_wake"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "com.iflytek.cmcc.broadcast_wait_wake"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v1, "com.iflytek.cmcc.broadcast_stop_wake"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v1, "com.iflytek.cmcc.broadcast_success_wake"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v1, "com.iflytek.cmcc.broadcast_error_wake"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_CLOSE_LINGXI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "com.iflytek.cmcc.LOCKSCREEN_SPEECH_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_LOCKSCREEN_REFRESH_INDICATOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, "com.iflytek.cmcc.LOCKSCREEN_MOVEBACK_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homehelper/base/HomeReceiver;->a:Lcom/iflytek/viafly/Home;

    invoke-virtual {v1, v2, p0, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 42
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homehelper/base/HomeReceiver;->a:Lcom/iflytek/viafly/Home;

    invoke-virtual {v0, v1, p0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 90
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    if-nez p2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "HomeReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBroadcastReceiver || action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_RECEIVE_NEW_COMMON_PUSH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    invoke-static {}, Lagv;->f()Lahd;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lahd;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 110
    invoke-static {}, Lagv;->g()Lahg;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lahg;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HomeReceiver"

    const-string/jumbo v4, "mHomeReceiver"

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    invoke-static {}, Lagv;->l()Lagy;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lagy;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :cond_3
    const-string/jumbo v3, "com.iflytek.cmccACTION_ALARM_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v3

    sget-object v4, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_schedule:Lcom/iflytek/framework/business/entities/SystemEvent;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_4
    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_MSC_NET_STATUS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 124
    invoke-static {}, Lagv;->n()Lahh;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lahh;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 127
    :cond_5
    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_LOCKSCREEN_DOWNLOAD_SUCSESS"

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
    invoke-static {}, Lagv;->h()Lahk;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lahk;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 131
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccSHOW_COVER_LAYER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    const-string/jumbo v3, "com.iflytek.cmcc.broadcast_start_wake"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 134
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v3

    const-wide/16 v4, 0x320

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a(J)V

    goto/16 :goto_0

    .line 135
    :cond_7
    const-string/jumbo v3, "com.iflytek.cmcc.broadcast_stop_wake"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 136
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->h()V

    goto/16 :goto_0

    .line 137
    :cond_8
    const-string/jumbo v3, "com.iflytek.cmcc.broadcast_success_wake"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 138
    const-string/jumbo v3, "extra_scene"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 140
    invoke-static {}, Lagv;->d()Lahw;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lahw;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 142
    :cond_9
    const-string/jumbo v3, "com.iflytek.cmcc.broadcast_error_wake"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 143
    invoke-static {}, Lagv;->d()Lahw;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lahw;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 144
    :cond_a
    const-string/jumbo v3, "com.iflytek.cmcc.broadcast_wait_wake"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 145
    invoke-static {}, Lagv;->d()Lahw;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lahw;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 150
    :cond_b
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 153
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v3

    sget-object v4, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_off:Lcom/iflytek/framework/business/entities/SystemEvent;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 154
    :cond_c
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 155
    invoke-static {}, Lagv;->f()Lahd;

    move-result-object v3

    invoke-virtual {v3}, Lahd;->g()V

    .line 156
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v3

    sget-object v4, Lcom/iflytek/framework/business/entities/SystemEvent;->screen_on:Lcom/iflytek/framework/business/entities/SystemEvent;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 157
    :cond_d
    const-string/jumbo v3, "com.iflytek.cmcc.FINISH_HOME_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 158
    const-string/jumbo v3, "HomeReceiver"

    const-string/jumbo v4, "onReceive | FINISH_HOME_ACTION"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/iflytek/viafly/homehelper/base/HomeReceiver;->a:Lcom/iflytek/viafly/Home;

    invoke-virtual {v3}, Lcom/iflytek/viafly/Home;->finish()V

    goto/16 :goto_0

    .line 160
    :cond_e
    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_HOME_FINISH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 161
    const-string/jumbo v3, "HomeReceiver"

    const-string/jumbo v4, "action_home_finish"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v3, p0, Lcom/iflytek/viafly/homehelper/base/HomeReceiver;->a:Lcom/iflytek/viafly/Home;

    invoke-virtual {v3}, Lcom/iflytek/viafly/Home;->finish()V

    goto/16 :goto_0

    .line 165
    :cond_f
    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_FORCE_CLOSE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 166
    iget-object v3, p0, Lcom/iflytek/viafly/homehelper/base/HomeReceiver;->a:Lcom/iflytek/viafly/Home;

    invoke-virtual {v3}, Lcom/iflytek/viafly/Home;->finish()V

    goto/16 :goto_0

    .line 169
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.LOCKSCREEN_SPEECH_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 170
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_LOCKSCREEN_REFRESH_INDICATOR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.LOCKSCREEN_MOVEBACK_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 172
    :cond_11
    invoke-static {}, Lagv;->e()Lahf;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lahf;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 176
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_CLOSE_LINGXI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    const-string/jumbo v3, "packageName"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "packAgeName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.iflytek.speechtesttool"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
