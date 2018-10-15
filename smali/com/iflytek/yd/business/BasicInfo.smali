.class public Lcom/iflytek/yd/business/BasicInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/yd/business/OperationInfo;


# instance fields
.field protected mDesc:Ljava/lang/String;

.field protected mSuccessful:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/business/BasicInfo;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/yd/business/BasicInfo;->mSuccessful:Z

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/business/BasicInfo;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public setSuccessful(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/yd/business/BasicInfo;->mSuccessful:Z

    return-void
.end method
