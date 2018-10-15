.class Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;


# direct methods
.method private constructor <init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;Lcom/iflytek/mmp/core/webcore/BrowserCore$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;-><init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    return-void
.end method


# virtual methods
.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 3

    invoke-static {}, Lsx;->a()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x2

    mul-long/2addr v0, p5

    invoke-interface {p9, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    invoke-static {}, Lsx;->a()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :cond_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onJsAlert, url is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,message is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "onJsAlert begin, but windowToken is not valid, so return"

    invoke-static {v0, v2}, Ltc;->c(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {v3}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v3, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient$1;

    invoke-direct {v3, p0, p4}, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient$1;-><init>(Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onJsAlert error, so show a default dialog"

    invoke-static {v3, v4}, Ltc;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v3, "Alert"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    const/16 v5, 0x8

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "web request begin, message is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , defaultValue is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "iflytek:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {v3, v2, v1, p4}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "web request end, result is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p5, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "{ code: \'Error\', message: \'Error\' }"

    invoke-virtual {p5, v2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onJsPrompt error"

    invoke-static {v2, v3, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProgressChanged, newProgress is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;->onProgressChanged(Landroid/webkit/WebView;I)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 3

    invoke-static {}, Lsx;->a()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceivedTitle, title is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
