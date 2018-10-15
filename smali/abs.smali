.class public Labs;
.super Lvx;
.source "PhoneTypeDBUpdateHelper.java"

# interfaces
.implements Lyn;


# instance fields
.field private a:Lwd;

.field private b:Labr;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwd;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lwd;

    .prologue
    .line 26
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=5018"

    invoke-direct {p0, p1, v0}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Labs;->c:Z

    .line 27
    iput-object p2, p0, Labs;->a:Lwd;

    .line 28
    new-instance v0, Labr;

    invoke-direct {v0}, Labr;-><init>()V

    iput-object v0, p0, Labs;->b:Labr;

    .line 29
    invoke-virtual {p0, p0}, Labs;->setOperationListener(Lyn;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p1, "pLastFullVersion"    # Ljava/lang/String;
    .param p2, "pLastAppendVersion"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v3, 0x1

    iput-boolean v3, p0, Labs;->c:Z

    .line 62
    const-string/jumbo v3, "PhoneTypeDBUpdateHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestUpdateDB(), lastFullVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "lastAppendVersion= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v2, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v3, "param"

    invoke-direct {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "paramElement":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v1, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v3, "fullUpdateVersion"

    invoke-direct {v1, v3}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "fullUpdateVerionElement":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v0, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v3, "appendUpdateVersion"

    invoke-direct {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "appendUpdateVerionElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-nez p1, :cond_0

    .line 69
    const-string/jumbo p1, ""

    .line 71
    :cond_0
    if-nez p2, :cond_1

    .line 72
    const-string/jumbo p2, ""

    .line 74
    :cond_1
    invoke-virtual {v1, p1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 77
    invoke-virtual {v2, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 78
    const-string/jumbo v3, "phone_mark_update_info"

    const/16 v4, 0x36

    invoke-virtual {p0, v3, v4, v2}, Labs;->sendRequest(Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;)J

    move-result-wide v4

    return-wide v4
.end method

.method public cancelRequest()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Labs;->c:Z

    .line 84
    invoke-super {p0}, Lvx;->cancelRequest()V

    .line 85
    return-void
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 35
    const/4 v2, 0x0

    iput-boolean v2, p0, Labs;->c:Z

    .line 37
    iget-object v2, p0, Labs;->a:Lwd;

    if-nez v2, :cond_0

    .line 52
    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :goto_0
    return-void

    .line 40
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 41
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "xmlResult":Ljava/lang/String;
    iget-object v2, p0, Labs;->b:Labr;

    invoke-virtual {v2, v1}, Labr;->a(Ljava/lang/String;)Labq;

    move-result-object v0

    .line 43
    .local v0, "typeResult":Labq;
    invoke-virtual {v0, v1}, Labq;->setXmlResult(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p3, p4}, Labq;->setRequestId(J)V

    .line 45
    invoke-virtual {v0, p5}, Labq;->setRequestType(I)V

    .line 46
    const-string/jumbo v2, "PhoneTypeDBUpdateHelper"

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

    .line 47
    iget-object v2, p0, Labs;->a:Lwd;

    invoke-interface {v2, v0}, Lwd;->a(Lwa;)V

    goto :goto_0

    .line 49
    .end local v0    # "typeResult":Labq;
    .end local v1    # "xmlResult":Ljava/lang/String;
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_1
    const-string/jumbo v2, "PhoneTypeDBUpdateHelper"

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

    .line 50
    iget-object v2, p0, Labs;->a:Lwd;

    invoke-interface {v2, p5, p3, p4, p1}, Lwd;->a(IJI)V

    goto :goto_0
.end method
