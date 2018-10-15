.class public Labl;
.super Lvx;
.source "BlessContentChangeHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lwd;

.field private c:Labm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Labl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lwd;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lwd;

    .prologue
    .line 25
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=5010"

    invoke-direct {p0, p1, v0}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Labl;->b:Lwd;

    .line 28
    new-instance v0, Labm;

    invoke-direct {v0}, Labm;-><init>()V

    iput-object v0, p0, Labl;->c:Labm;

    .line 30
    new-instance v0, Labl$1;

    invoke-direct {v0, p0}, Labl$1;-><init>(Labl;)V

    invoke-virtual {p0, v0}, Labl;->setOperationListener(Lyn;)V

    .line 54
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Labl;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Labl;)Lwd;
    .locals 1
    .param p0, "x0"    # Labl;

    .prologue
    .line 18
    iget-object v0, p0, Labl;->b:Lwd;

    return-object v0
.end method

.method static synthetic b(Labl;)Labm;
    .locals 1
    .param p0, "x0"    # Labl;

    .prologue
    .line 18
    iget-object v0, p0, Labl;->c:Labm;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "moreid"    # Ljava/lang/String;
    .param p3, "categoryname"    # Ljava/lang/String;
    .param p4, "categoryid"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v5, Labl;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestrequestBlessContentChange(), size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v5, Labl;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestrequestBlessContentChange(), moreid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v5, Labl;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestrequestBlessContentChange(), categoryname="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v3, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v5, "param"

    invoke-direct {v3, v5}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 61
    .local v3, "paramElement":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v4, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v5, "size"

    invoke-direct {v4, v5}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 62
    .local v4, "sizeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz p1, :cond_1

    .line 63
    :goto_0
    if-eqz p1, :cond_2

    .end local p1    # "size":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, p1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 65
    new-instance v2, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v5, "moreid"

    invoke-direct {v2, v5}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "moreidElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz p2, :cond_3

    .line 67
    :goto_2
    if-eqz p2, :cond_4

    .end local p2    # "moreid":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, p2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 69
    new-instance v1, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v5, "categoryname"

    invoke-direct {v1, v5}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "categorynameElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz p3, :cond_5

    .line 71
    :goto_4
    if-eqz p3, :cond_6

    .end local p3    # "categoryname":Ljava/lang/String;
    :goto_5
    invoke-virtual {v1, p3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 74
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 75
    new-instance v0, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v5, "categoryid"

    invoke-direct {v0, v5}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "categoryidElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v0, p4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 80
    .end local v0    # "categoryidElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    const-string/jumbo v5, "get_sms"

    const/16 v6, 0x33

    invoke-virtual {p0, v5, v6, v3}, Labl;->sendRequest(Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;)J

    move-result-wide v6

    return-wide v6

    .line 62
    .end local v1    # "categorynameElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v2    # "moreidElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local p1    # "size":Ljava/lang/String;
    .restart local p2    # "moreid":Ljava/lang/String;
    .restart local p3    # "categoryname":Ljava/lang/String;
    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0

    .line 63
    :cond_2
    const-string/jumbo p1, ""

    goto :goto_1

    .line 66
    .end local p1    # "size":Ljava/lang/String;
    .restart local v2    # "moreidElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_3
    const-string/jumbo p2, ""

    goto :goto_2

    .line 67
    :cond_4
    const-string/jumbo p2, ""

    goto :goto_3

    .line 70
    .end local p2    # "moreid":Ljava/lang/String;
    .restart local v1    # "categorynameElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_5
    const-string/jumbo p3, ""

    goto :goto_4

    .line 71
    :cond_6
    const-string/jumbo p3, ""

    goto :goto_5
.end method
