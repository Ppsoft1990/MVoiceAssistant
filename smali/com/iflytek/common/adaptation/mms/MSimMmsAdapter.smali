.class public Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;
.source "MSimMmsAdapter.java"


# instance fields
.field private final HONGMI_1SC:Ljava/lang/String;

.field private final HUAWEI_U8825D:Ljava/lang/String;

.field private final LENOVE_K910:Ljava/lang/String;

.field private final LENOVO_A860E:Ljava/lang/String;

.field private final SIM_ID:Ljava/lang/String;

.field private final SUBSCRIPTION_KEY:Ljava/lang/String;

.field private final SUB_ID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 30
    const-string/jumbo v0, "MSimMmsAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->TAG:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "sub_id"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->SUB_ID:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "sim_id"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->SIM_ID:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "subscription"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->SUBSCRIPTION_KEY:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "HUAWEI U8825D"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->HUAWEI_U8825D:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "Lenovo K910"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->LENOVE_K910:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "HM 1SC"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->HONGMI_1SC:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "Lenovo A860e"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->LENOVO_A860E:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public detectSendDataMessage()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 229
    :try_start_0
    const-string/jumbo v5, "android.telephony.MSimSmsManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 230
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x7

    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-class v6, [B

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v2, v5

    const/4 v5, 0x6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    .line 233
    .local v2, "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v5, "sendDataMessage"

    invoke-static {v0, v5, v2}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return v3

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MSimMmsAdapter"

    const-string/jumbo v5, "detectSendDataMessage"

    invoke-static {v3, v5, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 240
    goto :goto_0
.end method

.method public detectSendTextMessage()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 209
    :try_start_0
    const-string/jumbo v5, "android.telephony.MSimSmsManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 210
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x6

    new-array v2, v5, [Ljava/lang/Class;

    .line 211
    .local v2, "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    .line 212
    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    .line 213
    const/4 v5, 0x2

    const-class v6, Ljava/util/ArrayList;

    aput-object v6, v2, v5

    .line 214
    const/4 v5, 0x3

    const-class v6, Ljava/util/ArrayList;

    aput-object v6, v2, v5

    .line 215
    const/4 v5, 0x4

    const-class v6, Ljava/util/ArrayList;

    aput-object v6, v2, v5

    .line 216
    const/4 v5, 0x5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    .line 217
    const-string/jumbo v5, "sendMultipartTextMessage"

    invoke-static {v0, v5, v2}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return v3

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MSimMmsAdapter"

    const-string/jumbo v5, "detectSendTextMessage"

    invoke-static {v3, v5, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 223
    goto :goto_0
.end method

.method public getCursorMode(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 5
    .param p1, "cursorMode"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    const-string/jumbo v2, "MSimMmsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCursorMode | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 113
    .local v0, "model":Ljava/lang/String;
    const-string/jumbo v2, "Lenovo K910"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "HM 1SC"

    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Lenovo A860e"

    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    :cond_0
    const-string/jumbo v2, "2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 122
    :goto_0
    return-object v1

    .line 117
    :cond_1
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0

    .line 120
    :cond_2
    const-string/jumbo v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    :goto_1
    goto :goto_0

    :cond_3
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_1
.end method

.method public getCursorModeColumnName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "HM 1SC"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "sim_id"

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "sub_id"

    goto :goto_0
.end method

.method public getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsParserException;
        }
    .end annotation

    .prologue
    .line 128
    const-string/jumbo v0, "HUAWEI U8825D"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimId(Landroid/content/Intent;[Landroid/telephony/SmsMessage;)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 153
    const-string/jumbo v1, "subscription"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, "phoneType":I
    const-string/jumbo v1, "MSimMmsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSimId | subscription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v0
.end method

.method public makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;
    .locals 5
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p2, "simSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 138
    .local v1, "values":Landroid/content/ContentValues;
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 139
    .local v0, "model":Ljava/lang/String;
    const-string/jumbo v2, "Lenovo K910"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "HM 1SC"

    .line 140
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Lenovo A860e"

    .line 141
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    :goto_0
    const-string/jumbo v2, "MSimMmsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeContentValues | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-object v1

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

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
    .line 162
    const-string/jumbo v1, "MSimMmsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeOutboxValues | simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-super/range {p0 .. p8}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->makeOutboxValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/content/ContentValues;

    move-result-object v0

    .line 166
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "Lenovo K910"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HM 1SC"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    :goto_0
    return-object v0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
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
    .line 185
    :try_start_0
    const-string/jumbo v5, "android.telephony.MSimSmsManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 186
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getDefault"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v5, v6, v7}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 189
    .local v4, "smsMgr":Ljava/lang/Object;
    const/4 v5, 0x7

    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-class v6, [B

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v3, v5

    const/4 v5, 0x6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    .line 192
    .local v3, "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x7

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x3

    aput-object p4, v2, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "com.iflytek.android.apps.action.SMS_DATA_SEND_ACTION"

    invoke-virtual {p0, v6, p2}, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->getSendPendingIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput-object v6, v2, v5

    const/4 v5, 0x6

    .line 193
    invoke-virtual {p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 195
    .local v2, "params":[Ljava/lang/Object;
    const-string/jumbo v5, "sendDataMessage"

    invoke-static {v4, v5, v3, v2}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string/jumbo v5, "MSimMmsAdapter"

    const-string/jumbo v6, "sendDataMessage | call sendDataMessage success"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-void

    .line 198
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "params":[Ljava/lang/Object;
    .end local v3    # "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "smsMgr":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "MSimMmsAdapter"

    const-string/jumbo v6, "sendDataMessage | error"

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    const-string/jumbo v5, "MSimMmsAdapter"

    const-string/jumbo v6, "sendDataMessage | throws SmsSendException"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v5, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    const-string/jumbo v6, "unimplement sendDataMessage method"

    invoke-direct {v5, v6}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJI)V
    .locals 21
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
    .line 48
    const-string/jumbo v18, "MSimMmsAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sendTextMessage | address = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", | scCenter "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", content ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", uri = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", threadId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", messageId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", simId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v16

    .line 54
    .local v16, "smsMgr":Landroid/telephony/SmsManager;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 56
    .local v12, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 57
    .local v11, "messageCount":I
    const/4 v5, 0x0

    .line 58
    .local v5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v15, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    if-ge v8, v11, :cond_0

    .line 62
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v18, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-class v20, Lcom/iflytek/base/mms/SmsSendReceiver;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v7, "itSend":Landroid/content/Intent;
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->intentPutPhoneExtra(Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/adaptation/mms/MSimMmsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 69
    .end local v7    # "itSend":Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-string/jumbo v18, "android.telephony.MSimSmsManager"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 70
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v18, "getDefault"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    .line 71
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 72
    .local v9, "mdGetDefault":Ljava/lang/reflect/Method;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v9, v0, v1}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 74
    .local v13, "objMSimSmsManager":Ljava/lang/Object;
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    .line 75
    .local v17, "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v18, 0x0

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    .line 76
    const/16 v18, 0x1

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    .line 77
    const/16 v18, 0x2

    const-class v19, Ljava/util/ArrayList;

    aput-object v19, v17, v18

    .line 78
    const/16 v18, 0x3

    const-class v19, Ljava/util/ArrayList;

    aput-object v19, v17, v18

    .line 79
    const/16 v18, 0x4

    const-class v19, Ljava/util/ArrayList;

    aput-object v19, v17, v18

    .line 80
    const/16 v18, 0x5

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v17, v18

    .line 81
    const-string/jumbo v18, "sendMultipartTextMessage"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 84
    .local v10, "mdSendMultipartTextMessage":Ljava/lang/reflect/Method;
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/Object;

    .line 85
    .local v14, "params":[Ljava/lang/Object;
    const/16 v18, 0x0

    aput-object p1, v14, v18

    .line 86
    const/16 v18, 0x1

    aput-object p2, v14, v18

    .line 87
    const/16 v18, 0x2

    aput-object v12, v14, v18

    .line 88
    const/16 v18, 0x3

    aput-object v15, v14, v18

    .line 89
    const/16 v18, 0x4

    aput-object v5, v14, v18

    .line 90
    const/16 v18, 0x5

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v14, v18

    .line 92
    invoke-static {v10, v13, v14}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 94
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "mdGetDefault":Ljava/lang/reflect/Method;
    .end local v10    # "mdSendMultipartTextMessage":Ljava/lang/reflect/Method;
    .end local v13    # "objMSimSmsManager":Ljava/lang/Object;
    .end local v14    # "params":[Ljava/lang/Object;
    .end local v17    # "types_send":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v6

    .line 95
    .local v6, "e":Ljava/lang/Exception;
    new-instance v18, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/Exception;)V

    throw v18
.end method
