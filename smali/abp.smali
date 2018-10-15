.class public Labp;
.super Lvx;
.source "PhoneNumTypeQueryHelper.java"

# interfaces
.implements Lyn;


# instance fields
.field private a:Lwd;

.field private b:Labt;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwd;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lwd;

    .prologue
    .line 28
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=5015"

    invoke-direct {p0, p1, v0}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Labp;->c:Z

    .line 29
    iput-object p2, p0, Labp;->a:Lwd;

    .line 30
    new-instance v0, Labt;

    invoke-direct {v0}, Labt;-><init>()V

    iput-object v0, p0, Labp;->b:Labt;

    .line 31
    invoke-virtual {p0, p0}, Labp;->setOperationListener(Lyn;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 5
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v2, 0x1

    iput-boolean v2, p0, Labp;->c:Z

    .line 59
    const-string/jumbo v2, "PhoneNumTypeQueryHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestNumType(), num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-nez p1, :cond_0

    .line 61
    const-wide/16 v2, -0x1

    .line 67
    :goto_0
    return-wide v2

    .line 63
    :cond_0
    new-instance v0, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v2, "param"

    invoke-direct {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "paramElement":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v1, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v2, "caller"

    invoke-direct {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "phoneNumElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v1, p1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 67
    const-string/jumbo v2, "caller_info_client"

    const/16 v3, 0x38

    invoke-virtual {p0, v2, v3, v0}, Labp;->sendRequest(Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public cancelRequest()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Labp;->c:Z

    .line 95
    invoke-super {p0}, Lvx;->cancelRequest()V

    .line 96
    return-void
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 37
    const/4 v2, 0x0

    iput-boolean v2, p0, Labp;->c:Z

    .line 39
    iget-object v2, p0, Labp;->a:Lwd;

    if-nez v2, :cond_0

    .line 54
    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :goto_0
    return-void

    .line 42
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 43
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "xmlResult":Ljava/lang/String;
    iget-object v2, p0, Labp;->b:Labt;

    invoke-virtual {v2, v1}, Labt;->a(Ljava/lang/String;)Labq;

    move-result-object v0

    .line 45
    .local v0, "typeResult":Labq;
    invoke-virtual {v0, v1}, Labq;->setXmlResult(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, p3, p4}, Labq;->setRequestId(J)V

    .line 47
    invoke-virtual {v0, p5}, Labq;->setRequestType(I)V

    .line 48
    const-string/jumbo v2, "PhoneNumTypeQueryHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResult(), result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, p0, Labp;->a:Lwd;

    invoke-interface {v2, v0}, Lwd;->a(Lwa;)V

    goto :goto_0

    .line 51
    .end local v0    # "typeResult":Labq;
    .end local v1    # "xmlResult":Ljava/lang/String;
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_1
    const-string/jumbo v2, "PhoneNumTypeQueryHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onError(), type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v2, p0, Labp;->a:Lwd;

    invoke-interface {v2, p5, p3, p4, p1}, Lwd;->a(IJI)V

    goto :goto_0
.end method
