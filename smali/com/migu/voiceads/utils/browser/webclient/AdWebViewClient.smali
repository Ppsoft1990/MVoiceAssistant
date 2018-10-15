.class public Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Z

.field private d:Lcom/migu/voiceads/utils/browser/webclient/b;


# direct methods
.method public constructor <init>(Lcom/migu/voiceads/utils/browser/webclient/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->a:Z

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->b:Z

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->c:Z

    iput-object p1, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->d:Lcom/migu/voiceads/utils/browser/webclient/b;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->a:Z

    return v0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageFinished ---------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->a:Z

    :cond_0
    iget-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->d:Lcom/migu/voiceads/utils/browser/webclient/b;

    invoke-interface {v0}, Lcom/migu/voiceads/utils/browser/webclient/b;->b()V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->b:Z

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->a(Z)V

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->a:Z

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->b:Z

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->d:Lcom/migu/voiceads/utils/browser/webclient/b;

    invoke-interface {v0}, Lcom/migu/voiceads/utils/browser/webclient/b;->a()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->d:Lcom/migu/voiceads/utils/browser/webclient/b;

    invoke-interface {v0, p2, p3}, Lcom/migu/voiceads/utils/browser/webclient/b;->a(ILjava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->d:Lcom/migu/voiceads/utils/browser/webclient/b;

    const/4 v1, -0x1

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/migu/voiceads/utils/browser/webclient/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldInterceptRequest url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";threadInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldOverrideUrlLoading--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->a(Z)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->d:Lcom/migu/voiceads/utils/browser/webclient/b;

    invoke-interface {v0, p1, p2}, Lcom/migu/voiceads/utils/browser/webclient/b;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->a:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->b:Z

    :cond_2
    iput-boolean v4, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->a:Z

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebViewClient;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "shouldOverrideUrlLoading click=false"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
