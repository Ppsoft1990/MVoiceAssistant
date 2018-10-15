.class public Lcom/migu/uem/bean/OCInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ApplicationCloseTime:J

.field private ApplicationName:Ljava/lang/String;

.field private ApplicationOpenTime:J

.field private ApplicationPackageName:Ljava/lang/String;

.field private ApplicationVersionCode:Ljava/lang/String;

.field private lat:Ljava/lang/String;

.field private lot:Ljava/lang/String;

.field private nt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationCloseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationCloseTime:J

    return-wide v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationOpenTime()J
    .locals 2

    iget-wide v0, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationOpenTime:J

    return-wide v0
.end method

.method public getApplicationPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersionCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/bean/OCInfo;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/bean/OCInfo;->lot:Ljava/lang/String;

    return-object v0
.end method

.method public getNt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/bean/OCInfo;->nt:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationCloseTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationCloseTime:J

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationName:Ljava/lang/String;

    return-void
.end method

.method public setApplicationOpenTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationOpenTime:J

    return-void
.end method

.method public setApplicationPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationPackageName:Ljava/lang/String;

    return-void
.end method

.method public setApplicationVersionCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationVersionCode:Ljava/lang/String;

    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/bean/OCInfo;->lat:Ljava/lang/String;

    return-void
.end method

.method public setLot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/bean/OCInfo;->lot:Ljava/lang/String;

    return-void
.end method

.method public setNt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/bean/OCInfo;->nt:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OCInfo{ApplicationOpenTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationOpenTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ApplicationCloseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationCloseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ApplicationPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ApplicationName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ApplicationVersionCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/bean/OCInfo;->ApplicationVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nt=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/bean/OCInfo;->nt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lot=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/bean/OCInfo;->lot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/bean/OCInfo;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
