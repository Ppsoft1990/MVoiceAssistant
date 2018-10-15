.class Lcom/migu/voiceads/utils/browser/b;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/browser/b;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/b;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0, p2}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->a(Lcom/migu/voiceads/utils/browser/MIGUBrowser;I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/b;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/b;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/b;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/b;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
