.class public final Lcom/migu/uem/a/d/a/c;
.super Lcom/migu/uem/a/d/a/a;


# instance fields
.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/migu/uem/c/b;)V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-direct {p0, p1}, Lcom/migu/uem/a/d/a/a;-><init>(Lcom/migu/uem/c/b;)V

    iput v0, p0, Lcom/migu/uem/a/d/a/c;->d:I

    iput v0, p0, Lcom/migu/uem/a/d/a/c;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/migu/uem/c/b;B)V
    .locals 2

    const/16 v1, 0xbb8

    const/high16 v0, -0x80000000

    invoke-direct {p0, p1}, Lcom/migu/uem/a/d/a/a;-><init>(Lcom/migu/uem/c/b;)V

    iput v0, p0, Lcom/migu/uem/a/d/a/c;->d:I

    iput v0, p0, Lcom/migu/uem/a/d/a/c;->e:I

    iput v1, p0, Lcom/migu/uem/a/d/a/c;->d:I

    iput v1, p0, Lcom/migu/uem/a/d/a/c;->e:I

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)[B
    .locals 6

    const/16 v5, 0x800

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v0, v5, [B

    :goto_0
    invoke-virtual {p1, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/migu/uem/a/d/a/c;->a:Lcom/migu/uem/c/b;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Http is Null"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/migu/uem/a/d/a/c;->a:Lcom/migu/uem/c/b;

    invoke-virtual {v0}, Lcom/migu/uem/c/b;->g()Lcom/migu/uem/a/d/a;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/migu/uem/a/d/a/c;->a:Lcom/migu/uem/c/b;

    iget v2, p0, Lcom/migu/uem/a/d/a/c;->d:I

    iget v3, p0, Lcom/migu/uem/a/d/a/c;->e:I

    invoke-static {v0, v2, v3}, Lcom/migu/uem/a/d/a/b;->a(Lcom/migu/uem/c/b;II)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/uem/a/d/a/c;->c:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/migu/uem/a/d/a/c;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/migu/uem/a/d/a/c;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http status code :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/uem/a/d/a/c;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/migu/uem/a/d/a/c;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/migu/uem/a/d/a/c;->b:Ljava/io/InputStream;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/migu/uem/a/d/a/c;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/migu/uem/a/d/a/c;->b:Ljava/io/InputStream;

    :cond_1
    iget-object v2, p0, Lcom/migu/uem/a/d/a/c;->b:Ljava/io/InputStream;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/migu/uem/a/d/a/c;->c:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/migu/uem/a/d/a/c;->b:Ljava/io/InputStream;

    invoke-static {v0, v2}, Lcom/migu/uem/a/d/a/c;->a(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)[B

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/migu/uem/a/d/a/c;->a:Lcom/migu/uem/c/b;

    invoke-interface {v1, v0, v2}, Lcom/migu/uem/a/d/a;->a([BLcom/migu/uem/c/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    iput-object v5, p0, Lcom/migu/uem/a/d/a/c;->a:Lcom/migu/uem/c/b;

    invoke-virtual {p0}, Lcom/migu/uem/a/d/a/c;->a()V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_3

    const/4 v2, -0x3

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "http code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "  \u6570\u636e\u6d41\u83b7\u53d6\u5f02\u5e38"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/migu/uem/a/d/a/c;->a:Lcom/migu/uem/c/b;

    invoke-interface {v1, v2, v0, v3}, Lcom/migu/uem/a/d/a;->a(ILjava/lang/String;Lcom/migu/uem/c/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz v1, :cond_5

    const/4 v2, -0x3

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "request error :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/migu/uem/a/d/a/c;->a:Lcom/migu/uem/c/b;

    invoke-interface {v1, v2, v0, v3}, Lcom/migu/uem/a/d/a;->a(ILjava/lang/String;Lcom/migu/uem/c/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    iput-object v5, p0, Lcom/migu/uem/a/d/a/c;->a:Lcom/migu/uem/c/b;

    invoke-virtual {p0}, Lcom/migu/uem/a/d/a/c;->a()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-object v5, p0, Lcom/migu/uem/a/d/a/c;->a:Lcom/migu/uem/c/b;

    invoke-virtual {p0}, Lcom/migu/uem/a/d/a/c;->a()V

    throw v0
.end method
