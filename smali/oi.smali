.class public Loi;
.super Ljava/lang/Object;
.source "NotificationCreator.java"


# direct methods
.method public static a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # I
    .param p2, "clickIntent"    # Landroid/content/Intent;
    .param p3, "deleteIntent"    # Landroid/content/Intent;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 23
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    const v3, 0x7f0c000c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 27
    :cond_0
    if-nez p2, :cond_1

    .line 29
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "clickIntent":Landroid/content/Intent;
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 32
    .restart local p2    # "clickIntent":Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/app/Notification;

    const-wide/16 v4, 0x0

    invoke-direct {v2, p1, p5, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 34
    .local v2, "notice":Landroid/app/Notification;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, p2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 36
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-static {v2, p0, p4, p5, v0}, Lazq;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 37
    if-eqz p3, :cond_2

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, p3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 40
    .local v1, "deletePendingIntent":Landroid/app/PendingIntent;
    iput-object v1, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 43
    .end local v1    # "deletePendingIntent":Landroid/app/PendingIntent;
    :cond_2
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 45
    return-object v2
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;JJ)Landroid/app/Notification;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # I
    .param p2, "clickIntent"    # Landroid/content/Intent;
    .param p3, "deleteIntent"    # Landroid/content/Intent;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "curBytes"    # J
    .param p8, "totalBytes"    # J

    .prologue
    .line 50
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f03008e

    invoke-direct {v3, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 51
    .local v3, "contentView":Landroid/widget/RemoteViews;
    const v10, 0x7f0b038e

    move-object/from16 v0, p4

    invoke-virtual {v3, v10, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 53
    const v10, 0x7f0b038e

    :try_start_0
    invoke-static {}, Loh;->a()Loh;

    move-result-object v11

    invoke-virtual {v11}, Loh;->d()I

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    const v10, 0x7f0b03ca

    invoke-virtual {v3, v10, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 59
    const/16 v6, 0x64

    .line 60
    .local v6, "max":I
    const-wide/16 v10, 0x0

    cmp-long v10, p8, v10

    if-lez v10, :cond_2

    .line 61
    const-wide/16 v10, 0x64

    mul-long v10, v10, p6

    div-long v10, v10, p8

    long-to-int v8, v10

    .line 63
    .local v8, "progress":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const v10, 0x7f0b03cb

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 68
    const v10, 0x7f0b02e9

    const/16 v11, 0x64

    const/4 v12, 0x0

    invoke-virtual {v3, v10, v11, v8, v12}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 73
    .end local v8    # "progress":I
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    const v10, 0x7f0b03cb

    invoke-static {}, Loh;->a()Loh;

    move-result-object v11

    .line 74
    invoke-virtual {v11}, Loh;->e()I

    move-result v11

    .line 73
    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 77
    new-instance v7, Landroid/app/Notification;

    const-wide/16 v10, 0x0

    move-object/from16 v0, p5

    invoke-direct {v7, p1, v0, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 79
    .local v7, "notice":Landroid/app/Notification;
    if-nez p2, :cond_0

    .line 81
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "clickIntent":Landroid/content/Intent;
    invoke-direct/range {p2 .. p2}, Landroid/content/Intent;-><init>()V

    .line 84
    .restart local p2    # "clickIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v10, v11, v0, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 85
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    iput-object v2, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 86
    iput-object v3, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 88
    if-eqz p3, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v10, v11, v0, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 91
    .local v4, "deletePendingIntent":Landroid/app/PendingIntent;
    iput-object v4, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 94
    .end local v4    # "deletePendingIntent":Landroid/app/PendingIntent;
    :cond_1
    iget v10, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v7, Landroid/app/Notification;->flags:I

    .line 97
    return-object v7

    .line 54
    .end local v2    # "contentIntent":Landroid/app/PendingIntent;
    .end local v6    # "max":I
    .end local v7    # "notice":Landroid/app/Notification;
    :catch_0
    move-exception v5

    .line 55
    .local v5, "e":Ljava/lang/Exception;
    const v10, 0x7f0b038e

    const v11, 0x7f02043e

    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_0

    .line 70
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "max":I
    :cond_2
    const v10, 0x7f0b02e9

    const/16 v11, 0x64

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto :goto_1
.end method
