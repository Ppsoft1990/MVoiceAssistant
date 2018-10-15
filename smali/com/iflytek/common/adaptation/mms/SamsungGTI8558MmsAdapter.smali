.class public Lcom/iflytek/common/adaptation/mms/SamsungGTI8558MmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;
.source "SamsungGTI8558MmsAdapter.java"


# static fields
.field private static final SMS_RECEIVE2:Ljava/lang/String; = "android.provider.Telephony.GSM_SMS_RECEIVED"

.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field private final SIM_ID:Ljava/lang/String;

.field private final SIM_IMSI:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 29
    const-string/jumbo v0, "SamsungGTI8558MmsAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI8558MmsAdapter;->TAG:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "sim_id"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI8558MmsAdapter;->SIM_ID:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "sim_imsi"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI8558MmsAdapter;->SIM_IMSI:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public detectSendTextMessage()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 154
    :try_start_0
    const-class v0, Landroid/telephony/SmsManager;

    .line 155
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "sendMultipartTextMessage"

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

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungGTI8558MmsAdapter"

    const-string/jumbo v4, "detect SamsungGTI8558MmsAdapter error"

    invoke-static {v2, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 162
    goto :goto_0
.end method

.method public getCursorMode(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 3
    .param p1, "cursorMode"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string/jumbo v0, "SamsungGTI8558MmsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCursorMode | cursorMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method public getCursorModeColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string/jumbo v0, "sim_id"

    return-object v0
.end method

.method public getMmsReceiveAction()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.provider.Telephony.SMS_RECEIVED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.provider.Telephony.GSM_SMS_RECEIVED"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSimId(Landroid/content/Intent;[Landroid/telephony/SmsMessage;)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v5, 0x0

    .line 93
    if-eqz p2, :cond_0

    array-length v6, p2

    if-nez v6, :cond_1

    :cond_0
    move v3, v5

    .line 110
    :goto_0
    return v3

    .line 97
    :cond_1
    const/4 v3, 0x0

    .line 98
    .local v3, "simId":I
    aget-object v4, p2, v5

    .line 100
    .local v4, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    const-class v0, Landroid/telephony/SmsMessage;

    .line 101
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getSimIdentifier"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-static {v0, v5, v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 103
    .local v2, "getSimIdentifier":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 104
    const-string/jumbo v5, "SamsungGTI8558MmsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSimId | SmsMessage.getSimIdentifier()--->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getSimIdentifier":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SamsungGTI8558MmsAdapter"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;
    .locals 5
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 117
    .local v2, "values":Landroid/content/ContentValues;
    move v1, p2

    .line 118
    .local v1, "simId":I
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/SamsungGTI8558MmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    iget-object v4, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI8558MmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    if-nez v1, :cond_0

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    :goto_0
    invoke-interface {v4, v3}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "imsi":Ljava/lang/String;
    const-string/jumbo v3, "sim_imsi"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-object v2

    .line 119
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
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
    .line 44
    invoke-super/range {p0 .. p8}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->makeOutboxValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/content/ContentValues;

    move-result-object v1

    .line 47
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/SamsungGTI8558MmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI8558MmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    if-nez p8, :cond_0

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    :goto_0
    invoke-interface {v3, v2}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "imsi":Ljava/lang/String;
    const-string/jumbo v2, "sim_imsi"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-object v1

    .line 48
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method protected sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
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
    .line 148
    new-instance v0, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    const-string/jumbo v1, "unimplement sendDataMessage method"

    invoke-direct {v0, v1}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .locals 15
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
    .line 62
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v10

    .line 63
    .local v10, "smsMgr":Landroid/telephony/SmsManager;
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 65
    .local v7, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 66
    .local v6, "messageCount":I
    const/4 v2, 0x0

    .line 67
    .local v2, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v9, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 71
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v11, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    iget-object v12, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI8558MmsAdapter;->mContext:Landroid/content/Context;

    const-class v13, Lcom/iflytek/base/mms/SmsSendReceiver;

    move-object/from16 v0, p4

    invoke-direct {v4, v11, v0, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v4, "itSend":Landroid/content/Intent;
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {p0, v4, v11, v12, v0}, Lcom/iflytek/common/adaptation/mms/SamsungGTI8558MmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 74
    iget-object v11, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI8558MmsAdapter;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v4, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    .end local v4    # "itSend":Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-class v1, Landroid/telephony/SmsManager;

    .line 79
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v11, "sendMultipartTextMessage"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-class v14, Ljava/util/ArrayList;

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-class v14, Ljava/util/ArrayList;

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-class v14, Ljava/util/ArrayList;

    aput-object v14, v12, v13

    const/4 v13, 0x5

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 83
    .local v8, "sendTextMessage":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 84
    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v7, v11, v12

    const/4 v12, 0x3

    aput-object v9, v11, v12

    const/4 v12, 0x4

    aput-object v2, v11, v12

    const/4 v12, 0x5

    .line 85
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 84
    invoke-virtual {v8, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "sendTextMessage":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 86
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "SamsungGTI8558MmsAdapter"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
