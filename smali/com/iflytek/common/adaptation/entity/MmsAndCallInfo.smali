.class public Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;
.super Ljava/lang/Object;
.source "MmsAndCallInfo.java"


# annotations
.annotation runtime Lbbw;
    a = "mms_call_adaptation"
.end annotation


# instance fields
.field private id:Ljava/lang/Integer;
    .annotation runtime Lbbu;
        a = "id"
    .end annotation

    .annotation runtime Lbbv;
    .end annotation
.end field

.field private mCall:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "call"
    .end annotation
.end field

.field private mCpuInfo:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "cpuInfo"
    .end annotation
.end field

.field private mMms:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "mms"
    .end annotation
.end field

.field private mModelInfo:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "modelInfo"
    .end annotation
.end field

.field private mSimInfo:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "simInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuInfo"    # Ljava/lang/String;
    .param p2, "modelInfo"    # Ljava/lang/String;
    .param p3, "simInfo"    # Ljava/lang/String;
    .param p4, "call"    # Ljava/lang/String;
    .param p5, "mms"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mCpuInfo:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mModelInfo:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mSimInfo:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mCall:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mMms:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getCall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mCall:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mCpuInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mMms:Ljava/lang/String;

    return-object v0
.end method

.method public getModelInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mModelInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSimInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mSimInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setCall(Ljava/lang/String;)V
    .locals 0
    .param p1, "call"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mCall:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setCpuInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuInfo"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mCpuInfo:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->id:Ljava/lang/Integer;

    .line 100
    return-void
.end method

.method public setMms(Ljava/lang/String;)V
    .locals 0
    .param p1, "mms"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mMms:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setModelInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelInfo"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mModelInfo:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSimInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "simInfo"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mSimInfo:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MmsAndCallInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCpuInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mCpuInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mModelInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mModelInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSimInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mSimInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mCall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->mMms:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
