.class public Lcom/iflytek/common/adaptation/exception/SmsSendException;
.super Lcom/iflytek/common/adaptation/exception/BaseException;
.source "SmsSendException.java"


# static fields
.field private static final serialVersionUID:J = 0x9533fdd369c0709L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "send sms exception"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/exception/SmsSendException;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 21
    const-string/jumbo v0, "send sms exception"

    invoke-direct {p0, v0, p1}, Lcom/iflytek/common/adaptation/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/exception/BaseException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 31
    return-void
.end method
