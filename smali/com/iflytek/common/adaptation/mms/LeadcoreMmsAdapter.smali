.class public Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;
.source "LeadcoreMmsAdapter.java"


# static fields
.field public static final INBOX_CONTENT_URI:Landroid/net/Uri;

.field public static final IN_CONTENT_URI:Landroid/net/Uri;

.field public static final OUTBOX_CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "LeadcoreMmsAdapter"


# instance fields
.field private final LINK_ID:Ljava/lang/String;

.field private final SIM_INDEX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "content://sms/outbox"

    .line 34
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->OUTBOX_CONTENT_URI:Landroid/net/Uri;

    .line 35
    const-string/jumbo v0, "content://2-message_summary"

    .line 36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->IN_CONTENT_URI:Landroid/net/Uri;

    .line 37
    const-string/jumbo v0, "content://sms//inbox"

    .line 38
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->INBOX_CONTENT_URI:Landroid/net/Uri;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 28
    const-string/jumbo v0, "sim_index"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->SIM_INDEX:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "linkID"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->LINK_ID:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getCursorMode(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1
    .param p1, "cursorMode"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 145
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method public getCursorModeColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string/jumbo v0, "sim_index"

    return-object v0
.end method

.method public getSimId(Landroid/content/Intent;[Landroid/telephony/SmsMessage;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 116
    const-string/jumbo v1, "linkID"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, "simId":I
    return v0
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
    .line 123
    const-string/jumbo v1, "LeadcoreMmsAdapter"

    const-string/jumbo v2, "makeContentValues"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 125
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v1}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    :goto_0
    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

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
    .line 48
    invoke-super/range {p0 .. p8}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->makeOutboxValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/content/ContentValues;

    move-result-object v0

    .line 50
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v1}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string/jumbo v1, "date_sent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method protected sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 9
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
    .line 151
    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v6, :cond_0

    const/4 v4, 0x1

    .line 152
    .local v4, "phoneType":I
    :goto_0
    const-string/jumbo v6, "LeadcoreMmsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendDataMessage | phoneType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, "deliveryIntent":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 156
    .local v5, "smsMgr":Landroid/telephony/SmsManager;
    const/4 v6, 0x7

    new-array v1, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v6

    const/4 v6, 0x3

    const-class v7, [B

    aput-object v7, v1, v6

    const/4 v6, 0x4

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v1, v6

    const/4 v6, 0x5

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v1, v6

    const/4 v6, 0x6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v6

    .line 159
    .local v1, "argsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x7

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v0, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x3

    aput-object p4, v0, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "com.iflytek.android.apps.action.SMS_DATA_SEND_ACTION"

    .line 160
    invoke-virtual {p0, v7, p2}, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->getSendPendingIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x5

    aput-object v2, v0, v6

    const/4 v6, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    .line 162
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v6, "LeadcoreMmsAdapter"

    const-string/jumbo v7, "sendDataMessage | call SmsManager.sendDataMessageMSMS()"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string/jumbo v6, "sendDataMessageMSMS"

    invoke-static {v5, v6, v1, v0}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v6, "LeadcoreMmsAdapter"

    const-string/jumbo v7, "sendDataMessage | call SmsManager.sendDataMessageMSMS() finished"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    return-void

    .line 151
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "argsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v4    # "phoneType":I
    .end local v5    # "smsMgr":Landroid/telephony/SmsManager;
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 166
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v1    # "argsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v2    # "deliveryIntent":Landroid/app/PendingIntent;
    .restart local v4    # "phoneType":I
    .restart local v5    # "smsMgr":Landroid/telephony/SmsManager;
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "LeadcoreMmsAdapter"

    const-string/jumbo v7, "sendDataMessage | error"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v6, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v6, v3}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .locals 17
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
    .line 63
    const-string/jumbo v14, "LeadcoreMmsAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sendTextMessage|address = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", content = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v14}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v14

    if-nez v14, :cond_0

    .line 67
    invoke-super/range {p0 .. p9}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V

    .line 112
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v12

    .line 72
    .local v12, "smsMgr":Landroid/telephony/SmsManager;
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 74
    .local v8, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 75
    .local v7, "messageCount":I
    const/4 v3, 0x0

    .line 76
    .local v3, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v11, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v7, :cond_1

    .line 80
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v14, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->mContext:Landroid/content/Context;

    const-class v16, Lcom/iflytek/base/mms/SmsSendReceiver;

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-direct {v5, v14, v0, v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v5, "itSend":Landroid/content/Intent;
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v14, v15, v1}, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v5, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 87
    .end local v5    # "itSend":Landroid/content/Intent;
    :cond_1
    :try_start_0
    const-class v2, Landroid/telephony/SmsManager;

    .line 89
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v14, 0x6

    new-array v13, v14, [Ljava/lang/Class;

    .line 90
    .local v13, "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    .line 91
    const/4 v14, 0x1

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    .line 92
    const/4 v14, 0x2

    const-class v15, Ljava/util/ArrayList;

    aput-object v15, v13, v14

    .line 93
    const/4 v14, 0x3

    const-class v15, Ljava/util/ArrayList;

    aput-object v15, v13, v14

    .line 94
    const/4 v14, 0x4

    const-class v15, Ljava/util/ArrayList;

    aput-object v15, v13, v14

    .line 95
    const/4 v14, 0x5

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    .line 97
    const-string/jumbo v14, "sendMultipartTextMessageMSMS"

    invoke-virtual {v2, v14, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 99
    .local v10, "sendTextMessage":Ljava/lang/reflect/Method;
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 100
    const/4 v14, 0x6

    new-array v9, v14, [Ljava/lang/Object;

    .line 101
    .local v9, "params":[Ljava/lang/Object;
    const/4 v14, 0x0

    aput-object p1, v9, v14

    .line 102
    const/4 v14, 0x1

    aput-object p2, v9, v14

    .line 103
    const/4 v14, 0x2

    aput-object v8, v9, v14

    .line 104
    const/4 v14, 0x3

    aput-object v11, v9, v14

    .line 105
    const/4 v14, 0x4

    aput-object v3, v9, v14

    .line 106
    const/4 v14, 0x5

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    .line 108
    invoke-virtual {v10, v12, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 109
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "params":[Ljava/lang/Object;
    .end local v10    # "sendTextMessage":Ljava/lang/reflect/Method;
    .end local v13    # "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 110
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "LeadcoreMmsAdapter"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
