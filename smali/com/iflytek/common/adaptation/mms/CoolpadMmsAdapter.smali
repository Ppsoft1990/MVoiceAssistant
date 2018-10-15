.class public Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;
.source "CoolpadMmsAdapter.java"


# static fields
.field private static final MODE:Ljava/lang/String; = "itemInfoid"

.field private static final TAG:Ljava/lang/String; = "Kupai5880MmsAdapter"


# instance fields
.field private final ITEM_INFO_URI:Landroid/net/Uri;

.field private final NETWORK_TYPE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 36
    const-string/jumbo v0, "content://mms-sms/itemInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;->ITEM_INFO_URI:Landroid/net/Uri;

    .line 37
    const-string/jumbo v0, "network_type"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;->NETWORK_TYPE:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public detectSendDataMessage()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 235
    :try_start_0
    const-string/jumbo v3, "com.yulong.android.telephony.CPSmsManager"

    .line 236
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 237
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x7

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, [B

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 240
    .local v2, "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v3, "sendDualDataMessage"

    invoke-static {v0, v3, v2}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return v5

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Kupai5880MmsAdapter"

    const-string/jumbo v4, "sendDataMessage error"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public detectSendTextMessage()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 219
    :try_start_0
    const-string/jumbo v4, "com.yulong.android.telephony.CPSmsManager"

    .line 220
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 221
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "sendDualMultipartTextMessage"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/util/ArrayList;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/util/ArrayList;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, Ljava/util/ArrayList;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Kupai5880MmsAdapter"

    const-string/jumbo v4, "detectSendTextMessage"

    invoke-static {v2, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 229
    goto :goto_0
.end method

.method public getCursorMode(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 2
    .param p1, "cursorMode"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;->getNetWorkTypeFromItemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "kupaiNetWorkType":Ljava/lang/String;
    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 107
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method public getCursorModeColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
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
    .line 47
    const-string/jumbo v2, "phoneIdKey"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 49
    .local v1, "networkType":I
    const/4 v0, 0x0

    .line 50
    .local v0, "mode":I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    .line 51
    const/4 v0, 0x2

    .line 55
    :cond_0
    :goto_0
    const-string/jumbo v2, "Kupai5880MmsAdapter"

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

    .line 56
    invoke-static {p1, v0}, Lcom/iflytek/common/adaptation/util/SmsParser;->createMessages(Landroid/content/Intent;I)[Landroid/telephony/SmsMessage;

    move-result-object v2

    return-object v2

    .line 52
    :cond_1
    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 53
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getNetWorkTypeFromItemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "itemInfoId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 112
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v8

    .line 116
    :cond_1
    const/4 v7, 0x0

    .line 117
    .local v7, "kupaiCursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 119
    .local v8, "kupaiNetWorkType":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;->ITEM_INFO_URI:Landroid/net/Uri;

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

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const-string/jumbo v0, "network_type"

    .line 125
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 124
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 126
    const-string/jumbo v0, "Kupai5880MmsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNetWorkTypeFromItemId | itemInfoId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "--> network_type = "

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

    .line 132
    :cond_2
    if-eqz v7, :cond_0

    .line 133
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 129
    :catch_0
    move-exception v6

    .line 130
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "Kupai5880MmsAdapter"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    if-eqz v7, :cond_0

    .line 133
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 132
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 133
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getSimId(Landroid/content/Intent;[Landroid/telephony/SmsMessage;)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 65
    const-string/jumbo v2, "phoneIdKey"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 66
    .local v0, "networkType":I
    const/4 v1, 0x0

    .line 67
    .local v1, "simId":I
    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 72
    :goto_0
    return v1

    .line 70
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;
    .locals 3
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p2, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 81
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "network_type"

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    return-object v0
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
    .line 144
    invoke-super/range {p0 .. p8}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->makeOutboxValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/content/ContentValues;

    move-result-object v0

    .line 146
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "network_type"

    add-int/lit8 v2, p8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    return-object v0
.end method

.method protected sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 11
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
    .line 189
    const-string/jumbo v7, "Kupai5880MmsAdapter"

    const-string/jumbo v8, "sendDataMessage"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v6, 0x0

    .line 193
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "com.iflytek.android.apps.action.SMS_DATA_SEND_ACTION"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;->mContext:Landroid/content/Context;

    const-class v10, Lcom/iflytek/base/mms/SmsSendReceiver;

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v3, "itSend":Landroid/content/Intent;
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0, v3, v7, v8, p2}, Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 196
    iget-object v7, p0, Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 198
    const-string/jumbo v7, "com.yulong.android.telephony.CPSmsManager"

    .line 199
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 200
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "getDefault"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v7, v8, v9}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v1, "cpSmsMgr":Ljava/lang/Object;
    const/4 v7, 0x7

    new-array v5, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-class v8, [B

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-class v8, Landroid/app/PendingIntent;

    aput-object v8, v5, v7

    const/4 v7, 0x5

    const-class v8, Landroid/app/PendingIntent;

    aput-object v8, v5, v7

    const/4 v7, 0x6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    .line 205
    .local v5, "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v7, 0x7

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x3

    aput-object p4, v4, v7

    const/4 v7, 0x4

    aput-object v6, v4, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput-object v8, v4, v7

    const/4 v7, 0x6

    .line 206
    invoke-virtual {p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    .line 208
    .local v4, "params":[Ljava/lang/Object;
    const-string/jumbo v7, "sendDualDataMessage"

    invoke-static {v1, v7, v5, v4}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    return-void

    .line 210
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cpSmsMgr":Ljava/lang/Object;
    .end local v3    # "itSend":Landroid/content/Intent;
    .end local v4    # "params":[Ljava/lang/Object;
    .end local v5    # "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "Kupai5880MmsAdapter"

    const-string/jumbo v8, "sendDataMessage error"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v7, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v7, v2}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .locals 19
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serviceCenter"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "threadId"    # J
    .param p7, "messageId"    # J
    .param p9, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v13

    .line 155
    .local v13, "smsMgr":Landroid/telephony/SmsManager;
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 156
    .local v10, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 157
    .local v9, "messageCount":I
    const/4 v4, 0x0

    .line 158
    .local v4, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .local v12, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 162
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v14, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;->mContext:Landroid/content/Context;

    const-class v16, Lcom/iflytek/base/mms/SmsSendReceiver;

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-direct {v7, v14, v0, v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v7, "itSend":Landroid/content/Intent;
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v14, v15, v1}, Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v7, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 169
    .end local v7    # "itSend":Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-string/jumbo v14, "com.yulong.android.telephony.CPSmsManager"

    .line 170
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 171
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v14, "getDefault"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-static {v2, v14, v15}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 173
    .local v6, "getDefault":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v6, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 174
    .local v3, "cpSmsMgr":Ljava/lang/Object;
    const-string/jumbo v14, "sendDualMultipartTextMessage"

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-class v17, Ljava/util/ArrayList;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-class v17, Ljava/util/ArrayList;

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-class v17, Ljava/util/ArrayList;

    aput-object v17, v15, v16

    const/16 v16, 0x5

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-static {v2, v14, v15}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 178
    .local v11, "sendTextMessage":Ljava/lang/reflect/Method;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 179
    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object v10, v14, v15

    const/4 v15, 0x3

    aput-object v12, v14, v15

    const/4 v15, 0x4

    aput-object v4, v14, v15

    const/4 v15, 0x5

    add-int/lit8 v16, p9, 0x1

    .line 180
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 179
    invoke-virtual {v11, v3, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    return-void

    .line 181
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "cpSmsMgr":Ljava/lang/Object;
    .end local v6    # "getDefault":Ljava/lang/reflect/Method;
    .end local v11    # "sendTextMessage":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .line 182
    .local v5, "e":Ljava/lang/Exception;
    new-instance v14, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v14, v5}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v14
.end method
