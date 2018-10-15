.class public Lcom/iflytek/viafly/basic/SimpleWebView;
.super Landroid/webkit/WebView;
.source "SimpleWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/basic/SimpleWebView;->setScrollBarStyle(I)V

    .line 18
    invoke-virtual {p0}, Lcom/iflytek/viafly/basic/SimpleWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 19
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 20
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 23
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 26
    invoke-static {}, Lhl;->k()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 27
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/iflytek/viafly/basic/SimpleWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 33
    .local v0, "webViewSettings":Landroid/webkit/WebSettings;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 35
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 38
    :cond_0
    return-void
.end method
