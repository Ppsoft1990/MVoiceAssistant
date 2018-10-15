.class public Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;
.source "SamsungMmsAdapter.java"


# static fields
.field private static final GSM_SMS_RECEIVE:Ljava/lang/String; = "android.provider.Telephony.GSM_SMS_RECEIVED"


# instance fields
.field private final CONTENT_URI:Landroid/net/Uri;

.field public final PHONE_TYPE:Ljava/lang/String;

.field private SCH_I869:Ljava/lang/String;

.field private final SIM_IMSI:Ljava/lang/String;

.field private final SIM_SLOT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private smsExtraField:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 24
    const-string/jumbo v0, "SamsungMmsAdapter"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->TAG:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->CONTENT_URI:Landroid/net/Uri;

    .line 28
    const-string/jumbo v0, "phonetype"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->PHONE_TYPE:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "sim_slot"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->SIM_SLOT:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "sim_imsi"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->SIM_IMSI:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "phonetype"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->smsExtraField:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "SCH-I869"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->SCH_I869:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->checkSimIdentify()V

    .line 37
    return-void
.end method

.method private checkSimIdentify()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "phonetype"

    invoke-static {v0, v1, v2}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->hasField(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string/jumbo v0, "phonetype"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->smsExtraField:Ljava/lang/String;

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "sim_slot"

    invoke-static {v0, v1, v2}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->hasField(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-string/jumbo v0, "sim_slot"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->smsExtraField:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_1
    const-string/jumbo v0, "band"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->smsExtraField:Ljava/lang/String;

    goto :goto_0
.end method

.method private parserPhoneType(Landroid/content/Intent;)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 55
    if-nez p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v3

    .line 65
    :cond_1
    const-string/jumbo v4, "simSlot"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 66
    .local v2, "simSlot":I
    if-eq v2, v5, :cond_2

    move v3, v2

    .line 67
    goto :goto_0

    .line 70
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 71
    .local v1, "model":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->SCH_I869:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 72
    const-string/jumbo v4, "format"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "format":Ljava/lang/String;
    const-string/jumbo v4, "3gpp2"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "format":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->parserPhoneTypeByAction(Landroid/content/Intent;)I

    move-result v3

    goto :goto_0
.end method

.method private parserPhoneTypeByAction(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.provider.Telephony.GSM_SMS_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 85
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCursorMode(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 3
    .param p1, "cursorMode"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string/jumbo v0, "SamsungMmsAdapter"

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

    .line 109
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method public getCursorModeColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->smsExtraField:Ljava/lang/String;

    return-object v0
.end method

.method public getSimId(Landroid/content/Intent;[Landroid/telephony/SmsMessage;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msg"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->parserPhoneType(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;
    .locals 5
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p2, "phoneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->makeContentValues([Landroid/telephony/SmsMessage;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 92
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string/jumbo v2, "sim_slot"

    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    if-nez p2, :cond_1

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 95
    .local v0, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :goto_0
    const-string/jumbo v2, "sim_imsi"

    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v3, v0}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v0    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_0
    const-string/jumbo v2, "SamsungMmsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeContentValues | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object v1

    .line 94
    :cond_1
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

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
    .line 120
    const-string/jumbo v2, "SamsungMmsAdapter"

    const-string/jumbo v3, "makeOutboxValues"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super/range {p0 .. p8}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;->makeOutboxValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/content/ContentValues;

    move-result-object v1

    .line 124
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string/jumbo v2, "sim_slot"

    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    if-nez p8, :cond_1

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 127
    .local v0, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :goto_0
    const-string/jumbo v2, "sim_imsi"

    iget-object v3, p0, Lcom/iflytek/common/adaptation/mms/SamsungMmsAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v3, v0}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .end local v0    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_0
    return-object v1

    .line 126
    :cond_1
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

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
    .line 135
    new-instance v0, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    const-string/jumbo v1, "unimplement sendDataMessage method"

    invoke-direct {v0, v1}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
