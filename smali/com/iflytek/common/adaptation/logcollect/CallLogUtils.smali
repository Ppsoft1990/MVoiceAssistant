.class public Lcom/iflytek/common/adaptation/logcollect/CallLogUtils;
.super Ljava/lang/Object;
.source "CallLogUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 50
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 p0, 0x0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CallLogUtils"

    const-string/jumbo v2, "close | close cursor error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static queryInCallCount(Landroid/content/Context;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 17
    const-string/jumbo v5, "CallLogUtils"

    const-string/jumbo v9, "queryInCallCount"

    invoke-static {v5, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    if-nez p0, :cond_0

    .line 19
    const-string/jumbo v5, "CallLogUtils"

    const-string/jumbo v9, "queryInCallCount | context = null ---> count = 0"

    invoke-static {v5, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v1

    .line 45
    :goto_0
    return v6

    .line 23
    :cond_0
    const/4 v6, 0x0

    .line 24
    .local v6, "count":I
    const/4 v7, 0x0

    .line 25
    .local v7, "csr":Landroid/database/Cursor;
    const-string/jumbo v3, "type=? or type=?"

    .line 26
    .local v3, "selection":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "3"

    aput-object v5, v4, v1

    const-string/jumbo v5, "1"

    aput-object v5, v4, v10

    .line 28
    .local v4, "selectionArgs":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v5, "number"

    aput-object v5, v2, v1

    .line 31
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 32
    .local v0, "contentresolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 35
    if-eqz v7, :cond_1

    .line 36
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 41
    :cond_1
    invoke-static {v7}, Lcom/iflytek/common/adaptation/logcollect/CallLogUtils;->closeCursor(Landroid/database/Cursor;)V

    .line 44
    .end local v0    # "contentresolver":Landroid/content/ContentResolver;
    :goto_1
    const-string/jumbo v1, "CallLogUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "queryInCallCount | count = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    :catch_0
    move-exception v8

    .line 39
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "CallLogUtils"

    const-string/jumbo v5, ""

    invoke-static {v1, v5, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {v7}, Lcom/iflytek/common/adaptation/logcollect/CallLogUtils;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v7}, Lcom/iflytek/common/adaptation/logcollect/CallLogUtils;->closeCursor(Landroid/database/Cursor;)V

    throw v1
.end method
