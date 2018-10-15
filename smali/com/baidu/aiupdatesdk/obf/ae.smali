.class public Lcom/baidu/aiupdatesdk/obf/ae;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 149
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 151
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 152
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 153
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    .line 154
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "ip":Ljava/lang/String;
    instance-of v6, v3, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    .line 164
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "ip":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, "ex":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    .line 164
    .end local v2    # "ex":Ljava/net/SocketException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "httpURLConnection":Ljava/net/HttpURLConnection;
    invoke-static {p0, p1}, Lcom/baidu/aiupdatesdk/obf/ae;->c(Landroid/content/Context;Ljava/net/URL;)Ljava/net/Proxy;

    move-result-object v1

    .line 25
    .local v1, "proxy":Ljava/net/Proxy;
    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p1, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .end local v0    # "httpURLConnection":Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 27
    .restart local v0    # "httpURLConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/baidu/aiupdatesdk/obf/ae;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 31
    :goto_0
    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ae;->a(Ljava/net/HttpURLConnection;)V

    .line 32
    return-object v0

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0    # "httpURLConnection":Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0    # "httpURLConnection":Ljava/net/HttpURLConnection;
    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "httpURLConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/ae;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "currentApnName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CMWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string/jumbo v1, "X-Online-Host"

    invoke-virtual {p1, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 49
    :cond_0
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p0, "httpURLConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    const/16 v3, 0x3a98

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    const/16 v0, 0x3a98

    .line 53
    .local v0, "operationTimeout":I
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 54
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 55
    invoke-static {v1}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 56
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 57
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 58
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 59
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 61
    const-string/jumbo v1, "accept"

    const-string/jumbo v2, "*/*"

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "connection"

    const-string/jumbo v2, "Keep-Alive"

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v1, "ACCEPT-LANGUAGE"

    const-string/jumbo v2, "zh-cn"

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v1, "ACCEPT-CHARSET"

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/ae;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 110
    const-string/jumbo v3, "connectivity"

    .line 111
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 112
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v2

    .line 115
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 116
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 38
    .local v0, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 39
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 123
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 124
    .local v0, "mConnMgra":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 125
    .local v1, "networkInfowifi":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "mcontext"    # Landroid/content/Context;

    .prologue
    .line 87
    const-string/jumbo v3, "no"

    .line 88
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "connectivity"

    .line 89
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 91
    .local v2, "manager":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 92
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 98
    .end local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    const/4 v4, 0x0

    .line 101
    :goto_1
    return-object v4

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Ljava/net/URL;)Ljava/net/Proxy;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 68
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 70
    .local v2, "proxyPort":I
    const/4 v0, 0x0

    .line 71
    .local v0, "proxy":Ljava/net/Proxy;
    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Ljava/net/Proxy;

    .line 73
    .end local v0    # "proxy":Ljava/net/Proxy;
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/Proxy$Type;->valueOf(Ljava/lang/String;)Ljava/net/Proxy$Type;

    move-result-object v3

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 77
    .restart local v0    # "proxy":Ljava/net/Proxy;
    :cond_0
    return-object v0
.end method

.method private static d(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    if-eqz p0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/ae;->a:Ljava/lang/ref/WeakReference;

    .line 139
    :cond_0
    :goto_0
    return-object p0

    .line 136
    :cond_1
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/ae;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/ae;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    check-cast p0, Landroid/content/Context;

    .restart local p0    # "context":Landroid/content/Context;
    goto :goto_0
.end method
