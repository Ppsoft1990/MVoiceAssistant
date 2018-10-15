.class public Laoz;
.super Ljava/lang/Object;
.source "IflyMessageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoz$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Laoz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoz;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IJLjava/util/ArrayList;Z)Laoz$a;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "iconResourceId"    # I
    .param p5, "timeMillis"    # J
    .param p8, "isMail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "IJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;Z)",
            "Laoz$a;"
        }
    .end annotation

    .prologue
    .line 83
    .local p7, "newMsgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    const/4 v2, 0x0

    .line 84
    .local v2, "clickIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "clickIntent":Landroid/content/Intent;
    const-class v1, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-direct {v2, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .restart local v2    # "clickIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.SMS_NOTIFICATION"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const/high16 v1, 0x34000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "senderInfo":Ljava/lang/String;
    const/4 v8, 0x0

    .line 91
    .local v8, "senderInfoName":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-static {p3, p0, v1, p2}, Laoz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 92
    .local v5, "ticker":Ljava/lang/CharSequence;
    if-eqz p8, :cond_0

    .line 94
    const-string/jumbo v8, "139\u90ae\u7bb1\u65b0\u90ae\u4ef6"

    .line 102
    :goto_0
    new-instance v1, Laoz$a;

    move-object v3, p2

    move v4, p4

    move-wide/from16 v6, p5

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Laoz$a;-><init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;Ljava/util/ArrayList;)V

    return-object v1

    .line 96
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p3, p0, v1, v3}, Laoz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x20

    .line 193
    move-object v1, p1

    .line 195
    .local v1, "displayAddress":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    const-string/jumbo v4, ""

    .line 196
    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 200
    .local v2, "offset":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 201
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 202
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 207
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 208
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 212
    .local v3, "spanText":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 215
    return-object v3

    .line 196
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "offset":I
    .end local v3    # "spanText":Landroid/text/SpannableString;
    :cond_2
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationId"    # I

    .prologue
    .line 219
    if-eqz p0, :cond_0

    .line 220
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 222
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 224
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;IJJ)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "totalFailedCount"    # I
    .param p2, "threadId"    # J
    .param p4, "msgId"    # J

    .prologue
    .line 228
    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Laoz;->a(Landroid/content/Context;ZIJJ)V

    .line 229
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;Ljava/util/ArrayList;IZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/CharSequence;
    .param p6, "x6"    # J
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/util/ArrayList;
    .param p10, "x9"    # I
    .param p11, "x10"    # Z
    .param p12, "x11"    # Z

    .prologue
    .line 29
    invoke-static/range {p0 .. p12}, Laoz;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;Ljava/util/ArrayList;IZZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/base/mms/entities/SmsItem;Ljava/util/ArrayList;IZZZ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;
    .param p3, "uniqueThreads"    # I
    .param p4, "isNew"    # Z
    .param p5, "isShowActivity"    # Z
    .param p6, "isMail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;IZZZ)V"
        }
    .end annotation

    .prologue
    .line 47
    .line 48
    .local p2, "newMsgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getBody()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f020411

    .line 49
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getDate()J

    move-result-wide v6

    move-object v4, p0

    move-object v8, p2

    move/from16 v9, p6

    .line 47
    invoke-static/range {v1 .. v9}, Laoz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IJLjava/util/ArrayList;Z)Laoz$a;

    move-result-object v0

    .local v0, "info":Laoz$a;
    move-object v1, p0

    move v2, p4

    move-object v3, p2

    move v4, p3

    move v5, p5

    move/from16 v6, p6

    .line 50
    invoke-virtual/range {v0 .. v6}, Laoz$a;->a(Landroid/content/Context;ZLjava/util/ArrayList;IZZ)V

    .line 51
    return-void
.end method

.method private static a(Landroid/content/Context;ZIJJ)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noisy"    # Z
    .param p2, "totalFailedCount"    # I
    .param p3, "threadId"    # J
    .param p5, "msgId"    # J

    .prologue
    .line 233
    const-string/jumbo v13, "notification"

    .line 234
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 236
    .local v7, "nm":Landroid/app/NotificationManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v5, "failedIntent":Landroid/content/Intent;
    const-string/jumbo v13, "com.iflytek.cmcc.SMS_SEND_FAILED_NOTIFICATION"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string/jumbo v13, "com.iflytek.cmcc.SMS_SEND_FAILED_COUNT"

    move/from16 v0, p2

    invoke-virtual {v5, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string/jumbo v13, "com.iflytek.cmcc.SMS_SEND_FAILED_THREAD_ID"

    move-wide/from16 v0, p3

    invoke-virtual {v5, v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 240
    const-string/jumbo v13, "com.iflytek.cmcc.SMS_SEND_FAILED_MSG_ID"

    move-wide/from16 v0, p5

    invoke-virtual {v5, v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 244
    const/4 v13, 0x1

    move/from16 v0, p2

    if-le v0, v13, :cond_3

    .line 245
    const v13, 0x7f0c0230

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 246
    .local v12, "title":Ljava/lang/String;
    const v13, 0x7f0c022e

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 247
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 246
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "description":Ljava/lang/String;
    :goto_0
    const/4 v13, 0x0

    const/high16 v14, 0x8000000

    move-object/from16 v0, p0

    invoke-static {v0, v13, v5, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 256
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 257
    .local v8, "notification":Landroid/app/Notification;
    const v13, 0x7f020410

    iput v13, v8, Landroid/app/Notification;->icon:I

    .line 258
    iget v13, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v8, Landroid/app/Notification;->flags:I

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v8, Landroid/app/Notification;->when:J

    .line 260
    iput-object v12, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 262
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "audio"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 263
    .local v2, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v9, 0x1

    .line 264
    .local v9, "nowSilent":Z
    :goto_1
    if-nez v9, :cond_2

    .line 266
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_SMS_VIBRATE"

    invoke-virtual {v13, v14}, Lil;->c(Ljava/lang/String;)Z

    move-result v6

    .line 268
    .local v6, "isViabrate":Z
    if-eqz v6, :cond_0

    .line 269
    const/4 v13, 0x2

    iput v13, v8, Landroid/app/Notification;->defaults:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v6    # "isViabrate":Z
    :cond_0
    :goto_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_SMS_RING"

    invoke-virtual {v13, v14}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 275
    .local v11, "ringPath":Ljava/lang/String;
    if-eqz v11, :cond_1

    const-string/jumbo v13, "silent"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 276
    const/4 v11, 0x0

    .line 278
    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x0

    :goto_3
    iput-object v13, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 282
    .end local v11    # "ringPath":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v8, v0, v12, v3, v10}, Lazq;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 283
    sget v13, Lof;->q:I

    invoke-virtual {v7, v13, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 284
    return-void

    .line 249
    .end local v2    # "audioManager":Landroid/media/AudioManager;
    .end local v3    # "description":Ljava/lang/String;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "nowSilent":Z
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "title":Ljava/lang/String;
    :cond_3
    const v13, 0x7f0c0230

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 250
    .restart local v12    # "title":Ljava/lang/String;
    const v13, 0x7f0c022f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "description":Ljava/lang/String;
    goto/16 :goto_0

    .line 263
    .restart local v2    # "audioManager":Landroid/media/AudioManager;
    .restart local v8    # "notification":Landroid/app/Notification;
    .restart local v10    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 271
    .restart local v9    # "nowSilent":Z
    :catch_0
    move-exception v4

    .line 272
    .local v4, "e":Ljava/lang/Exception;
    sget-object v13, Laoz;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 278
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v11    # "ringPath":Ljava/lang/String;
    :cond_5
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    goto :goto_3
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;Ljava/util/ArrayList;IZZ)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickIntent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "iconRes"    # I
    .param p4, "isNew"    # Z
    .param p5, "ticker"    # Ljava/lang/CharSequence;
    .param p6, "timeMillis"    # J
    .param p8, "title"    # Ljava/lang/String;
    .param p10, "uniqueThreadCount"    # I
    .param p11, "isShowActivity"    # Z
    .param p12, "isMail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;IZZ)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p9, "newMsgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    const/4 v10, 0x0

    .line 109
    .local v10, "notification":Landroid/app/Notification;
    if-eqz p12, :cond_2

    .line 110
    new-instance v10, Landroid/app/Notification;

    .end local v10    # "notification":Landroid/app/Notification;
    const v15, 0x7f0203c0

    const-string/jumbo v16, "\u60a8\u6709\u4e00\u5c01139\u65b0\u90ae\u4ef6"

    move-object/from16 v0, v16

    move-wide/from16 v1, p6

    invoke-direct {v10, v15, v0, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 115
    .restart local v10    # "notification":Landroid/app/Notification;
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v12, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v5, "bundle":Landroid/os/Bundle;
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 119
    const v15, 0x7f0c0231

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 120
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 122
    :cond_0
    const/4 v15, 0x1

    move/from16 v0, p10

    if-le v0, v15, :cond_1

    .line 123
    const v15, 0x7f0c0232

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p8

    .line 126
    :cond_1
    if-eqz p11, :cond_3

    .line 127
    new-instance p1, Landroid/content/Intent;

    .end local p1    # "clickIntent":Landroid/content/Intent;
    invoke-direct/range {p1 .. p1}, Landroid/content/Intent;-><init>()V

    .line 169
    .restart local p1    # "clickIntent":Landroid/content/Intent;
    :goto_1
    const/4 v15, 0x0

    const/high16 v16, 0x8000000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-static {v0, v15, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 174
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p2

    invoke-static {v10, v0, v1, v2, v13}, Lazq;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 175
    const v15, -0xff0100

    iput v15, v10, Landroid/app/Notification;->ledARGB:I

    .line 176
    const/16 v15, 0x12c

    iput v15, v10, Landroid/app/Notification;->ledOnMS:I

    .line 177
    const/16 v15, 0xbb8

    iput v15, v10, Landroid/app/Notification;->ledOffMS:I

    .line 178
    iget v15, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v15, v15, 0x1

    iput v15, v10, Landroid/app/Notification;->flags:I

    .line 179
    iget v15, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v15, v15, 0x10

    iput v15, v10, Landroid/app/Notification;->flags:I

    .line 181
    const-string/jumbo v15, "notification"

    .line 182
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 184
    .local v9, "nm":Landroid/app/NotificationManager;
    if-eqz p12, :cond_c

    .line 185
    sget v15, Lof;->s:I

    invoke-virtual {v9, v15, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 189
    :goto_2
    return-void

    .line 112
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v9    # "nm":Landroid/app/NotificationManager;
    .end local v12    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    .end local v13    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_2
    new-instance v10, Landroid/app/Notification;

    .end local v10    # "notification":Landroid/app/Notification;
    move/from16 v0, p3

    move-object/from16 v1, p5

    move-wide/from16 v2, p6

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v10    # "notification":Landroid/app/Notification;
    goto/16 :goto_0

    .line 129
    .restart local v5    # "bundle":Landroid/os/Bundle;
    .restart local v12    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    :cond_3
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 130
    const/4 v15, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/base/mms/entities/SmsItem;

    .line 131
    .local v8, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :cond_4
    :goto_3
    const-string/jumbo v15, "com.iflytek.cmcc.EXTRA_SMS_GALLERY"

    invoke-virtual {v5, v15, v12}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 140
    const-string/jumbo v15, "com.iflytek.cmcc.EXTRA_SMS_NEW_FLAG"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    if-eqz p4, :cond_8

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-string/jumbo v16, "audio"

    .line 144
    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 145
    .local v4, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v15

    if-nez v15, :cond_a

    const/4 v11, 0x1

    .line 146
    .local v11, "nowSilent":Z
    :goto_4
    if-nez v11, :cond_8

    .line 148
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v15

    const-string/jumbo v16, "com.iflytek.cmccIFLY_SMS_VIBRATE"

    invoke-virtual/range {v15 .. v16}, Lil;->c(Ljava/lang/String;)Z

    move-result v7

    .line 150
    .local v7, "isViabrate":Z
    if-eqz v7, :cond_5

    .line 151
    const/4 v15, 0x2

    iput v15, v10, Landroid/app/Notification;->defaults:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v7    # "isViabrate":Z
    :cond_5
    :goto_5
    invoke-static {}, Lil;->a()Lil;

    move-result-object v15

    const-string/jumbo v16, "com.iflytek.cmccIFLY_SMS_RING"

    invoke-virtual/range {v15 .. v16}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 157
    .local v14, "ringPath":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 158
    const/4 v14, 0x0

    .line 160
    :cond_6
    if-eqz v14, :cond_7

    const-string/jumbo v15, "silent"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 161
    const/4 v14, 0x0

    .line 163
    :cond_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v15, 0x0

    :goto_6
    iput-object v15, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 166
    .end local v4    # "audioManager":Landroid/media/AudioManager;
    .end local v11    # "nowSilent":Z
    .end local v14    # "ringPath":Ljava/lang/String;
    :cond_8
    iget v15, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v15, v15, 0x10

    iput v15, v10, Landroid/app/Notification;->flags:I

    goto/16 :goto_1

    .line 132
    :cond_9
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    .line 137
    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 145
    .restart local v4    # "audioManager":Landroid/media/AudioManager;
    :cond_a
    const/4 v11, 0x0

    goto :goto_4

    .line 153
    .restart local v11    # "nowSilent":Z
    :catch_0
    move-exception v6

    .line 154
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 163
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v14    # "ringPath":Ljava/lang/String;
    :cond_b
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    goto :goto_6

    .line 187
    .end local v4    # "audioManager":Landroid/media/AudioManager;
    .end local v11    # "nowSilent":Z
    .end local v14    # "ringPath":Ljava/lang/String;
    .restart local v9    # "nm":Landroid/app/NotificationManager;
    .restart local v13    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_c
    sget v15, Lof;->p:I

    invoke-virtual {v9, v15, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_2
.end method
