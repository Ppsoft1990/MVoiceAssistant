.class Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$2;
.super Landroid/os/Handler;
.source "LxHomeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$2;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 913
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 915
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 916
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 917
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v1, "LxHomeWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadJs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$2;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->loadJavaScript(Ljava/lang/String;)V

    goto :goto_0

    .line 922
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "LxHomeWebView"

    const-string/jumbo v2, "MSG_RECORD_CPA_LOG"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100064"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 913
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
