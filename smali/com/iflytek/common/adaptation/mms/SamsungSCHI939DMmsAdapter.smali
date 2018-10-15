.class public Lcom/iflytek/common/adaptation/mms/SamsungSCHI939DMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;
.source "SamsungSCHI939DMmsAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 27
    const-string/jumbo v0, "SamsungSCHI939DMmsAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungSCHI939DMmsAdapter;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public detectSendTextMessage()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    :try_start_0
    const-string/jumbo v4, "android.telephony.SmsManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "sendMultipartTextMessage"

    const/16 v5, 0x9

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

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungSCHI939DMmsAdapter"

    const-string/jumbo v4, "detect SamsungSCHI939DMmsAdapter error"

    invoke-static {v2, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 125
    goto :goto_0
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
    .line 82
    const-string/jumbo v7, "SamsungSCHI939DMmsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendDataMessage | address = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " simId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6

    .line 86
    .local v6, "smsMgr":Landroid/telephony/SmsManager;
    const-string/jumbo v7, "android.telephony.SmsManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "sendDataMessage"

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-class v10, [B

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-class v10, Landroid/app/PendingIntent;

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-class v10, Landroid/app/PendingIntent;

    aput-object v10, v8, v9

    const/4 v9, 0x7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 95
    .local v4, "sendDateMessage":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 97
    .local v1, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v5, 0x0

    .line 99
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "com.iflytek.android.apps.action.SMS_DATA_SEND_ACTION"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/iflytek/common/adaptation/mms/SamsungSCHI939DMmsAdapter;->mContext:Landroid/content/Context;

    const-class v10, Lcom/iflytek/base/mms/SmsSendReceiver;

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v3, "itSend":Landroid/content/Intent;
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0, v3, v7, v8, p2}, Lcom/iflytek/common/adaptation/mms/SamsungSCHI939DMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 102
    iget-object v7, p0, Lcom/iflytek/common/adaptation/mms/SamsungSCHI939DMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 104
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 105
    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p4, v7, v8

    const/4 v8, 0x5

    aput-object v5, v7, v8

    const/4 v8, 0x6

    aput-object v1, v7, v8

    const/4 v8, 0x7

    .line 106
    invoke-virtual {p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 105
    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-void

    .line 107
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v3    # "itSend":Landroid/content/Intent;
    .end local v4    # "sendDateMessage":Ljava/lang/reflect/Method;
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "smsMgr":Landroid/telephony/SmsManager;
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SamsungSCHI939DMmsAdapter"

    const-string/jumbo v8, "sendDataMessage error"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v7, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v7, v2}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .locals 17
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
    .line 38
    const-string/jumbo v3, "SamsungSCHI939DMmsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sendTextMessage | address = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, ", | scCenter "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, ", content ="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, ", uri = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, ", threadId = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, ", messageId = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, ", simId = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 44
    .local v2, "smsMgr":Landroid/telephony/SmsManager;
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 46
    .local v5, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 47
    .local v12, "messageCount":I
    const/4 v7, 0x0

    .line 48
    .local v7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .local v6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    if-ge v11, v12, :cond_0

    .line 52
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v3, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/common/adaptation/mms/SamsungSCHI939DMmsAdapter;->mContext:Landroid/content/Context;

    const-class v14, Lcom/iflytek/base/mms/SmsSendReceiver;

    move-object/from16 v0, p4

    invoke-direct {v10, v3, v0, v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v10, "itSend":Landroid/content/Intent;
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v3, v4, v1}, Lcom/iflytek/common/adaptation/mms/SamsungSCHI939DMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/common/adaptation/mms/SamsungSCHI939DMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v14, 0x0

    invoke-static {v3, v4, v10, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 58
    .end local v10    # "itSend":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x1

    move/from16 v0, p9

    if-ne v0, v3, :cond_1

    .line 60
    :try_start_0
    const-string/jumbo v3, "android.telephony.SmsManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 61
    .local v8, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "sendMultipartTextMessage"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v4, v14

    const/4 v14, 0x1

    const-class v15, Ljava/lang/String;

    aput-object v15, v4, v14

    const/4 v14, 0x2

    const-class v15, Ljava/util/ArrayList;

    aput-object v15, v4, v14

    const/4 v14, 0x3

    const-class v15, Ljava/util/ArrayList;

    aput-object v15, v4, v14

    const/4 v14, 0x4

    const-class v15, Ljava/util/ArrayList;

    aput-object v15, v4, v14

    const/4 v14, 0x5

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v15, v4, v14

    const/4 v14, 0x6

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v4, v14

    const/4 v14, 0x7

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v4, v14

    const/16 v14, 0x8

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v4, v14

    invoke-virtual {v8, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 66
    .local v13, "sendTextMessage":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v14, 0x0

    aput-object v14, v3, v4

    const/4 v4, 0x2

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v6, v3, v4

    const/4 v4, 0x4

    aput-object v7, v3, v4

    const/4 v4, 0x5

    const/4 v14, 0x0

    .line 68
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v3, v4

    const/4 v4, 0x6

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v4

    const/4 v4, 0x7

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v4

    const/16 v4, 0x8

    .line 69
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v4

    .line 67
    invoke-virtual {v13, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v8    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "sendTextMessage":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v9

    .line 71
    .local v9, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v3, v9}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 74
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1
.end method
