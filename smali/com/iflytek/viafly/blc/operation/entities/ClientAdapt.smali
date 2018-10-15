.class public Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;
.super Ljava/lang/Object;
.source "ClientAdapt.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5d4bebb9fa22e0b4L


# instance fields
.field private mChildType:Ljava/lang/String;

.field private mDesc:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mType:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mChildType:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mUrl:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mDesc:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mVersion:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mType"    # Ljava/lang/String;
    .param p2, "mChildType"    # Ljava/lang/String;
    .param p3, "mUrl"    # Ljava/lang/String;
    .param p4, "mDesc"    # Ljava/lang/String;
    .param p5, "mVersion"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mType:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mChildType:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mUrl:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mDesc:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mVersion:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mType:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mChildType:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mUrl:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mDesc:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mVersion:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mType:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mChildType:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mUrl:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mDesc:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mVersion:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mType:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "childtype"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mChildType:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mUrl:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "version"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mVersion:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "desc"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mDesc:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getChildType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mChildType:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setChildType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mChildType:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mDesc:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mType:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mUrl:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mVersion:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClientAdapt [mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mChildType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mChildType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
