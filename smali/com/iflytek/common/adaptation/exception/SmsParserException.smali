.class public Lcom/iflytek/common/adaptation/exception/SmsParserException;
.super Lcom/iflytek/common/adaptation/exception/BaseException;
.source "SmsParserException.java"


# static fields
.field private static final serialVersionUID:J = -0x3f69751a37d5b108L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "sms parser exception"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/exception/SmsParserException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 16
    const-string/jumbo v0, "sms parser exception"

    invoke-direct {p0, v0, p1}, Lcom/iflytek/common/adaptation/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/exception/BaseException;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 26
    return-void
.end method
