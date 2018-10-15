.class public Lcom/iflytek/yd/util/xml/XmlParser;
.super Ljava/lang/Object;


# static fields
.field private static final DEFALT_CHARSET:Ljava/lang/String; = "utf-8"

.field private static final TAG:Ljava/lang/String; = "XmlParser"

.field private static mLastXmlDoc:Lcom/iflytek/yd/util/xml/XmlDoc;

.field private static mLastXmlStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/yd/util/xml/XmlParser;->mLastXmlStr:Ljava/lang/String;

    sput-object v0, Lcom/iflytek/yd/util/xml/XmlParser;->mLastXmlDoc:Lcom/iflytek/yd/util/xml/XmlDoc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getCache(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;
    .locals 2

    const-class v1, Lcom/iflytek/yd/util/xml/XmlParser;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/yd/util/xml/XmlParser;->mLastXmlStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/yd/util/xml/XmlParser;->mLastXmlStr:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/yd/util/xml/XmlParser;->mLastXmlDoc:Lcom/iflytek/yd/util/xml/XmlDoc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getElementText(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v1, "utf-8"

    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_1
    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3

    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    const/4 v1, 0x0

    :goto_2
    array-length v5, p1

    if-ge v1, v5, :cond_5

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    aget-object v5, p1, v1

    invoke-static {v2, v5}, Lcom/iflytek/yd/util/xml/XmlParser;->getTextValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "XmlParser"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getTextValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x4

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;
    .locals 5

    invoke-static {p0}, Lcom/iflytek/yd/util/xml/XmlParser;->getCache(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v0}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v1, "utf-8"

    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_1
    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v0}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iflytek/yd/util/xml/XmlParser;->parserXmlTag(Lorg/xmlpull/v1/XmlPullParser;Lcom/iflytek/yd/util/xml/XmlElement;)V

    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-static {v0, p0}, Lcom/iflytek/yd/util/xml/XmlParser;->setCache(Lcom/iflytek/yd/util/xml/XmlDoc;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "XmlParser"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "XmlParser"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v2, "XmlParser"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static parserXmlAttribute(Lorg/xmlpull/v1/XmlPullParser;Lcom/iflytek/yd/util/xml/XmlElement;)V
    .locals 4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static parserXmlTag(Lorg/xmlpull/v1/XmlPullParser;Lcom/iflytek/yd/util/xml/XmlElement;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/iflytek/yd/util/xml/XmlParser;->parserXmlAttribute(Lorg/xmlpull/v1/XmlPullParser;Lcom/iflytek/yd/util/xml/XmlElement;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/iflytek/yd/util/xml/XmlParser;->parserXmlTag(Lorg/xmlpull/v1/XmlPullParser;Lcom/iflytek/yd/util/xml/XmlElement;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static declared-synchronized setCache(Lcom/iflytek/yd/util/xml/XmlDoc;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/iflytek/yd/util/xml/XmlParser;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/iflytek/yd/util/xml/XmlParser;->mLastXmlDoc:Lcom/iflytek/yd/util/xml/XmlDoc;

    sput-object p1, Lcom/iflytek/yd/util/xml/XmlParser;->mLastXmlStr:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
