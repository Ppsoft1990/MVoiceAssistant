.class public Labo;
.super Lvx;
.source "PhoneNumMarkRequestHelper.java"

# interfaces
.implements Lyn;


# instance fields
.field private a:Lwd;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwd;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lwd;

    .prologue
    .line 32
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=5017"

    invoke-direct {p0, p1, v0}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Labo;->b:Z

    .line 33
    iput-object p2, p0, Labo;->a:Lwd;

    .line 34
    invoke-virtual {p0, p0}, Labo;->setOperationListener(Lyn;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)J
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laac;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "typeList":Ljava/util/List;, "Ljava/util/List<Laac;>;"
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 60
    const/4 v11, 0x1

    iput-boolean v11, p0, Labo;->b:Z

    .line 61
    const-string/jumbo v11, "PhoneNumTypeMarkHelper"

    const-string/jumbo v12, "requestNumMark()"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v8, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "param"

    invoke-direct {v8, v11}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 64
    .local v8, "paramElement":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v1, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v11, "caller_list"

    invoke-direct {v1, v11}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "callerList":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v8, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laac;

    .line 67
    .local v6, "markedType":Laac;
    new-instance v4, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v12, "mark_info"

    invoke-direct {v4, v12}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 68
    .local v4, "markInfo":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v1, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 70
    new-instance v0, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v12, "caller"

    invoke-direct {v0, v12}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "callerElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v6}, Laac;->a()Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "num":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 73
    :goto_1
    invoke-virtual {v0, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v4, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 76
    new-instance v5, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v12, "mark_time"

    invoke-direct {v5, v12}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 77
    .local v5, "markTimeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v6}, Laac;->d()Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "time":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 79
    :goto_2
    invoke-virtual {v5, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 82
    new-instance v2, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v12, "classify_name"

    invoke-direct {v2, v12}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, "classifyName":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v6}, Laac;->b()Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, "type":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 85
    :goto_3
    invoke-virtual {v2, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v4, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 88
    new-instance v3, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v12, "is_mark"

    invoke-direct {v3, v12}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, "isAddMark":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v12, "ADD_MARK"

    invoke-virtual {v6}, Laac;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 90
    const-string/jumbo v12, "1"

    invoke-virtual {v3, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 94
    :goto_4
    invoke-virtual {v4, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    goto :goto_0

    .line 72
    .end local v2    # "classifyName":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v3    # "isAddMark":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v5    # "markTimeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v9    # "time":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, ""

    goto :goto_1

    .line 78
    .restart local v5    # "markTimeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v9    # "time":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, ""

    goto :goto_2

    .line 84
    .restart local v2    # "classifyName":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v10    # "type":Ljava/lang/String;
    :cond_2
    const-string/jumbo v10, ""

    goto :goto_3

    .line 92
    .restart local v3    # "isAddMark":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_3
    const-string/jumbo v12, "-1"

    invoke-virtual {v3, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 98
    .end local v0    # "callerElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v2    # "classifyName":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v3    # "isAddMark":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v4    # "markInfo":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v5    # "markTimeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v6    # "markedType":Laac;
    .end local v7    # "num":Ljava/lang/String;
    .end local v9    # "time":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    :cond_4
    const-string/jumbo v11, "upload_caller_info  "

    const/16 v12, 0x39

    invoke-virtual {p0, v11, v12, v8}, Labo;->sendRequest(Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;)J

    move-result-wide v12

    .line 100
    .end local v1    # "callerList":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v8    # "paramElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :goto_5
    return-wide v12

    :cond_5
    const-wide/16 v12, -0x1

    goto :goto_5
.end method

.method public cancelRequest()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Labo;->b:Z

    .line 107
    invoke-super {p0}, Lvx;->cancelRequest()V

    .line 108
    return-void
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Labo;->b:Z

    .line 42
    iget-object v1, p0, Labo;->a:Lwd;

    if-nez v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 45
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    move-object v0, p2

    .line 46
    check-cast v0, Lwa;

    .line 47
    .local v0, "businessResult":Lwa;
    invoke-virtual {v0, p3, p4}, Lwa;->setRequestId(J)V

    .line 48
    invoke-virtual {v0, p5}, Lwa;->setRequestType(I)V

    .line 49
    invoke-virtual {v0}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvz;->a(Lwa;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v1, "PhoneNumTypeMarkHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResult(), result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, p0, Labo;->a:Lwd;

    invoke-interface {v1, v0}, Lwd;->a(Lwa;)V

    goto :goto_0

    .line 53
    .end local v0    # "businessResult":Lwa;
    :cond_1
    const-string/jumbo v1, "PhoneNumTypeMarkHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError(), type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Labo;->a:Lwd;

    invoke-interface {v1, p5, p3, p4, p1}, Lwd;->a(IJI)V

    goto :goto_0
.end method
