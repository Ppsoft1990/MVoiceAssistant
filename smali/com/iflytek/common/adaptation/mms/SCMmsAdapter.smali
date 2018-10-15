.class public Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;
.source "SCMmsAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SCMmsAdapter"


# instance fields
.field private final SIM_ID_KEY:Ljava/lang/String;

.field private mSmsManager0:Landroid/telephony/SmsManager;

.field private mSmsManager1:Landroid/telephony/SmsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 30
    const-string/jumbo v0, "phone_id"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->SIM_ID_KEY:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->initMethod()V

    .line 37
    return-void
.end method

.method private initMethod()V
    .locals 7

    .prologue
    .line 41
    :try_start_0
    const-class v2, Landroid/telephony/SmsManager;

    const-string/jumbo v3, "getDefault"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 43
    .local v1, "getDefault":Ljava/lang/reflect/Method;
    const-class v2, Landroid/telephony/SmsManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 43
    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SmsManager;

    iput-object v2, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->mSmsManager0:Landroid/telephony/SmsManager;

    .line 45
    const-class v2, Landroid/telephony/SmsManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 45
    invoke-static {v1, v2, v3}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SmsManager;

    iput-object v2, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->mSmsManager1:Landroid/telephony/SmsManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "getDefault":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SCMmsAdapter"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendTextMessageEx(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;JJ)V
    .locals 12
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "serviceCenter"    # Ljava/lang/String;
    .param p3, "simId"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "threadId"    # J
    .param p8, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 91
    const-string/jumbo v1, "SCMmsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTextMessageGemini|phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v11

    .line 94
    .local v11, "smsMgr":Landroid/telephony/SmsManager;
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 96
    .local v4, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 97
    .local v10, "messageCount":I
    const/4 v6, 0x0

    .line 98
    .local v6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 102
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    iget-object v2, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/iflytek/base/mms/SmsSendReceiver;

    move-object/from16 v0, p5

    invoke-direct {v8, v1, v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v8, "itSend":Landroid/content/Intent;
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v8, v1, v2, p1}, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 109
    .end local v8    # "itSend":Landroid/content/Intent;
    :cond_0
    if-nez p3, :cond_1

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->mSmsManager0:Landroid/telephony/SmsManager;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 119
    :goto_1
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->mSmsManager1:Landroid/telephony/SmsManager;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v7

    .line 117
    .local v7, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v1, v7}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public getCursorMode(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1
    .param p1, "cursorMode"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 132
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method public getCursorModeColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string/jumbo v0, "phone_id"

    return-object v0
.end method

.method public getSimId(Landroid/content/Intent;[Landroid/telephony/SmsMessage;)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 147
    const-string/jumbo v1, "phone_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 148
    .local v0, "simId":I
    const-string/jumbo v1, "SCMmsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSimId | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v0
.end method

.method public makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;
    .locals 4
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p2, "phoneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 138
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v1}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string/jumbo v1, "SCMmsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeContentValues | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
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
    .line 56
    invoke-super/range {p0 .. p8}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->makeOutboxValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/content/ContentValues;

    move-result-object v0

    .line 58
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v1}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    :goto_0
    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string/jumbo v1, "SCMmsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeOutboxValues | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    .line 155
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v1}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const-string/jumbo v1, "SCMmsAdapter"

    const-string/jumbo v2, "sendDataMessage | it is single card phone, call super.sendDataMessage()"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 179
    :goto_0
    return-void

    .line 162
    :cond_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->mSmsManager1:Landroid/telephony/SmsManager;

    .line 163
    .local v0, "smsMgr":Landroid/telephony/SmsManager;
    :goto_1
    const/4 v6, 0x0

    .line 164
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v5, 0x0

    .line 165
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.android.apps.action.SMS_DATA_SEND_ACTION"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/iflytek/base/mms/SmsSendReceiver;

    invoke-direct {v8, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v8, "itSend":Landroid/content/Intent;
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v8, v1, v2, p2}, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 171
    :try_start_0
    const-string/jumbo v1, "SCMmsAdapter"

    const-string/jumbo v2, "sendDataMessage | start"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 174
    const-string/jumbo v1, "SCMmsAdapter"

    const-string/jumbo v2, "sendDataMessage | end"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v7

    .line 176
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SCMmsAdapter"

    const-string/jumbo v2, "sendDataMessage | error"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    new-instance v1, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v1, v7}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 162
    .end local v0    # "smsMgr":Landroid/telephony/SmsManager;
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "itSend":Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->mSmsManager0:Landroid/telephony/SmsManager;

    goto :goto_1
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .locals 11
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
    .line 71
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v0}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-super/range {p0 .. p9}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->mSmsManager0:Landroid/telephony/SmsManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->mSmsManager1:Landroid/telephony/SmsManager;

    if-nez v0, :cond_2

    .line 80
    :cond_1
    invoke-super/range {p0 .. p9}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p9

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    .line 85
    invoke-direct/range {v0 .. v9}, Lcom/iflytek/common/adaptation/mms/SCMmsAdapter;->sendTextMessageEx(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;JJ)V

    goto :goto_0
.end method
