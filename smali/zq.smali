.class public Lzq;
.super Ljava/lang/Object;
.source "MicNotificationManager.java"


# static fields
.field private static volatile c:Lzq;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/Notification;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzq;->a:Landroid/content/Context;

    .line 56
    const-string/jumbo v0, "mic.toolbar"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzq;->d:I

    .line 57
    return-void
.end method

.method public static a()Lzq;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lzq;->c:Lzq;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lzq;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lzq;->c:Lzq;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lzq;

    invoke-direct {v0}, Lzq;-><init>()V

    sput-object v0, Lzq;->c:Lzq;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lzq;->c:Lzq;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/widget/RemoteViews;I)V
    .locals 5
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I

    .prologue
    .line 147
    const-string/jumbo v2, "MicNotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bindIntentToBtn, id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 168
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    .line 169
    iget-object v2, p0, Lzq;->a:Landroid/content/Context;

    iget v3, p0, Lzq;->d:I

    add-int/2addr v3, p2

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 170
    .local v0, "clickIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 172
    .end local v0    # "clickIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void

    .line 151
    :pswitch_1
    invoke-direct {p0}, Lzq;->l()Landroid/content/Intent;

    move-result-object v1

    .line 152
    goto :goto_0

    .line 161
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lzq;->a:Landroid/content/Context;

    const-class v3, Lcom/iflytek/viafly/Home;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.action.ACTION_QUICK_NOTIFICATION_TOOL_SETTING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b04b7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/widget/RemoteViews;)Z
    .locals 4
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 190
    invoke-virtual {p0}, Lzq;->d()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 191
    .local v0, "isDark":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 192
    const v1, 0x7f0b04b9

    const-string/jumbo v2, "#656566"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 194
    const v1, 0x7f0b04bc

    const-string/jumbo v2, "#656566"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 197
    const v1, 0x7f0b04bb

    const v2, 0x7f020157

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 198
    const v1, 0x7f0b04b8

    const v2, 0x7f02016b

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 199
    const v1, 0x7f0b04b7

    const-string/jumbo v2, "setBackgroundResource"

    const v3, 0x7f0203cd

    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 201
    :cond_0
    return v0

    .line 190
    .end local v0    # "isDark":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lzq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Landroid/app/Notification;
    .locals 8

    .prologue
    .line 85
    invoke-direct {p0}, Lzq;->j()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    const/4 v3, 0x0

    .line 104
    :goto_0
    return-object v3

    .line 88
    :cond_0
    iget-object v3, p0, Lzq;->b:Landroid/app/Notification;

    if-nez v3, :cond_1

    .line 89
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lzq;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0300b6

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 90
    .local v2, "mRemoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, v2}, Lzq;->a(Landroid/widget/RemoteViews;)Z

    move-result v1

    .line 91
    .local v1, "isDark":Z
    const v3, 0x7f0b04b7

    invoke-direct {p0, v2, v3}, Lzq;->a(Landroid/widget/RemoteViews;I)V

    .line 93
    const v3, 0x7f0b04ba

    invoke-direct {p0, v2, v3}, Lzq;->a(Landroid/widget/RemoteViews;I)V

    .line 95
    if-eqz v1, :cond_2

    .line 96
    const v0, 0x7f0200da

    .line 100
    .local v0, "drawable":I
    :goto_1
    new-instance v3, Landroid/app/Notification;

    const-string/jumbo v4, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v0, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v3, p0, Lzq;->b:Landroid/app/Notification;

    .line 101
    iget-object v3, p0, Lzq;->b:Landroid/app/Notification;

    const/16 v4, 0x22

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 102
    iget-object v3, p0, Lzq;->b:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 104
    .end local v0    # "drawable":I
    .end local v1    # "isDark":Z
    .end local v2    # "mRemoteViews":Landroid/widget/RemoteViews;
    :cond_1
    iget-object v3, p0, Lzq;->b:Landroid/app/Notification;

    goto :goto_0

    .line 98
    .restart local v1    # "isDark":Z
    .restart local v2    # "mRemoteViews":Landroid/widget/RemoteViews;
    :cond_2
    const v0, 0x7f0200db

    .restart local v0    # "drawable":I
    goto :goto_1
.end method

.method private l()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzq;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lzq;->a:Landroid/content/Context;

    const v3, 0x7f0c00be

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v1, "local_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lzq;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v1, "from_where"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    return-object v0
.end method

.method private m()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0}, Lzq;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    const-string/jumbo v1, "MicNotificationManager"

    const-string/jumbo v2, "total switch opened, return isCafStyle"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lzq;->f()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    const-string/jumbo v1, "MicNotificationManager"

    const-string/jumbo v2, "total switch closed, return closed"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 253
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_MIC_NOTIFICATION_SWITCH"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 254
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Lhl;->k()I

    move-result v0

    .line 72
    .local v0, "osVersion":I
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 73
    const-string/jumbo v1, "MicNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the os version code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", support custom notification."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v1, 0x1

    .line 77
    :goto_0
    return v1

    .line 76
    :cond_0
    const-string/jumbo v1, "MicNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the os version code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", don\'t support custom notification."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 112
    const-string/jumbo v2, "MicNotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelNotification, id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lzq;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lzq;->a:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 115
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 118
    :try_start_0
    iget v2, p0, Lzq;->d:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MicNotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelNotification, error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lzq;->a:Landroid/content/Context;

    invoke-static {v0}, Loh;->a(Landroid/content/Context;)Loh;

    move-result-object v0

    invoke-virtual {v0}, Loh;->f()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 208
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_MIC_NOTIFICATION_SWITCH"

    invoke-virtual {v1, v2}, Lil;->a(Ljava/lang/String;)Z

    move-result v0

    .line 209
    .local v0, "isSetted":Z
    if-eqz v0, :cond_0

    .line 210
    const-string/jumbo v1, "MicNotificationManager"

    const-string/jumbo v2, "user has setted, return it"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_MIC_NOTIFICATION_SWITCH"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    .line 214
    :goto_0
    return v1

    .line 213
    :cond_0
    const-string/jumbo v1, "MicNotificationManager"

    const-string/jumbo v2, "user not setted, return old settings"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lzq;->m()Z

    move-result v1

    goto :goto_0
.end method

.method public f()Z
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_IS_CAF_STYLE_SELECTED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 3

    .prologue
    .line 249
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_IS_ENABLE_QUICK_NOTIFICATION_TOOL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 260
    const-string/jumbo v1, "MicNotificationManager"

    const-string/jumbo v2, "showMicNotification"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0}, Lzq;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    const-string/jumbo v1, "MicNotificationManager"

    const-string/jumbo v2, "about to show caf notification."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lzq;->a:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 265
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 266
    iget v1, p0, Lzq;->d:I

    invoke-direct {p0}, Lzq;->k()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 271
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p0}, Lzq;->c()V

    goto :goto_0
.end method

.method public i()V
    .locals 6

    .prologue
    .line 280
    :try_start_0
    iget-object v3, p0, Lzq;->a:Landroid/content/Context;

    const-string/jumbo v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 282
    .local v2, "statusBarManager":Ljava/lang/Object;
    invoke-static {}, Lhl;->k()I

    move-result v3

    const/16 v4, 0x10

    if-gt v3, v4, :cond_0

    .line 283
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "collapse"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 287
    .local v0, "collapse":Ljava/lang/reflect/Method;
    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .end local v0    # "collapse":Ljava/lang/reflect/Method;
    .end local v2    # "statusBarManager":Ljava/lang/Object;
    :goto_1
    return-void

    .line 285
    .restart local v2    # "statusBarManager":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "collapsePanels"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "collapse":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 288
    .end local v0    # "collapse":Ljava/lang/reflect/Method;
    .end local v2    # "statusBarManager":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 289
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "MicNotificationManager"

    const-string/jumbo v4, "collapseStatusBar() "

    invoke-static {v3, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
