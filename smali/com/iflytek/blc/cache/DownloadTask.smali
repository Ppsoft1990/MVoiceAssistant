.class public Lcom/iflytek/blc/cache/DownloadTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/iflytek/blc/cache/DownloadObserver;

.field private e:Lcom/iflytek/blc/cache/CacheItemDao;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/cache/DownloadObserver;Lcom/iflytek/blc/cache/CacheItemDao;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "DownloadTask"

    iput-object v0, p0, Lcom/iflytek/blc/cache/DownloadTask;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/blc/cache/DownloadTask;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/blc/cache/DownloadTask;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/blc/cache/DownloadTask;->d:Lcom/iflytek/blc/cache/DownloadObserver;

    iput-object p4, p0, Lcom/iflytek/blc/cache/DownloadTask;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    return-void
.end method

.method private a()Lcom/iflytek/blc/cache/CacheItem;
    .locals 12

    const/4 v7, 0x0

    const/4 v0, 0x0

    move v9, v0

    move-object v8, v7

    :goto_0
    const/4 v0, 0x3

    if-ge v9, v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/blc/cache/DownloadTask;->c:Ljava/lang/String;

    const-string/jumbo v1, "DownloadTask"

    const-string/jumbo v2, "getNetData() start..."

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\+"

    const-string/jumbo v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%3A"

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%2F"

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string/jumbo v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x1770

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/blc/cache/DownloadTask;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/blc/util/HttpUtil;->getByteFromStream(Ljava/io/InputStream;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/blc/cache/DownloadTask;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v4, v1, v3}, Lcom/iflytek/blc/cache/DownloadTask;->a(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v0, "DownloadTask"

    const-string/jumbo v1, "downloadData | saveByteToFiles error"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    :goto_2
    if-nez v0, :cond_3

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move-object v8, v0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/iflytek/blc/cache/CacheItem;

    iget-object v1, p0, Lcom/iflytek/blc/cache/DownloadTask;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/blc/cache/CacheItem;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    const-string/jumbo v1, "DownloadTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "downloadData() end | use time="

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | mRedirectUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/blc/cache/DownloadTask;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "contentUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "contentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v8

    goto :goto_2

    :cond_1
    :try_start_1
    const-string/jumbo v0, "DownloadTask"

    const-string/jumbo v1, "downloadData() error!"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v7

    goto :goto_2

    :cond_2
    move-object v0, v8

    :cond_3
    return-object v0

    :cond_4
    move-object v1, v7

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const-string/jumbo v1, "DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveByteToFiles(), success | localUrl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DownloadTask"

    const-string/jumbo v2, "saveByteToFiles() | error!"

    invoke-static {v1, v2, v0}, Lcom/iflytek/blc/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "DownloadTask"

    const-string/jumbo v2, "saveByteToFiles() | error!"

    invoke-static {v1, v2, v0}, Lcom/iflytek/blc/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "DownloadTask"

    const-string/jumbo v2, "saveByteToFiles() | error!"

    invoke-static {v1, v2, v0}, Lcom/iflytek/blc/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-direct {p0}, Lcom/iflytek/blc/cache/DownloadTask;->a()Lcom/iflytek/blc/cache/CacheItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/blc/cache/DownloadTask;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/blc/cache/DownloadTask;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    invoke-interface {v1, v0}, Lcom/iflytek/blc/cache/CacheItemDao;->save(Lcom/iflytek/blc/cache/CacheItem;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/cache/CacheItem;->setId(I)V

    :cond_0
    iget-object v1, p0, Lcom/iflytek/blc/cache/DownloadTask;->d:Lcom/iflytek/blc/cache/DownloadObserver;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/blc/cache/DownloadTask;->d:Lcom/iflytek/blc/cache/DownloadObserver;

    const-string/jumbo v1, "9999"

    const-string/jumbo v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-interface {v0, v1, v2}, Lcom/iflytek/blc/cache/DownloadObserver;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/iflytek/blc/cache/DownloadTask;->d:Lcom/iflytek/blc/cache/DownloadObserver;

    invoke-interface {v1, v0}, Lcom/iflytek/blc/cache/DownloadObserver;->onFinished(Lcom/iflytek/blc/cache/CacheItem;)V

    goto :goto_0
.end method
