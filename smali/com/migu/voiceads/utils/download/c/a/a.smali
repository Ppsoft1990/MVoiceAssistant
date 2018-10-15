.class final Lcom/migu/voiceads/utils/download/c/a/a;
.super Ljava/lang/Thread;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Wakelock"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Lcom/migu/voiceads/utils/download/c/a/c;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:J

.field private m:[B

.field private n:Ljava/io/File;

.field private o:Lorg/apache/http/client/methods/HttpRequestBase;

.field private p:Lorg/apache/http/client/HttpClient;

.field private q:Lorg/apache/http/HttpHost;

.field private r:Lorg/apache/http/auth/Credentials;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/migu/voiceads/utils/download/c/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/migu/voiceads/utils/download/c/a/a;->h:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/migu/voiceads/utils/download/c/a/a;->i:I

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the OnHttpTransListener object can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

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

.method private b()V
    .locals 1

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/download/c/a/a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/download/c/a/a;->start()V

    :cond_0
    return-void
.end method

.method private c()I
    .locals 7

    const/16 v1, 0x4e20

    const/4 v6, 0x0

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v6}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const-string/jumbo v1, "Android/SpeechService"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/a;->q:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string/jumbo v2, "http.route.default-proxy"

    iget-object v3, p0, Lcom/migu/voiceads/utils/download/c/a/a;->q:Lorg/apache/http/HttpHost;

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/a;->r:Lorg/apache/http/auth/Credentials;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    iget-object v3, p0, Lcom/migu/voiceads/utils/download/c/a/a;->r:Lorg/apache/http/auth/Credentials;

    invoke-interface {v0, v2, v3}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    :cond_1
    iput-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->p:Lorg/apache/http/client/HttpClient;

    return v6
.end method

.method private d()I
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->f:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->e:Ljava/lang/String;

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->e:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/c/a/a;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/migu/voiceads/utils/download/c/a/a;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/c/a/a;->k:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "If-Match"

    iget-object v3, p0, Lcom/migu/voiceads/utils/download/c/a/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/migu/voiceads/utils/download/c/a/a;->l:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/c/a/a;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_1
    iget v2, p0, Lcom/migu/voiceads/utils/download/c/a/a;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v3, p0, Lcom/migu/voiceads/utils/download/c/a/a;->m:[B

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iput-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/migu/voiceads/utils/download/c/a/a;->n:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v4, p0, Lcom/migu/voiceads/utils/download/c/a/a;->n:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    const-string/jumbo v3, "application/x-gzip"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const v0, 0xc3c14

    goto :goto_0
.end method

.method private e()Z
    .locals 2

    iget v0, p0, Lcom/migu/voiceads/utils/download/c/a/a;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/migu/voiceads/utils/download/c/a/a;->j:I

    iget v0, p0, Lcom/migu/voiceads/utils/download/c/a/a;->j:I

    iget v1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->h:I

    if-ge v0, v1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/migu/voiceads/utils/download/c/a/a;->i:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/download/c/a/a;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/download/c/a/a;->d:Z

    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/migu/voiceads/utils/download/c/a/a;->f:I

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->e:Ljava/lang/String;

    iput p5, p0, Lcom/migu/voiceads/utils/download/c/a/a;->g:I

    iput-wide p2, p0, Lcom/migu/voiceads/utils/download/c/a/a;->l:J

    iput v1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->j:I

    iput v1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->a:I

    iput-object p4, p0, Lcom/migu/voiceads/utils/download/c/a/a;->k:Ljava/lang/String;

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/c/a/a;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;[BI)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    iput v0, p0, Lcom/migu/voiceads/utils/download/c/a/a;->f:I

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->e:Ljava/lang/String;

    iput p3, p0, Lcom/migu/voiceads/utils/download/c/a/a;->g:I

    iput-object p2, p0, Lcom/migu/voiceads/utils/download/c/a/a;->m:[B

    iput v1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->j:I

    iput v1, p0, Lcom/migu/voiceads/utils/download/c/a/a;->a:I

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/c/a/a;->b()V

    return-void
.end method

.method public run()V
    .locals 19

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v11, -0x1

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/migu/voiceads/utils/download/c/a/a;->g:I

    new-array v14, v2, [B

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/migu/voiceads/utils/download/c/a/a;->l:J

    invoke-direct/range {p0 .. p0}, Lcom/migu/voiceads/utils/download/c/a/a;->c()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v3

    if-eqz v3, :cond_3

    :try_start_1
    const-string/jumbo v2, "create http client instance error"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->p:Lorg/apache/http/client/HttpClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->p:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->p:Lorg/apache/http/client/HttpClient;

    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->d:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    invoke-interface {v2}, Lcom/migu/voiceads/utils/download/c/a/c;->e()V

    :goto_1
    return-void

    :cond_1
    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    invoke-interface {v2}, Lcom/migu/voiceads/utils/download/c/a/c;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    invoke-interface {v4, v3, v2}, Lcom/migu/voiceads/utils/download/c/a/c;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_3
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/migu/voiceads/utils/download/c/a/a;->d()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v3

    if-eqz v3, :cond_2c

    :try_start_5
    const-string/jumbo v2, "create http request instance error"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->p:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-result-object v15

    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->d:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move v3, v11

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->p:Lorg/apache/http/client/HttpClient;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->p:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->p:Lorg/apache/http/client/HttpClient;

    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->d:Z

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    invoke-interface {v2}, Lcom/migu/voiceads/utils/download/c/a/c;->e()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v4, v3

    const v3, 0xc3ba5

    :try_start_9
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-result-object v2

    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/migu/voiceads/utils/download/c/a/a;->e()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    move v11, v3

    :cond_7
    :goto_3
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->d:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-eqz v3, :cond_4

    move v3, v11

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v4, v3

    const v3, 0xc3ba6

    :try_start_c
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-result-object v2

    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/migu/voiceads/utils/download/c/a/a;->e()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    move v11, v3

    goto :goto_3

    :cond_8
    :try_start_e
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->l:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_a

    const/4 v3, 0x1

    move v4, v3

    :goto_4
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v5, 0x12d

    if-eq v3, v5, :cond_9

    const/16 v5, 0x12e

    if-eq v3, v5, :cond_9

    const/16 v5, 0x12f

    if-eq v3, v5, :cond_9

    const/16 v5, 0x133

    if-ne v3, v5, :cond_e

    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->a:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->a:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->a:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    const v3, 0xc3ba9

    :try_start_f
    const-string/jumbo v2, "redirection exceeds max of 20"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto/16 :goto_2

    :cond_a
    const/4 v3, 0x0

    move v4, v3

    goto :goto_4

    :cond_b
    :try_start_10
    const-string/jumbo v3, "Location"

    invoke-interface {v15, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move-result-object v3

    if-eqz v3, :cond_d

    :try_start_11
    new-instance v4, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/migu/voiceads/utils/download/c/a/a;->e:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/net/URI;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->e:Ljava/lang/String;
    :try_end_11
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/migu/voiceads/utils/download/c/a/a;->d()I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-result v3

    if-eqz v3, :cond_7

    :try_start_13
    const-string/jumbo v2, "create http request instance error"

    goto/16 :goto_2

    :catch_4
    move-exception v3

    move-object v4, v3

    const v3, 0xc3ba7

    invoke-virtual {v4}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    move-result-object v2

    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    move v11, v3

    move-object v3, v2

    move-object v2, v4

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->p:Lorg/apache/http/client/HttpClient;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->p:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->p:Lorg/apache/http/client/HttpClient;

    :cond_c
    :try_start_15
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->d:Z

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    invoke-interface {v3}, Lcom/migu/voiceads/utils/download/c/a/c;->e()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    :goto_6
    throw v2

    :cond_d
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    const v3, 0xc3ba7

    :try_start_17
    const-string/jumbo v2, "redirection location is null"

    goto/16 :goto_2

    :cond_e
    if-nez v4, :cond_f

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_10

    :cond_f
    if-eqz v4, :cond_11

    const/16 v4, 0xce

    if-eq v3, v4, :cond_11

    :cond_10
    const-string/jumbo v2, "http status error, please look in relevent RFCs"
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/migu/voiceads/utils/download/c/a/a;->e()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    move v11, v3

    goto/16 :goto_3

    :cond_11
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    :try_start_19
    const-string/jumbo v4, "Content-Disposition"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    :cond_12
    const-string/jumbo v4, "Content-Location"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    :cond_13
    const/4 v6, 0x0

    const-string/jumbo v4, "Content-Type"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/migu/voiceads/utils/download/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_14
    const-string/jumbo v4, "Content-Length"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :cond_15
    const-string/jumbo v4, "ETag"

    invoke-interface {v15, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    :cond_16
    const-wide/16 v4, 0x0

    if-eqz v3, :cond_17

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    move-result-wide v4

    :cond_17
    const-wide/16 v16, 0x0

    cmp-long v3, v12, v16

    if-lez v3, :cond_18

    add-long/2addr v4, v12

    :cond_18
    const-wide/16 v16, 0x0

    cmp-long v3, v4, v16

    if-gtz v3, :cond_19

    const v3, 0xc3ba7

    :try_start_1a
    const-string/jumbo v2, "http content length is not positive"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    :try_start_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_2

    :cond_19
    :try_start_1c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->d:Z

    if-nez v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/migu/voiceads/utils/download/c/a/a;->e:Ljava/lang/String;

    invoke-interface/range {v3 .. v10}, Lcom/migu/voiceads/utils/download/c/a/c;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/migu/voiceads/utils/download/c/a/a;->d:Z

    if-eqz v6, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    move v3, v11

    goto/16 :goto_2

    :cond_1a
    if-eqz v3, :cond_1c

    :try_start_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    invoke-interface {v4}, Lcom/migu/voiceads/utils/download/c/a/c;->f()Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    move-result-object v2

    :try_start_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto/16 :goto_2

    :cond_1b
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    move v3, v11

    goto/16 :goto_2

    :cond_1c
    const/4 v6, 0x0

    :try_start_20
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_7
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    move-result-object v6

    :try_start_21
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->d:Z

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_c
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    if-eqz v6, :cond_2b

    :try_start_22
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_5
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    move v3, v11

    goto/16 :goto_2

    :catch_5
    move-exception v3

    move v3, v11

    goto/16 :goto_2

    :cond_1d
    move-wide v8, v12

    :cond_1e
    :try_start_23
    invoke-virtual {v6, v14}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/migu/voiceads/utils/download/c/a/a;->d:Z

    if-eqz v7, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_d
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    move v3, v11

    :goto_7
    if-eqz v6, :cond_5

    :try_start_24
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_6
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto/16 :goto_2

    :catch_6
    move-exception v4

    goto/16 :goto_2

    :cond_1f
    const/4 v7, -0x1

    if-ne v3, v7, :cond_21

    cmp-long v3, v8, v4

    if-eqz v3, :cond_20

    const v11, 0xc3ba7

    :try_start_25
    const-string/jumbo v3, "http content length and downloaded length is not valid"
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_d
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    :try_start_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_e
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    move-object v2, v3

    move v3, v11

    goto :goto_7

    :cond_20
    const/4 v11, 0x0

    move v3, v11

    goto :goto_7

    :cond_21
    :try_start_27
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    invoke-interface {v7, v14, v3}, Lcom/migu/voiceads/utils/download/c/a/c;->a([BI)I

    move-result v7

    if-nez v7, :cond_22

    int-to-long v12, v3

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->d:Z

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    move v3, v11

    goto :goto_7

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->d:Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_d
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    if-nez v3, :cond_2a

    :try_start_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    invoke-interface {v3}, Lcom/migu/voiceads/utils/download/c/a/c;->f()Ljava/lang/String;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_d
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    move-result-object v3

    move v11, v7

    :goto_8
    :try_start_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_e
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    move-object v2, v3

    move v3, v11

    goto :goto_7

    :catch_7
    move-exception v3

    move-object v4, v6

    move-object v5, v2

    move-wide v6, v12

    move-object v2, v3

    :goto_9
    const v3, 0xc3ba6

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    move-result-object v2

    :try_start_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/migu/voiceads/utils/download/c/a/a;->o:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/migu/voiceads/utils/download/c/a/a;->e()Z
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    move-result v5

    if-eqz v5, :cond_23

    if-eqz v4, :cond_29

    :try_start_2c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_8
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    move-wide v12, v6

    move v11, v3

    goto/16 :goto_3

    :catch_8
    move-exception v4

    move-wide v12, v6

    move v11, v3

    goto/16 :goto_3

    :cond_23
    if-eqz v4, :cond_5

    :try_start_2d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_9
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    goto/16 :goto_2

    :catch_9
    move-exception v4

    goto/16 :goto_2

    :catchall_1
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_a
    if-eqz v6, :cond_24

    :try_start_2e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_b
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2

    :cond_24
    :goto_b
    :try_start_2f
    throw v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    :catchall_2
    move-exception v2

    goto/16 :goto_5

    :cond_25
    if-nez v11, :cond_26

    :try_start_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    invoke-interface {v3}, Lcom/migu/voiceads/utils/download/c/a/c;->c()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_a

    goto/16 :goto_6

    :catch_a
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :cond_26
    :try_start_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    invoke-interface {v4, v11, v3}, Lcom/migu/voiceads/utils/download/c/a/c;->a(ILjava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_a

    goto/16 :goto_6

    :cond_27
    if-nez v3, :cond_28

    :try_start_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    invoke-interface {v2}, Lcom/migu/voiceads/utils/download/c/a/c;->c()V

    goto/16 :goto_1

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/migu/voiceads/utils/download/c/a/a;->c:Lcom/migu/voiceads/utils/download/c/a/c;

    invoke-interface {v4, v3, v2}, Lcom/migu/voiceads/utils/download/c/a/c;->a(ILjava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_1

    goto/16 :goto_1

    :catch_b
    move-exception v4

    goto :goto_b

    :catchall_3
    move-exception v2

    move-object v3, v4

    goto/16 :goto_5

    :catchall_4
    move-exception v2

    move v11, v3

    move-object v3, v4

    goto/16 :goto_5

    :catchall_5
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto/16 :goto_5

    :catchall_6
    move-exception v4

    move v11, v3

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_5

    :catchall_7
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto/16 :goto_5

    :catchall_8
    move-exception v2

    goto :goto_a

    :catchall_9
    move-exception v3

    move v11, v7

    move-object/from16 v18, v2

    move-object v2, v3

    move-object/from16 v3, v18

    goto :goto_a

    :catchall_a
    move-exception v2

    move-object v6, v4

    move v11, v3

    move-object v3, v5

    goto :goto_a

    :catchall_b
    move-exception v5

    move-object v6, v4

    move v11, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_a

    :catch_c
    move-exception v3

    move-object v4, v6

    move-object v5, v2

    move-wide v6, v12

    move-object v2, v3

    goto/16 :goto_9

    :catch_d
    move-exception v3

    move-object v4, v6

    move-object v5, v2

    move-wide v6, v8

    move-object v2, v3

    goto/16 :goto_9

    :catch_e
    move-exception v2

    move-object v4, v6

    move-object v5, v3

    move-wide v6, v8

    goto/16 :goto_9

    :cond_29
    move-wide v12, v6

    move v11, v3

    goto/16 :goto_3

    :cond_2a
    move-object v3, v2

    goto/16 :goto_8

    :cond_2b
    move v3, v11

    goto/16 :goto_2

    :cond_2c
    move-object v2, v4

    goto/16 :goto_3
.end method
