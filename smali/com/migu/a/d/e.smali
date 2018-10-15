.class public final Lcom/migu/a/d/e;
.super Ljava/lang/Object;
.source "DomManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/migu/a/d/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/migu/a/d/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/migu/a/d/f;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 24
    const-string/jumbo v2, "utf-8"

    .line 26
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {v0, p1, v1, v2}, Lcom/migu/a/d/e;->a(Ljava/util/List;ZLjava/io/OutputStream;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 33
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/util/List;ZLjava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/migu/a/d/f;",
            ">;Z",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 39
    invoke-interface {v0, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 40
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 41
    :cond_2
    invoke-static {v0, p0}, Lcom/migu/a/d/e;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 42
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Lcom/migu/a/d/f;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v2, v0

    move-object v0, v1

    .line 78
    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 106
    :cond_0
    return-void

    .line 79
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 104
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 81
    :pswitch_0
    if-nez v0, :cond_4

    .line 82
    new-instance v0, Lcom/migu/a/d/f;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/migu/a/d/f;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 84
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v3, :cond_3

    .line 87
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_3
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/migu/a/d/f;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 89
    :cond_4
    invoke-virtual {v0}, Lcom/migu/a/d/f;->K()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/migu/a/d/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    move-object v0, v1

    .line 92
    goto :goto_1

    .line 94
    :pswitch_1
    if-eqz v0, :cond_2

    .line 95
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/migu/a/d/f;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :pswitch_2
    if-eqz v0, :cond_0

    move-object v0, v1

    .line 101
    goto :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Lcom/migu/a/d/f;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 46
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/a/d/f;

    .line 47
    invoke-virtual {v0}, Lcom/migu/a/d/f;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    invoke-virtual {v0}, Lcom/migu/a/d/f;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {v0}, Lcom/migu/a/d/f;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    :goto_1
    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0}, Lcom/migu/a/d/f;->K()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/migu/a/d/e;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    goto :goto_1
.end method

.method public static i(Ljava/lang/String;)Lcom/migu/a/d/f;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 59
    sget-object v0, Lcom/migu/a/d/e;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/migu/a/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-object v1

    .line 61
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 63
    :try_start_0
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-static {v0, v2}, Lcom/migu/a/d/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 66
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/a/d/f;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    goto :goto_0
.end method
