.class public Lcom/iflytek/msc/MSCSessionInfo;
.super Ljava/lang/Object;


# instance fields
.field public buffer:[B

.field public buflen:I

.field public epstatues:I

.field public errorcode:I

.field public rsltstatus:I

.field public sesstatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    iput v0, p0, Lcom/iflytek/msc/MSCSessionInfo;->buflen:I

    iput-object v1, p0, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    iput v0, p0, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/msc/MSCSessionInfo;->rsltstatus:I

    return-void
.end method


# virtual methods
.method public getQisrErrCode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    return v0
.end method

.method public getQisrRecogStatus()I
    .locals 1

    iget v0, p0, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    return v0
.end method

.method public getQisrRsltStatus()I
    .locals 1

    iget v0, p0, Lcom/iflytek/msc/MSCSessionInfo;->rsltstatus:I

    return v0
.end method

.method public getQmspErrCode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    return v0
.end method

.method public getQttsErrCode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    return v0
.end method

.method public getQttsSynthStatus()I
    .locals 1

    iget v0, p0, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    return-void
.end method

.method public setQttsSynthStatus(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    return-void
.end method
