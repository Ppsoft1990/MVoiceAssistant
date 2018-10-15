.class public Laqp;
.super Lvx;
.source "NewsDetailBizHelper.java"


# instance fields
.field private a:Lwd;

.field private b:Laqn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwd;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lwd;

    .prologue
    .line 32
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=4008"

    invoke-direct {p0, p1, v0}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    new-instance v0, Laqn;

    invoke-direct {v0}, Laqn;-><init>()V

    iput-object v0, p0, Laqp;->b:Laqn;

    .line 35
    iput-object p2, p0, Laqp;->a:Lwd;

    .line 36
    new-instance v0, Laqp$1;

    invoke-direct {v0, p0}, Laqp$1;-><init>(Laqp;)V

    invoke-virtual {p0, v0}, Laqp;->setOperationListener(Lyn;)V

    .line 61
    return-void
.end method

.method static synthetic a(Laqp;)Lwd;
    .locals 1
    .param p0, "x0"    # Laqp;

    .prologue
    .line 24
    iget-object v0, p0, Laqp;->a:Lwd;

    return-object v0
.end method

.method static synthetic b(Laqp;)Laqn;
    .locals 1
    .param p0, "x0"    # Laqp;

    .prologue
    .line 24
    iget-object v0, p0, Laqp;->b:Laqn;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "newsId"    # Ljava/lang/String;
    .param p2, "dataSrcId"    # Ljava/lang/String;
    .param p3, "dataSrcName"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v1, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v2, "param"

    invoke-direct {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "paramElement":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v0, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v2, "data_source"

    invoke-direct {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "dataSrcElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local p2    # "dataSrcId":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, p2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    if-eqz p3, :cond_1

    .end local p3    # "dataSrcName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, p3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v2, "newsid"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    if-eqz p1, :cond_2

    .end local p1    # "newsId":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, p1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 75
    const-string/jumbo v2, "news_query_detail"

    const/16 v3, 0x26

    invoke-virtual {p0, v2, v3, v1}, Laqp;->sendRequest(Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;)J

    move-result-wide v2

    return-wide v2

    .line 70
    .restart local p1    # "newsId":Ljava/lang/String;
    .restart local p2    # "dataSrcId":Ljava/lang/String;
    .restart local p3    # "dataSrcName":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, "13001"

    goto :goto_0

    .line 71
    .end local p2    # "dataSrcId":Ljava/lang/String;
    :cond_1
    const-string/jumbo p3, ""

    goto :goto_1

    .line 72
    .end local p3    # "dataSrcName":Ljava/lang/String;
    :cond_2
    const-string/jumbo p1, ""

    goto :goto_2
.end method
