.class public Lbei;
.super Lbeg;


# instance fields
.field b:Lbej;

.field c:Ljava/net/HttpURLConnection;

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbeg;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lbei;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lbei;->b:Lbej;

    invoke-virtual {v0}, Lbej;->b()V

    invoke-super {p0}, Lbeg;->a()V

    return-void
.end method

.method public a(Lbej;)V
    .locals 0

    iput-object p1, p0, Lbei;->b:Lbej;

    return-void
.end method

.method protected b()V
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lbei;->b:Lbej;

    invoke-virtual {v0}, Lbej;->c()Lbek;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v4}, Lbek;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    iget-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    iget v2, p0, Lbei;->d:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    iget v2, p0, Lbei;->d:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v4}, Lbek;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Lbek;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3

    invoke-virtual {v4}, Lbek;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "POST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    move v2, v3

    :goto_0
    invoke-virtual {v4}, Lbek;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Lbem;

    sget-object v3, Lcom/rsanalyticssdk/b/a/c;->b:Lcom/rsanalyticssdk/b/a/c;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v1, v0}, Lbem;-><init>(Lcom/rsanalyticssdk/b/a/c;ILjava/lang/String;)V

    iput-object v2, p0, Lbei;->e:Lbem;

    :goto_2
    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lbem;

    sget-object v2, Lcom/rsanalyticssdk/b/a/c;->b:Lcom/rsanalyticssdk/b/a/c;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v7, v0}, Lbem;-><init>(Lcom/rsanalyticssdk/b/a/c;ILjava/lang/String;)V

    iput-object v1, p0, Lbei;->e:Lbem;

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v1, Lbem;

    sget-object v2, Lcom/rsanalyticssdk/b/a/c;->b:Lcom/rsanalyticssdk/b/a/c;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v7, v0}, Lbem;-><init>(Lcom/rsanalyticssdk/b/a/c;ILjava/lang/String;)V

    iput-object v1, p0, Lbei;->e:Lbem;

    goto :goto_2

    :catch_3
    move-exception v0

    new-instance v2, Lbem;

    sget-object v3, Lcom/rsanalyticssdk/b/a/c;->b:Lcom/rsanalyticssdk/b/a/c;

    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v1, v0}, Lbem;-><init>(Lcom/rsanalyticssdk/b/a/c;ILjava/lang/String;)V

    iput-object v2, p0, Lbei;->e:Lbem;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz v2, :cond_1

    :try_start_3
    iget-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v4}, Lbek;->d()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_1
    :try_start_4
    iget-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iget-object v1, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v0, Lbem;

    sget-object v1, Lcom/rsanalyticssdk/b/a/c;->b:Lcom/rsanalyticssdk/b/a/c;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lbem;-><init>(Lcom/rsanalyticssdk/b/a/c;I)V

    iput-object v0, p0, Lbei;->e:Lbem;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    iget-object v1, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v1, Lbem;

    sget-object v2, Lcom/rsanalyticssdk/b/a/c;->b:Lcom/rsanalyticssdk/b/a/c;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v7, v0}, Lbem;-><init>(Lcom/rsanalyticssdk/b/a/c;ILjava/lang/String;)V

    iput-object v1, p0, Lbei;->e:Lbem;

    goto :goto_2

    :catch_5
    move-exception v0

    iget-object v1, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v1, Lbem;

    sget-object v2, Lcom/rsanalyticssdk/b/a/c;->b:Lcom/rsanalyticssdk/b/a/c;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v7, v0}, Lbem;-><init>(Lcom/rsanalyticssdk/b/a/c;ILjava/lang/String;)V

    iput-object v1, p0, Lbei;->e:Lbem;

    goto/16 :goto_2

    :cond_2
    :try_start_5
    iget-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string/jumbo v0, "gzip"

    iget-object v4, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    const-string/jumbo v5, "Content-Encoding"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_3
    invoke-static {v0}, Lber;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    iget-object v0, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v0, Lbel;

    invoke-direct {v0}, Lbel;-><init>()V

    invoke-virtual {v0, v2}, Lbel;->a(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lbel;->a([B)V

    :try_start_6
    iget-object v1, p0, Lbei;->b:Lbej;

    invoke-virtual {v1, v0}, Lbej;->a(Lbel;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    new-instance v1, Lbem;

    sget-object v2, Lcom/rsanalyticssdk/b/a/c;->b:Lcom/rsanalyticssdk/b/a/c;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lbem;-><init>(Lcom/rsanalyticssdk/b/a/c;ILjava/lang/String;)V

    iput-object v1, p0, Lbei;->e:Lbem;

    goto/16 :goto_2

    :catch_7
    move-exception v0

    iget-object v1, p0, Lbei;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v1, Lbem;

    sget-object v2, Lcom/rsanalyticssdk/b/a/c;->b:Lcom/rsanalyticssdk/b/a/c;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v7, v0}, Lbem;-><init>(Lcom/rsanalyticssdk/b/a/c;ILjava/lang/String;)V

    iput-object v1, p0, Lbei;->e:Lbem;

    goto/16 :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3

    :cond_4
    move v2, v1

    goto/16 :goto_0
.end method

.method public c()Lbej;
    .locals 1

    iget-object v0, p0, Lbei;->b:Lbej;

    return-object v0
.end method
