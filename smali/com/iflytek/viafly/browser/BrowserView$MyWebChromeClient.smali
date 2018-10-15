.class Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "BrowserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/browser/BrowserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field private mVideoProgressView:Landroid/view/View;

.field final synthetic this$0:Lcom/iflytek/viafly/browser/BrowserView;

.field webpageTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/browser/BrowserView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 4

    .prologue
    .line 1024
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "getVideoLoadingProgressView()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->mVideoProgressView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1027
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/browser/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030160

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->mVideoProgressView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->mVideoProgressView:Landroid/view/View;

    return-object v1

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "getVideoLoadingProgressView() "

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "currentQuota"    # J
    .param p5, "estimatedSize"    # J
    .param p7, "totalUsedQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 970
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p5

    invoke-interface {p9, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 971
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 983
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 984
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 985
    return-void
.end method

.method public onHideCustomView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1037
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v2}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1038
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v2}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/iflytek/viafly/browser/BrowserViewCallback;->onFullScreenChanged(Z)V

    .line 1044
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 1046
    const-string/jumbo v2, "BrowserMainView"

    const-string/jumbo v3, "onHideCustomView()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v2}, Lcom/iflytek/viafly/browser/BrowserView;->access$1300(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1048
    const-string/jumbo v2, "BrowserMainView"

    const-string/jumbo v3, "onHideCustomView() return because mCustomView is null"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v2, v4}, Lcom/iflytek/viafly/browser/BrowserView;->access$1302(Lcom/iflytek/viafly/browser/BrowserView;Landroid/view/View;)Landroid/view/View;

    .line 1075
    :goto_0
    return-void

    .line 1053
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v2}, Lcom/iflytek/viafly/browser/BrowserView;->access$100(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setVisibility(I)V

    .line 1054
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v2}, Lcom/iflytek/viafly/browser/BrowserView;->access$1500(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 1055
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v2}, Lcom/iflytek/viafly/browser/BrowserView;->access$1400(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1058
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v2}, Lcom/iflytek/viafly/browser/BrowserView;->access$1300(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v2}, Lcom/iflytek/viafly/browser/BrowserView;->access$1600(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1063
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v2}, Lcom/iflytek/viafly/browser/BrowserView;->access$1400(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v3}, Lcom/iflytek/viafly/browser/BrowserView;->access$1300(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1064
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iflytek/viafly/browser/BrowserView;->access$1302(Lcom/iflytek/viafly/browser/BrowserView;Landroid/view/View;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1073
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v2, v4}, Lcom/iflytek/viafly/browser/BrowserView;->access$1302(Lcom/iflytek/viafly/browser/BrowserView;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 1065
    :catch_0
    move-exception v1

    .line 1066
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "BrowserMainView"

    const-string/jumbo v3, "hide full screen exception"

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1068
    :try_start_3
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v2}, Lcom/iflytek/viafly/browser/BrowserView;->access$1400(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1073
    :goto_1
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v2, v4}, Lcom/iflytek/viafly/browser/BrowserView;->access$1302(Lcom/iflytek/viafly/browser/BrowserView;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 1069
    :catch_1
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, "BrowserMainView"

    const-string/jumbo v3, "clear full scren container also failed"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1073
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v3, v4}, Lcom/iflytek/viafly/browser/BrowserView;->access$1302(Lcom/iflytek/viafly/browser/BrowserView;Landroid/view/View;)Landroid/view/View;

    throw v2
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 876
    const-string/jumbo v2, "BrowserMainView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WebChromeClient:onJsAlert() | url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/browser/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 878
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 879
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0212

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 880
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 881
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0211

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 882
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 883
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 884
    const/4 v2, 0x1

    return v2
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 899
    const-string/jumbo v2, "BrowserMainView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WebChromeClient:onJsConfirm() | url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/browser/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 901
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 902
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0212

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 903
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 904
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0211

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient$1;

    invoke-direct {v3, p0, p4}, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient$1;-><init>(Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 911
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0210

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient$2;

    invoke-direct {v3, p0, p4}, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient$2;-><init>(Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 918
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 919
    const/4 v2, 0x1

    return v2
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    const/4 v0, 0x1

    .line 927
    const-string/jumbo v1, "BrowserMainView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WebChromeClient:onJsPrompt() | url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", defaultValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v1}, Lcom/iflytek/viafly/browser/BrowserView;->access$1000(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserComponentsMgr;

    move-result-object v1

    invoke-virtual {v1, p3, p4, p5}, Lcom/iflytek/viafly/browser/BrowserComponentsMgr;->exec(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    :goto_0
    return v0

    .line 935
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v1}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 936
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v1}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v1

    invoke-interface {v1, p3, p4}, Lcom/iflytek/viafly/browser/BrowserViewCallback;->onJsPrompt(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    goto :goto_0

    .line 940
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 948
    const-string/jumbo v0, "BrowserMainView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WebChromeClient:onProgressChanged()|newProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/viafly/browser/BrowserViewCallback;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$1100(Lcom/iflytek/viafly/browser/BrowserView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0, p2}, Lcom/iflytek/viafly/browser/BrowserView;->access$1200(Lcom/iflytek/viafly/browser/BrowserView;I)V

    .line 962
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 963
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 3
    .param p1, "spaceNeeded"    # J
    .param p3, "totalUsedQuota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 977
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 978
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 889
    const-string/jumbo v0, "BrowserMainView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WebChromeClient:onReceivedTitle() | title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$900(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$900(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 989
    const-string/jumbo v0, "BrowserMainView"

    const-string/jumbo v1, "onShowCustomView()  3 params"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {p0, p1, p3}, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 991
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 995
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "onShowCustomView()  2 params"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v1}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v1}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/iflytek/viafly/browser/BrowserViewCallback;->onFullScreenChanged(Z)V

    .line 1002
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v1}, Lcom/iflytek/viafly/browser/BrowserView;->access$1300(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1003
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1004
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v1}, Lcom/iflytek/viafly/browser/BrowserView;->access$1400(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1005
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iflytek/viafly/browser/BrowserView;->access$1302(Lcom/iflytek/viafly/browser/BrowserView;Landroid/view/View;)Landroid/view/View;

    .line 1006
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "onShowCustomView()  mCustomView is not null, hide it"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v1, p1}, Lcom/iflytek/viafly/browser/BrowserView;->access$1302(Lcom/iflytek/viafly/browser/BrowserView;Landroid/view/View;)Landroid/view/View;

    .line 1011
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v1}, Lcom/iflytek/viafly/browser/BrowserView;->access$100(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setVisibility(I)V

    .line 1012
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v1}, Lcom/iflytek/viafly/browser/BrowserView;->access$1500(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 1013
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v1}, Lcom/iflytek/viafly/browser/BrowserView;->access$1400(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1014
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v1}, Lcom/iflytek/viafly/browser/BrowserView;->access$1400(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1015
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v1, p2}, Lcom/iflytek/viafly/browser/BrowserView;->access$1602(Lcom/iflytek/viafly/browser/BrowserView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "onShowCustomView() "

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
