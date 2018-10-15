.class public Lcom/iflytek/common/adaptation/mms/M821MmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;
.source "M821MmsAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "M821MmsAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 26
    return-void
.end method

.method private initSmsManager(I)Landroid/telephony/SmsManager;
    .locals 14
    .param p1, "simId"    # I

    .prologue
    .line 98
    const/4 v6, 0x0

    .line 100
    .local v6, "smsMgr":Landroid/telephony/SmsManager;
    :try_start_0
    const-string/jumbo v9, "android.telephony.SubscriptionManager"

    invoke-static {v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 101
    .local v8, "subManagerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v9, "getSubId"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 102
    .local v4, "getSubId":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v4, v8, v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    move-object v0, v9

    check-cast v0, [J

    move-object v7, v0

    .line 103
    .local v7, "subIds":[J
    if-eqz v7, :cond_0

    array-length v9, v7

    if-lez v9, :cond_0

    .line 104
    const-string/jumbo v9, "M821MmsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "subid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-wide v12, v7, v11

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string/jumbo v9, "android.telephony.SmsManager"

    invoke-static {v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 106
    .local v5, "smsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v9, "getSmsManagerForSubscriber"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v5, v9, v10}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 107
    .local v3, "getSmsManagerForSubscriber":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-wide v12, v7, v11

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v3, v5, v9}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/telephony/SmsManager;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "getSmsManagerForSubscriber":Ljava/lang/reflect/Method;
    .end local v5    # "smsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v9, v6

    .line 115
    .end local v4    # "getSubId":Ljava/lang/reflect/Method;
    .end local v7    # "subIds":[J
    .end local v8    # "subManagerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v9

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "M821MmsAdapter"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v9, 0x0

    goto :goto_0
.end method


# virtual methods
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

    .line 72
    :try_start_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    const/4 v9, 0x1

    .line 73
    .local v9, "simId":I
    :cond_0
    const-string/jumbo v1, "M821MmsAdapter"

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

    .line 74
    invoke-direct {p0, v9}, Lcom/iflytek/common/adaptation/mms/M821MmsAdapter;->initSmsManager(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 76
    .local v0, "smsMgr":Landroid/telephony/SmsManager;
    const/4 v6, 0x0

    .line 78
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v5, 0x0

    .line 80
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.android.apps.action.SMS_DATA_SEND_ACTION"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/M821MmsAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/iflytek/base/mms/SmsSendReceiver;

    invoke-direct {v8, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v8, "itSend":Landroid/content/Intent;
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v8, v1, v2, p2}, Lcom/iflytek/common/adaptation/mms/M821MmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/M821MmsAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 85
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move-object v4, p4

    :try_start_1
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 86
    const-string/jumbo v1, "M821MmsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBinaryMessage simCard = "

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

    .line 94
    .end local v0    # "smsMgr":Landroid/telephony/SmsManager;
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v8    # "itSend":Landroid/content/Intent;
    .end local v9    # "simId":I
    :goto_0
    return-void

    .line 87
    .restart local v0    # "smsMgr":Landroid/telephony/SmsManager;
    .restart local v5    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    .restart local v8    # "itSend":Landroid/content/Intent;
    .restart local v9    # "simId":I
    :catch_0
    move-exception v7

    .line 88
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "M821MmsAdapter"

    const-string/jumbo v2, "sendDataMessage | error"

    invoke-static {v1, v2, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    new-instance v1, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v1, v7}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 91
    .end local v0    # "smsMgr":Landroid/telephony/SmsManager;
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "itSend":Landroid/content/Intent;
    .end local v9    # "simId":I
    :catch_1
    move-exception v7

    .line 92
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "M821MmsAdapter"

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
    .line 33
    const-string/jumbo v2, "M821MmsAdapter"

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

    .line 41
    :try_start_0
    move/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/mms/M821MmsAdapter;->initSmsManager(I)Landroid/telephony/SmsManager;

    move-result-object v1

    .line 44
    .local v1, "smsMgr":Landroid/telephony/SmsManager;
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 46
    .local v4, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 49
    .local v10, "messageCount":I
    const/4 v6, 0x0

    .line 51
    .local v6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .local v5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 55
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/M821MmsAdapter;->mContext:Landroid/content/Context;

    const-class v11, Lcom/iflytek/base/mms/SmsSendReceiver;

    move-object/from16 v0, p4

    invoke-direct {v8, v2, v0, v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v8, "itSend":Landroid/content/Intent;
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v8, v2, v3, p1}, Lcom/iflytek/common/adaptation/mms/M821MmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/iflytek/common/adaptation/mms/M821MmsAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-static {v2, v3, v8, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 60
    .end local v8    # "itSend":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "smsMgr":Landroid/telephony/SmsManager;
    .end local v4    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v6    # "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v9    # "j":I
    .end local v10    # "messageCount":I
    :goto_1
    return-void

    .line 62
    :catch_0
    move-exception v7

    .line 63
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "M821MmsAdapter"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
