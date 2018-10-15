.class public Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;
.super Ljava/lang/Object;
.source "SmsDBUtil.java"


# static fields
.field private static final NEW_INCOMING_SMS_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND read = 0)"

.field private static final SMS_ALL:Landroid/net/Uri;

.field private static final SORT_KEY:Ljava/lang/String; = "date desc"

.field public static final TAG:Ljava/lang/String; = "SmsDBUtil"

.field private static final selection:Ljava/lang/String; = "type = 1"

.field private static smsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lib$b;->a:Landroid/net/Uri;

    sput-object v0, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->SMS_ALL:Landroid/net/Uri;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->smsLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 115
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const/4 p0, 0x0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SmsDBUtil"

    const-string/jumbo v2, "close | close cursor error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 397
    const/4 v10, 0x0

    .line 398
    .local v10, "ret":I
    if-nez p0, :cond_0

    .line 399
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "delete | context is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v0, -0x1

    .line 424
    :goto_0
    return v0

    .line 403
    :cond_0
    const/4 v6, 0x0

    .line 404
    .local v6, "cursor":Landroid/database/Cursor;
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    .line 405
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "address = ?"

    .line 406
    .local v3, "where":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 409
    .local v4, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->SMS_ALL:Landroid/net/Uri;

    const-string/jumbo v5, "date desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 411
    const-wide/16 v8, -0x1

    .line 412
    .local v8, "msgId":J
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 414
    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .line 415
    .local v11, "selectionArgs2":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->SMS_ALL:Landroid/net/Uri;

    const-string/jumbo v5, "_id = ?"

    invoke-virtual {v0, v1, v5, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 421
    .end local v11    # "selectionArgs2":[Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    .end local v8    # "msgId":J
    :goto_1
    move v0, v10

    .line 424
    goto :goto_0

    .line 418
    :catch_0
    move-exception v7

    .line 419
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "delete | error"

    invoke-static {v0, v1, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static deleteByAddress(Landroid/content/Context;Ljava/lang/String;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v13, 0x0

    .line 435
    const/4 v2, 0x0

    .line 436
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 437
    .local v6, "cur":Landroid/database/Cursor;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 441
    .local v11, "threadIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-array v2, v1, [Ljava/lang/String;

    .end local v2    # "projection":[Ljava/lang/String;
    const-string/jumbo v0, "thread_id"

    aput-object v0, v2, v13

    .line 442
    .restart local v2    # "projection":[Ljava/lang/String;
    const-string/jumbo v3, "address = ?"

    .line 443
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v13

    .line 446
    .local v4, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lib$b;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 449
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 466
    :cond_0
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 469
    :goto_0
    return v13

    .line 453
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 455
    .local v7, "cur_threads_id":Ljava/lang/String;
    invoke-virtual {v11, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 463
    .end local v7    # "cur_threads_id":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 464
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "deleteByAddress | error"

    invoke-static {v0, v1, v8}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 459
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 460
    .local v9, "id":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://sms/conversations/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 461
    .local v10, "mUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v5, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 466
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "mUri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_3
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private static filterSmsHistroyList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lhw;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 620
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 655
    :cond_1
    return-object v0

    .line 622
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 623
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v0, "dataResultList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhw;

    .line 626
    .local v1, "item":Lhw;
    if-eqz v1, :cond_3

    .line 630
    invoke-virtual {v1}, Lhw;->d()Ljava/lang/String;

    move-result-object v6

    .line 631
    .local v6, "userPhone":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 635
    invoke-static {v6}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 637
    invoke-static {v6}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, "prefixNumber":Ljava/lang/String;
    const/4 v3, 0x0

    .line 639
    .local v3, "noPrefixNumber":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 640
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 645
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 648
    invoke-interface {v2, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    new-instance v5, Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-direct {v5, v1}, Lcom/iflytek/base/mms/entities/SmsItem;-><init>(Lhw;)V

    .line 652
    .local v5, "smsItem":Lcom/iflytek/base/mms/entities/SmsItem;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 642
    .end local v5    # "smsItem":Lcom/iflytek/base/mms/entities/SmsItem;
    :cond_4
    move-object v3, v6

    goto :goto_1
.end method

.method public static findLatestSms(Landroid/content/Context;)Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const-string/jumbo v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 132
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 133
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 136
    .local v8, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "date desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v9, Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-direct {v9, p0, v6}, Lcom/iflytek/base/mms/entities/SmsItem;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .local v9, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    move-object v8, v9

    .line 144
    .end local v9    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .restart local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :cond_0
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 147
    :goto_0
    return-object v8

    .line 141
    :catch_0
    move-exception v7

    .line 142
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v2, ""

    invoke-static {v0, v2, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static findSmsGroupByAddress(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v2, "findSmsGroupByAddress"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string/jumbo v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 84
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v9, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 87
    :try_start_0
    const-string/jumbo v3, "address IS NOT NULL) GROUP BY (address"

    .line 88
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 91
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 92
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 102
    .end local v9    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 105
    .end local v3    # "selection":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 95
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v9    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    new-instance v8, Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-direct {v8, p0, v6}, Lcom/iflytek/base/mms/entities/SmsItem;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 97
    .local v8, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 99
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :catch_0
    move-exception v7

    .line 100
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v2, ""

    invoke-static {v0, v2, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 104
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v2, "findSmsGroupByAddress"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .restart local v3    # "selection":Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_2

    .end local v3    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getInBoxSmsCount(Landroid/content/Context;JJ)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 535
    const/4 v7, 0x0

    .line 536
    .local v7, "inBoxCount":I
    cmp-long v0, v4, p3

    if-nez v0, :cond_0

    .line 537
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "getInBoxSmsCount | endTime is 0 | return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 573
    .end local v7    # "inBoxCount":I
    .local v8, "inBoxCount":I
    :goto_0
    return v8

    .line 540
    .end local v8    # "inBoxCount":I
    .restart local v7    # "inBoxCount":I
    :cond_0
    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    .line 541
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "getInBoxSmsCount | starttime > endtime | return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 542
    .end local v7    # "inBoxCount":I
    .restart local v8    # "inBoxCount":I
    goto :goto_0

    .line 545
    .end local v8    # "inBoxCount":I
    .restart local v7    # "inBoxCount":I
    :cond_1
    cmp-long v0, v4, p1

    if-nez v0, :cond_2

    .line 546
    const-wide/32 v0, 0x5265c00

    sub-long p1, p3, v0

    .line 548
    :cond_2
    const/4 v9, 0x0

    .line 549
    .local v9, "inboxCursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "address"

    aput-object v1, v2, v0

    .line 550
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type=1 and date >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "where":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lib$b;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 556
    if-nez v9, :cond_3

    .line 557
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "inboxCursor ----------- is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :goto_1
    invoke-static {v9}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    :goto_2
    move v8, v7

    .line 573
    .end local v7    # "inBoxCount":I
    .restart local v8    # "inBoxCount":I
    goto :goto_0

    .line 558
    .end local v8    # "inBoxCount":I
    .restart local v7    # "inBoxCount":I
    :cond_3
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 559
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "inboxCursor ----------- count is 0"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 567
    :catch_0
    move-exception v6

    .line 568
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    invoke-static {v9}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_2

    .line 561
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 562
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 564
    :cond_5
    const-string/jumbo v0, "SmsDBUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inboxCursor ----------- cursor count = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 570
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getIncomingMessageItem(Landroid/content/Context;Landroid/net/Uri;JJJZ)Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "lastMsgId"    # J
    .param p4, "lastTime"    # J
    .param p6, "lastSendTime"    # J
    .param p8, "bSetRead"    # Z

    .prologue
    .line 344
    if-nez p0, :cond_0

    .line 345
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "setAllSmsReadState | context is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v8, 0x0

    .line 384
    :goto_0
    return-object v8

    .line 349
    :cond_0
    const/4 v6, 0x0

    .line 350
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v10, 0x0

    .line 351
    .local v10, "msgId":J
    const/4 v8, 0x0

    .line 353
    .local v8, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    sget-object v12, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->smsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 355
    :try_start_0
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "getIncomingMessageItem ---1---"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    .line 357
    invoke-static/range {p2 .. p7}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->getIncomingWhere(JJJ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "date desc"

    move-object v1, p1

    .line 356
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 358
    const-string/jumbo v0, "SmsDBUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIncomingMessageItem ---1---unread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 361
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "getIncomingMessageItem cursor count is 0"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 362
    const/4 v0, 0x0

    .line 384
    :try_start_1
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v0

    goto :goto_0

    .line 365
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 371
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    new-instance v9, Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-direct {v9, p0, v6}, Lcom/iflytek/base/mms/entities/SmsItem;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 373
    .end local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .local v9, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :try_start_3
    invoke-static {v9}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->printLog(Lcom/iflytek/base/mms/entities/SmsItem;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v8, v9

    .line 376
    .end local v9    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .restart local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :cond_3
    if-eqz p8, :cond_4

    .line 377
    :try_start_4
    invoke-static {p0, v8, v10, v11}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->setHaveRead(Landroid/content/Context;Lcom/iflytek/base/mms/entities/SmsItem;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 384
    :cond_4
    :try_start_5
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    monitor-exit v12

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 380
    :catch_0
    move-exception v7

    .line 381
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_6
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "getIncomingMessageItem | error"

    invoke-static {v0, v1, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 382
    const/4 v0, 0x0

    .line 384
    :try_start_7
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    monitor-exit v12

    move-object v8, v0

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .restart local v9    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :catchall_2
    move-exception v0

    move-object v8, v9

    .end local v9    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .restart local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    goto :goto_2

    .line 380
    .end local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .restart local v9    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .restart local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    goto :goto_1
.end method

.method private static getIncomingWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string/jumbo v0, "(type = 1 AND read = 0)"

    return-object v0
.end method

.method private static getIncomingWhere(JJJ)Ljava/lang/String;
    .locals 4
    .param p0, "lastId"    # J
    .param p2, "lastTime"    # J
    .param p4, "lastSendTime"    # J

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    .local v0, "sqlBuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "(type = 1 AND read = 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " and (_id > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " or date > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string/jumbo v1, "SmsDBUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIncomingWhere |"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getOutBoxSmsCount(Landroid/content/Context;JJ)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 483
    const/4 v7, 0x0

    .line 484
    .local v7, "outBoxCount":I
    cmp-long v0, v4, p3

    if-nez v0, :cond_0

    .line 485
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "getOutBoxSmsCount | endTime is 0 | return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 521
    .end local v7    # "outBoxCount":I
    .local v8, "outBoxCount":I
    :goto_0
    return v8

    .line 488
    .end local v8    # "outBoxCount":I
    .restart local v7    # "outBoxCount":I
    :cond_0
    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    .line 489
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "getOutBoxSmsCount | starttime > endtime | return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 490
    .end local v7    # "outBoxCount":I
    .restart local v8    # "outBoxCount":I
    goto :goto_0

    .line 493
    .end local v8    # "outBoxCount":I
    .restart local v7    # "outBoxCount":I
    :cond_1
    cmp-long v0, v4, p1

    if-nez v0, :cond_2

    .line 494
    const-wide/32 v0, 0x5265c00

    sub-long p1, p3, v0

    .line 496
    :cond_2
    const/4 v9, 0x0

    .line 497
    .local v9, "outboxCursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "address"

    aput-object v1, v2, v0

    .line 498
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type=2 and date >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "where":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lib$b;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 505
    if-nez v9, :cond_3

    .line 506
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "outboxCursor ----------- is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :goto_1
    invoke-static {v9}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    :goto_2
    move v8, v7

    .line 521
    .end local v7    # "outBoxCount":I
    .restart local v8    # "outBoxCount":I
    goto :goto_0

    .line 507
    .end local v8    # "outBoxCount":I
    .restart local v7    # "outBoxCount":I
    :cond_3
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 508
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "outboxCursor ----------- count is 0"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 515
    :catch_0
    move-exception v6

    .line 516
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "getOutBoxSmsCount | error"

    invoke-static {v0, v1, v6}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 518
    invoke-static {v9}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_2

    .line 510
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 511
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 512
    const-string/jumbo v0, "SmsDBUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "outboxCursor ----------- cursor count = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 518
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static printLog(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 3
    .param p0, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 281
    if-nez p0, :cond_0

    .line 282
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "item == null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string/jumbo v0, "SmsDBUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "messageItem_address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " messageItem_body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    invoke-virtual {p0}, Lcom/iflytek/base/mms/entities/SmsItem;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static queryInBoxCount(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 47
    const-string/jumbo v1, "SmsDBUtil"

    const-string/jumbo v3, "queryInBoxCount"

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-nez p0, :cond_0

    .line 49
    const-string/jumbo v1, "SmsDBUtil"

    const-string/jumbo v3, "queryInBoxCount | context = null ---> count = 0"

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return v6

    .line 53
    :cond_0
    const/4 v6, 0x0

    .line 54
    .local v6, "count":I
    const/4 v7, 0x0

    .line 57
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    .local v0, "contentresolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "address"

    aput-object v3, v2, v1

    .line 59
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lib$b;->a:Landroid/net/Uri;

    const-string/jumbo v3, "type = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 62
    if-eqz v7, :cond_1

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 68
    :cond_1
    invoke-static {v7}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 71
    .end local v0    # "contentresolver":Landroid/content/ContentResolver;
    .end local v2    # "projection":[Ljava/lang/String;
    :goto_1
    const-string/jumbo v1, "SmsDBUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryInBoxCount | count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :catch_0
    move-exception v8

    .line 66
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "SmsDBUtil"

    const-string/jumbo v3, "queryInBoxCount | error"

    invoke-static {v1, v3, v8}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    invoke-static {v7}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v7}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    throw v1
.end method

.method public static querySmsDatabase(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    if-nez p0, :cond_0

    .line 583
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 614
    :goto_0
    return-object v0

    .line 586
    :cond_0
    const-string/jumbo v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 587
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 588
    .local v6, "cur":Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v7, "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, " threads._id, threads.date, threads.message_count, threads.snippet, sms.address  from threads, sms where sms.thread_id = threads._id and threads.message_count > 0 group by threads._id order by threads.date DESC -- "

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 593
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 599
    if-nez v6, :cond_1

    .line 600
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 611
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 603
    :cond_1
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    .end local v7    # "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    .local v8, "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    :goto_1
    if-eqz v6, :cond_2

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    new-instance v10, Lhw;

    invoke-direct {v10, v6}, Lhw;-><init>(Landroid/database/Cursor;)V

    .line 606
    .local v10, "item":Lhw;
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 608
    .end local v10    # "item":Lhw;
    :catch_0
    move-exception v9

    move-object v7, v8

    .line 609
    .end local v8    # "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    .restart local v7    # "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    .local v9, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v2, "querySmsDatabase | error"

    invoke-static {v0, v2, v9}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 611
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 614
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {p0, v7}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->filterSmsHistroyList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 611
    .end local v7    # "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    .restart local v8    # "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    :cond_2
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    move-object v7, v8

    .line 612
    .end local v8    # "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    .restart local v7    # "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    goto :goto_3

    .line 611
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .end local v7    # "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    .restart local v8    # "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    .restart local v7    # "dataList":Ljava/util/List;, "Ljava/util/List<Lhw;>;"
    goto :goto_4

    .line 608
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method private static queryUnreadMessage(Landroid/content/Context;Landroid/net/Uri;JJJ)Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "lastTime"    # J
    .param p4, "lastMsgId"    # J
    .param p6, "lastSendTime"    # J

    .prologue
    .line 232
    const-string/jumbo v0, "SmsDBUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryUnreadMessage() |"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 234
    :cond_0
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "queryUnreadMessage() | context is null or uri is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v8, 0x0

    .line 275
    :goto_0
    return-object v8

    .line 239
    :cond_1
    const/4 v8, 0x0

    .line 241
    .local v8, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    sget-object v12, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->smsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 242
    const/4 v6, 0x0

    .line 243
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v10, 0x0

    .line 246
    .local v10, "msgId":J
    :try_start_0
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "queryUnreadMessage ---1---"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v0, p4

    move-wide/from16 v2, p2

    move-wide/from16 v4, p6

    .line 247
    invoke-static/range {v0 .. v5}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->getIncomingWhere(JJJ)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "date desc"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 251
    const-string/jumbo v0, "SmsDBUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryUnreadMessage ---1---unread ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 256
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "queryUnreadMessage cursor count is 0"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    const/4 v0, 0x0

    .line 275
    :try_start_1
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v0

    goto :goto_0

    .line 260
    :cond_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 265
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    new-instance v9, Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-direct {v9, p0, v6}, Lcom/iflytek/base/mms/entities/SmsItem;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 267
    .end local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .local v9, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :try_start_3
    invoke-static {v9}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->printLog(Lcom/iflytek/base/mms/entities/SmsItem;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v8, v9

    .line 269
    .end local v9    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .restart local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :cond_4
    :try_start_4
    invoke-static {p0, v8, v10, v11}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->setHaveRead(Landroid/content/Context;Lcom/iflytek/base/mms/entities/SmsItem;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 275
    :try_start_5
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    monitor-exit v12

    goto/16 :goto_0

    .line 277
    .end local v3    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 271
    :catch_0
    move-exception v7

    .line 272
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_6
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "queryUnreadMessage | error"

    invoke-static {v0, v1, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 273
    const/4 v0, 0x0

    .line 275
    :try_start_7
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    monitor-exit v12

    move-object v8, v0

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v9    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :catchall_2
    move-exception v0

    move-object v8, v9

    .end local v9    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .restart local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    goto :goto_2

    .line 271
    .end local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .restart local v9    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .restart local v8    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    goto :goto_1
.end method

.method public static queryUnreadMessageItem(Landroid/content/Context;JJJZ)Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lastMsgId"    # J
    .param p3, "lastTime"    # J
    .param p5, "lastSendTime"    # J
    .param p7, "bSetRead"    # Z

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "setAllSmsReadState | context is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v10, 0x0

    .line 218
    :goto_0
    return-object v10

    .line 182
    :cond_0
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->sleepByModel()V

    .line 184
    sget-object v14, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->smsLock:Ljava/lang/Object;

    monitor-enter v14

    .line 185
    const/4 v8, 0x0

    .line 186
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v12, 0x0

    .line 187
    .local v12, "msgId":J
    const/4 v10, 0x0

    .line 190
    .local v10, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :try_start_0
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "queryUnreadMessageItem ---1---"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lib$b;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 193
    invoke-static/range {p1 .. p6}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->getIncomingWhere(JJJ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "date desc"

    .line 191
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 195
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 196
    :cond_1
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "queryUnreadMessageItem cursor count is 0"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    const/4 v0, 0x0

    .line 218
    :try_start_1
    invoke-static {v8}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v0

    goto :goto_0

    .line 199
    :cond_2
    :try_start_2
    const-string/jumbo v0, "SmsDBUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryUnreadMessageItem ---1---unread ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    const-string/jumbo v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 207
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    new-instance v11, Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-direct {v11, p0, v8}, Lcom/iflytek/base/mms/entities/SmsItem;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .end local v10    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .local v11, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    move-object v10, v11

    .line 210
    .end local v11    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    .restart local v10    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :cond_4
    if-eqz p7, :cond_5

    .line 211
    invoke-static {p0, v10, v12, v13}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->setHaveRead(Landroid/content/Context;Lcom/iflytek/base/mms/entities/SmsItem;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 218
    :cond_5
    :try_start_3
    invoke-static {v8}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    monitor-exit v14

    goto/16 :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 214
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    move-object v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    .line 215
    :try_start_4
    invoke-static/range {v1 .. v7}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->queryUnreadMessageItemInInBox(Landroid/content/Context;JJJ)Lcom/iflytek/base/mms/entities/SmsItem;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 218
    :try_start_5
    invoke-static {v8}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    monitor-exit v14

    move-object v10, v0

    goto/16 :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-static {v8}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->closeCursor(Landroid/database/Cursor;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private static queryUnreadMessageItemInInBox(Landroid/content/Context;JJJ)Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lastTime"    # J
    .param p3, "lastMsgId"    # J
    .param p5, "lastSendTime"    # J

    .prologue
    .line 225
    const-string/jumbo v0, "SmsDBUtil"

    const-string/jumbo v1, "queryUnreadMessageItemInInBox()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v1, Lib$b;->b:Landroid/net/Uri;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->queryUnreadMessage(Landroid/content/Context;Landroid/net/Uri;JJJ)Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v0

    return-object v0
.end method

.method private static setHaveRead(Landroid/content/Context;Lcom/iflytek/base/mms/entities/SmsItem;J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;
    .param p2, "msgId"    # J

    .prologue
    .line 302
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->setReadContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 303
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 305
    .local v0, "bSetRead":Z
    invoke-static {p0}, Lhq;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    invoke-static {p1}, Labd;->a(Lcom/iflytek/base/mms/entities/SmsItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    :cond_0
    const/4 v0, 0x1

    .line 308
    const-string/jumbo v3, "SmsDBUtil"

    const-string/jumbo v4, "setHaveRead | read sms is open or it\'s send contact message"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_1
    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lib$b;->a:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and read = 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 315
    .local v1, "ret":I
    const-string/jumbo v3, "SmsDBUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHaveRead | msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to read --->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v1    # "ret":I
    :goto_0
    return-void

    .line 318
    :cond_2
    const-string/jumbo v3, "SmsDBUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHaveRead | it does not need set msg("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") to read"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setReadContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 295
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 296
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    return-object v0
.end method

.method public static setSmsRead(Landroid/content/Context;J)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgId"    # J

    .prologue
    .line 664
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 665
    .local v2, "sdk":I
    const/16 v4, 0x13

    if-lt v2, v4, :cond_0

    .line 667
    const-string/jumbo v4, "SmsDBUtil"

    const-string/jumbo v5, "setSmsRead | sdk >= 19--->return"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_0
    return-void

    .line 672
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->setReadContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 673
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lib$b;->a:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " and read = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 676
    .local v1, "ret":I
    const-string/jumbo v4, "SmsDBUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSmsRead | msgId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to read --->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    .end local v1    # "ret":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SmsDBUtil"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static sleepByModel()V
    .locals 4

    .prologue
    .line 327
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "model":Ljava/lang/String;
    const-string/jumbo v2, "GT-I9502"

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SM-N9002"

    .line 330
    invoke-static {v1, v2}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SCH-I939D"

    .line 331
    invoke-static {v1, v2}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SCH-I959"

    .line 332
    invoke-static {v1, v2}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "GT-N7102"

    .line 333
    invoke-static {v1, v2}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    :cond_0
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
