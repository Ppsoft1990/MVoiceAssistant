.class public Lcom/migu/uem/statistics/deeplink/DeepLinkAgent;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanWebView(Landroid/webkit/WebView;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v0, "DeepLink_Android_JS_Bridge"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static enableDeeplink()V
    .locals 1

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/uem/comm/a;->d()V

    return-void
.end method

.method public static handleUrl(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static interactWithWebView(Landroid/webkit/WebView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/migu/uem/statistics/deeplink/DeeplinkInterface;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/migu/uem/statistics/deeplink/DeeplinkInterface;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "DeepLink_Android_JS_Bridge"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/uem/comm/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/migu/uem/comm/a;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "://amber_deeplink"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v0, Lcom/migu/uem/a/a/d;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/migu/uem/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/migu/uem/a/a/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p0, v2, p3}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/migu/uem/comm/a;->a(Z)V

    goto :goto_0
.end method

.method public static setRestoreSceneListener(Lcom/migu/uem/statistics/deeplink/RestoreSceneListener;)V
    .locals 1

    new-instance v0, Lcom/migu/uem/statistics/deeplink/c;

    invoke-direct {v0, p0}, Lcom/migu/uem/statistics/deeplink/c;-><init>(Lcom/migu/uem/statistics/deeplink/RestoreSceneListener;)V

    invoke-virtual {v0}, Lcom/migu/uem/statistics/deeplink/c;->start()V

    return-void
.end method
