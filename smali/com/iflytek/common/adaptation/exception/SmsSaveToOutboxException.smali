.class public Lcom/iflytek/common/adaptation/exception/SmsSaveToOutboxException;
.super Lcom/iflytek/common/adaptation/exception/SmsSaveException;
.source "SmsSaveToOutboxException.java"


# static fields
.field private static final serialVersionUID:J = -0x5a484e266f8848a2L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "save sms to inbox exception"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/exception/SmsSaveException;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 22
    const-string/jumbo v0, "save sms to inbox exception"

    invoke-direct {p0, v0, p1}, Lcom/iflytek/common/adaptation/exception/SmsSaveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 24
    return-void
.end method
