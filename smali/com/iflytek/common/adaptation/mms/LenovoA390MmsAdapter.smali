.class Lcom/iflytek/common/adaptation/mms/LenovoA390MmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;
.source "LenovoA390MmsAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LenovoA390MmsAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getCursorMode(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1
    .param p1, "cursorMode"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCursorModeColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsParserException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
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
    .line 71
    new-instance v0, Lcom/iflytek/common/adaptation/exception/SmsSendException;

    const-string/jumbo v1, "unimplement sendDataMessage method"

    invoke-direct {v0, v1}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
