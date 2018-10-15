.class public Labf;
.super Lvx;
.source "BizConfigBizHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lwd;

.field private c:Labg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Labf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lwd;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lwd;

    .prologue
    .line 26
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=9998"

    invoke-direct {p0, p1, v0}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Labf;->b:Lwd;

    .line 29
    new-instance v0, Labg;

    invoke-direct {v0}, Labg;-><init>()V

    iput-object v0, p0, Labf;->c:Labg;

    .line 31
    new-instance v0, Labf$1;

    invoke-direct {v0, p0}, Labf$1;-><init>(Labf;)V

    invoke-virtual {p0, v0}, Labf;->setOperationListener(Lyn;)V

    .line 55
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Labf;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Labf;)Lwd;
    .locals 1
    .param p0, "x0"    # Labf;

    .prologue
    .line 19
    iget-object v0, p0, Labf;->b:Lwd;

    return-object v0
.end method

.method static synthetic b(Labf;)Labg;
    .locals 1
    .param p0, "x0"    # Labf;

    .prologue
    .line 19
    iget-object v0, p0, Labf;->c:Labg;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Labf;->a:Ljava/lang/String;

    const-string/jumbo v6, "requestBizConfig"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v3, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v5, "param"

    invoke-direct {v3, v5}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, "paramElement":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v0, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v5, "config_keys"

    invoke-direct {v0, v5}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "bizconfigElement":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 63
    sget-object v6, Labf;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestBizConfig(), param="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_0

    .line 66
    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "configkeys":Ljava/lang/String;
    if-eqz v1, :cond_2

    .end local v1    # "configkeys":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 72
    const-string/jumbo v5, "get_biz_config"

    const/16 v6, 0x31

    invoke-virtual {p0, v5, v6, v3}, Labf;->sendRequest(Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;)J

    move-result-wide v6

    return-wide v6

    .line 70
    .restart local v1    # "configkeys":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_1
.end method
