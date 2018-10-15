.class public Lban;
.super Ljava/lang/Object;
.source "VersionNotificationManager.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "lingx-version.toolbar"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lban;->a:I

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const v2, 0x7f0b0786

    .line 125
    invoke-static {p1}, Loh;->a(Landroid/content/Context;)Loh;

    move-result-object v0

    invoke-virtual {v0}, Loh;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const v0, 0x7f0b0784

    const-string/jumbo v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 127
    const v0, 0x7f0b0785

    const-string/jumbo v1, "#838383"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 128
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 129
    const-string/jumbo v0, "setBackgroundResource"

    const v1, 0x7f02041b

    invoke-virtual {p2, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 131
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "viewId"    # I

    .prologue
    .line 100
    const-string/jumbo v2, "VersionNotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bindIntentToBtn, id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0, p1}, Lban;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 102
    .local v1, "intent":Landroid/content/Intent;
    iget v2, p0, Lban;->a:I

    add-int/2addr v2, p3

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 103
    .local v0, "clickIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, p3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 104
    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_CLICK_LX_UPDATE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/iflytek/common/notice/NotificationService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "extra_action"

    const-string/jumbo v2, "click"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    return-object v0
.end method

.method private c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_CLICK_LX_UPDATE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/iflytek/common/notice/NotificationService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v1, "extra_action"

    const-string/jumbo v2, "delete"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    :try_start_0
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 42
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    iget v2, p0, Lban;->a:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "VersionNotificationManager"

    const-string/jumbo v3, "deleteNofication error"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateInfo"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    .line 49
    const-string/jumbo v13, "VersionNotificationManager"

    const-string/jumbo v14, "addNotification"

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v2, Lm$d;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lm$d;-><init>(Landroid/content/Context;)V

    .line 56
    .local v2, "builder":Lm$d;
    new-instance v11, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f030152

    invoke-direct {v11, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 57
    .local v11, "remoteViews":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lban;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 59
    const v13, 0x7f0b0783

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v13}, Lban;->a(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 60
    const v13, 0x7f0b0786

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v13}, Lban;->a(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getNoticeDesc()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "content":Ljava/lang/String;
    const v13, 0x7f0b0785

    invoke-virtual {v11, v13, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 65
    invoke-direct/range {p0 .. p1}, Lban;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 66
    .local v6, "deleteIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v13, v0, Lban;->a:I

    const/high16 v14, 0x10000000

    move-object/from16 v0, p1

    invoke-static {v0, v13, v6, v14}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 68
    .local v7, "deletePi":Landroid/app/PendingIntent;
    invoke-direct/range {p0 .. p1}, Lban;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 69
    .local v4, "contentIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v13, v0, Lban;->a:I

    const/high16 v14, 0x10000000

    move-object/from16 v0, p1

    invoke-static {v0, v13, v4, v14}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 71
    .local v5, "contentPi":Landroid/app/PendingIntent;
    const v13, 0x7f0c032d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 72
    .local v12, "title":Ljava/lang/String;
    invoke-virtual {v2, v12}, Lm$d;->a(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v13

    .line 73
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getNoticeDesc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lm$d;->b(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v13

    .line 74
    invoke-virtual {v13, v5}, Lm$d;->a(Landroid/app/PendingIntent;)Lm$d;

    move-result-object v13

    .line 75
    invoke-virtual {v13, v7}, Lm$d;->b(Landroid/app/PendingIntent;)Lm$d;

    move-result-object v13

    const v14, -0xff0100

    const/16 v15, 0x12c

    const/16 v16, 0xbb8

    .line 76
    invoke-virtual/range {v13 .. v16}, Lm$d;->a(III)Lm$d;

    move-result-object v13

    const/4 v14, 0x0

    .line 77
    invoke-virtual {v13, v14}, Lm$d;->a(Z)Lm$d;

    move-result-object v13

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lm$d;->a(J)Lm$d;

    move-result-object v13

    const/4 v14, 0x1

    .line 79
    invoke-virtual {v13, v14}, Lm$d;->b(Z)Lm$d;

    move-result-object v13

    const v14, 0x7f0203c0

    .line 80
    invoke-virtual {v13, v14}, Lm$d;->a(I)Lm$d;

    .line 82
    invoke-static {}, Lhl;->k()I

    move-result v13

    const/16 v14, 0xd

    if-le v13, v14, :cond_2

    .line 83
    invoke-virtual {v2, v11}, Lm$d;->a(Landroid/widget/RemoteViews;)Lm$d;

    .line 86
    :cond_2
    invoke-virtual {v2}, Lm$d;->a()Landroid/app/Notification;

    move-result-object v9

    .line 89
    .local v9, "notification":Landroid/app/Notification;
    :try_start_0
    const-string/jumbo v13, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 90
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget v13, v0, Lban;->a:I

    invoke-virtual {v10, v13, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 91
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    :catch_0
    move-exception v8

    .line 92
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "VersionNotificationManager"

    const-string/jumbo v14, "addNotification error"

    invoke-static {v13, v14, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
