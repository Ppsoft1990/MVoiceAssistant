.class public abstract Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
.super Ljava/lang/Object;
.source "AbsMmsAdapter.java"

# interfaces
.implements Lcom/iflytek/common/adaptation/IMmsAdaptation;


# static fields
.field private static final COLUMN_REPLY_PATH_PRESENT:I = 0x0

.field private static final COLUMN_SERVICE_CENTER:I = 0x1

.field private static final EXTRA_NORMAL:Ljava/lang/String; = "sms_body"

.field private static final EXTRA_OMS:Ljava/lang/String; = "key_message_body"

.field public static final EXTRA_SMS_NUMBERS:Ljava/lang/String; = "com.iflytek.cmcc.EXTRA_SMS_NUMBERS"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.iflytek.cmcc"

.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_SEND_FAILED_NOTIFICATION:Ljava/lang/String; = "com.iflytek.cmcc.SMS_SEND_FAILED_NOTIFICATION"

.field public static final SMS_SEND_MSG_ID:Ljava/lang/String; = "com.iflytek.cmcc.SMS_SEND_MSG_ID"

.field public static final SMS_SEND_THREAD_ID:Ljava/lang/String; = ".SMS_SEND_THREAD_ID"

.field private static final TAG:Ljava/lang/String; = "AbsMmsAdapter"

.field private static final URI_NORMAL:Ljava/lang/String; = "sms:"


# instance fields
.field private final INBOX_URI:Landroid/net/Uri;

.field private final OUTBOX_URI:Landroid/net/Uri;

.field protected mContext:Landroid/content/Context;

.field private mOutBoxValues:Landroid/content/ContentValues;

.field protected simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "reply_path_present"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, "content://sms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->OUTBOX_URI:Landroid/net/Uri;

    .line 44
    const-string/jumbo v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->INBOX_URI:Landroid/net/Uri;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .line 72
    return-void
.end method

.method private extractBodyFromMessages([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 5
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 361
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 362
    :cond_0
    const-string/jumbo v2, ""

    .line 370
    :goto_0
    return-object v2

    .line 365
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 366
    .local v0, "body":Ljava/lang/StringBuffer;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    .line 367
    .local v1, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 370
    .end local v1    # "sms":Landroid/telephony/SmsMessage;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public abstract detectSendDataMessage()Z
.end method

.method public abstract detectSendTextMessage()Z
.end method

.method public final filterMmsReceive(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsParserException;,
            Lcom/iflytek/common/adaptation/exception/SmsSaveToInboxException;
        }
    .end annotation

    .prologue
    .line 416
    const-string/jumbo v9, "AbsMmsAdapter"

    const-string/jumbo v10, "filterMmsReceive"

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 419
    .local v6, "startTime":J
    invoke-virtual {p0, p1}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 420
    .local v4, "msgs":[Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    array-length v9, v4

    if-nez v9, :cond_1

    .line 421
    :cond_0
    const-string/jumbo v9, "AbsMmsAdapter"

    const-string/jumbo v10, "filterMmsReceive | getMessagesFromIntent---> return null"

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v8, 0x0

    .line 432
    :goto_0
    return-object v8

    .line 425
    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getSimId(Landroid/content/Intent;[Landroid/telephony/SmsMessage;)I

    move-result v5

    .line 426
    .local v5, "simId":I
    invoke-virtual {p0, v4, v5}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->saveMessagesToInBox([Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v8

    .line 428
    .local v8, "uri":Landroid/net/Uri;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 429
    .local v2, "endTime":J
    sub-long v0, v2, v6

    .line 430
    .local v0, "cost":J
    const-string/jumbo v9, "AbsMmsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "filterMmsReceive | cost = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", uri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIntentMmsMore()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "content://mms-sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 210
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 213
    return-object v0
.end method

.method public getLatestMessageId(J)J
    .locals 13
    .param p1, "threadId"    # J

    .prologue
    const/4 v2, 0x0

    .line 388
    const-wide/16 v8, 0x0

    .line 389
    .local v8, "messageId":J
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lib$b;->a:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "date desc"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 393
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 394
    :try_start_0
    const-string/jumbo v0, "AbsMmsAdapter"

    const-string/jumbo v1, "cursor is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 407
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_1
    const/4 v6, 0x0

    move-wide v10, v8

    .end local v8    # "messageId":J
    .local v10, "messageId":J
    :goto_1
    return-wide v10

    .line 395
    .end local v10    # "messageId":J
    .restart local v8    # "messageId":J
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 396
    const-string/jumbo v0, "AbsMmsAdapter"

    const-string/jumbo v1, "cursor is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v7

    .line 403
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    if-eqz v6, :cond_3

    .line 407
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_3
    const/4 v6, 0x0

    move-wide v10, v8

    .end local v8    # "messageId":J
    .restart local v10    # "messageId":J
    goto :goto_1

    .line 397
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "messageId":J
    .restart local v8    # "messageId":J
    :cond_4
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v8

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 407
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_5
    const/4 v6, 0x0

    throw v0
.end method

.method public abstract getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsParserException;
        }
    .end annotation
.end method

.method public getOrCreateThreadId(JLjava/lang/String;)J
    .locals 7
    .param p1, "threadId"    # J
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 374
    const-wide/16 v2, 0x0

    .line 376
    .local v2, "thread":J
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-lez v1, :cond_0

    move-wide v2, p1

    .line 384
    :goto_0
    return-wide v2

    .line 376
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/util/HashSet;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    .line 380
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 377
    invoke-static {v1, v4}, Lib$c;->a(Landroid/content/Context;Ljava/util/Set;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getOutgoingServiceCenter(J)Ljava/lang/String;
    .locals 11
    .param p1, "threadId"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 110
    const/4 v6, 0x0

    .line 112
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lib$b;->a:Landroid/net/Uri;

    sget-object v2, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 123
    :cond_0
    if-eqz v6, :cond_1

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v8

    :cond_2
    :goto_0
    return-object v0

    .line 118
    :cond_3
    const/4 v0, 0x0

    .line 119
    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v7, v0, :cond_4

    .line 120
    .local v7, "replyPathPresent":Z
    :goto_1
    if-eqz v7, :cond_5

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 123
    :goto_2
    if-eqz v6, :cond_2

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "replyPathPresent":Z
    :cond_4
    move v7, v9

    .line 119
    goto :goto_1

    .restart local v7    # "replyPathPresent":Z
    :cond_5
    move-object v0, v8

    .line 120
    goto :goto_2

    .line 123
    .end local v7    # "replyPathPresent":Z
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method protected getSendPendingIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 500
    const/4 v1, 0x0

    .line 501
    .local v1, "sentIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/iflytek/base/mms/SmsSendReceiver;

    invoke-direct {v0, p1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    .local v0, "itSend":Landroid/content/Intent;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, p2}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 503
    iget-object v2, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 504
    return-object v1
.end method

.method public getSimId(Landroid/content/Intent;[Landroid/telephony/SmsMessage;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method protected getUriString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string/jumbo v0, "sms:"

    return-object v0
.end method

.method protected intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "threadId"    # Ljava/lang/Long;
    .param p3, "messageId"    # Ljava/lang/Long;
    .param p4, "phone"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string/jumbo v0, ".SMS_SEND_THREAD_ID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v0, "com.iflytek.cmcc.SMS_SEND_MSG_ID"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 94
    const-string/jumbo v0, "com.iflytek.cmcc.EXTRA_SMS_NUMBERS"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method public makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;
    .locals 10
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p2, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 332
    const-string/jumbo v7, "AbsMmsAdapter"

    const-string/jumbo v8, "makeContentValues"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v7, 0x0

    :try_start_0
    aget-object v2, p1, v7

    .line 337
    .local v2, "sms":Landroid/telephony/SmsMessage;
    const-string/jumbo v7, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 338
    const-string/jumbo v7, "read"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    const-string/jumbo v7, "address"

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string/jumbo v7, "protocol"

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 343
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 344
    const-string/jumbo v7, "subject"

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    const-string/jumbo v7, "reply_path_present"

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string/jumbo v6, "service_center"

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->extractBodyFromMessages([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "body":Ljava/lang/String;
    const-wide/16 v6, 0x0

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getOrCreateThreadId(JLjava/lang/String;)J

    move-result-wide v4

    .line 351
    .local v4, "threadId":J
    const-string/jumbo v6, "body"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string/jumbo v6, "thread_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    return-object v3

    .line 353
    .end local v0    # "body":Ljava/lang/String;
    .end local v2    # "sms":Landroid/telephony/SmsMessage;
    .end local v4    # "threadId":J
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/iflytek/common/adaptation/exception/SmsSaveException;

    invoke-direct {v6, v1}, Lcom/iflytek/common/adaptation/exception/SmsSaveException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public makeOutboxValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/content/ContentValues;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "deliveryReport"    # Z
    .param p6, "threadId"    # J
    .param p8, "simId"    # I

    .prologue
    .line 237
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    if-eqz p4, :cond_0

    .line 241
    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    :cond_0
    const-string/jumbo v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v1, "body"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    if-eqz p5, :cond_1

    .line 248
    const-string/jumbo v1, "status"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 250
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v1, p6, v2

    if-eqz v1, :cond_2

    .line 251
    const-string/jumbo v1, "thread_id"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 254
    :cond_2
    return-object v0
.end method

.method public saveMessagesToInBox([Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 5
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p2, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveToInboxException;
        }
    .end annotation

    .prologue
    .line 304
    const-string/jumbo v3, "AbsMmsAdapter"

    const-string/jumbo v4, "saveMessagesToInBox"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 306
    :cond_0
    const/4 v1, 0x0

    .line 319
    :goto_0
    return-object v1

    .line 309
    :cond_1
    const/4 v1, 0x0

    .line 311
    .local v1, "insertedUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 313
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->INBOX_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 315
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/iflytek/common/adaptation/exception/SmsSaveToInboxException;

    invoke-direct {v3, v0}, Lcom/iflytek/common/adaptation/exception/SmsSaveToInboxException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public saveMessagesToOutbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIZ)Landroid/net/Uri;
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "deliveryReport"    # Z
    .param p6, "threadId"    # J
    .param p8, "simId"    # I
    .param p9, "addToOutBox"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveToOutboxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "model":Ljava/lang/String;
    const-string/jumbo v3, "MI 5"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "M636"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    :cond_0
    const/4 p9, 0x0

    .line 276
    const-string/jumbo v3, "AbsMmsAdapter"

    const-string/jumbo v4, "set addToOutBox false"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1
    if-nez p9, :cond_2

    .line 290
    :goto_0
    return-object v2

    .line 282
    :cond_2
    const/4 v2, 0x0

    .line 284
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->OUTBOX_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->mOutBoxValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 285
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->mOutBoxValues:Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/iflytek/common/adaptation/exception/SmsSaveToOutboxException;

    invoke-direct {v3, v0}, Lcom/iflytek/common/adaptation/exception/SmsSaveToOutboxException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method protected abstract sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation
.end method

.method public sendDataMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "contents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 461
    invoke-static {}, Lhl;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 463
    const-string/jumbo v0, "AbsMmsAdapter"

    const-string/jumbo v1, "sendDataMessage | moto"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :goto_0
    return-void

    .line 467
    :cond_0
    const-string/jumbo v0, "AbsMmsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDataMessage | DATAMSG_FUNCTION_AVAIABLE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.DATAMSG_FUNCTION_AVAIABLE"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.DATAMSG_FUNCTION_AVAIABLE"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.DATAMSG_FUNCTION_AVAIABLE"

    invoke-virtual {v0, v1, v4}, Lil;->a(Ljava/lang/String;Z)V

    .line 470
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 471
    const-string/jumbo v0, "AbsMmsAdapter"

    const-string/jumbo v1, "sendDataMessage | sendBinaryMessage"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    :cond_1
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->sendSms(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 475
    const-string/jumbo v0, "AbsMmsAdapter"

    const-string/jumbo v1, "sendDataMessage | sendSms"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v7

    .line 477
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "AbsMmsAdapter"

    const-string/jumbo v1, "sendDataMessage"

    invoke-static {v0, v1, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final sendSms(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 24
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "threadId"    # J
    .param p6, "addToOutBox"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveToOutboxException;,
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 164
    const-string/jumbo v4, "AbsMmsAdapter"

    const-string/jumbo v5, "sendSms"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-nez p1, :cond_1

    const/4 v12, 0x0

    .line 166
    .local v12, "simId":I
    :goto_0
    const/16 v17, 0x0

    .line 167
    .local v17, "uri":Landroid/net/Uri;
    const-wide/16 v20, 0x0

    .line 168
    .local v20, "messageId":J
    if-eqz p6, :cond_0

    .line 169
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getOrCreateThreadId(JLjava/lang/String;)J

    move-result-wide p4

    .line 170
    const/4 v7, 0x0

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v10, p4

    move/from16 v13, p6

    .line 170
    invoke-virtual/range {v4 .. v13}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->saveMessagesToOutbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIZ)Landroid/net/Uri;

    move-result-object v17

    .line 172
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getLatestMessageId(J)J

    move-result-wide v20

    .line 174
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v15

    .local v15, "scCenter":Ljava/lang/String;
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v16, p3

    move-wide/from16 v18, p4

    move/from16 v22, v12

    .line 175
    invoke-virtual/range {v13 .. v22}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V

    .line 177
    return-void

    .line 165
    .end local v12    # "simId":I
    .end local v15    # "scCenter":Ljava/lang/String;
    .end local v17    # "uri":Landroid/net/Uri;
    .end local v20    # "messageId":J
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v12

    goto :goto_0
.end method

.method public sendSmsIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 182
    if-eqz p1, :cond_2

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getUriString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "uriString":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 185
    const-string/jumbo p2, ""

    .line 187
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 188
    .local v2, "smsUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SENDTO"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 190
    const-string/jumbo v4, "sms_body"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string/jumbo v4, "key_message_body"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "smsUri":Landroid/net/Uri;
    .end local v3    # "uriString":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation
.end method

.method public setOutBoxValues(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->mOutBoxValues:Landroid/content/ContentValues;

    .line 488
    return-void
.end method
