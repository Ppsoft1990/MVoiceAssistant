.class public Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$a;
.super Ljava/lang/Object;
.source "LxWebView.java"

# interfaces
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    .line 388
    const-string/jumbo v4, "LxWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exec start, aciton is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ,args is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :try_start_0
    const-string/jumbo v4, "showSpeakButton"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 393
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    .line 394
    .local v3, "isShow":Z
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v4, v3}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setIsNeedTitlePlayBtn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v3    # "isShow":Z
    :cond_0
    :goto_0
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    :goto_1
    return-object v4

    .line 395
    :cond_1
    :try_start_1
    const-string/jumbo v4, "isEventCallBackForJS"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 396
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    iget-object v4, v4, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->d:Lqk;

    instance-of v4, v4, Lqj;

    if-eqz v4, :cond_0

    .line 398
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    .line 399
    .local v2, "isEventCallBackForJS":Z
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    iget-object v0, v4, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->d:Lqk;

    check-cast v0, Lqj;

    .line 400
    .local v0, "browserEventHandler":Lqj;
    invoke-virtual {v0, v2}, Lqj;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 403
    .end local v0    # "browserEventHandler":Lqj;
    .end local v2    # "isEventCallBackForJS":Z
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "LxWebView"

    const-string/jumbo v5, "exec error"

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "Error"

    const-string/jumbo v6, "Error"

    invoke-direct {v4, v5, v6}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 413
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method
