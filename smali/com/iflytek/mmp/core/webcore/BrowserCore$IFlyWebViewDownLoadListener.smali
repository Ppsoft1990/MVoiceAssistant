.class public Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewDownLoadListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;


# direct methods
.method public constructor <init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewDownLoadListener;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDownloadStart url is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,mimetype is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,contentLength is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewDownLoadListener;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewDownLoadListener;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v1, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewDownLoadListener;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startActivity error"

    invoke-static {v1, v2, v0}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
