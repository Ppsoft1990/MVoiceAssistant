.class public Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;
.source "SamsungISmsMmsAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 26
    const-string/jumbo v0, "SamsungISmsMmsAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private getISms(I)Lcom/android/internal/telephony/ISms;
    .locals 8
    .param p1, "simId"    # I

    .prologue
    const/4 v3, 0x1

    .line 146
    const-string/jumbo v2, "isms"

    .line 147
    .local v2, "strISMS":Ljava/lang/String;
    if-ne p1, v3, :cond_0

    .line 148
    const-string/jumbo v2, "isms2"

    .line 151
    :cond_0
    const/4 v1, 0x0

    .line 153
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string/jumbo v3, "android.os.ServiceManager"

    .line 154
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "getService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 155
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 156
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 153
    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 160
    :goto_0
    return-object v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SamsungISmsMmsAdapter"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendData(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 196
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->getISms(I)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 197
    .local v2, "iSms":Lcom/android/internal/telephony/ISms;
    if-nez v2, :cond_0

    .line 198
    new-instance v1, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    const-string/jumbo v3, "getISms() ---> null"

    invoke-direct {v1, v3}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    .local v10, "sdk":I
    const/16 v1, 0x11

    if-gt v10, v1, :cond_1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 204
    :try_start_0
    invoke-direct/range {v1 .. v8}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->sendData17(Lcom/android/internal/telephony/ISms;Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 214
    :goto_0
    return-void

    :cond_1
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 207
    invoke-direct/range {v1 .. v8}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->sendData18(Lcom/android/internal/telephony/ISms;Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v9

    .line 211
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SamsungISmsMmsAdapter"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    new-instance v1, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v1, v9}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private sendData17(Lcom/android/internal/telephony/ISms;Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "iSms"    # Lcom/android/internal/telephony/ISms;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "destinationPort"    # S
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v4

    .line 220
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object p5, v0, v6

    aput-object p6, v0, v7

    const/4 v2, 0x5

    aput-object p7, v0, v2

    .line 221
    .local v0, "args":[Ljava/lang/Object;
    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-class v2, [B

    aput-object v2, v1, v6

    const-class v2, Landroid/app/PendingIntent;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-class v3, Landroid/app/PendingIntent;

    aput-object v3, v1, v2

    .line 224
    .local v1, "argsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v2, "sendData"

    invoke-static {p1, v2, v1, v0}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method private sendData18(Lcom/android/internal/telephony/ISms;Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "iSms"    # Lcom/android/internal/telephony/ISms;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "destinationPort"    # S
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 230
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    .line 231
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    aput-object p5, v0, v7

    const/4 v2, 0x5

    aput-object p6, v0, v2

    const/4 v2, 0x6

    aput-object p7, v0, v2

    .line 233
    .local v0, "args":[Ljava/lang/Object;
    const/4 v2, 0x7

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    const-class v2, [B

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-class v3, Landroid/app/PendingIntent;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Landroid/app/PendingIntent;

    aput-object v3, v1, v2

    .line 236
    .local v1, "argsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v2, "sendData"

    invoke-static {p1, v2, v1, v0}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method

.method private sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "scCenter"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p6}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->getISms(I)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 62
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-nez v1, :cond_0

    .line 63
    new-instance v0, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    const-string/jumbo v2, "getISms() ---> null"

    invoke-direct {v0, v2}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .local v7, "sdk":I
    const/16 v0, 0x11

    if-gt v7, v0, :cond_1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 68
    invoke-direct/range {v0 .. v6}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->sendText17(Lcom/android/internal/telephony/ISms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 74
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->sendText18(Lcom/android/internal/telephony/ISms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private sendText17(Lcom/android/internal/telephony/ISms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "iSms"    # Lcom/android/internal/telephony/ISms;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "scCenter"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    invoke-interface/range {p1 .. p6}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v1, v0}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private sendText18(Lcom/android/internal/telephony/ISms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "iSms"    # Lcom/android/internal/telephony/ISms;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "scCenter"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    const-class v0, Lcom/android/internal/telephony/ISms;

    .line 120
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x6

    new-array v4, v5, [Ljava/lang/Class;

    .line 121
    .local v4, "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 122
    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 123
    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 124
    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 125
    const/4 v5, 0x4

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v4, v5

    .line 126
    const/4 v5, 0x5

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v4, v5

    .line 128
    const-string/jumbo v5, "sendText"

    invoke-static {v0, v5, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 131
    .local v3, "sendText":Ljava/lang/reflect/Method;
    const/4 v5, 0x6

    new-array v2, v5, [Ljava/lang/Object;

    .line 132
    .local v2, "params":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string/jumbo v6, "com.iflytek.cmcc"

    aput-object v6, v2, v5

    .line 133
    const/4 v5, 0x1

    aput-object p2, v2, v5

    .line 134
    const/4 v5, 0x2

    aput-object p3, v2, v5

    .line 135
    const/4 v5, 0x3

    aput-object p4, v2, v5

    .line 136
    const/4 v5, 0x4

    aput-object p5, v2, v5

    .line 137
    const/4 v5, 0x5

    aput-object p6, v2, v5

    .line 139
    invoke-static {v3, p1, v2}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-void

    .line 140
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "params":[Ljava/lang/Object;
    .end local v3    # "sendText":Ljava/lang/reflect/Method;
    .end local v4    # "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    invoke-direct {v5, v1}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method


# virtual methods
.method public detectSendDataMessage()Z
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->detectSendTextMessage()Z

    move-result v0

    return v0
.end method

.method public detectSendTextMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 241
    invoke-direct {p0, v1}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->getISms(I)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 242
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    .line 166
    const-string/jumbo v0, "SamsungISmsMmsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDataMessage | address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v0, :cond_0

    .line 170
    :try_start_0
    const-string/jumbo v0, "SamsungISmsMmsAdapter"

    const-string/jumbo v1, "sendDataMessage | it is sim1, call sentSms()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->sendSms(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Lcom/iflytek/common/adaptation/exception/SmsSaveToOutboxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v8

    .line 173
    .local v8, "e":Lcom/iflytek/common/adaptation/exception/SmsSaveToOutboxException;
    const-string/jumbo v0, "SamsungISmsMmsAdapter"

    const-string/jumbo v1, "sendDataMessage "

    invoke-static {v0, v1, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 178
    .end local v8    # "e":Lcom/iflytek/common/adaptation/exception/SmsSaveToOutboxException;
    :cond_0
    const-string/jumbo v0, "SamsungISmsMmsAdapter"

    const-string/jumbo v1, "sendDataMessage | call ISms.sendData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v6, 0x0

    .line 182
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v5, 0x0

    .line 184
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "com.iflytek.android.apps.action.SMS_DATA_SEND_ACTION"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/iflytek/base/mms/SmsSendReceiver;

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v9, "itSend":Landroid/content/Intent;
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v9, v0, v1, p2}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 188
    if-nez p1, :cond_1

    const/4 v7, 0x0

    .line 189
    .local v7, "simId":I
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->sendData(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto :goto_0

    .line 188
    .end local v7    # "simId":I
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v7

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
    .line 37
    const-string/jumbo v2, "SamsungISmsMmsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendTextMessage | address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", | scCenter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", content ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", threadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", messageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", simId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-nez p9, :cond_0

    .line 43
    invoke-super/range {p0 .. p9}, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V

    .line 56
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/iflytek/base/mms/SmsSendReceiver;

    invoke-direct {v9, v2, p4, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v9, "itSend":Landroid/content/Intent;
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v9, v2, v3, p1}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v9, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 53
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .local v7, "deliveryIntent":Landroid/app/PendingIntent;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v8, p9

    .line 55
    invoke-direct/range {v2 .. v8}, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto :goto_0
.end method
