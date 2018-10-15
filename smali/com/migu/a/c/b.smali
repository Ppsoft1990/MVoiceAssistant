.class public Lcom/migu/a/c/b;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/migu/a/c/b$a;,
        Lcom/migu/a/c/b$b;
    }
.end annotation


# static fields
.field private static final an:I = 0x2

.field private static final ao:I = 0x4

.field private static final ap:I = 0x1e

.field private static as:Lorg/apache/http/conn/ClientConnectionManager;

.field private static z:Ljava/lang/String;


# instance fields
.field private aq:Lcom/migu/a/c/e;

.field final ar:Ljava/util/concurrent/ExecutorService;

.field private at:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/migu/a/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/migu/a/c/b;->z:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/migu/a/c/b;->E()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 89
    new-instance v0, Lcom/migu/a/c/b$a;

    invoke-direct {v0, p0}, Lcom/migu/a/c/b$a;-><init>(Lcom/migu/a/c/b;)V

    iput-object v0, p0, Lcom/migu/a/c/b;->ar:Ljava/util/concurrent/ExecutorService;

    .line 90
    iput-object p1, p0, Lcom/migu/a/c/b;->at:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/migu/a/c/b$1;

    invoke-direct {v0, p0}, Lcom/migu/a/c/b$1;-><init>(Lcom/migu/a/c/b;)V

    invoke-virtual {p0, v0}, Lcom/migu/a/c/b;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 101
    new-instance v0, Lcom/migu/a/c/b$2;

    invoke-direct {v0, p0}, Lcom/migu/a/c/b$2;-><init>(Lcom/migu/a/c/b;)V

    invoke-virtual {p0, v0}, Lcom/migu/a/c/b;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 120
    return-void
.end method

.method static final E()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 5

    .prologue
    .line 70
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 71
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 72
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 73
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v1, Lcom/migu/a/c/b;->as:Lorg/apache/http/conn/ClientConnectionManager;

    .line 74
    sget-object v0, Lcom/migu/a/c/b;->as:Lorg/apache/http/conn/ClientConnectionManager;

    return-object v0
.end method

.method static synthetic F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/migu/a/c/b;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/migu/a/c/b;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/migu/a/c/b;->at:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/migu/a/c/b;Lcom/migu/a/c/e;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/migu/a/c/b;->aq:Lcom/migu/a/c/e;

    return-void
.end method

.method static synthetic b(Lcom/migu/a/c/b;)Lcom/migu/a/c/e;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/migu/a/c/b;->aq:Lcom/migu/a/c/e;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/migu/a/c/a;J)V
    .locals 8

    .prologue
    .line 127
    new-instance v7, Lcom/migu/a/c/b$3;

    invoke-direct {v7, p0, p1}, Lcom/migu/a/c/b$3;-><init>(Lcom/migu/a/c/b;Lcom/migu/a/c/a;)V

    .line 133
    new-instance v3, Lcom/migu/a/c/b$4;

    invoke-direct {v3, p0, p1, v7}, Lcom/migu/a/c/b$4;-><init>(Lcom/migu/a/c/b;Lcom/migu/a/c/a;Ljava/lang/Runnable;)V

    .line 140
    new-instance v1, Lcom/migu/a/c/b$5;

    move-object v2, p0

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/migu/a/c/b$5;-><init>(Lcom/migu/a/c/b;Ljava/lang/Runnable;JLcom/migu/a/c/a;Ljava/lang/Runnable;)V

    .line 150
    iget-object v0, p0, Lcom/migu/a/c/b;->ar:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 151
    return-void
.end method

.method public final b(Lcom/migu/a/c/a;)V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/migu/a/c/a;->n()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/migu/a/c/b;->a(Lcom/migu/a/c/a;J)V

    .line 124
    return-void
.end method
