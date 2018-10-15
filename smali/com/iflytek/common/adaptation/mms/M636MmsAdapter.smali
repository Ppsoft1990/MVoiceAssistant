.class public Lcom/iflytek/common/adaptation/mms/M636MmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;
.source "M636MmsAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "M636MmsAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 28
    return-void
.end method

.method private initSmsManager(I)Landroid/telephony/SmsManager;
    .locals 12
    .param p1, "simId"    # I

    .prologue
    .line 95
    const/4 v5, 0x0

    .line 97
    .local v5, "smsMgr":Landroid/telephony/SmsManager;
    :try_start_0
    const-string/jumbo v8, "android.telephony.SubscriptionManager"

    invoke-static {v8}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 98
    .local v7, "subManagerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "getSubId"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 99
    .local v3, "getSubId":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3, v7, v8}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    move-object v0, v8

    check-cast v0, [I

    move-object v6, v0

    .line 100
    .local v6, "subIds":[I
    if-eqz v6, :cond_0

    array-length v8, v6

    if-lez v8, :cond_0

    .line 101
    const-string/jumbo v8, "M636MmsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "subid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string/jumbo v8, "android.telephony.SmsManager"

    invoke-static {v8}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 103
    .local v4, "smsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "getSmsManagerForSubscriber"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-static {v4, v8, v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 104
    .local v2, "getSmsManagerForSubscriber":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v4, v8}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/telephony/SmsManager;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "getSmsManagerForSubscriber":Ljava/lang/reflect/Method;
    .end local v4    # "smsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v8, v5

    .line 112
    .end local v3    # "getSubId":Ljava/lang/reflect/Method;
    .end local v6    # "subIds":[I
    .end local v7    # "subManagerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v8

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "M636MmsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initSmsManager Exception ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSimCardMmsNotice(Landroid/content/Intent;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 121
    .local v1, "currentCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :try_start_0
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 122
    .local v6, "smsMessage":[Landroid/telephony/SmsMessage;
    if-eqz v6, :cond_1

    array-length v8, v6

    if-lez v8, :cond_1

    .line 123
    const/4 v8, 0x0

    aget-object v5, v6, v8
    :try_end_0
    .catch Lcom/iflytek/common/adaptation/exception/SmsParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    .local v5, "smg":Landroid/telephony/SmsMessage;
    :try_start_1
    const-string/jumbo v8, "android.telephony.SmsMessage"

    invoke-static {v8}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 127
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "getSubId"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-static {v0, v8, v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 128
    .local v4, "getSubId":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v0, v8}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 129
    .local v7, "subscription":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    :goto_0
    move-object v2, v1

    .line 141
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "currentCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .end local v4    # "getSubId":Ljava/lang/reflect/Method;
    .end local v5    # "smg":Landroid/telephony/SmsMessage;
    .end local v6    # "smsMessage":[Landroid/telephony/SmsMessage;
    .end local v7    # "subscription":I
    .local v2, "currentCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :goto_1
    return-object v2

    .line 129
    .end local v2    # "currentCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "currentCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .restart local v4    # "getSubId":Ljava/lang/reflect/Method;
    .restart local v5    # "smg":Landroid/telephony/SmsMessage;
    .restart local v6    # "smsMessage":[Landroid/telephony/SmsMessage;
    .restart local v7    # "subscription":I
    :cond_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/iflytek/common/adaptation/exception/SmsParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 131
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getSubId":Ljava/lang/reflect/Method;
    .end local v7    # "subscription":I
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v8, "M636MmsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSimCardMmsNotice refect error="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "smg":Landroid/telephony/SmsMessage;
    .end local v6    # "smsMessage":[Landroid/telephony/SmsMessage;
    :goto_2
    move-object v2, v1

    .line 141
    .end local v1    # "currentCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .restart local v2    # "currentCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    goto :goto_1

    .line 135
    .end local v2    # "currentCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .restart local v1    # "currentCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .restart local v6    # "smsMessage":[Landroid/telephony/SmsMessage;
    :cond_1
    const-string/jumbo v8, "M636MmsAdapter"

    const-string/jumbo v9, "SmsMessage[] is null or empty"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/iflytek/common/adaptation/exception/SmsParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 137
    .end local v6    # "smsMessage":[Landroid/telephony/SmsMessage;
    :catch_1
    move-exception v3

    .line 138
    .local v3, "e":Lcom/iflytek/common/adaptation/exception/SmsParserException;
    const-string/jumbo v8, "M636MmsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SmsParserException error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 10
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
    const/4 v9, 0x0

    .line 68
    :try_start_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    const/4 v9, 0x1

    .line 69
    .local v9, "simId":I
    :cond_0
    const-string/jumbo v1, "M636MmsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBinaryMessage simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0, v9}, Lcom/iflytek/common/adaptation/mms/M636MmsAdapter;->initSmsManager(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 71
    .local v0, "smsMgr":Landroid/telephony/SmsManager;
    const-string/jumbo v1, "M636MmsAdapter"

    const-string/jumbo v2, "sendBinaryMessage initSmsManager success"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v6, 0x0

    .line 75
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v5, 0x0

    .line 77
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.android.apps.action.SMS_DATA_SEND_ACTION"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/M636MmsAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/iflytek/base/mms/SmsSendReceiver;

    invoke-direct {v8, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v8, "itSend":Landroid/content/Intent;
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v8, v1, v2, p2}, Lcom/iflytek/common/adaptation/mms/M636MmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/M636MmsAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 82
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move-object v4, p4

    :try_start_1
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 83
    const-string/jumbo v1, "M636MmsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDataMessage simCard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,BinaryMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .end local v0    # "smsMgr":Landroid/telephony/SmsManager;
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v8    # "itSend":Landroid/content/Intent;
    .end local v9    # "simId":I
    :goto_0
    return-void

    .line 84
    .restart local v0    # "smsMgr":Landroid/telephony/SmsManager;
    .restart local v5    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    .restart local v8    # "itSend":Landroid/content/Intent;
    .restart local v9    # "simId":I
    :catch_0
    move-exception v7

    .line 85
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "M636MmsAdapter"

    const-string/jumbo v2, "sendDataMessage | error"

    invoke-static {v1, v2, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    new-instance v1, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v1, v7}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 88
    .end local v0    # "smsMgr":Landroid/telephony/SmsManager;
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "itSend":Landroid/content/Intent;
    .end local v9    # "simId":I
    :catch_1
    move-exception v7

    .line 89
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "M636MmsAdapter"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .locals 13
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "scCenter"    # Ljava/lang/String;
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
    .line 34
    const-string/jumbo v2, "M636MmsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "simId = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :try_start_0
    move/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/mms/M636MmsAdapter;->initSmsManager(I)Landroid/telephony/SmsManager;

    move-result-object v1

    .line 38
    .local v1, "smsMgr":Landroid/telephony/SmsManager;
    const-string/jumbo v2, "M636MmsAdapter"

    const-string/jumbo v3, "sendTextMessage initSmsManager success"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 42
    .local v4, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 45
    .local v10, "messageCount":I
    const/4 v6, 0x0

    .line 47
    .local v6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 51
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/M636MmsAdapter;->mContext:Landroid/content/Context;

    const-class v11, Lcom/iflytek/base/mms/SmsSendReceiver;

    move-object/from16 v0, p4

    invoke-direct {v8, v2, v0, v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v8, "itSend":Landroid/content/Intent;
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v8, v2, v3, p1}, Lcom/iflytek/common/adaptation/mms/M636MmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/iflytek/common/adaptation/mms/M636MmsAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-static {v2, v3, v8, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 56
    .end local v8    # "itSend":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1    # "smsMgr":Landroid/telephony/SmsManager;
    .end local v4    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v6    # "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v9    # "j":I
    .end local v10    # "messageCount":I
    :goto_1
    return-void

    .line 58
    :catch_0
    move-exception v7

    .line 59
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "M636MmsAdapter"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
