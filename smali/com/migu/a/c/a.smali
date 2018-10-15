.class public abstract Lcom/migu/a/c/a;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# static fields
.field protected static final R:Ljava/lang/String; = "0"

.field protected static final S:Ljava/lang/String; = "-1"

.field protected static final T:Ljava/lang/String; = "-2"

.field protected static TAG:Ljava/lang/String; = null

.field private static final U:I = 0x2

.field private static final V:J = 0x4e20L


# instance fields
.field protected W:Lcom/migu/a/c/b;

.field public X:Lcom/migu/a/c/d;

.field private Y:Lorg/apache/http/client/methods/HttpUriRequest;

.field private Z:[B

.field private aa:Z

.field private ab:I

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Lorg/apache/http/HttpResponse;

.field protected af:Ljava/lang/String;

.field protected ag:Ljava/lang/String;

.field protected ah:Ljava/lang/String;

.field protected ai:Ljava/lang/String;

.field protected aj:Ljava/lang/String;

.field protected ak:Lcom/migu/a/c/d;

.field protected al:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/migu/a/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/migu/a/c/a;->TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/migu/a/c/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/a/c/a;->aa:Z

    .line 75
    iput-object v1, p0, Lcom/migu/a/c/a;->ac:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/migu/a/c/a;->ad:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "Signature-RSAUtils"

    iput-object v0, p0, Lcom/migu/a/c/a;->af:Ljava/lang/String;

    .line 139
    const-string/jumbo v0, "Signature-Secret"

    iput-object v0, p0, Lcom/migu/a/c/a;->ag:Ljava/lang/String;

    .line 143
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/migu/a/c/a;->ah:Ljava/lang/String;

    .line 147
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/a/c/a;->ai:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/a/c/a;->al:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/migu/a/c/a;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/migu/a/c/a;->W:Lcom/migu/a/c/b;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/migu/a/c/b;Lcom/migu/a/c/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/a/c/a;->aa:Z

    .line 75
    iput-object v1, p0, Lcom/migu/a/c/a;->ac:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/migu/a/c/a;->ad:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "Signature-RSAUtils"

    iput-object v0, p0, Lcom/migu/a/c/a;->af:Ljava/lang/String;

    .line 139
    const-string/jumbo v0, "Signature-Secret"

    iput-object v0, p0, Lcom/migu/a/c/a;->ag:Ljava/lang/String;

    .line 143
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/migu/a/c/a;->ah:Ljava/lang/String;

    .line 147
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/a/c/a;->ai:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/a/c/a;->al:Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/migu/a/c/a;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/migu/a/c/a;->W:Lcom/migu/a/c/b;

    .line 104
    iput-object p3, p0, Lcom/migu/a/c/a;->X:Lcom/migu/a/c/d;

    .line 105
    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;
    .locals 4

    .prologue
    .line 270
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/migu/a/c/a;I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/migu/a/c/a;->ab:I

    return-void
.end method

.method static synthetic a(Lcom/migu/a/c/a;Lorg/apache/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/migu/a/c/a;->ae:Lorg/apache/http/HttpResponse;

    return-void
.end method

.method static synthetic a(Lcom/migu/a/c/a;[B)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/migu/a/c/a;->Z:[B

    return-void
.end method

.method static synthetic a(Lcom/migu/a/c/a;)[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/migu/a/c/a;->Z:[B

    return-object v0
.end method

.method private final e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/migu/a/c/a;->Z:[B

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/migu/a/c/a;->ab:I

    .line 284
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/migu/a/c/a;->m()I

    move-result v0

    .line 291
    invoke-virtual {p0}, Lcom/migu/a/c/a;->z()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/a/c/a;->Y:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 292
    iput-object v2, p0, Lcom/migu/a/c/a;->Z:[B

    .line 293
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/migu/a/c/a;->Z:[B

    if-nez v1, :cond_1

    if-gtz v0, :cond_3

    .line 328
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/migu/a/c/a;->Z:[B

    if-nez v0, :cond_2

    .line 329
    const-string/jumbo v0, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-direct {p0, v0}, Lcom/migu/a/c/a;->e(Ljava/lang/String;)V

    .line 331
    :cond_2
    return-void

    .line 295
    :cond_3
    :try_start_0
    sget-object v1, Lcom/migu/a/c/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/migu/a/c/a;->Y:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", proxy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/migu/a/c/a;->y()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/a/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/migu/a/c/a;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    new-instance v1, Lorg/apache/http/HttpHost;

    const-string/jumbo v2, "10.0.0.172"

    const/16 v3, 0x50

    const-string/jumbo v4, "http"

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/migu/a/c/a;->W:Lcom/migu/a/c/b;

    invoke-virtual {v2}, Lcom/migu/a/c/b;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string/jumbo v3, "http.route.default-proxy"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 302
    :goto_2
    iget-object v1, p0, Lcom/migu/a/c/a;->Y:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {p0, v1}, Lcom/migu/a/c/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 303
    iget-object v2, p0, Lcom/migu/a/c/a;->W:Lcom/migu/a/c/b;

    iget-object v3, p0, Lcom/migu/a/c/a;->Y:Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v4, Lcom/migu/a/c/a$1;

    invoke-direct {v4, p0}, Lcom/migu/a/c/a$1;-><init>(Lcom/migu/a/c/a;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/migu/a/c/b;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    .line 319
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/migu/a/c/a;->Y:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 323
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    :goto_3
    invoke-direct {p0, v0}, Lcom/migu/a/c/a;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 300
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/migu/a/c/a;->W:Lcom/migu/a/c/b;

    invoke-virtual {v1}, Lcom/migu/a/c/b;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string/jumbo v2, "http.route.default-proxy"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 323
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public final B()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-boolean v0, p0, Lcom/migu/a/c/a;->aa:Z

    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/migu/a/c/a;->aa:Z

    .line 347
    iget-object v0, p0, Lcom/migu/a/c/a;->ae:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/a/c/a;->ae:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 348
    :goto_0
    iget v2, p0, Lcom/migu/a/c/a;->ab:I

    iget-object v3, p0, Lcom/migu/a/c/a;->Z:[B

    invoke-virtual {p0, v2, v3, v0}, Lcom/migu/a/c/a;->a(I[B[Lorg/apache/http/Header;)V

    .line 349
    iput-object v1, p0, Lcom/migu/a/c/a;->ae:Lorg/apache/http/HttpResponse;

    .line 351
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 347
    goto :goto_0
.end method

.method public C()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/migu/a/c/a;->W:Lcom/migu/a/c/b;

    if-nez v0, :cond_0

    .line 371
    const-string/jumbo v0, "No HTTP Client"

    invoke-virtual {p0, v0}, Lcom/migu/a/c/a;->f(Ljava/lang/String;)V

    .line 379
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/migu/a/c/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/a/b/g;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    const-string/jumbo v0, "\u627e\u4e0d\u5230\u53ef\u7528\u7f51\u7edc\uff0c\u8bf7\u8bbe\u7f6e\u7f51\u7edc\u540e\u91cd\u8bd5\uff01"

    invoke-virtual {p0, v0}, Lcom/migu/a/c/a;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/migu/a/c/a;->W:Lcom/migu/a/c/b;

    invoke-virtual {v0, p0}, Lcom/migu/a/c/b;->b(Lcom/migu/a/c/a;)V

    goto :goto_0
.end method

.method public D()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/migu/a/c/a;->Y:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 386
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/migu/a/c/a;->Y:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 387
    if-eqz v0, :cond_0

    .line 389
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    :goto_0
    const-string/jumbo v0, "\u8bf7\u6c42\u8d85\u65f6\uff01"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/migu/a/c/a;->Z:[B

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Lcom/migu/a/c/a;->ab:I

    .line 396
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract a(I[B[Lorg/apache/http/Header;)V
.end method

.method public final a(Lcom/migu/a/c/e;)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/migu/a/c/a;->X:Lcom/migu/a/c/d;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/migu/a/c/d;

    invoke-direct {v0}, Lcom/migu/a/c/d;-><init>()V

    iput-object v0, p0, Lcom/migu/a/c/a;->X:Lcom/migu/a/c/d;

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/migu/a/c/a;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/migu/a/c/a;->s()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/migu/a/c/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    invoke-virtual {p0}, Lcom/migu/a/c/a;->u()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/a/c/a;->X:Lcom/migu/a/c/d;

    invoke-virtual {p1, v1, v0, v2}, Lcom/migu/a/c/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/migu/a/c/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/a/c/a;->ac:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Lcom/migu/a/c/e;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/a/c/a;->ad:Ljava/lang/String;

    .line 187
    :cond_1
    return-void

    .line 183
    :cond_2
    const-string/jumbo v0, "POST"

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/migu/a/c/a;->ah:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/migu/a/c/a;->al:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/migu/a/c/a;->aj:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/migu/a/c/a;->af:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/migu/a/c/a;->ag:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-boolean v0, p0, Lcom/migu/a/c/a;->aa:Z

    if-nez v0, :cond_1

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/migu/a/c/a;->aa:Z

    .line 360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    :cond_0
    invoke-direct {p0, p1}, Lcom/migu/a/c/a;->e(Ljava/lang/String;)V

    .line 361
    iget v0, p0, Lcom/migu/a/c/a;->ab:I

    iget-object v1, p0, Lcom/migu/a/c/a;->Z:[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/migu/a/c/a;->a(I[B[Lorg/apache/http/Header;)V

    .line 362
    iput-object v2, p0, Lcom/migu/a/c/a;->ae:Lorg/apache/http/HttpResponse;

    .line 364
    :cond_1
    return-void
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x2

    return v0
.end method

.method public n()J
    .locals 2

    .prologue
    .line 111
    const-wide/16 v0, 0x4e20

    return-wide v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public signature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "Header-Signature"

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string/jumbo v0, "Header-Key"

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/migu/a/c/a;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/migu/a/c/a;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public w()Lcom/migu/a/c/d;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/migu/a/c/a;->ak:Lcom/migu/a/c/d;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method protected z()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/migu/a/c/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/migu/a/c/d;

    invoke-direct {v1}, Lcom/migu/a/c/d;-><init>()V

    .line 199
    iget-object v2, p0, Lcom/migu/a/c/a;->X:Lcom/migu/a/c/d;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/migu/a/c/a;->X:Lcom/migu/a/c/d;

    invoke-virtual {v2}, Lcom/migu/a/c/d;->G()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, v1, Lcom/migu/a/c/d;->aA:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/migu/a/c/a;->X:Lcom/migu/a/c/d;

    invoke-virtual {v3}, Lcom/migu/a/c/d;->G()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/migu/a/c/a;->w()Lcom/migu/a/c/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, v1, Lcom/migu/a/c/d;->aA:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/migu/a/c/a;->w()Lcom/migu/a/c/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/migu/a/c/d;->G()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_1
    const-string/jumbo v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 210
    invoke-virtual {p0}, Lcom/migu/a/c/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v1}, Lcom/migu/a/c/d;->I()Ljava/lang/String;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_2

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "&"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_2
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 238
    :goto_1
    invoke-virtual {p0}, Lcom/migu/a/c/a;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/migu/a/c/a;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/migu/a/c/a;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 239
    const-string/jumbo v0, "UID"

    invoke-virtual {p0}, Lcom/migu/a/c/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v0, "UB"

    invoke-virtual {p0}, Lcom/migu/a/c/a;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_3
    invoke-virtual {p0}, Lcom/migu/a/c/a;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/migu/a/c/a;->ac:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/migu/a/c/a;->ad:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 245
    invoke-virtual {p0}, Lcom/migu/a/c/a;->signature()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/a/c/a;->ac:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/migu/a/c/a;->t()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/a/c/a;->ad:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_4
    const-string/jumbo v0, "Accept"

    const-string/jumbo v1, "application/xml"

    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v0, "Response-Type"

    const-string/jumbo v1, "xml"

    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string/jumbo v0, "platform"

    const-string/jumbo v1, "Android"

    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/migu/a/c/a;->g()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 255
    invoke-virtual {p0}, Lcom/migu/a/c/a;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 259
    const-string/jumbo v0, "X-OF-Signature"

    iget-object v1, p0, Lcom/migu/a/c/a;->ac:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_5
    return-object v2

    .line 213
    :cond_6
    const-string/jumbo v0, "?"

    goto/16 :goto_0

    .line 218
    :cond_7
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/migu/a/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 220
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    .line 221
    invoke-virtual {p0}, Lcom/migu/a/c/a;->v()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 223
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, v3, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "text/xml; charset="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_3
    move-object v2, v0

    .line 234
    goto/16 :goto_1

    .line 227
    :cond_8
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-virtual {v1}, Lcom/migu/a/c/d;->G()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "application/x-www-form-urlencoded; charset="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 231
    :catch_0
    move-exception v1

    .line 232
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_3

    .line 255
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
