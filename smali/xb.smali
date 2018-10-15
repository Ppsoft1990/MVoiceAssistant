.class public Lxb;
.super Lwo;
.source "EntryOpLogHelper.java"


# static fields
.field private static volatile b:Lxb;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)Lxb;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lxb;->b:Lxb;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lxb;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lxb;->b:Lxb;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lxb;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lxb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxb;->b:Lxb;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lxb;->b:Lxb;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "scene"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v0, "notificationParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_scene"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v3, "com.iflytek.cmcc.wake_enter_home"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "android.intent.action.VOICE_COMMAND"

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 105
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v3, "android.intent.action.START_BY_DIAL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    sget-object v3, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->viafly_dial:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_LOCKER_ENTER_CMCC_COMMON_CHANNEL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_OPEN_WEATHER_CHANNEL"

    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    :cond_3
    const-string/jumbo v3, "locker_enter_lingxi_scene"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "lockScreenEntry":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 115
    invoke-virtual {p0, v2}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v2    # "lockScreenEntry":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "from_where"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 122
    .local v1, "from_where":I
    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 127
    :pswitch_2
    sget-object v3, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->widget:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :pswitch_3
    sget-object v3, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->home:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :pswitch_4
    sget-object v3, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->call_sms_notifiaction:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :pswitch_5
    sget-object v3, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->version_update:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_6
    sget-object v3, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->mic_notify_to_home:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_7
    sget-object v3, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->mic_notify_to_setting:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :pswitch_8
    sget-object v3, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->download_notification:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxb;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :pswitch_9
    sget-object v3, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->desktop_lx_shortcut:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxb;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string/jumbo v0, "EntryOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordEnterAppLog() | scene = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string/jumbo v1, "FT62009"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 56
    invoke-direct {p0, p1}, Lxb;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 55
    invoke-virtual/range {v0 .. v5}, Lxb;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
