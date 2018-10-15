.class public Lcom/iflytek/yd/system/APNEntity;
.super Ljava/lang/Object;


# instance fields
.field private apn:Ljava/lang/String;

.field private id:I

.field private mcc:Ljava/lang/String;

.field private mmsPort:Ljava/lang/String;

.field private mmsProxy:Ljava/lang/String;

.field private mnc:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:Ljava/lang/String;

.field private proxy:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v1, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    move-object v12, v1

    invoke-direct/range {v0 .. v12}, Lcom/iflytek/yd/system/APNEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/yd/system/APNEntity;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/yd/system/APNEntity;->apn:Ljava/lang/String;

    iput p3, p0, Lcom/iflytek/yd/system/APNEntity;->id:I

    iput-object p4, p0, Lcom/iflytek/yd/system/APNEntity;->proxy:Ljava/lang/String;

    iput-object p5, p0, Lcom/iflytek/yd/system/APNEntity;->port:Ljava/lang/String;

    iput-object p6, p0, Lcom/iflytek/yd/system/APNEntity;->user:Ljava/lang/String;

    iput-object p7, p0, Lcom/iflytek/yd/system/APNEntity;->password:Ljava/lang/String;

    iput-object p8, p0, Lcom/iflytek/yd/system/APNEntity;->type:Ljava/lang/String;

    iput-object p9, p0, Lcom/iflytek/yd/system/APNEntity;->mcc:Ljava/lang/String;

    iput-object p10, p0, Lcom/iflytek/yd/system/APNEntity;->mnc:Ljava/lang/String;

    iput-object p11, p0, Lcom/iflytek/yd/system/APNEntity;->mmsProxy:Ljava/lang/String;

    iput-object p12, p0, Lcom/iflytek/yd/system/APNEntity;->mmsPort:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/APNEntity;->apn:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/system/APNEntity;->id:I

    return v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/APNEntity;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/APNEntity;->mmsPort:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsProxy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/APNEntity;->mmsProxy:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/APNEntity;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/APNEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/APNEntity;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/APNEntity;->port:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/APNEntity;->proxy:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/APNEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/system/APNEntity;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/system/APNEntity;->apn:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/yd/system/APNEntity;->id:I

    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/system/APNEntity;->mcc:Ljava/lang/String;

    return-void
.end method

.method public setMmsPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/system/APNEntity;->mmsPort:Ljava/lang/String;

    return-void
.end method

.method public setMmsProxy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/system/APNEntity;->mmsProxy:Ljava/lang/String;

    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/system/APNEntity;->mnc:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/system/APNEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/system/APNEntity;->password:Ljava/lang/String;

    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/system/APNEntity;->port:Ljava/lang/String;

    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/system/APNEntity;->proxy:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/system/APNEntity;->type:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/system/APNEntity;->user:Ljava/lang/String;

    return-void
.end method
