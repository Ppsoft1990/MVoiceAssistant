.class public Lcom/iflytek/yd/util/xml/XmlDoc;
.super Ljava/lang/Object;


# instance fields
.field private mRoot:Lcom/iflytek/yd/util/xml/XmlElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;
    .locals 1

    new-instance v0, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-direct {v0, p1}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/yd/util/xml/XmlDoc;->mRoot:Lcom/iflytek/yd/util/xml/XmlElement;

    iget-object v0, p0, Lcom/iflytek/yd/util/xml/XmlDoc;->mRoot:Lcom/iflytek/yd/util/xml/XmlElement;

    return-object v0
.end method

.method public getRoot()Lcom/iflytek/yd/util/xml/XmlElement;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/util/xml/XmlDoc;->mRoot:Lcom/iflytek/yd/util/xml/XmlElement;

    return-object v0
.end method

.method public removeRoot()Lcom/iflytek/yd/util/xml/XmlElement;
    .locals 2

    iget-object v0, p0, Lcom/iflytek/yd/util/xml/XmlDoc;->mRoot:Lcom/iflytek/yd/util/xml/XmlElement;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/yd/util/xml/XmlDoc;->mRoot:Lcom/iflytek/yd/util/xml/XmlElement;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "XmlDoc [mRoot="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/yd/util/xml/XmlDoc;->mRoot:Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
