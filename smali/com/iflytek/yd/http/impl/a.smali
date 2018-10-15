.class final Lcom/iflytek/yd/http/impl/a;
.super Ljava/lang/Thread;


# instance fields
.field private a:I

.field private b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:J

.field private m:[B

.field private n:Ljava/io/File;

.field private o:Lorg/apache/http/client/methods/HttpRequestBase;

.field private p:Lorg/apache/http/client/HttpClient;

.field private q:Lorg/apache/http/HttpHost;

.field private r:Lorg/apache/http/auth/Credentials;

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/yd/http/impl/OnHttpTransListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v1, p0, Lcom/iflytek/yd/http/impl/a;->g:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/iflytek/yd/http/impl/a;->h:I

    iput-boolean v1, p0, Lcom/iflytek/yd/http/impl/a;->k:Z

    iput-object p1, p0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the OnHttpTransListener object can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private b()I
    .locals 8

    const v1, 0xc3baa

    const v2, 0xc3ba7

    const/4 v0, 0x0

    iget v3, p0, Lcom/iflytek/yd/http/impl/a;->e:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/iflytek/yd/http/impl/a;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v4, p0, Lcom/iflytek/yd/http/impl/a;->l:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/a;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "If-Match"

    iget-object v3, p0, Lcom/iflytek/yd/http/impl/a;->j:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/iflytek/yd/http/impl/a;->l:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object v2, p0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "HttpClients"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v4, p0, Lcom/iflytek/yd/http/impl/a;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-boolean v1, p0, Lcom/iflytek/yd/http/impl/a;->k:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v4, "gzip"

    invoke-virtual {v3, v1, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_2
    iget v1, p0, Lcom/iflytek/yd/http/impl/a;->e:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/a;->m:[B

    if-nez v1, :cond_4

    const-string/jumbo v0, "HttpClients"

    const-string/jumbo v1, "createHttpRequestInstance mPostData null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "HttpClients"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_3
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v4, p0, Lcom/iflytek/yd/http/impl/a;->m:[B

    invoke-direct {v1, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    iget-boolean v1, p0, Lcom/iflytek/yd/http/impl/a;->s:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "multipart/mixed;boundary=\"=====iflytek_ossp2.0_blc1.0_nextpart=====\""

    invoke-virtual {v3, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iput-object v3, p0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_0

    :cond_6
    :try_start_4
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/iflytek/yd/http/impl/a;->n:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v5, p0, Lcom/iflytek/yd/http/impl/a;->n:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct {v1, v4, v6, v7}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    const-string/jumbo v4, "binary/octet-stream"

    invoke-virtual {v1, v4}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_2
    move-exception v0

    const v0, 0xc3c14

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "HttpClients"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createHttpRequestInstance"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 3

    iget v0, p0, Lcom/iflytek/yd/http/impl/a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/yd/http/impl/a;->i:I

    iget v0, p0, Lcom/iflytek/yd/http/impl/a;->i:I

    iget v1, p0, Lcom/iflytek/yd/http/impl/a;->g:I

    if-ge v0, v1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/iflytek/yd/http/impl/a;->h:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/iflytek/yd/http/impl/a;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HttpClients"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/http/impl/a;->c:Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/iflytek/yd/http/impl/a;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/yd/http/impl/a;->e:I

    iput-object p1, p0, Lcom/iflytek/yd/http/impl/a;->d:Ljava/lang/String;

    const/16 v0, 0x1000

    iput v0, p0, Lcom/iflytek/yd/http/impl/a;->f:I

    iput-wide p2, p0, Lcom/iflytek/yd/http/impl/a;->l:J

    iput v1, p0, Lcom/iflytek/yd/http/impl/a;->i:I

    iput v1, p0, Lcom/iflytek/yd/http/impl/a;->a:I

    iput-object p4, p0, Lcom/iflytek/yd/http/impl/a;->j:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/yd/http/impl/a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/yd/http/impl/a;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HttpClients"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[BZZ)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/yd/http/impl/a;->e:I

    iput-object p1, p0, Lcom/iflytek/yd/http/impl/a;->d:Ljava/lang/String;

    const/16 v0, 0x1000

    iput v0, p0, Lcom/iflytek/yd/http/impl/a;->f:I

    iput-object p2, p0, Lcom/iflytek/yd/http/impl/a;->m:[B

    iput v1, p0, Lcom/iflytek/yd/http/impl/a;->i:I

    iput v1, p0, Lcom/iflytek/yd/http/impl/a;->a:I

    iput-boolean p3, p0, Lcom/iflytek/yd/http/impl/a;->k:Z

    iput-boolean p4, p0, Lcom/iflytek/yd/http/impl/a;->s:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/yd/http/impl/a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/yd/http/impl/a;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HttpClients"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final a(Lorg/apache/http/HttpHost;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/http/impl/a;->q:Lorg/apache/http/HttpHost;

    return-void
.end method

.method public final a(Lorg/apache/http/auth/Credentials;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/http/impl/a;->r:Lorg/apache/http/auth/Credentials;

    return-void
.end method

.method public final run()V
    .locals 19

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v14, -0x1

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iflytek/yd/http/impl/a;->f:I

    new-array v15, v2, [B

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/iflytek/yd/http/impl/a;->l:J

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v3, 0x2000

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const-string/jumbo v3, "Android/InputMethod"

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v5, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v4, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v4, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->q:Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string/jumbo v4, "http.route.default-proxy"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/yd/http/impl/a;->q:Lorg/apache/http/HttpHost;

    invoke-interface {v2, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->r:Lorg/apache/http/auth/Credentials;

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    sget-object v4, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/yd/http/impl/a;->r:Lorg/apache/http/auth/Credentials;

    invoke-interface {v2, v4, v5}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    :cond_1
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iflytek/yd/http/impl/a;->p:Lorg/apache/http/client/HttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/yd/http/impl/a;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    :try_start_1
    const-string/jumbo v2, "create http request instance error"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const-string/jumbo v3, "HttpClients"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "finally | mCancel = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/iflytek/yd/http/impl/a;->c:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " code="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/yd/http/impl/a;->p:Lorg/apache/http/client/HttpClient;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/yd/http/impl/a;->p:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iflytek/yd/http/impl/a;->p:Lorg/apache/http/client/HttpClient;

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iflytek/yd/http/impl/a;->c:Z

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    invoke-interface {v2}, Lcom/iflytek/yd/http/impl/OnHttpTransListener;->onCancel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    :goto_0
    return-void

    :cond_3
    if-nez v2, :cond_4

    const/16 v3, 0xc8

    if-ne v5, v3, :cond_5

    :cond_4
    if-eqz v2, :cond_f

    const/16 v2, 0xce

    if-eq v5, v2, :cond_f

    :cond_5
    :try_start_3
    const-string/jumbo v11, "http status error, please look in relevent RFCs"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/yd/http/impl/a;->c()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result v2

    if-eqz v2, :cond_2e

    move v14, v5

    :cond_6
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/yd/http/impl/a;->c:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_7

    const/4 v11, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->p:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v16

    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/yd/http/impl/a;->c:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    :goto_2
    const-string/jumbo v2, "HttpClients"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "finally | mCancel = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/iflytek/yd/http/impl/a;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->p:Lorg/apache/http/client/HttpClient;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->p:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/iflytek/yd/http/impl/a;->p:Lorg/apache/http/client/HttpClient;

    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/yd/http/impl/a;->c:Z

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    invoke-interface {v2}, Lcom/iflytek/yd/http/impl/OnHttpTransListener;->onCancel()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "HttpClients"

    const-string/jumbo v4, ""

    :goto_3
    invoke-static {v3, v4, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const v14, 0xc3ba5

    :try_start_8
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/yd/http/impl/a;->c()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :catch_2
    move-exception v2

    const v14, 0xc3ba6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/yd/http/impl/a;->c()Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/iflytek/yd/http/impl/a;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_b

    const/4 v2, 0x1

    :goto_4
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v3, 0x12d

    if-eq v5, v3, :cond_a

    const/16 v3, 0x12e

    if-eq v5, v3, :cond_a

    const/16 v3, 0x12f

    if-eq v5, v3, :cond_a

    const/16 v3, 0x133

    if-ne v5, v3, :cond_3

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iflytek/yd/http/impl/a;->a:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iflytek/yd/http/impl/a;->a:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iflytek/yd/http/impl/a;->a:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const v14, 0xc3ba9

    const-string/jumbo v11, "redirection exceeds max of 20"

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    :cond_c
    const-string/jumbo v2, "Location"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_e

    :try_start_9
    new-instance v3, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/yd/http/impl/a;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URI;

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/iflytek/yd/http/impl/a;->d:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/yd/http/impl/a;->b()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    :try_start_b
    const-string/jumbo v11, "create http request instance error"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move v14, v5

    goto/16 :goto_2

    :catch_3
    move-exception v2

    const v14, 0xc3ba7

    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    :goto_5
    const-string/jumbo v3, "HttpClients"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "finally | mCancel = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/iflytek/yd/http/impl/a;->c:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/yd/http/impl/a;->p:Lorg/apache/http/client/HttpClient;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/yd/http/impl/a;->p:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iflytek/yd/http/impl/a;->p:Lorg/apache/http/client/HttpClient;

    :cond_d
    :try_start_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iflytek/yd/http/impl/a;->c:Z

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    invoke-interface {v3}, Lcom/iflytek/yd/http/impl/OnHttpTransListener;->onCancel()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :goto_6
    throw v2

    :cond_e
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const v14, 0xc3ba7

    const-string/jumbo v11, "redirection location is null"

    goto/16 :goto_2

    :cond_f
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const-string/jumbo v3, "Content-Disposition"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    :cond_10
    const-string/jumbo v3, "Content-Location"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    :cond_11
    const/4 v6, 0x0

    const-string/jumbo v3, "Content-Type"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/yd/http/impl/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_12
    const-string/jumbo v3, "Content-Length"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    :cond_13
    const-string/jumbo v3, "ETag"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    :cond_14
    const-wide/16 v4, 0x0

    if-eqz v2, :cond_15

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_15
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_16

    add-long/2addr v4, v12

    :cond_16
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_17

    const v14, 0xc3ba7

    const-string/jumbo v11, "http content length is not positive"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    goto/16 :goto_2

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/yd/http/impl/a;->c:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iflytek/yd/http/impl/a;->d:Ljava/lang/String;

    invoke-interface/range {v3 .. v10}, Lcom/iflytek/yd/http/impl/OnHttpTransListener;->onStart(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/yd/http/impl/a;->c:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    :cond_18
    if-eqz v7, :cond_1a

    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    invoke-interface {v2}, Lcom/iflytek/yd/http/impl/OnHttpTransListener;->getLastErrorDetail()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move v14, v7

    goto/16 :goto_2

    :cond_19
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    :cond_1a
    const/4 v3, 0x0

    :try_start_11
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/yd/http/impl/a;->c:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v3, :cond_7

    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_2

    :catch_4
    move-exception v2

    :try_start_13
    const-string/jumbo v3, "HttpClients"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_2

    :cond_1b
    move-wide v6, v12

    :cond_1c
    :try_start_14
    invoke-virtual {v3, v15}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/iflytek/yd/http/impl/a;->c:Z

    if-eqz v8, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v3, :cond_7

    :try_start_15
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_2

    :catch_5
    move-exception v2

    :try_start_16
    const-string/jumbo v3, "HttpClients"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_2

    :cond_1d
    const/4 v8, -0x1

    if-ne v2, v8, :cond_20

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1f

    const v5, 0xc3ba7

    :try_start_17
    const-string/jumbo v4, "http content length and downloaded length is not valid"
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_10
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_11
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-eqz v3, :cond_1e

    :try_start_19
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_e
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :cond_1e
    :goto_7
    move-object v11, v4

    move v14, v5

    goto/16 :goto_2

    :cond_1f
    const/4 v14, 0x0

    if-eqz v3, :cond_7

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_2

    :catch_6
    move-exception v2

    :try_start_1b
    const-string/jumbo v3, "HttpClients"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_2

    :cond_20
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    invoke-interface {v8, v15, v2}, Lcom/iflytek/yd/http/impl/OnHttpTransListener;->onBuffer([BI)I

    move-result v8

    if-nez v8, :cond_21

    int-to-long v8, v2

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/yd/http/impl/a;->c:Z

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    if-eqz v3, :cond_7

    :try_start_1d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_2

    :catch_7
    move-exception v2

    :try_start_1e
    const-string/jumbo v3, "HttpClients"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto/16 :goto_2

    :cond_21
    :try_start_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/yd/http/impl/a;->c:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_10
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    if-nez v2, :cond_2d

    :try_start_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    invoke-interface {v2}, Lcom/iflytek/yd/http/impl/OnHttpTransListener;->getLastErrorDetail()Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_10
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    move-result-object v4

    move v5, v8

    :goto_8
    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_11
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    if-eqz v3, :cond_22

    :try_start_22
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_f
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    :cond_22
    :goto_9
    move-object v11, v4

    move v14, v5

    goto/16 :goto_2

    :catch_8
    move-exception v2

    move-wide v4, v12

    move-object v6, v11

    :goto_a
    const v7, 0xc3ba6

    :try_start_23
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    move-result-object v11

    :try_start_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/yd/http/impl/a;->c()Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    move-result v2

    if-eqz v2, :cond_24

    if-eqz v3, :cond_23

    :try_start_25
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    :cond_23
    :goto_b
    move-wide v12, v4

    move v14, v7

    goto/16 :goto_1

    :cond_24
    if-eqz v3, :cond_25

    :try_start_26
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_d
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    :cond_25
    :goto_c
    move v14, v7

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    move v4, v14

    :goto_d
    if-eqz v3, :cond_26

    :try_start_27
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_b
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    :cond_26
    :goto_e
    :try_start_28
    throw v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    :catchall_2
    move-exception v2

    move v14, v4

    goto/16 :goto_5

    :catch_9
    move-exception v3

    const-string/jumbo v4, "HttpClients"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    :cond_27
    if-nez v14, :cond_28

    :try_start_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    invoke-interface {v3}, Lcom/iflytek/yd/http/impl/OnHttpTransListener;->onFinish()V

    goto/16 :goto_6

    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    invoke-interface {v3, v14, v11}, Lcom/iflytek/yd/http/impl/OnHttpTransListener;->onError(ILjava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_9

    goto/16 :goto_6

    :catch_a
    move-exception v2

    const-string/jumbo v3, "HttpClients"

    const-string/jumbo v4, ""

    goto/16 :goto_3

    :cond_29
    if-nez v5, :cond_2a

    :try_start_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    invoke-interface {v2}, Lcom/iflytek/yd/http/impl/OnHttpTransListener;->onFinish()V

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    invoke-interface {v3, v5, v2}, Lcom/iflytek/yd/http/impl/OnHttpTransListener;->onError(ILjava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_a

    goto/16 :goto_0

    :cond_2b
    if-nez v14, :cond_2c

    :try_start_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    invoke-interface {v2}, Lcom/iflytek/yd/http/impl/OnHttpTransListener;->onFinish()V

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/yd/http/impl/a;->b:Lcom/iflytek/yd/http/impl/OnHttpTransListener;

    invoke-interface {v2, v14, v11}, Lcom/iflytek/yd/http/impl/OnHttpTransListener;->onError(ILjava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_0

    goto/16 :goto_0

    :catch_b
    move-exception v3

    :try_start_2c
    const-string/jumbo v5, "HttpClients"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2

    goto :goto_e

    :catch_c
    move-exception v2

    :try_start_2d
    const-string/jumbo v3, "HttpClients"

    const-string/jumbo v6, ""

    invoke-static {v3, v6, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :catchall_3
    move-exception v2

    move v14, v7

    goto/16 :goto_5

    :catch_d
    move-exception v2

    const-string/jumbo v3, "HttpClients"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_3

    goto/16 :goto_c

    :catch_e
    move-exception v2

    :try_start_2e
    const-string/jumbo v3, "HttpClients"

    const-string/jumbo v6, ""

    invoke-static {v3, v6, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :catchall_4
    move-exception v2

    move-object v11, v4

    move v14, v5

    goto/16 :goto_5

    :catch_f
    move-exception v2

    const-string/jumbo v3, "HttpClients"

    const-string/jumbo v6, ""

    invoke-static {v3, v6, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_4

    goto/16 :goto_9

    :catchall_5
    move-exception v2

    move v14, v5

    goto/16 :goto_5

    :catchall_6
    move-exception v2

    move v4, v8

    goto/16 :goto_d

    :catchall_7
    move-exception v2

    move-object v11, v4

    move v4, v5

    goto/16 :goto_d

    :catchall_8
    move-exception v2

    move v4, v5

    goto/16 :goto_d

    :catchall_9
    move-exception v2

    move-object v11, v6

    move v4, v7

    goto/16 :goto_d

    :catchall_a
    move-exception v2

    move v4, v7

    goto/16 :goto_d

    :catch_10
    move-exception v2

    move-wide v4, v6

    move-object v6, v11

    goto/16 :goto_a

    :catch_11
    move-exception v2

    move-wide/from16 v17, v6

    move-object v6, v4

    move-wide/from16 v4, v17

    goto/16 :goto_a

    :cond_2d
    move-object v4, v11

    move v5, v14

    goto/16 :goto_8

    :cond_2e
    move v14, v5

    goto/16 :goto_2
.end method
