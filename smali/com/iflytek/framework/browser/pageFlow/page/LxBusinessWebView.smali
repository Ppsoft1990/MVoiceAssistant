.class public Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;
.super Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
.source "LxBusinessWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;ZLjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p3, "status"    # Z
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;-><init>(Landroid/content/Context;)V

    .line 26
    const-string/jumbo v1, "LxBusinessWebView"

    iput-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->a:Ljava/lang/String;

    .line 34
    iget-object v1, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->b:Ljava/lang/String;

    .line 35
    iput-boolean p3, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->p:Z

    .line 36
    iget-object v1, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->q:Ljava/lang/String;

    .line 38
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->r:Z

    .line 39
    invoke-direct {p0, p4}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->a(Ljava/lang/String;)V

    .line 40
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string/jumbo v0, "WidgetMMPContainerComponents"

    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView$a;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView$a;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;)V

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string/jumbo v0, "file:///android_asset/dialogMode/index-new.html"

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->b:Ljava/lang/String;

    return-object v0
.end method
