.class Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BrowserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/browser/BrowserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient"
.end annotation


# static fields
.field public static final ERROR_PAGE_URL:Ljava/lang/String; = "file:///android_asset/errorpage/error.htm"


# instance fields
.field baiduCount:I

.field final synthetic this$0:Lcom/iflytek/viafly/browser/BrowserView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/browser/BrowserView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 745
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->baiduCount:I

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 794
    const-string/jumbo v0, "BrowserMainView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WebViewClient:onLoadResource() | url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 776
    const-string/jumbo v0, "BrowserMainView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WebViewClient:onPageFinished() | url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/browser/BrowserView;->access$302(Lcom/iflytek/viafly/browser/BrowserView;Z)Z

    .line 778
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$400(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserRunData;

    move-result-object v0

    iput-object p2, v0, Lcom/iflytek/viafly/browser/BrowserRunData;->finishedUrl:Ljava/lang/String;

    .line 779
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$700(Lcom/iflytek/viafly/browser/BrowserView;)V

    .line 785
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/viafly/browser/BrowserViewCallback;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 789
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 751
    const-string/jumbo v0, "BrowserMainView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WebViewClient:onPageStarted() | url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/browser/BrowserView;->access$302(Lcom/iflytek/viafly/browser/BrowserView;Z)Z

    .line 756
    const-string/jumbo v0, "http://m.baidu.com/s?word="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->baiduCount:I

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->stopLoading()V

    .line 758
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$100(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadUrl(Ljava/lang/String;)V

    .line 759
    iget v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->baiduCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->baiduCount:I

    .line 769
    :goto_0
    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$400(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserRunData;

    move-result-object v0

    iput-object p2, v0, Lcom/iflytek/viafly/browser/BrowserRunData;->startUrl:Ljava/lang/String;

    .line 764
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$500(Lcom/iflytek/viafly/browser/BrowserView;)V

    .line 765
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/iflytek/viafly/browser/BrowserViewCallback;->onPageStarted(Ljava/lang/String;)V

    .line 768
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 800
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v15

    .line 801
    .local v15, "phoneMode":Ljava/lang/String;
    const/4 v4, -0x6

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    const-string/jumbo v4, "Lenovo K900"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "GT-I9050"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 802
    :cond_0
    invoke-super/range {p0 .. p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 853
    :goto_0
    return-void

    .line 805
    :cond_1
    const-string/jumbo v4, "BrowserMainView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WebViewClient:onReceivedError() code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "| url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "| descript="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v4}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v4}, Lcom/iflytek/viafly/browser/BrowserView;->access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/iflytek/viafly/browser/BrowserViewCallback;->onLoadingError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_2
    invoke-super/range {p0 .. p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v4}, Lcom/iflytek/viafly/browser/BrowserView;->access$100(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setVisibility(I)V

    .line 814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v4}, Lcom/iflytek/viafly/browser/BrowserView;->access$800(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/browser/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 821
    .local v10, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {v10}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->c()Z

    move-result v4

    if-nez v4, :cond_3

    .line 822
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "errorpage/error2.htm"

    .line 823
    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 829
    .local v12, "inputStream":Ljava/io/InputStream;
    :goto_1
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 831
    .local v13, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v16, Ljava/io/BufferedReader;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 833
    .local v16, "reader":Ljava/io/BufferedReader;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    .local v17, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "m":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 836
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 845
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v14    # "m":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v11

    .line 846
    .local v11, "e1":Ljava/io/IOException;
    const-string/jumbo v4, "BrowserMainView"

    const-string/jumbo v5, "read errorpage error"

    invoke-static {v4, v5, v11}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    invoke-static {v10}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->c()Z

    move-result v4

    if-nez v4, :cond_5

    .line 848
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v4}, Lcom/iflytek/viafly/browser/BrowserView;->access$100(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    move-result-object v4

    const-string/jumbo v5, "file:///android_asset/errorpage/error2.htm"

    invoke-virtual {v4, v5}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 825
    .end local v11    # "e1":Ljava/io/IOException;
    :cond_3
    :try_start_1
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "errorpage/errorForMusic.htm"

    .line 826
    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .restart local v12    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 838
    .restart local v13    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v14    # "m":Ljava/lang/String;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 840
    const-string/jumbo v4, "BrowserMainView"

    const-string/jumbo v5, "file:///android_asset/errorpage/error.htm"

    invoke-static {v4, v5}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v4}, Lcom/iflytek/viafly/browser/BrowserView;->access$100(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    move-result-object v4

    .line 842
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "text/html"

    const-string/jumbo v8, "utf-8"

    move-object/from16 v5, p4

    move-object/from16 v9, p4

    .line 841
    invoke-virtual/range {v4 .. v9}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 850
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v14    # "m":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "e1":Ljava/io/IOException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v4}, Lcom/iflytek/viafly/browser/BrowserView;->access$100(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    move-result-object v4

    const-string/jumbo v5, "file:///android_asset/errorpage/error.htm"

    invoke-virtual {v4, v5}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 858
    const-string/jumbo v0, "BrowserMainView"

    const-string/jumbo v1, "WebViewClient:onReceivedSslError()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 862
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 863
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 16
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 656
    const-string/jumbo v11, "BrowserMainView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "WebViewClient:shouldOverrideUrlLoading()| url="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v11}, Lcom/iflytek/viafly/browser/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 660
    .local v3, "context":Landroid/content/Context;
    const-string/jumbo v11, "wtai://wp/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 661
    const-string/jumbo v11, "wtai://wp/mc;"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 662
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "tel:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "wtai://wp/mc;"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/browser/BrowserView;->startSystemConponent(Ljava/lang/String;)V

    .line 663
    const/4 v11, 0x1

    .line 742
    :goto_0
    return v11

    .line 664
    :cond_0
    const-string/jumbo v11, "wtai://wp/sd;"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 665
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "tel:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "wtai://wp/mc;"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2a

    const/16 v15, 0x50

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/browser/BrowserView;->startSystemConponent(Ljava/lang/String;)V

    .line 666
    const/4 v11, 0x1

    goto :goto_0

    .line 667
    :cond_1
    const-string/jumbo v11, "wtai://wp/ap;"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 670
    const-string/jumbo v11, "wtai://wp/ap;"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "content":Ljava/lang/String;
    const-string/jumbo v11, ";"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 672
    .local v10, "pos":I
    if-lez v10, :cond_4

    .line 673
    const/4 v11, 0x0

    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 674
    .local v9, "number":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 675
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 679
    :goto_1
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 680
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 681
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 687
    :cond_2
    :goto_2
    const-string/jumbo v11, "%20"

    const-string/jumbo v12, ""

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 689
    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 690
    const-string/jumbo v11, "BrowserMainView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "wtai,number = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", name = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.INSERT"

    sget-object v12, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v8, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 692
    .local v8, "newIntent":Landroid/content/Intent;
    const-string/jumbo v11, "phone"

    invoke-virtual {v8, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string/jumbo v11, "name"

    invoke-virtual {v8, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    :try_start_0
    invoke-virtual {v3, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 696
    const-string/jumbo v11, "BrowserMainView"

    const-string/jumbo v12, "start \"wtai://wp/ap\" intent..."

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_3
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 677
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "newIntent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v9, ""

    goto :goto_1

    .line 684
    .end local v9    # "number":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 685
    .restart local v9    # "number":Ljava/lang/String;
    move-object v7, v9

    .restart local v7    # "name":Ljava/lang/String;
    goto :goto_2

    .line 697
    .restart local v8    # "newIntent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 698
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "BrowserMainView"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 702
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "newIntent":Landroid/content/Intent;
    .end local v9    # "number":Ljava/lang/String;
    .end local v10    # "pos":I
    :cond_5
    const-string/jumbo v11, "tel:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 703
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/iflytek/viafly/browser/BrowserView;->startSystemConponent(Ljava/lang/String;)V

    .line 704
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 705
    :cond_6
    const-string/jumbo v11, "http://kf.migu.cn/api/onlineWapV2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 706
    const-string/jumbo v11, "BrowserMainView"

    const-string/jumbo v12, "Imhelper init"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    iget-object v11, v11, Lcom/iflytek/viafly/browser/BrowserView;->imHelper:Lcom/iflytek/viafly/im/IMHelper;

    if-nez v11, :cond_7

    .line 708
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    new-instance v12, Lcom/iflytek/viafly/im/IMHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v13}, Lcom/iflytek/viafly/browser/BrowserView;->access$000(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v14}, Lcom/iflytek/viafly/browser/BrowserView;->access$100(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/iflytek/viafly/im/IMHelper;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v12, v11, Lcom/iflytek/viafly/browser/BrowserView;->imHelper:Lcom/iflytek/viafly/im/IMHelper;

    .line 709
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v11}, Lcom/iflytek/viafly/browser/BrowserView;->access$100(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    iget-object v12, v12, Lcom/iflytek/viafly/browser/BrowserView;->imHelper:Lcom/iflytek/viafly/im/IMHelper;

    const-string/jumbo v13, "kf"

    invoke-virtual {v11, v12, v13}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    :cond_7
    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 712
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 713
    :cond_8
    const-string/jumbo v11, "http"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string/jumbo v11, "https"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string/jumbo v11, "file"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string/jumbo v11, "about"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 715
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;->this$0:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-static {v11}, Lcom/iflytek/viafly/browser/BrowserView;->access$200(Lcom/iflytek/viafly/browser/BrowserView;)V

    .line 719
    if-eqz p2, :cond_b

    const-string/jumbo v11, "https://wx.tenpay.com/cgi-bin"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_b

    .line 721
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 722
    .local v5, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 723
    const-string/jumbo v11, "Referer"

    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 726
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 729
    .end local v5    # "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 730
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 732
    :cond_c
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.VIEW"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 734
    .local v6, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {v3, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 741
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_d
    :goto_4
    const-string/jumbo v11, "BrowserMainView"

    const-string/jumbo v12, "load url..."

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 735
    .restart local v6    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    .line 736
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "BrowserMainView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startActivity error, uriString = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    const-string/jumbo v11, "\u62b1\u6b49\uff0c\u7531\u4e8e\u672a\u77e5\u7684\u5f02\u5e38\u539f\u56e0\u5bfc\u81f4\u52a0\u8f7d\u5931\u8d25"

    const/4 v12, 0x0

    invoke-static {v3, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method
