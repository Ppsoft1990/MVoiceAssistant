.class final Lrq;
.super Lvz;
.source "TelFlowParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvz",
        "<",
        "Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lvz;-><init>()V

    return-void
.end method

.method private e(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;
    .locals 6
    .param p1, "objElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    const/4 v5, 0x0

    .line 34
    const-class v2, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v3, "gprs"

    .line 35
    invoke-virtual {p1, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lazk;->a(Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 36
    .local v0, "gprsElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 37
    const-class v3, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 38
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v4, "total"

    invoke-virtual {v2, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-static {v3, v2}, Lazk;->a(Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 39
    .local v1, "totalElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 40
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 44
    .end local v1    # "totalElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private f(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;
    .locals 6
    .param p1, "objElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    const/4 v5, 0x0

    .line 48
    const-class v2, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v3, "gprs"

    .line 49
    invoke-virtual {p1, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 48
    invoke-static {v2, v3}, Lazk;->a(Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, "gprsElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 51
    const-class v3, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 52
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v4, "used"

    invoke-virtual {v2, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 51
    invoke-static {v3, v2}, Lazk;->a(Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "usedElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 54
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 58
    .end local v1    # "usedElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;
    .locals 4
    .param p1, "xmlResult"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 19
    new-instance v1, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;

    invoke-direct {v1}, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;-><init>()V

    .line 20
    .local v1, "result":Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;
    if-nez p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-object v1

    .line 23
    :cond_1
    invoke-static {v1, p1}, Lrq;->a(Lwa;Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Lrq;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 25
    .local v0, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 26
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-direct {p0, v2}, Lrq;->e(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->setTotalFlow(Ljava/lang/String;)V

    .line 27
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-direct {p0, v2}, Lrq;->f(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->setUsedFlow(Ljava/lang/String;)V

    goto :goto_0
.end method
