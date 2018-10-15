.class public Lcom/baidu/aiupdatesdk/obf/k;
.super Landroid/os/AsyncTask;
.source "SimpleAsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ParamsT:",
        "Ljava/lang/Object;",
        "ProgressT:",
        "Ljava/lang/Object;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParamsT;TProgressT;TResultT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/aiupdatesdk/obf/i;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/aiupdatesdk/obf/i;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "asyncHttpResponseHandler"    # Lcom/baidu/aiupdatesdk/obf/i;
    .param p4, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 25
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/k;, "Lcom/baidu/aiupdatesdk/obf/k<TParamsT;TProgressT;TResultT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/k;->d:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/k;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/k;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/baidu/aiupdatesdk/obf/k;->c:Lcom/baidu/aiupdatesdk/obf/i;

    .line 30
    iput-object p4, p0, Lcom/baidu/aiupdatesdk/obf/k;->d:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/aiupdatesdk/obf/i;)Ljava/lang/ref/WeakReference;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "asyncHttpResponseHandler"    # Lcom/baidu/aiupdatesdk/obf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParamsT:",
            "Ljava/lang/Object;",
            "ProgressT:",
            "Ljava/lang/Object;",
            "ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/aiupdatesdk/obf/i;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/aiupdatesdk/obf/k",
            "<TParamsT;TProgressT;TResultT;>;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/k;

    const-string/jumbo v2, "GET"

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/baidu/aiupdatesdk/obf/k;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/aiupdatesdk/obf/i;Ljava/lang/String;)V

    .line 90
    .local v0, "simpleAsyncHttpClient":Lcom/baidu/aiupdatesdk/obf/k;, "Lcom/baidu/aiupdatesdk/obf/k<TParamsT;TProgressT;TResultT;>;"
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/baidu/aiupdatesdk/obf/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 93
    .local v1, "wrSimpleAsyncHttpClient":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/baidu/aiupdatesdk/obf/k<TParamsT;TProgressT;TResultT;>;>;"
    return-object v1
.end method

.method private a(Ljava/net/URL;)Ljava/net/URL;
    .locals 5
    .param p1, "originalURL"    # Ljava/net/URL;

    .prologue
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/k;, "Lcom/baidu/aiupdatesdk/obf/k<TParamsT;TProgressT;TResultT;>;"
    const/4 v4, 0x0

    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, "mHttpURLConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/k;->a:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/baidu/aiupdatesdk/obf/ae;->b(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 72
    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/k;->c:Lcom/baidu/aiupdatesdk/obf/i;

    invoke-virtual {v3, v1}, Lcom/baidu/aiupdatesdk/obf/i;->a(Ljava/net/HttpURLConnection;)Ljava/net/URL;

    move-result-object v2

    .line 74
    .local v2, "reURL":Ljava/net/URL;
    if-eqz v2, :cond_0

    .line 75
    invoke-direct {p0, v2}, Lcom/baidu/aiupdatesdk/obf/k;->a(Ljava/net/URL;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v2    # "reURL":Ljava/net/URL;
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/baidu/aiupdatesdk/obf/k;->a(Ljava/net/HttpURLConnection;)V

    .line 81
    return-object v4

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ioException":Ljava/io/IOException;
    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/k;->c:Lcom/baidu/aiupdatesdk/obf/i;

    invoke-virtual {v3, v0, v4}, Lcom/baidu/aiupdatesdk/obf/i;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "httpURLConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 38
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/k;, "Lcom/baidu/aiupdatesdk/obf/k<TParamsT;TProgressT;TResultT;>;"
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 40
    const/4 p1, 0x0

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParamsT;)TResultT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/k;, "Lcom/baidu/aiupdatesdk/obf/k<TParamsT;TProgressT;TResultT;>;"
    .local p1, "paramArrayOfParams":[Ljava/lang/Object;, "[TParamsT;"
    const/4 v3, 0x0

    .line 60
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/k;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "url":Ljava/net/URL;
    invoke-direct {p0, v1}, Lcom/baidu/aiupdatesdk/obf/k;->a(Ljava/net/URL;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/net/MalformedURLException;
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/k;->c:Lcom/baidu/aiupdatesdk/obf/i;

    invoke-virtual {v2, v0, v3}, Lcom/baidu/aiupdatesdk/obf/i;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/k;, "Lcom/baidu/aiupdatesdk/obf/k<TParamsT;TProgressT;TResultT;>;"
    .local p1, "result":Ljava/lang/Object;, "TResultT;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/k;->c:Lcom/baidu/aiupdatesdk/obf/i;

    invoke-virtual {v0}, Lcom/baidu/aiupdatesdk/obf/i;->g()V

    .line 54
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/k;, "Lcom/baidu/aiupdatesdk/obf/k<TParamsT;TProgressT;TResultT;>;"
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 47
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/k;->c:Lcom/baidu/aiupdatesdk/obf/i;

    invoke-virtual {v0}, Lcom/baidu/aiupdatesdk/obf/i;->f()V

    .line 48
    return-void
.end method
