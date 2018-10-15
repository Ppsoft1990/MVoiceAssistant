.class Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private pageStartTime:J

.field final synthetic this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;


# direct methods
.method private constructor <init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;Lcom/iflytek/mmp/core/webcore/BrowserCore$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;-><init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLoadResource url is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->pageStartTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onPageFinished, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " load time is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageStarted url is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,old url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iput-object p2, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->currentUrl:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->pageStartTime:J

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {v0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->stopLoading()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceivedError, errorCode is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,description is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,failingUrl is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-static {v0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$300(Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "errorpage/empty.htm"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "read errorpage faile"

    invoke-static {v1, v2, v0}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v1, p4

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceivedSslError, url is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldInterceptRequest, url is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldOverrideUrlLoading url is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string/jumbo v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_3

    const-string/jumbo v0, "tel:"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-boolean v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isSkipTelNumber:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sip tel number"

    invoke-static {v0, v1}, Ltc;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v1, v1, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startSystemBrowser() uriString = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    const-string/jumbo v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "about"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v1, v1, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startActivity error, uriString = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
