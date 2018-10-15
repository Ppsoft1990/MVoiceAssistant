.class public Lho;
.super Ljava/lang/Object;
.source "SmsId.java"


# static fields
.field private static a:J

.field private static b:J

.field private static c:J

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 76
    sput-wide v0, Lho;->a:J

    .line 77
    sput-wide v0, Lho;->b:J

    .line 78
    sput-wide v0, Lho;->c:J

    .line 171
    const/4 v0, 0x0

    sput v0, Lho;->d:I

    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 122
    sget-wide v0, Lho;->b:J

    return-wide v0
.end method

.method public static a(I)V
    .locals 0
    .param p0, "cacheInBoxCount"    # I

    .prologue
    .line 178
    sput p0, Lho;->d:I

    .line 179
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, 0x0

    const/16 v8, 0xe

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    const/4 v6, 0x0

    .line 135
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez p0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v2, 0x0

    .line 139
    .local v2, "projection":[Ljava/lang/String;
    invoke-static {}, Lhl;->k()I

    move-result v0

    if-lt v0, v8, :cond_4

    .line 140
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .end local v2    # "projection":[Ljava/lang/String;
    const-string/jumbo v0, "_id"

    aput-object v0, v2, v3

    const-string/jumbo v0, "date"

    aput-object v0, v2, v4

    const-string/jumbo v0, "date_sent"

    aput-object v0, v2, v5

    .line 145
    .restart local v2    # "projection":[Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 147
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "type = 1"

    const/4 v4, 0x0

    const-string/jumbo v5, "date DESC"

    .line 148
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 149
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    const-string/jumbo v0, "date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lho;->b:J

    .line 151
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lho;->a:J

    .line 152
    invoke-static {}, Lhl;->k()I

    move-result v0

    if-lt v0, v8, :cond_1

    .line 153
    const-string/jumbo v0, "date_sent"

    .line 154
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 153
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lho;->c:J

    .line 156
    :cond_1
    sget-wide v4, Lho;->c:J

    cmp-long v0, v4, v10

    if-nez v0, :cond_2

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lho;->c:J

    .line 159
    :cond_2
    sget-wide v4, Lho;->b:J

    cmp-long v0, v4, v10

    if-nez v0, :cond_3

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lho;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_3
    invoke-static {v6}, Lho;->a(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 142
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    new-array v2, v5, [Ljava/lang/String;

    .end local v2    # "projection":[Ljava/lang/String;
    const-string/jumbo v0, "_id"

    aput-object v0, v2, v3

    const-string/jumbo v0, "date"

    aput-object v0, v2, v4

    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_1

    .line 163
    .restart local v1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 165
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "SmsId"

    const-string/jumbo v3, ""

    invoke-static {v0, v3, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    invoke-static {v6}, Lho;->a(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lho;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;JJJ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lastTime"    # J
    .param p3, "lastId"    # J
    .param p5, "lastSentTime"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 88
    const-string/jumbo v0, "SmsId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkLastestSms | lastTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lastId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    cmp-long v0, p3, v4

    if-gtz v0, :cond_1

    .line 90
    :cond_0
    invoke-static {p0}, Lho;->a(Landroid/content/Context;)V

    .line 91
    const-string/jumbo v0, "SmsId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkLastestSms | update lastest msg from inbox--->lastestMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lho;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lastestTime ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lho;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lastestMsgSentTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lho;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 100
    :cond_1
    sget-wide v0, Lho;->b:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2

    .line 101
    const-string/jumbo v0, "SmsId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkLastestSms | newTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "--->oldTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lho;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sput-wide p1, Lho;->b:J

    .line 106
    :cond_2
    sget-wide v0, Lho;->a:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_3

    .line 107
    const-string/jumbo v0, "SmsId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkLastestSms | newMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "--->oldMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lho;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sput-wide p3, Lho;->a:J

    .line 111
    :cond_3
    sput-wide p5, Lho;->c:J

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 183
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/4 p0, 0x0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SmsId"

    const-string/jumbo v2, "close | close cursor error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 126
    sget-wide v0, Lho;->a:J

    return-wide v0
.end method

.method public static c()J
    .locals 2

    .prologue
    .line 130
    sget-wide v0, Lho;->c:J

    return-wide v0
.end method
