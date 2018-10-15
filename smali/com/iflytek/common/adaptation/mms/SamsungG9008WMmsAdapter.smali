.class public Lcom/iflytek/common/adaptation/mms/SamsungG9008WMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;
.source "SamsungG9008WMmsAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 25
    const-string/jumbo v0, "SamsungG9008WMmsAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungG9008WMmsAdapter;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private initSimCard(I)V
    .locals 12
    .param p1, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    const-string/jumbo v7, "android.telephony.SubscriptionManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 82
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "getSubId"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 83
    .local v4, "getSubId":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 84
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    move-object v0, v7

    check-cast v0, [J

    move-object v6, v0

    .line 85
    .local v6, "subIds":[J
    const-string/jumbo v7, "SamsungG9008WMmsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getSubId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-wide v10, v6, v9

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string/jumbo v7, "setDefaultSmsSubId"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 88
    .local v5, "setDefaultSmsSubId":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 89
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-wide v10, v6, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 90
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getSubId":Ljava/lang/reflect/Method;
    .end local v5    # "setDefaultSmsSubId":Ljava/lang/reflect/Method;
    .end local v6    # "subIds":[J
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/Exception;
    throw v3
.end method

.method private sendTextMsg(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "threadId"    # J
    .param p6, "messageId"    # J
    .param p8, "simId"    # I

    .prologue
    .line 56
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 57
    .local v0, "smsMgr":Landroid/telephony/SmsManager;
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 59
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 62
    .local v8, "messageCount":I
    const/4 v5, 0x0

    .line 64
    .local v5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 68
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    iget-object v2, p0, Lcom/iflytek/common/adaptation/mms/SamsungG9008WMmsAdapter;->mContext:Landroid/content/Context;

    const-class v9, Lcom/iflytek/base/mms/SmsSendReceiver;

    invoke-direct {v6, v1, p3, v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v6, "itSend":Landroid/content/Intent;
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v6, v1, v2, p1}, Lcom/iflytek/common/adaptation/mms/SamsungG9008WMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/SamsungG9008WMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v2, v6, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 73
    .end local v6    # "itSend":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 76
    return-void
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
    const/16 v2, 0x15

    const/4 v9, 0x0

    .line 98
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_1

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    .line 102
    :try_start_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_2

    const/4 v9, 0x1

    .line 103
    .local v9, "simId":I
    :cond_2
    invoke-direct {p0, v9}, Lcom/iflytek/common/adaptation/mms/SamsungG9008WMmsAdapter;->initSimCard(I)V

    .line 104
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 106
    .local v0, "smsMgr":Landroid/telephony/SmsManager;
    const/4 v6, 0x0

    .line 108
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v5, 0x0

    .line 110
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.android.apps.action.SMS_DATA_SEND_ACTION"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/SamsungG9008WMmsAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/iflytek/base/mms/SmsSendReceiver;

    invoke-direct {v8, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v8, "itSend":Landroid/content/Intent;
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v8, v1, v2, p2}, Lcom/iflytek/common/adaptation/mms/SamsungG9008WMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/SamsungG9008WMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 115
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v0    # "smsMgr":Landroid/telephony/SmsManager;
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v8    # "itSend":Landroid/content/Intent;
    .end local v9    # "simId":I
    :catch_0
    move-exception v7

    .line 117
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SamsungG9008WMmsAdapter"

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
    .line 38
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 39
    invoke-super/range {p0 .. p9}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 42
    :try_start_0
    move/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/mms/SamsungG9008WMmsAdapter;->initSimCard(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    .line 48
    invoke-direct/range {v2 .. v10}, Lcom/iflytek/common/adaptation/mms/SamsungG9008WMmsAdapter;->sendTextMsg(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V

    goto :goto_0

    .line 43
    :catch_0
    move-exception v11

    .line 44
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungG9008WMmsAdapter"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    .line 45
    invoke-direct/range {v2 .. v10}, Lcom/iflytek/common/adaptation/mms/SamsungG9008WMmsAdapter;->sendTextMsg(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V

    goto :goto_0
.end method
