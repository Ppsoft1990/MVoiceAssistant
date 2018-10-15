.class Lcom/migu/voiceads/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/voiceads/utils/browser/webclient/b;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/view/AdView;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/view/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    const-string/jumbo v1, "onPageStarted"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/bussiness/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v1, v1, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2}, Lcom/migu/voiceads/bussiness/b;->a(Landroid/os/Message;I)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "WebViewClientCallback onLoadError"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v1, 0x5

    const v2, 0x11560

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldOverrideUrlLoading\uff1a height:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    invoke-virtual {v2}, Lcom/migu/voiceads/view/AdView;->getContentHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v2, v2, Lcom/migu/voiceads/view/AdView;->e:Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;

    invoke-virtual {v2}, Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    invoke-static {v0}, Lcom/migu/voiceads/view/AdView;->a(Lcom/migu/voiceads/view/AdView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    invoke-virtual {v0, p2}, Lcom/migu/voiceads/view/AdView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageFinished\uff1a height:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    invoke-virtual {v2}, Lcom/migu/voiceads/view/AdView;->getContentHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v2, v2, Lcom/migu/voiceads/view/AdView;->e:Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;

    invoke-virtual {v2}, Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageFinished\uff1a height:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    invoke-virtual {v2}, Lcom/migu/voiceads/view/AdView;->getContentHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v2, v2, Lcom/migu/voiceads/view/AdView;->e:Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;

    invoke-virtual {v2}, Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/migu/voiceads/view/e;->a:Lcom/migu/voiceads/view/AdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/AdView;->p()Z

    return-void
.end method
