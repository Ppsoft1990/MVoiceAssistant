.class public Lcom/iflytek/viafly/mms/NotifyManager;
.super Ljava/lang/Object;
.source "NotifyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/mms/NotifyManager$CloseButtonListener;,
        Lcom/iflytek/viafly/mms/NotifyManager$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Notification;

.field private b:Landroid/app/NotificationManager;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Lcom/iflytek/viafly/mms/NotifyManager$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/mms/NotifyManager$1;-><init>(Lcom/iflytek/viafly/mms/NotifyManager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/NotifyManager;->c:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/iflytek/viafly/mms/NotifyManager;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/iflytek/viafly/mms/NotifyManager$a;->a:Lcom/iflytek/viafly/mms/NotifyManager;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v9, 0x7f0c0130

    const/4 v8, 0x0

    .line 57
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallPopWinOpend()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    const-string/jumbo v3, "CALL_NOTIFY"

    invoke-static {p1, v3, v8}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 62
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v3

    if-nez v3, :cond_2

    .line 63
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isSmsBroadcastOpened()Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    invoke-static {p1}, Lzu;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/iflytek/viafly/mms/NotifyManager;->b:Landroid/app/NotificationManager;

    if-nez v3, :cond_3

    .line 71
    const-string/jumbo v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/iflytek/viafly/mms/NotifyManager;->b:Landroid/app/NotificationManager;

    .line 74
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    if-nez v3, :cond_4

    .line 75
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f0203c0

    .line 76
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v3, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    .line 84
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/iflytek/viafly/Home;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v2, "notificationIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 86
    const-string/jumbo v3, "com.iflytek.cmcc.action.CALL_SETTING"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    :goto_1
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string/jumbo v3, "from_where"

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v1, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.iflytek.cmcc.CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v3, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    invoke-static {p1, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 113
    invoke-static {p1, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 115
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 116
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isSmsBroadcastOpened()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 121
    iget-object v3, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c0022

    .line 122
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-static {v3, p1, v4, v5, v0}, Lazq;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 164
    :goto_2
    iget-object v3, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 165
    iget-object v3, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/iflytek/viafly/mms/NotifyManager;->b:Landroid/app/NotificationManager;

    const/16 v4, 0x1c8

    iget-object v5, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 87
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "deleteIntent":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isSmsBroadcastOpened()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 88
    const-string/jumbo v3, "com.iflytek.cmcc.action.SMS_SETTING"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 90
    :cond_6
    const-string/jumbo v3, "com.iflytek.cmcc.action.CALL_SETTING"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 125
    .restart local v0    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v1    # "deleteIntent":Landroid/content/Intent;
    :cond_7
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v3

    if-nez v3, :cond_8

    .line 126
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isSmsBroadcastOpened()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 131
    iget-object v3, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c0233

    .line 132
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-static {v3, p1, v4, v5, v0}, Lazq;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 139
    :cond_8
    iget-object v3, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c0052

    .line 140
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-static {v3, p1, v4, v5, v0}, Lazq;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_2
.end method

.method public b(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 172
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallPopWinOpend()Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    const-string/jumbo v4, "CALL_NOTIFY"

    invoke-static {p1, v4, v6}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 177
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v4

    if-nez v4, :cond_2

    .line 178
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isSmsBroadcastOpened()Z

    move-result v4

    if-nez v4, :cond_2

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 182
    :cond_2
    invoke-static {p1}, Lzu;->c(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    iget-object v4, p0, Lcom/iflytek/viafly/mms/NotifyManager;->b:Landroid/app/NotificationManager;

    if-nez v4, :cond_3

    .line 186
    const-string/jumbo v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/iflytek/viafly/mms/NotifyManager;->b:Landroid/app/NotificationManager;

    .line 193
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 194
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isSmsBroadcastOpened()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    const v4, 0x7f0c0022

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "content":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/Home;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v3, "notificationIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.iflytek.cmcc.action.CALL_SETTING"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    :goto_1
    new-instance v4, Lm$d;

    invoke-direct {v4, p1}, Lm$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lm$d;->a(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v4

    .line 214
    invoke-virtual {v4, v0}, Lm$d;->b(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v4

    const v5, 0x7f0203c0

    invoke-virtual {v4, v5}, Lm$d;->a(I)Lm$d;

    move-result-object v4

    invoke-virtual {v4}, Lm$d;->a()Landroid/app/Notification;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    .line 220
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string/jumbo v4, "from_where"

    const/16 v5, 0xd

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const/high16 v4, 0x14000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    invoke-static {p1, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 230
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    iput-object v1, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 231
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v2, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.iflytek.cmcc.CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object v4, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    invoke-static {p1, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 235
    iget-object v4, p0, Lcom/iflytek/viafly/mms/NotifyManager;->b:Landroid/app/NotificationManager;

    const/16 v5, 0x1c8

    iget-object v6, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 200
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "deleteIntent":Landroid/content/Intent;
    .end local v3    # "notificationIntent":Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isSmsBroadcastOpened()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 201
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v4

    if-nez v4, :cond_5

    .line 203
    const v4, 0x7f0c0233

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0    # "content":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/Home;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .restart local v3    # "notificationIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.iflytek.cmcc.action.SMS_SETTING"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 208
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "notificationIntent":Landroid/content/Intent;
    :cond_5
    const v4, 0x7f0c0052

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    .restart local v0    # "content":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/Home;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .restart local v3    # "notificationIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.iflytek.cmcc.action.CALL_SETTING"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method public c(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x1c8

    .line 244
    iget-object v0, p0, Lcom/iflytek/viafly/mms/NotifyManager;->b:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 245
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/NotifyManager;->b:Landroid/app/NotificationManager;

    .line 248
    :cond_0
    invoke-static {p1}, Lzu;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/iflytek/viafly/mms/NotifyManager;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 250
    iput-object v2, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    .line 261
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isSmsBroadcastOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    :cond_2
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/mms/NotifyManager;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/mms/NotifyManager;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 259
    iput-object v2, p0, Lcom/iflytek/viafly/mms/NotifyManager;->a:Landroid/app/Notification;

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 281
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isSmsBroadcastOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string/jumbo v2, "8085"

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/iflytek/viafly/mms/NotifyManager;->c:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 290
    .local v1, "message":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 291
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 292
    iget-object v2, p0, Lcom/iflytek/viafly/mms/NotifyManager;->c:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 295
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 296
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/mms/NotifyManager;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 297
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_3

    .line 299
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/mms/NotifyManager;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/mms/NotifyManager;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/mms/NotifyManager;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
