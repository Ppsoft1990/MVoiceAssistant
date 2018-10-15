.class public Lwa;
.super Ljava/lang/Object;
.source "BusinessResult.java"

# interfaces
.implements Lcom/iflytek/yd/business/OperationInfo;


# instance fields
.field private mAuthAction:Ljava/lang/String;

.field private mDataSrcId:Ljava/lang/String;

.field private mDataSrcName:Ljava/lang/String;

.field private mDesc:Ljava/lang/String;

.field private mErrorCode:Ljava/lang/String;

.field private mFocus:Ljava/lang/String;

.field private mOperation:Ljava/lang/String;

.field private mRequestId:J

.field private mRequestType:I

.field private mStatus:Ljava/lang/String;

.field private mXmlResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lwa;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlResult"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lwa;->mXmlResult:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getAuthAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lwa;->mAuthAction:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSrcId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lwa;->mDataSrcId:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSrcName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lwa;->mDataSrcName:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lwa;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lwa;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lwa;->mFocus:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lwa;->mOperation:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lwa;->mRequestId:J

    return-wide v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lwa;->mRequestType:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lwa;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lwa;->mXmlResult:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "authAction"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lwa;->mAuthAction:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setDataSrcId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataSrcId"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lwa;->mDataSrcId:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setDataSrcName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataSrcName"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lwa;->mDataSrcName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lwa;->mDesc:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lwa;->mErrorCode:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setFocus(Ljava/lang/String;)V
    .locals 0
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lwa;->mFocus:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lwa;->mOperation:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setRequestId(J)V
    .locals 1
    .param p1, "requestId"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lwa;->mRequestId:J

    .line 57
    return-void
.end method

.method public setRequestType(I)V
    .locals 0
    .param p1, "requestType"    # I

    .prologue
    .line 48
    iput p1, p0, Lwa;->mRequestType:I

    .line 49
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lwa;->mStatus:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setXmlResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlResult"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lwa;->mXmlResult:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BusinessResult [mRequestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lwa;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lwa;->mRequestId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mXmlResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwa;->mXmlResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwa;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwa;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwa;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAuthAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwa;->mAuthAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwa;->mFocus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOperation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwa;->mOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDataSrcId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwa;->mDataSrcId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDataSrcName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwa;->mDataSrcName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
