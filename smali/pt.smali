.class public Lpt;
.super Ljava/lang/Object;
.source "HttpTestHandler.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpt$b;,
        Lpt$a;
    }
.end annotation


# static fields
.field private static a:Lps;


# instance fields
.field private b:Lpt$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lpt;->a:Lps;

    return-void
.end method

.method public constructor <init>(Lpt$a;)V
    .locals 0
    .param p1, "listener"    # Lpt$a;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lpt;->b:Lpt$a;

    .line 65
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "testId"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string/jumbo v4, ""

    .line 175
    .local v4, "fileId":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 176
    .local v1, "df":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd_HH_mm_ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 178
    .local v2, "df2":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 179
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 184
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "sdcard":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/msc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-msclog.csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "fileName":Ljava/lang/String;
    return-object v5

    .line 180
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "sdcard":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 181
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/apache/http/HttpRequest;)Lpt$b;
    .locals 18
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v9, 0x0

    .line 278
    .local v9, "id":Ljava/lang/String;
    const/4 v4, 0x0

    .line 279
    .local v4, "command":Ljava/lang/String;
    const/4 v6, 0x0

    .line 280
    .local v6, "file":Ljava/lang/String;
    new-instance v10, Lpt$b;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14}, Lpt$b;-><init>(Lpt;Lpt$1;)V

    .line 282
    .local v10, "item":Lpt$b;
    if-eqz p1, :cond_0

    .line 283
    const-string/jumbo v14, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 284
    .local v12, "param":[Ljava/lang/String;
    if-eqz v12, :cond_0

    array-length v14, v12

    const/4 v15, 0x2

    if-le v14, v15, :cond_0

    .line 285
    const/4 v14, 0x1

    aget-object v4, v12, v14

    .line 286
    const/4 v14, 0x2

    aget-object v9, v12, v14

    .line 290
    .end local v12    # "param":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    instance-of v14, v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    if-eqz v14, :cond_3

    move-object/from16 v8, p2

    .line 291
    check-cast v8, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    .line 292
    .local v8, "http_request":Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;
    invoke-virtual {v8}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 293
    .local v7, "httpEntity":Lorg/apache/http/HttpEntity;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    .line 294
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v14

    long-to-int v14, v14

    new-array v3, v14, [B

    .line 295
    .local v3, "buffer":[B
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/io/InputStream;->read([B)I

    .line 296
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>([B)V

    .line 297
    .local v13, "xml":Ljava/lang/String;
    invoke-static {v13}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v5

    .line 298
    .local v5, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 299
    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v14

    const-string/jumbo v15, "p"

    invoke-virtual {v14, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 300
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 301
    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v15, "name"

    invoke-virtual {v14, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v2

    .line 302
    .local v2, "attr":Lcom/iflytek/yd/util/xml/XmlAttribute;
    if-eqz v2, :cond_1

    const-string/jumbo v14, "audioFileTest"

    .line 304
    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 303
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 305
    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 315
    .end local v2    # "attr":Lcom/iflytek/yd/util/xml/XmlAttribute;
    .end local v3    # "buffer":[B
    .end local v5    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v7    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v8    # "http_request":Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v13    # "xml":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v6, :cond_4

    .line 316
    const/4 v14, 0x0

    iput v14, v10, Lpt$b;->c:I

    .line 317
    iput-object v6, v10, Lpt$b;->b:Ljava/lang/String;

    .line 322
    :goto_1
    const-string/jumbo v14, "HttpService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "parseRequest id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " testfile="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " cmd="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-object v10

    .line 310
    .restart local v7    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "http_request":Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;
    :cond_2
    const-string/jumbo v14, "HttpService"

    const-string/jumbo v15, "parseRequest httpEntity null."

    invoke-static {v14, v15}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    .end local v7    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v8    # "http_request":Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;
    :cond_3
    const-string/jumbo v14, "HttpService"

    const-string/jumbo v15, "parseRequest not httpEntity."

    invoke-static {v14, v15}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :cond_4
    const/4 v14, 0x1

    iput v14, v10, Lpt$b;->c:I

    .line 320
    iput-object v9, v10, Lpt$b;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method public static declared-synchronized a()V
    .locals 3

    .prologue
    .line 100
    const-class v1, Lpt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lpt;->a:Lps;

    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v0, "HttpService"

    const-string/jumbo v2, "stop daemon"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lpt;->a:Lps;

    invoke-virtual {v0}, Lps;->a()V

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lpt;->a:Lps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit v1

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lpt$a;)V
    .locals 6
    .param p0, "listener"    # Lpt$a;

    .prologue
    const/4 v5, 0x1

    .line 75
    const-class v2, Lpt;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "HttpService"

    const-string/jumbo v3, "start daemon"

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v3, "com.iflytek.cmccIFLY_OPEN_SPEECHTEST_SERVICE"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    .local v0, "currOpenState":Z
    const-string/jumbo v1, "HttpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "currOpenState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-ne v5, v0, :cond_0

    .line 86
    const-string/jumbo v1, "HttpService"

    const-string/jumbo v3, "start daemon"

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v1, Lpt;->a:Lps;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lps;

    const/16 v3, 0x2711

    new-instance v4, Lpt;

    invoke-direct {v4, p0}, Lpt;-><init>(Lpt$a;)V

    invoke-direct {v1, v3, v4}, Lps;-><init>(ILorg/apache/http/protocol/HttpRequestHandler;)V

    sput-object v1, Lpt;->a:Lps;

    .line 90
    sget-object v1, Lpt;->a:Lps;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lps;->setDaemon(Z)V

    .line 91
    sget-object v1, Lpt;->a:Lps;

    invoke-virtual {v1}, Lps;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit v2

    return-void

    .line 75
    .end local v0    # "currOpenState":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "testId"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string/jumbo v7, "HttpService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getTimeLogName-------testId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string/jumbo v4, ""

    .line 192
    .local v4, "fileId":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 193
    .local v1, "df":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd_HH_mm_ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 195
    .local v2, "df2":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 196
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 201
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "sdcard":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/msc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "fileName":Ljava/lang/String;
    return-object v5

    .line 197
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "sdcard":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 198
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private f(Lpt$b;)Lorg/apache/http/entity/StringEntity;
    .locals 8
    .param p1, "item"    # Lpt$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lpu;->d()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "currentTestId":Ljava/lang/String;
    invoke-static {}, Lpu;->e()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "lastTestId":Ljava/lang/String;
    const-string/jumbo v5, "wmtest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onQueryStatus lastId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "currentId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v4, 0x0

    .line 142
    .local v4, "xml":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 143
    iget-object v5, p1, Lpt$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lpt;->d(Lpt$b;)Ljava/lang/String;

    move-result-object v4

    .line 162
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 163
    invoke-virtual {p0, p1}, Lpt;->e(Lpt$b;)Ljava/lang/String;

    .line 165
    :cond_1
    const-string/jumbo v5, "HttpService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onQueryStatus code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lpt$b;->d:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, "entity":Lorg/apache/http/entity/StringEntity;
    if-eqz v4, :cond_2

    .line 168
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    .end local v1    # "entity":Lorg/apache/http/entity/StringEntity;
    invoke-direct {v1, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 170
    .restart local v1    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_2
    return-object v1

    .line 147
    .end local v1    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_3
    if-eqz v2, :cond_0

    .line 148
    iget-object v5, p1, Lpt$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 149
    iget-object v5, p1, Lpt$b;->a:Ljava/lang/String;

    invoke-static {v5}, Lpt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "logFile":Ljava/lang/String;
    invoke-static {}, Lpu;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_text_test_time.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    :cond_4
    invoke-static {}, Lpu;->f()I

    move-result v5

    if-lez v5, :cond_5

    .line 154
    invoke-virtual {p0, p1}, Lpt;->c(Lpt$b;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 157
    :cond_5
    invoke-virtual {p0, p1, v3}, Lpt;->a(Lpt$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private g(Lpt$b;)Lorg/apache/http/entity/StringEntity;
    .locals 11
    .param p1, "item"    # Lpt$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 230
    iget-object v4, p1, Lpt$b;->b:Ljava/lang/String;

    .line 231
    .local v4, "testFile":Ljava/lang/String;
    const-string/jumbo v6, ".txt"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 232
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_OPEN_SPEECHTEST_SERVICE"

    invoke-virtual {v6, v7, v9}, Lil;->a(Ljava/lang/String;Z)V

    .line 233
    invoke-static {v10}, Lpu;->a(Z)V

    .line 238
    :goto_0
    invoke-static {}, Lpu;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 239
    const-string/jumbo v6, "HttpService"

    const-string/jumbo v7, "onStartTest-------->IFLY_OPEN_TEXTTEST_SERVICE"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {v4}, Lpu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "testContent":Ljava/lang/String;
    const-string/jumbo v6, "HttpService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStartTest------>testContent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-eqz v4, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 243
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 244
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lpu;->a(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v2, "all"

    .line 246
    .local v2, "focus":Ljava/lang/String;
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v6

    invoke-virtual {v6}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "input"

    invoke-interface {v6, v2, v7, v3, v8}, Lcom/iflytek/yd/speech/ISpeechHandler;->startTextSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    .end local v2    # "focus":Ljava/lang/String;
    .end local v3    # "testContent":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_OPEN_SPEECHTEST_SERVICE"

    invoke-virtual {v6, v7, v9}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 251
    const-string/jumbo v6, "HttpService"

    const-string/jumbo v7, "onStartTest-------->IFLY_OPEN_SPEECHTEST_SERVICE"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {v4, v10}, Lpu;->a(Ljava/lang/String;I)I

    .line 253
    iget-object v6, p0, Lpt;->b:Lpt$a;

    if-eqz v6, :cond_3

    .line 254
    iget-object v6, p0, Lpt;->b:Lpt$a;

    const-string/jumbo v7, "all"

    const-string/jumbo v8, "all"

    invoke-interface {v6, v7, v8}, Lpt$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 260
    .local v5, "xml":Ljava/lang/String;
    const-string/jumbo v6, "wmtest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStartTest"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lpu;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Lpu;->d()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 262
    invoke-virtual {p0, p1}, Lpt;->b(Lpt$b;)Ljava/lang/String;

    move-result-object v5

    .line 267
    :goto_2
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "entity":Lorg/apache/http/entity/StringEntity;
    const-string/jumbo v6, "HttpService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onQueryStatus code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lpt$b;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-object v1

    .line 235
    .end local v1    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v5    # "xml":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_OPEN_SPEECHTEST_SERVICE"

    invoke-virtual {v6, v7, v10}, Lil;->a(Ljava/lang/String;Z)V

    .line 236
    invoke-static {v9}, Lpu;->a(Z)V

    goto/16 :goto_0

    .line 256
    :cond_3
    const-string/jumbo v6, "HttpService"

    const-string/jumbo v7, "onStartTest listener"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 264
    .restart local v5    # "xml":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1}, Lpt;->a(Lpt$b;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method


# virtual methods
.method public a(Lpt$b;)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # Lpt$b;

    .prologue
    .line 335
    const/16 v1, 0xc8

    iput v1, p1, Lpt$b;->d:I

    .line 336
    const-string/jumbo v0, ""

    .line 338
    .local v0, "xml":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><status>code=\"200\" <id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    invoke-static {}, Lpu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"/></status>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lnl;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 347
    return-object v0
.end method

.method public a(Lpt$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # Lpt$b;
    .param p2, "logFile"    # Ljava/lang/String;

    .prologue
    .line 367
    const/16 v1, 0xc8

    iput v1, p1, Lpt$b;->d:I

    .line 368
    const-string/jumbo v0, ""

    .line 370
    .local v0, "xml":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><status><code=\"200\" /> <logFile=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" /></status>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lnl;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 380
    return-object v0
.end method

.method public b(Lpt$b;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Lpt$b;

    .prologue
    .line 351
    const-string/jumbo v0, ""

    .line 354
    .local v0, "xml":Ljava/lang/String;
    const/16 v1, 0xc8

    iput v1, p1, Lpt$b;->d:I

    .line 355
    const-string/jumbo v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><status><response=\"401\" /></status>"

    .line 357
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lnl;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 363
    return-object v0
.end method

.method public c(Lpt$b;)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # Lpt$b;

    .prologue
    .line 384
    iget-object v2, p1, Lpt$b;->a:Ljava/lang/String;

    invoke-static {v2}, Lpt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "logFile":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 388
    .local v1, "xml":Ljava/lang/String;
    const/16 v2, 0xc8

    iput v2, p1, Lpt$b;->d:I

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><status><code=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 390
    invoke-static {}, Lpu;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" /> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</status>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lnl;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 401
    return-object v1
.end method

.method public d(Lpt$b;)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # Lpt$b;

    .prologue
    .line 405
    iget-object v2, p1, Lpt$b;->a:Ljava/lang/String;

    invoke-static {v2}, Lpt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "logFile":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 408
    .local v1, "xml":Ljava/lang/String;
    const/16 v2, 0xc8

    iput v2, p1, Lpt$b;->d:I

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><status><code=\"100\" /> <logFile=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" /></status>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lnl;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 420
    return-object v1
.end method

.method public e(Lpt$b;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Lpt$b;

    .prologue
    .line 423
    const-string/jumbo v0, ""

    .line 426
    .local v0, "xml":Ljava/lang/String;
    const/16 v1, 0xc8

    iput v1, p1, Lpt$b;->d:I

    .line 427
    const-string/jumbo v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><status><response=\"403\" /></status>"

    .line 430
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lnl;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 437
    return-object v0
.end method

.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 5
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "url":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lpt;->a(Ljava/lang/String;Lorg/apache/http/HttpRequest;)Lpt$b;

    move-result-object v0

    .line 115
    .local v0, "item":Lpt$b;
    const/4 v1, 0x0

    .line 117
    .local v1, "res_entity":Lorg/apache/http/entity/StringEntity;
    iget v3, v0, Lpt$b;->c:I

    if-nez v3, :cond_1

    .line 118
    invoke-direct {p0, v0}, Lpt;->g(Lpt$b;)Lorg/apache/http/entity/StringEntity;

    move-result-object v1

    .line 124
    :cond_0
    :goto_0
    iget v3, v0, Lpt$b;->d:I

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 125
    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 126
    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/xml"

    invoke-interface {p2, v3, v4}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 119
    :cond_1
    iget v3, v0, Lpt$b;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 120
    invoke-direct {p0, v0}, Lpt;->f(Lpt$b;)Lorg/apache/http/entity/StringEntity;

    move-result-object v1

    goto :goto_0
.end method
