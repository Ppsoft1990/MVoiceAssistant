.class public Lcom/iflytek/common/adaptation/mms/Kupai8297MMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;
.source "Kupai8297MMmsAdapter.java"


# static fields
.field private static final MODE:Ljava/lang/String; = "itemInfoid"

.field private static final TAG:Ljava/lang/String; = "Kupai8297MMmsAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 27
    return-void
.end method

.method private getNetWorkTypeFromItemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "itemInfoId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 56
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v8

    .line 60
    :cond_1
    const/4 v7, 0x0

    .line 61
    .local v7, "kupaiCursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 63
    .local v8, "kupaiNetWorkType":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/Kupai8297MMmsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://mms-sms/itemInfo"

    .line 64
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "network_type"

    aput-object v4, v2, v3

    const-string/jumbo v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    .line 63
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 68
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    const-string/jumbo v0, "network_type"

    .line 70
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 69
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 71
    const-string/jumbo v0, "Kupai8297MMmsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "messageItem_network_type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_2
    if-eqz v7, :cond_0

    .line 77
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 73
    :catch_0
    move-exception v6

    .line 74
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "Kupai8297MMmsAdapter"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-eqz v7, :cond_0

    .line 77
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 76
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 77
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public getCursorMode(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 2
    .param p1, "cursorMode"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/mms/Kupai8297MMmsAdapter;->getNetWorkTypeFromItemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "kupaiNetWorkType":Ljava/lang/String;
    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 51
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method public getCursorModeColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "itemInfoid"

    return-object v0
.end method

.method public getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsParserException;
        }
    .end annotation

    .prologue
    .line 87
    const-string/jumbo v2, "phoneIdKey"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, "networkType":I
    const/4 v0, 0x0

    .line 90
    .local v0, "mode":I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    .line 91
    const/4 v0, 0x2

    .line 95
    :cond_0
    :goto_0
    const-string/jumbo v2, "Kupai8297MMmsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMessagesFromIntent | phoneIdKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p1, v0}, Lcom/iflytek/common/adaptation/util/SmsParser;->createMessages(Landroid/content/Intent;I)[Landroid/telephony/SmsMessage;

    move-result-object v2

    return-object v2

    .line 92
    :cond_1
    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method
