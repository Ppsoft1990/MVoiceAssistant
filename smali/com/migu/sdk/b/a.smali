.class public Lcom/migu/sdk/b/a;
.super Lcom/migu/sdk/b/b;
.source "LogRequest.java"


# instance fields
.field private l:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/migu/a/c/b;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/migu/sdk/a/a;->i:Lcom/migu/a/c/b;

    invoke-direct {p0, p1, v0}, Lcom/migu/sdk/b/b;-><init>(Landroid/content/Context;Lcom/migu/a/c/b;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/sdk/b/a;->l:[Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/migu/sdk/b/a;->l:[Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lcom/migu/sdk/b/a;->d()V

    .line 25
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "POST"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "http://gmota.g188.net:8080/migusdk/tl/tcttlog"

    return-object v0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 38
    new-instance v0, Lcom/migu/a/c/d;

    invoke-direct {v0}, Lcom/migu/a/c/d;-><init>()V

    iput-object v0, p0, Lcom/migu/sdk/b/a;->X:Lcom/migu/a/c/d;

    .line 39
    iget-object v0, p0, Lcom/migu/sdk/b/a;->l:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 43
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 45
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 46
    const-string/jumbo v0, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 47
    const-string/jumbo v0, ""

    const-string/jumbo v3, "request"

    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/migu/sdk/b/a;->l:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 53
    const-string/jumbo v0, ""

    const-string/jumbo v3, "request"

    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 62
    :goto_2
    iget-object v0, p0, Lcom/migu/sdk/b/a;->X:Lcom/migu/a/c/d;

    const-string/jumbo v1, "tcttlogreq"

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/migu/a/d/a;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/migu/a/c/d;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    :try_start_1
    const-string/jumbo v3, ""

    const-string/jumbo v4, "InitLogInfo"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    iget-object v3, p0, Lcom/migu/sdk/b/a;->l:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    const-string/jumbo v3, ""

    const-string/jumbo v4, "InitLogInfo"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 57
    :catch_1
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 59
    :catch_2
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
