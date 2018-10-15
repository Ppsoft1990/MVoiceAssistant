.class public Lps;
.super Ljava/lang/Thread;
.source "HttpServerThread.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Lorg/apache/http/protocol/HttpService;

.field private d:Lorg/apache/http/params/HttpParams;

.field private e:Ljava/net/ServerSocket;

.field private f:Lorg/apache/http/protocol/HttpContext;

.field private g:Lorg/apache/http/protocol/HttpRequestHandler;


# direct methods
.method public constructor <init>(ILorg/apache/http/protocol/HttpRequestHandler;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "requestHandler"    # Lorg/apache/http/protocol/HttpRequestHandler;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lps;->b:Z

    .line 52
    iput p1, p0, Lps;->a:I

    .line 53
    iput-object p2, p0, Lps;->g:Lorg/apache/http/protocol/HttpRequestHandler;

    .line 54
    const-string/jumbo v0, "HttpServerThread"

    invoke-virtual {p0, v0}, Lps;->setName(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private a(Lorg/apache/http/impl/DefaultHttpServerConnection;)V
    .locals 3
    .param p1, "conn"    # Lorg/apache/http/impl/DefaultHttpServerConnection;

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lps;->c:Lorg/apache/http/protocol/HttpService;

    iget-object v2, p0, Lps;->f:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, p1, v2}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 97
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lorg/apache/http/HttpException;
    const-string/jumbo v1, "HttpServerThread"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 92
    .end local v0    # "e":Lorg/apache/http/HttpException;
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Lorg/apache/http/ConnectionClosedException;
    const-string/jumbo v1, "HttpServerThread"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 94
    .end local v0    # "e":Lorg/apache/http/ConnectionClosedException;
    :catch_2
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 104
    .local v0, "httpproc":Lorg/apache/http/protocol/BasicHttpProcessor;
    new-instance v2, Lorg/apache/http/protocol/ResponseDate;

    invoke-direct {v2}, Lorg/apache/http/protocol/ResponseDate;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 105
    new-instance v2, Lorg/apache/http/protocol/ResponseServer;

    invoke-direct {v2}, Lorg/apache/http/protocol/ResponseServer;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 106
    new-instance v2, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v2}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 107
    new-instance v2, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v2}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 110
    new-instance v2, Lorg/apache/http/protocol/HttpService;

    new-instance v3, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v3}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    new-instance v4, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v4}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    iput-object v2, p0, Lps;->c:Lorg/apache/http/protocol/HttpService;

    .line 114
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v2, p0, Lps;->d:Lorg/apache/http/params/HttpParams;

    .line 115
    iget-object v2, p0, Lps;->d:Lorg/apache/http/params/HttpParams;

    const-string/jumbo v3, "http.socket.timeout"

    const/16 v4, 0x7530

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string/jumbo v3, "http.socket.buffer-size"

    const/16 v4, 0x2800

    .line 116
    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string/jumbo v3, "http.connection.stalecheck"

    const/4 v4, 0x0

    .line 118
    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string/jumbo v3, "http.tcp.nodelay"

    const/4 v4, 0x1

    .line 120
    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string/jumbo v3, "http.origin-server"

    const-string/jumbo v4, "HttpComponents/1.1"

    .line 121
    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 124
    iget-object v2, p0, Lps;->c:Lorg/apache/http/protocol/HttpService;

    iget-object v3, p0, Lps;->d:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v2, v3}, Lorg/apache/http/protocol/HttpService;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 126
    new-instance v1, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-direct {v1}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    .line 128
    .local v1, "reqistry":Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    const-string/jumbo v2, "*"

    iget-object v3, p0, Lps;->g:Lorg/apache/http/protocol/HttpRequestHandler;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 130
    iget-object v2, p0, Lps;->c:Lorg/apache/http/protocol/HttpService;

    invoke-virtual {v2, v1}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    .line 132
    new-instance v2, Ljava/net/ServerSocket;

    iget v3, p0, Lps;->a:I

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v2, p0, Lps;->e:Ljava/net/ServerSocket;

    .line 133
    new-instance v2, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v2, p0, Lps;->f:Lorg/apache/http/protocol/HttpContext;

    .line 134
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 137
    const/4 v1, 0x0

    iput-boolean v1, p0, Lps;->b:Z

    .line 139
    :try_start_0
    iget-object v1, p0, Lps;->e:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lps;->e:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lps;->e:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "HttpServerThread"

    const-string/jumbo v2, "close error "

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 60
    :try_start_0
    const-string/jumbo v3, "HttpServerThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "run .... port="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lps;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v3, p0, Lps;->e:Ljava/net/ServerSocket;

    if-nez v3, :cond_0

    .line 62
    invoke-direct {p0}, Lps;->b()V

    .line 65
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lps;->b:Z

    .line 66
    :goto_0
    iget-boolean v3, p0, Lps;->b:Z

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    iget-object v3, p0, Lps;->e:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 69
    .local v2, "socket":Ljava/net/Socket;
    const-string/jumbo v3, "HttpServerThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "run accept new client:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 70
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    .line 73
    .local v0, "conn":Lorg/apache/http/impl/DefaultHttpServerConnection;
    iget-object v3, p0, Lps;->d:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 75
    const-string/jumbo v3, "HttpServerThread"

    const-string/jumbo v4, "run handleClient .."

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0, v0}, Lps;->a(Lorg/apache/http/impl/DefaultHttpServerConnection;)V

    .line 78
    const-string/jumbo v3, "HttpServerThread"

    const-string/jumbo v4, "runclose client .."

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v0    # "conn":Lorg/apache/http/impl/DefaultHttpServerConnection;
    .end local v2    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lps;->b:Z

    .line 83
    const-string/jumbo v3, "HttpServerThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "run finish "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method
