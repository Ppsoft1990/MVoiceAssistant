.class public interface abstract Lcom/iflytek/common/adaptation/IMmsAdaptation;
.super Ljava/lang/Object;
.source "IMmsAdaptation.java"


# virtual methods
.method public abstract filterMmsReceive(Landroid/content/Intent;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsParserException;,
            Lcom/iflytek/common/adaptation/exception/SmsSaveToInboxException;
        }
    .end annotation
.end method

.method public abstract getCursorMode(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
.end method

.method public abstract getCursorModeColumnName()Ljava/lang/String;
.end method

.method public abstract getIntentMmsMore()Landroid/content/Intent;
.end method

.method public abstract getMmsReceiveAction()[Ljava/lang/String;
.end method

.method public abstract sendDataMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation
.end method

.method public abstract sendSms(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsSaveException;,
            Lcom/iflytek/common/adaptation/exception/SmsSendException;
        }
    .end annotation
.end method

.method public abstract sendSmsIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method
