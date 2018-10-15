.class Lcom/iflytek/viafly/browser/BrowserComponent$1;
.super Ljava/lang/Object;
.source "BrowserComponent.java"

# interfaces
.implements Lcom/iflytek/viafly/browser/BrowserViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/browser/BrowserComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/browser/BrowserComponent;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/browser/BrowserComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/browser/BrowserComponent;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    .line 456
    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onClose()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onClickTitleLeftButton()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$300(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$300(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserPageAbility;->finishPage()V

    .line 459
    const/4 v0, 0x1

    .line 462
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFullScreenChanged(Z)V
    .locals 3
    .param p1, "isInFullScreen"    # Z

    .prologue
    const/4 v2, 0x1

    .line 467
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$300(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    move-result-object v0

    if-nez v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 470
    :cond_0
    if-eqz p1, :cond_1

    .line 471
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$300(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserPageAbility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 473
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$300(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserPageAbility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/iflytek/yd/util/UIUtil;->showOrHideStatusBar(Landroid/view/Window;Z)V

    goto :goto_0

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$300(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserPageAbility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 477
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$300(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserPageAbility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->showOrHideStatusBar(Landroid/view/Window;Z)V

    goto :goto_0
.end method

.method public onJsPrompt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onJsPrompt(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    return-void
.end method

.method public onLoadingError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onLoadingError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 436
    :cond_0
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onPageStarted(Ljava/lang/String;)V

    .line 443
    :cond_0
    return-void
.end method

.method public onPreLoadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onPreLoadUrl(Ljava/lang/String;)V

    .line 492
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 422
    :cond_0
    return-void
.end method

.method public onStartLoadError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$1;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onStartLoadError(I)V

    .line 450
    :cond_0
    return-void
.end method
