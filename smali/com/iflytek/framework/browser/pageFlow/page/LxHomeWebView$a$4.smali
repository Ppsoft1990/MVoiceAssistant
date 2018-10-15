.class Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$4;
.super Lahd$a;
.source "LxHomeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$4;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    invoke-direct {p0}, Lahd$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 3

    .prologue
    .line 666
    const-string/jumbo v0, "LxHomeWebView"

    const-string/jumbo v1, "permission denied."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-super {p0}, Lahd$a;->onDenied()V

    .line 668
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$4;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$4;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "locateFail()"

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 671
    :cond_0
    return-void
.end method

.method public onGranted()V
    .locals 2

    .prologue
    .line 660
    const-string/jumbo v0, "LxHomeWebView"

    const-string/jumbo v1, "permission granted, get location now."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$4;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;)V

    .line 662
    return-void
.end method

.method public onUnrationale()V
    .locals 3

    .prologue
    .line 675
    const-string/jumbo v0, "LxHomeWebView"

    const-string/jumbo v1, "permission denied, unrationale."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-super {p0}, Lahd$a;->onUnrationale()V

    .line 677
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$4;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$4;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "locateFail()"

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 680
    :cond_0
    return-void
.end method
