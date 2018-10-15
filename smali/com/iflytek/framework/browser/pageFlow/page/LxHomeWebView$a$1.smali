.class Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$1;
.super Ljava/lang/Object;
.source "LxHomeWebView.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a()V
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
    .line 349
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 352
    const-string/jumbo v0, "LxHomeWebView"

    const-string/jumbo v1, "update()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/iflytek/common/lbs/XAddress;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/iflytek/common/lbs/XAddress;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/iflytek/common/lbs/XAddress;->getErrorCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 354
    const-string/jumbo v0, "LxHomeWebView"

    const-string/jumbo v1, "startWeatherRequest()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/os/Handler;

    move-result-object v0

    const-string/jumbo v1, "startWeatherRequest()"

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 363
    :cond_0
    :goto_0
    const-string/jumbo v0, "LxHomeWebView"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    invoke-virtual {v0, p0}, Loa;->b(Ljava/util/Observer;)V

    .line 365
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/os/Handler;

    move-result-object v0

    const-string/jumbo v1, "locateFail()"

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
