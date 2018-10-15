.class public abstract Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;
.source "HTCDualSimMmsAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HTCDualSimMmsAdapter"


# instance fields
.field private final SIM_SLOT:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected sendMultipartTextMessage:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 47
    const-string/jumbo v0, "sim_slot"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->SIM_SLOT:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->initMethod()V

    .line 53
    return-void
.end method


# virtual methods
.method public getCursorMode(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 3
    .param p1, "cursorMode"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string/jumbo v0, "HTCDualSimMmsAdapter"

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

    .line 122
    const-string/jumbo v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 126
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
    const-string/jumbo v0, "sim_slot"

    return-object v0
.end method

.method protected abstract getPhoneType()I
.end method

.method public getSimId(Landroid/content/Intent;[Landroid/telephony/SmsMessage;)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msg"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 162
    const-string/jumbo v2, "phone_type"

    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->getPhoneType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "phoneType":I
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->getSubPhoneType()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x2

    .line 164
    .local v1, "simSlot":I
    :goto_0
    return v1

    .line 163
    .end local v1    # "simSlot":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract getSubPhoneType()I
.end method

.method protected initMethod()V
    .locals 4

    .prologue
    .line 57
    const/4 v2, 0x7

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    .line 58
    .local v1, "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 59
    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 60
    const/4 v2, 0x2

    const-class v3, Ljava/util/ArrayList;

    aput-object v3, v1, v2

    .line 61
    const/4 v2, 0x3

    const-class v3, Ljava/util/ArrayList;

    aput-object v3, v1, v2

    .line 62
    const/4 v2, 0x4

    const-class v3, Ljava/util/ArrayList;

    aput-object v3, v1, v2

    .line 63
    const/4 v2, 0x5

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v1, v2

    .line 64
    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 65
    const-class v2, Landroid/telephony/SmsManager;

    const-string/jumbo v3, "sendMultipartTextMessageExt"

    .line 66
    invoke-static {v2, v3, v1}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->sendMultipartTextMessage:Ljava/lang/reflect/Method;

    .line 68
    iget-object v2, p0, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->sendMultipartTextMessage:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HTCDualSimMmsAdapter"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;
    .locals 3
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p2, "simSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 157
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "sim_slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    return-object v0
.end method

.method protected sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8
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
    .line 171
    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v5, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->getPhoneType()I

    move-result v3

    .line 173
    .local v3, "phoneType":I
    :goto_0
    const-string/jumbo v5, "HTCDualSimMmsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendDataMessage | phoneType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    .line 176
    .local v4, "smsMgr":Landroid/telephony/SmsManager;
    const/4 v5, 0x7

    new-array v1, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v1, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-class v6, [B

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v1, v5

    const/4 v5, 0x5

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v1, v5

    const/4 v5, 0x6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v1, v5

    .line 179
    .local v1, "argsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x7

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v0, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x3

    aput-object p4, v0, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "com.iflytek.android.apps.action.SMS_DATA_SEND_ACTION"

    .line 180
    invoke-virtual {p0, v6, p2}, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->getSendPendingIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput-object v6, v0, v5

    const/4 v5, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 182
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v5, "HTCDualSimMmsAdapter"

    const-string/jumbo v6, "sendDataMessage | SmsManager.sendDataMessageExt"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string/jumbo v5, "sendDataMessageExt"

    invoke-static {v4, v5, v1, v0}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v5, "HTCDualSimMmsAdapter"

    const-string/jumbo v6, "sendDataMessage | SmsManager.sendDataMessageExt---end"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    return-void

    .line 172
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "argsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "phoneType":I
    .end local v4    # "smsMgr":Landroid/telephony/SmsManager;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->getSubPhoneType()I

    move-result v3

    goto/16 :goto_0

    .line 186
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v1    # "argsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "phoneType":I
    .restart local v4    # "smsMgr":Landroid/telephony/SmsManager;
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "HTCDualSimMmsAdapter"

    const-string/jumbo v6, "sendDataMessage error"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v5, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v5, v2}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method protected sendDefaultTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .locals 1
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
    .line 194
    invoke-super/range {p0 .. p9}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V

    .line 195
    return-void
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
    .line 77
    const-string/jumbo v11, "HTCDualSimMmsAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sendTextMessageEx|phone = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", message = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->getPhoneType()I

    move-result v8

    .line 80
    .local v8, "phoneType":I
    const/4 v11, 0x1

    move/from16 v0, p9

    if-ne v0, v11, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->getSubPhoneType()I

    move-result v8

    .line 83
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v10

    .line 86
    .local v10, "smsMgr":Landroid/telephony/SmsManager;
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 88
    .local v6, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 89
    .local v5, "messageCount":I
    const/4 v1, 0x0

    .line 90
    .local v1, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v9, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 94
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v11, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    iget-object v12, p0, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->mContext:Landroid/content/Context;

    const-class v13, Lcom/iflytek/base/mms/SmsSendReceiver;

    move-object/from16 v0, p4

    invoke-direct {v3, v11, v0, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v3, "itSend":Landroid/content/Intent;
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {p0, v3, v11, v12, v0}, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 97
    iget-object v11, p0, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v3, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "itSend":Landroid/content/Intent;
    :cond_1
    const/4 v11, 0x7

    new-array v7, v11, [Ljava/lang/Object;

    .line 101
    .local v7, "params":[Ljava/lang/Object;
    const/4 v11, 0x0

    aput-object p1, v7, v11

    .line 102
    const/4 v11, 0x1

    aput-object p2, v7, v11

    .line 103
    const/4 v11, 0x2

    aput-object v6, v7, v11

    .line 104
    const/4 v11, 0x3

    aput-object v9, v7, v11

    .line 105
    const/4 v11, 0x4

    aput-object v1, v7, v11

    .line 106
    const/4 v11, 0x5

    const/4 v12, 0x0

    aput-object v12, v7, v11

    .line 107
    const/4 v11, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v11

    .line 108
    iget-object v11, p0, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->sendMultipartTextMessage:Ljava/lang/reflect/Method;

    if-nez v11, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->initMethod()V

    .line 113
    :cond_2
    :try_start_0
    iget-object v11, p0, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;->sendMultipartTextMessage:Ljava/lang/reflect/Method;

    invoke-static {v11, v10, v7}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    new-instance v11, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v11, v2}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v11
.end method
