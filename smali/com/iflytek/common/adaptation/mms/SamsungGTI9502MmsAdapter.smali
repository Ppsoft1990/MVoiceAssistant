.class public Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;
.source "SamsungGTI9502MmsAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 30
    const-string/jumbo v0, "SamsungGTI9502MmsAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->TAG:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private sendBinaryMessage17(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;[B)V
    .locals 11
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "contents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6

    .line 144
    .local v6, "smsMgr":Landroid/telephony/SmsManager;
    const-string/jumbo v7, "android.telephony.SmsManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 146
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

    .line 153
    .local v4, "sendDateMessage":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 155
    .local v1, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v5, 0x0

    .line 157
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "com.iflytek.android.apps.action.SMS_DATA_SEND_ACTION"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->mContext:Landroid/content/Context;

    const-class v10, Lcom/iflytek/base/mms/SmsSendReceiver;

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v3, "itSend":Landroid/content/Intent;
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0, v3, v7, v8, p2}, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 160
    iget-object v7, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 162
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 163
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

    aput-object p3, v7, v8

    const/4 v8, 0x5

    aput-object v5, v7, v8

    const/4 v8, 0x6

    aput-object v1, v7, v8

    const/4 v8, 0x7

    .line 164
    invoke-virtual {p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 163
    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-void

    .line 165
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v3    # "itSend":Landroid/content/Intent;
    .end local v4    # "sendDateMessage":Ljava/lang/reflect/Method;
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "smsMgr":Landroid/telephony/SmsManager;
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SamsungGTI9502MmsAdapter"

    const-string/jumbo v8, "sendDataMessage error"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v7, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v7, v2}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method private sendBinaryMessage18(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4
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
    .line 177
    new-instance v0, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-direct {v0, v2, v3}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 180
    .local v0, "adapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/iflytek/common/adaptation/exception/SmsSendException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Lcom/iflytek/common/adaptation/exception/SmsSendException;
    const-string/jumbo v2, "SamsungGTI9502MmsAdapter"

    const-string/jumbo v3, "sendBinaryMessage18 occur error"

    invoke-static {v2, v3, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    new-instance v2, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v2}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>()V

    throw v2
.end method

.method private sendTextMessage17(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .locals 18
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "threadId"    # J
    .param p6, "messageId"    # J
    .param p8, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v11

    .line 67
    .local v11, "smsMgr":Landroid/telephony/SmsManager;
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 69
    .local v8, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 70
    .local v7, "messageCount":I
    const/4 v3, 0x0

    .line 71
    .local v3, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v10, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 75
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v12, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->mContext:Landroid/content/Context;

    const-class v14, Lcom/iflytek/base/mms/SmsSendReceiver;

    move-object/from16 v0, p3

    invoke-direct {v5, v12, v0, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v5, "itSend":Landroid/content/Intent;
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v12, v13, v1}, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v5, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 82
    .end local v5    # "itSend":Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-class v2, Landroid/telephony/SmsManager;

    .line 83
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v12, "sendMultipartTextMessage"

    const/16 v13, 0xb

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-class v15, Ljava/util/ArrayList;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-class v15, Ljava/util/ArrayList;

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-class v15, Ljava/util/ArrayList;

    aput-object v15, v13, v14

    const/4 v14, 0x5

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    const/4 v14, 0x6

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    const/4 v14, 0x7

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    const/16 v14, 0x8

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    const/16 v14, 0x9

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    const/16 v14, 0xa

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 88
    .local v9, "sendTextMessage":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 89
    const/16 v12, 0xb

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v8, v12, v13

    const/4 v13, 0x3

    aput-object v10, v12, v13

    const/4 v13, 0x4

    aput-object v3, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x0

    .line 90
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x9

    .line 91
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xa

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    .line 89
    invoke-virtual {v9, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 92
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "sendTextMessage":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "SamsungGTI9502MmsAdapter"

    const-string/jumbo v13, ""

    invoke-static {v12, v13, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    new-instance v12, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v12}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>()V

    throw v12
.end method

.method private sendTextMessage18(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .locals 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "threadId"    # J
    .param p6, "messageId"    # J
    .param p8, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v1, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-direct {v1, v2, v3}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 107
    .local v1, "adapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    :try_start_0
    invoke-virtual/range {v1 .. v10}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    :try_end_0
    .catch Lcom/iflytek/common/adaptation/exception/SmsSendException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lcom/iflytek/common/adaptation/exception/SmsSendException;
    const-string/jumbo v2, "SamsungGTI9502MmsAdapter"

    const-string/jumbo v3, "sendTextMessage18 occur error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    new-instance v2, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v2}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>()V

    throw v2
.end method


# virtual methods
.method public detectSendDataMessage()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 218
    :try_start_0
    const-string/jumbo v4, "android.telephony.SmsManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 219
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "sendDataMessage"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, [B

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungGTI9502MmsAdapter"

    const-string/jumbo v4, "step two error"

    invoke-static {v2, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 228
    goto :goto_0
.end method

.method public detectSendTextMessage()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 202
    :try_start_0
    const-class v0, Landroid/telephony/SmsManager;

    .line 203
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "sendMultipartTextMessage"

    const/16 v5, 0xb

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

    const/16 v6, 0x9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungGTI9502MmsAdapter"

    const-string/jumbo v4, "detect SamsungGTI9502MmsAdapter error"

    invoke-static {v2, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 211
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
    .line 191
    const-string/jumbo v1, "SamsungGTI9502MmsAdapter"

    const-string/jumbo v2, "makeOutboxValues"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-super/range {p0 .. p8}, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->makeOutboxValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/content/ContentValues;

    move-result-object v0

    .line 195
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    return-object v0
.end method

.method protected sendBinaryMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 5
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
    .line 119
    const-string/jumbo v2, "SamsungGTI9502MmsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataMessage | address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " simId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .local v1, "sdk":I
    const/16 v2, 0x11

    if-gt v1, v2, :cond_0

    .line 126
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->sendBinaryMessage17(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;[B)V

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->sendBinaryMessage18(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SamsungGTI9502MmsAdapter"

    const-string/jumbo v3, "sendBinaryMessage occur error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    new-instance v2, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v2}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>()V

    throw v2
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
    .line 44
    const-string/jumbo v0, "SamsungGTI9502MmsAdapter"

    const-string/jumbo v1, "sendTextMessage"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    .local v10, "sdk":I
    const/16 v0, 0x11

    if-gt v10, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    .line 50
    :try_start_0
    invoke-direct/range {v0 .. v8}, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->sendTextMessage17(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V

    .line 59
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    .line 52
    invoke-direct/range {v0 .. v8}, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;->sendTextMessage18(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v9

    .line 55
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "SamsungGTI9502MmsAdapter"

    const-string/jumbo v1, "sendTextMessage occur error"

    invoke-static {v0, v1, v9}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    new-instance v0, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v0, v9}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
