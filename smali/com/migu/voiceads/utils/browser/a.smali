.class Lcom/migu/voiceads/utils/browser/a;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MIGUBrowser onLoadResource"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->b(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MIGUBrowser onPageFinished1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->b(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->b(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->e(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->a(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->c(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Ljava/lang/StringBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->a(Lcom/migu/voiceads/utils/browser/MIGUBrowser;Ljava/lang/StringBuffer;)V

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->c(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MIGUBrowser onPageStarted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Web Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->a(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v1, v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->a(Lcom/migu/voiceads/utils/browser/MIGUBrowser;Z)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v1}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->b(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string/jumbo v1, "Ad_Android_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MIGUBrowser shouldOverrideUrlLoading:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/voiceads/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v1, p2}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->a(Lcom/migu/voiceads/utils/browser/MIGUBrowser;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p2}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-virtual {v2}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/migu/voiceads/utils/browser/a;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-virtual {v2, v1}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
