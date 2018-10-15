.class Lcom/iflytek/mmp/core/webcore/BrowserCore$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

.field final synthetic val$javascriptCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$1;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iput-object p2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$1;->val$javascriptCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$1;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$1;->val$javascriptCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$1;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$1;->val$javascriptCode:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "loadUrl error"

    invoke-static {v1, v2, v0}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
