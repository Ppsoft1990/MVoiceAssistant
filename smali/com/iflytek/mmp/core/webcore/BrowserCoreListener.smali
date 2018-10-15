.class public interface abstract Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method public abstract onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onProgressChanged(Landroid/webkit/WebView;I)V
.end method

.method public abstract onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end method
