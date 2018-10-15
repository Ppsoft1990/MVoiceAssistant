.class public Lcom/iflytek/common/adaptation/exception/BaseException;
.super Ljava/lang/Exception;
.source "BaseException.java"


# static fields
.field private static final serialVersionUID:J = -0x708b7670235104c1L


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/common/adaptation/exception/BaseException;->statusCode:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/common/adaptation/exception/BaseException;->statusCode:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/common/adaptation/exception/BaseException;->statusCode:I

    .line 21
    iput p2, p0, Lcom/iflytek/common/adaptation/exception/BaseException;->statusCode:I

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/common/adaptation/exception/BaseException;->statusCode:I

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;
    .param p3, "statusCode"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/common/adaptation/exception/BaseException;->statusCode:I

    .line 30
    iput p3, p0, Lcom/iflytek/common/adaptation/exception/BaseException;->statusCode:I

    .line 31
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/iflytek/common/adaptation/exception/BaseException;->statusCode:I

    return v0
.end method
