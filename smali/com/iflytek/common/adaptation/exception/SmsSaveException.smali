.class public Lcom/iflytek/common/adaptation/exception/SmsSaveException;
.super Lcom/iflytek/common/adaptation/exception/BaseException;
.source "SmsSaveException.java"


# static fields
.field private static final serialVersionUID:J = -0x56a7e9ca61259655L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "save sms exception"

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/exception/SmsSaveException;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 22
    const-string/jumbo v0, "save sms exception"

    invoke-direct {p0, v0, p1}, Lcom/iflytek/common/adaptation/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/exception/BaseException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32
    return-void
.end method
