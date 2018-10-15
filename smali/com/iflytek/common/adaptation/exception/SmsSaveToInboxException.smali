.class public Lcom/iflytek/common/adaptation/exception/SmsSaveToInboxException;
.super Lcom/iflytek/common/adaptation/exception/SmsSaveException;
.source "SmsSaveToInboxException.java"


# static fields
.field private static final serialVersionUID:J = -0x4b19f22e421fa06L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "save sms to inbox exception"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/exception/SmsSaveException;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 20
    const-string/jumbo v0, "save sms to inbox exception"

    invoke-direct {p0, v0, p1}, Lcom/iflytek/common/adaptation/exception/SmsSaveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 22
    return-void
.end method
