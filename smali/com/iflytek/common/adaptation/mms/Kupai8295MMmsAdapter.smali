.class public Lcom/iflytek/common/adaptation/mms/Kupai8295MMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;
.source "Kupai8295MMmsAdapter.java"


# static fields
.field private static final MODE:Ljava/lang/String; = "itemInfoid"

.field private static final TAG:Ljava/lang/String; = "Kupai8295MMmsAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/MtkMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 26
    return-void
.end method

.method private getNetWorkTypeFromItemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "itemInfoId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 55
    if-nez p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v8

    .line 59
    :cond_1
    const/4 v7, 0x0

    .line 60
    .local v7, "kupaiCursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 62
    .local v8, "kupaiNetWorkType":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/Kupai8295MMmsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://mms-sms/itemInfo"

    .line 63
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

    .line 62
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 67
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const-string/jumbo v0, "network_type"

    .line 69
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 68
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 70
    const-string/jumbo v0, "Kupai8295MMmsAdapter"

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

    .line 75
    :cond_2
    if-eqz v7, :cond_0

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 72
    :catch_0
    move-exception v6

    .line 73
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "Kupai8295MMmsAdapter"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    if-eqz v7, :cond_0

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 75
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public getCursorMode(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 2
    .param p1, "cursorMode"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/mms/Kupai8295MMmsAdapter;->getNetWorkTypeFromItemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "kupaiNetWorkType":Ljava/lang/String;
    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 50
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method public getCursorModeColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "itemInfoid"

    return-object v0
.end method

.method public getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsParserException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method
