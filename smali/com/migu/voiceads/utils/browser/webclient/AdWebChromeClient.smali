.class public Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private a:I

.field private b:Lcom/migu/voiceads/utils/browser/webclient/a;


# direct methods
.method public constructor <init>(Lcom/migu/voiceads/utils/browser/webclient/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;->b:Lcom/migu/voiceads/utils/browser/webclient/a;

    return-void
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;->a:I

    return v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;->b:Lcom/migu/voiceads/utils/browser/webclient/a;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/migu/voiceads/utils/browser/webclient/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    invoke-direct {p0, p2}, Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;->a(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/webclient/AdWebChromeClient;->b:Lcom/migu/voiceads/utils/browser/webclient/a;

    invoke-interface {v0, p2}, Lcom/migu/voiceads/utils/browser/webclient/a;->a(I)V

    return-void
.end method
